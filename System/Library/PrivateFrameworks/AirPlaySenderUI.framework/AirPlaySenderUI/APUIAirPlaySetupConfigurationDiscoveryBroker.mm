@interface APUIAirPlaySetupConfigurationDiscoveryBroker
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationDiscoveryBroker

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self ID];
  [v4 setID:v5];

  v6 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
  [v4 setAuthToken:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self ID];
  v5 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
  if (v5 && !IsAppleInternalBuild())
  {
    v7 = [v3 stringWithFormat:@"Broker<systemID=%@|authToken=%@>", v4, @"#Redacted#"];
  }

  else
  {
    v6 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
    v7 = [v3 stringWithFormat:@"Broker<systemID=%@|authToken=%@>", v4, v6];
  }

  return v7;
}

@end