@interface AppleEthernetIPv6Configurator
- (AppleEthernetIPv6Configurator)init;
- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4;
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

- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4
{
  v6 = a3;
  v7 = [(AppleEthernetProtocolConfigurator *)self delegate];
  v11 = [v7 getDynamicSettingsForKey:kSCEntNetIPv6 inService:a4];

  v8 = [v11 objectForKeyedSubscript:kSCPropNetIPv6Addresses];
  [v6 setIpv6Addresses:v8];

  v9 = [v11 objectForKeyedSubscript:kSCPropNetIPv6PrefixLength];
  [v6 setIpv6PrefixLengths:v9];

  v10 = [v11 objectForKeyedSubscript:kSCPropNetIPv6Router];
  [v6 setIpv6RouterAddress:v10];
}

@end