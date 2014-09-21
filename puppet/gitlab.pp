class { 'ruby':
  gems_version  => 'latest'
}

class { 'nginx': }

class { 'postgresql::server': }

class { 'redis': }

class { gitlab:
  puppet_manage_config => true,
  gitlab_branch => '7.2.0',
  external_url => 'http://gitlab.test',
}