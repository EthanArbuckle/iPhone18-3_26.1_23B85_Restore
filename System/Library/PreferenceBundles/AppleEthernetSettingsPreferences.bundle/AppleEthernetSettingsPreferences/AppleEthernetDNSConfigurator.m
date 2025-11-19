@interface AppleEthernetDNSConfigurator
- (AppleEthernetDNSConfigurator)init;
- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4;
- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5;
@end

@implementation AppleEthernetDNSConfigurator

- (AppleEthernetDNSConfigurator)init
{
  v5.receiver = self;
  v5.super_class = AppleEthernetDNSConfigurator;
  v2 = [(AppleEthernetDNSConfigurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppleEthernetProtocolConfigurator *)v2 setProtocol:kSCEntNetDNS];
  }

  return v3;
}

- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  if ([v8 dnsConfig] == &dword_0 + 1)
  {
    v9 = [v8 dnsServerAddresses];

    if (!v9)
    {
      v10 = +[NSArray array];
      [v8 setDnsServerAddresses:v10];
    }

    v11 = [v8 dnsServerAddresses];
    [v15 setObject:v11 forKeyedSubscript:kSCPropNetDNSServerAddresses];

    v12 = [v8 dnsSearchDomains];

    if (!v12)
    {
      v13 = +[NSArray array];
      [v8 setDnsSearchDomains:v13];
    }

    v14 = [v8 dnsSearchDomains];
    [v15 setObject:v14 forKeyedSubscript:kSCPropNetDNSSearchDomains];
  }

  else if ([v7 dnsConfig] == &dword_0 + 1)
  {
    [v15 removeObjectForKey:kSCPropNetDNSServerAddresses];
    [v15 removeObjectForKey:kSCPropNetDNSSearchDomains];
  }
}

- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4
{
  v20 = a3;
  v6 = [(AppleEthernetProtocolConfigurator *)self delegate];
  v7 = [v6 getPersistentSettingsForKey:kSCEntNetDNS inService:a4];

  v8 = [v7 objectForKeyedSubscript:kSCPropNetDNSServerAddresses];
  [v20 setDnsServerAddresses:v8];

  v9 = [v7 objectForKeyedSubscript:kSCPropNetDNSSearchDomains];
  [v20 setDnsSearchDomains:v9];

  v10 = [v20 dnsServerAddresses];
  if (v10)
  {
  }

  else
  {
    v11 = [v20 dnsSearchDomains];

    if (!v11)
    {
      v16 = [(AppleEthernetProtocolConfigurator *)self delegate];
      v17 = [v16 getDynamicSettingsForKey:kSCEntNetDNS inService:a4];

      v18 = [v17 objectForKeyedSubscript:kSCPropNetDNSServerAddresses];
      [v20 setDnsServerAddresses:v18];

      v19 = [v17 objectForKeyedSubscript:kSCPropNetDNSSearchDomains];
      [v20 setDnsSearchDomains:v19];

      v7 = v17;
      goto LABEL_5;
    }
  }

  [v20 setDnsConfig:1];
LABEL_5:
  v12 = [v20 dnsSearchDomains];

  if (!v12)
  {
    v13 = [v7 objectForKeyedSubscript:kSCPropNetDNSDomainName];
    if (v13)
    {
      v14 = v13;
      v15 = [NSArray arrayWithObject:v13];
      [v20 setDnsSearchDomains:v15];
    }
  }
}

@end