@interface APUIAirPlaySetupConfigurationReceiver
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationReceiver

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(APUIAirPlaySetupConfigurationReceiver *)self ID];
  [v4 setID:v5];

  authString = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
  [v4 setAuthString:authString];

  [v4 setRouteToReceiverAfterSetup:{-[APUIAirPlaySetupConfigurationReceiver routeToReceiverAfterSetup](self, "routeToReceiverAfterSetup")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfigurationReceiver *)self ID];
  authString = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
  if (authString && !IsAppleInternalBuild())
  {
    v7 = 0;
    authString2 = @"#Redacted#";
  }

  else
  {
    authString2 = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
    v7 = 1;
  }

  routeToReceiverAfterSetup = [(APUIAirPlaySetupConfigurationReceiver *)self routeToReceiverAfterSetup];
  v9 = "no";
  if (routeToReceiverAfterSetup)
  {
    v9 = "yes";
  }

  v10 = [v3 stringWithFormat:@"Receiver<ID=%@|authString=%@|routeToReceiverAfterSetup=%s>", v4, authString2, v9];
  if (v7)
  {
  }

  return v10;
}

@end