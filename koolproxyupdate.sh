wget 'https://gitee.com/ycg31/KoolProxy/raw/master/rules/kp.dat' -O files/usr/share/koolproxy/data/rules/kp.dat
wget 'https://gitee.com/ycg31/KoolProxy/raw/master/rules/koolproxy.txt' -O files/usr/share/koolproxy/data/rules/koolproxy.txt
wget 'https://gitee.com/ycg31/KoolProxy/raw/master/rules/daily.txt' -O files/usr/share/koolproxy/data/rules/daily.txt
wget 'https://gitee.com/ycg31/KoolProxy/raw/master/rules/user.txt' -O files/usr/share/koolproxy/data/user.txt
cp files/usr/share/koolproxy/data/user.txt files/usr/share/koolproxy/data/rules/user.txt
wget 'https://gitee.com/ycg31/KoolProxy/raw/master/rules/koolproxy_ipset.conf' -O files/usr/share/koolproxy/koolproxy_ipset.conf
#wget 'https://koolproxy.com/downloads/arm' -O files/bin/arm
#wget 'https://koolproxy.com/downloads/i386' -O files/bin/i386
#wget 'https://koolproxy.com/downloads/mips' -O files/bin/mips
#wget 'https://koolproxy.com/downloads/mipsel' -O files/bin/mipsel
#wget 'https://koolproxy.com/downloads/x86_64' -O files/bin/x86_64
#chmod +x files/bin/*

wget https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt -O- | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/youku/d' files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}/d' files/usr/share/koolproxy/dnsmasq.adblock
