#! /bin/bash
for i in $(cat names)
do
   scp -i ~/.aws/pycon2014.pem _client-install.sh ubuntu@$i:
   ssh -i ~/.aws/pycon2014.pem -f ubuntu@$i sudo bash _client-install.sh
done
