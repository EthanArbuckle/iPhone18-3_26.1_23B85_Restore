@interface AppleEthernetIPv6Configurator
- (AppleEthernetIPv6Configurator)init;
- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service;
@end

@implementation AppleEthernetIPv6Configurator

- (AppleEthernetIPv6Configurator)init
{
  v5.receiver = self;
  v5.super_class = AppleEthernetIPv6Configurator;
  v2 = [(AppleEthernetIPv6Configurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppleEthernetProtocolConfigurator *)v2 setProtocol:kSCEntNetIPv6];
  }

  return v3;
}

- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service
{
  configCopy = config;
  delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
  v11 = [delegate getDynamicSettingsForKey:kSCEntNetIPv6 inService:service];

  v8 = [v11 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
  [configCopy setIpv6Addresses:v8];

  v9 = [v11 objectForKeyedSubscript:kSCPropNetIPv6PrefixLength];
  [configCopy setIpv6PrefixLengths:v9];

  v10 = [v11 objectForKeyedSubscript:kSCPropNetIPv6Router];
  [configCopy setIpv6RouterAddress:v10];
}

@end