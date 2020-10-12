#!/bin/bash

# npm run build

# ssh root@192.168.90.1 rm -rf /opt/iobroker/node_modules/iobroker.swissglider1adapter/www
ssh root@192.168.90.1 rm -rf /opt/iobroker/node_modules/iobroker.swissglider1adapter/admin

# scp -r www root@192.168.90.1:/opt/iobroker/node_modules/iobroker.swissglider1adapter/
scp -r admin root@192.168.90.1:/opt/iobroker/node_modules/iobroker.swissglider1adapter/
# scp -r build root@192.168.90.1:/opt/iobroker/node_modules/iobroker.swissglider1adapter/
# scp -r io-package.json root@192.168.90.1:/opt/iobroker/node_modules/iobroker.swissglider1adapter/

ssh root@192.168.90.1 iobroker upload swissglider1adapter