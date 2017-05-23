#!/bin/bash
set -eux
sed -i '$a proxy=http://opscloud:cloud0518@10.53.13.245:3128/' /etc/yum.conf
yum -y install https://www.rdoproject.org/repos/rdo-release.rpm
yum -y install python-zaqarclient os-collect-config os-apply-config os-refresh-config dib-utils
