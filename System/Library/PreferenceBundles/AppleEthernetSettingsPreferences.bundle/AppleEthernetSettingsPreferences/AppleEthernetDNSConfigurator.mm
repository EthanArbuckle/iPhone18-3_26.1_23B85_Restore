@interface AppleEthernetDNSConfigurator
- (AppleEthernetDNSConfigurator)init;
- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service;
- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig;
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

- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig
{
  settingsCopy = settings;
  configCopy = config;
  newConfigCopy = newConfig;
  if ([newConfigCopy dnsConfig] == &dword_0 + 1)
  {
    dnsServerAddresses = [newConfigCopy dnsServerAddresses];

    if (!dnsServerAddresses)
    {
      v10 = +[NSArray array];
      [newConfigCopy setDnsServerAddresses:v10];
    }

    dnsServerAddresses2 = [newConfigCopy dnsServerAddresses];
    [settingsCopy setObject:dnsServerAddresses2 forKeyedSubscript:kSCPropNetDNSServerAddresses];

    dnsSearchDomains = [newConfigCopy dnsSearchDomains];

    if (!dnsSearchDomains)
    {
      v13 = +[NSArray array];
      [newConfigCopy setDnsSearchDomains:v13];
    }

    dnsSearchDomains2 = [newConfigCopy dnsSearchDomains];
    [settingsCopy setObject:dnsSearchDomains2 forKeyedSubscript:kSCPropNetDNSSearchDomains];
  }

  else if ([configCopy dnsConfig] == &dword_0 + 1)
  {
    [settingsCopy removeObjectForKey:kSCPropNetDNSServerAddresses];
    [settingsCopy removeObjectForKey:kSCPropNetDNSSearchDomains];
  }
}

- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service
{
  configCopy = config;
  delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
  v7 = [delegate getPersistentSettingsForKey:kSCEntNetDNS inService:service];

  v8 = [v7 objectForKeyedSubscript:kSCPropNetDNSServerAddresses];
  [configCopy setDnsServerAddresses:v8];

  v9 = [v7 objectForKeyedSubscript:kSCPropNetDNSSearchDomains];
  [configCopy setDnsSearchDomains:v9];

  dnsServerAddresses = [configCopy dnsServerAddresses];
  if (dnsServerAddresses)
  {
  }

  else
  {
    dnsSearchDomains = [configCopy dnsSearchDomains];

    if (!dnsSearchDomains)
    {
      delegate2 = [(AppleEthernetProtocolConfigurator *)self delegate];
      v17 = [delegate2 getDynamicSettingsForKey:kSCEntNetDNS inService:service];

      v18 = [v17 objectForKeyedSubscript:kSCPropNetDNSServerAddresses];
      [configCopy setDnsServerAddresses:v18];

      v19 = [v17 objectForKeyedSubscript:kSCPropNetDNSSearchDomains];
      [configCopy setDnsSearchDomains:v19];

      v7 = v17;
      goto LABEL_5;
    }
  }

  [configCopy setDnsConfig:1];
LABEL_5:
  dnsSearchDomains2 = [configCopy dnsSearchDomains];

  if (!dnsSearchDomains2)
  {
    v13 = [v7 objectForKeyedSubscript:kSCPropNetDNSDomainName];
    if (v13)
    {
      v14 = v13;
      v15 = [NSArray arrayWithObject:v13];
      [configCopy setDnsSearchDomains:v15];
    }
  }
}

@end