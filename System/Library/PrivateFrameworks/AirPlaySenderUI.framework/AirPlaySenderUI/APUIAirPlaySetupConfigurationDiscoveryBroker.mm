@interface APUIAirPlaySetupConfigurationDiscoveryBroker
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationDiscoveryBroker

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self ID];
  [v4 setID:v5];

  authToken = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
  [v4 setAuthToken:authToken];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self ID];
  authToken = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
  if (authToken && !IsAppleInternalBuild())
  {
    v7 = [v3 stringWithFormat:@"Broker<systemID=%@|authToken=%@>", v4, @"#Redacted#"];
  }

  else
  {
    authToken2 = [(APUIAirPlaySetupConfigurationDiscoveryBroker *)self authToken];
    v7 = [v3 stringWithFormat:@"Broker<systemID=%@|authToken=%@>", v4, authToken2];
  }

  return v7;
}

@end