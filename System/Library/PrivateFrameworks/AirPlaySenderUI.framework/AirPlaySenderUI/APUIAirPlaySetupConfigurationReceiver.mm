@interface APUIAirPlaySetupConfigurationReceiver
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationReceiver

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(APUIAirPlaySetupConfigurationReceiver *)self ID];
  [v4 setID:v5];

  v6 = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
  [v4 setAuthString:v6];

  [v4 setRouteToReceiverAfterSetup:{-[APUIAirPlaySetupConfigurationReceiver routeToReceiverAfterSetup](self, "routeToReceiverAfterSetup")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfigurationReceiver *)self ID];
  v5 = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
  if (v5 && !IsAppleInternalBuild())
  {
    v7 = 0;
    v6 = @"#Redacted#";
  }

  else
  {
    v6 = [(APUIAirPlaySetupConfigurationReceiver *)self authString];
    v7 = 1;
  }

  v8 = [(APUIAirPlaySetupConfigurationReceiver *)self routeToReceiverAfterSetup];
  v9 = "no";
  if (v8)
  {
    v9 = "yes";
  }

  v10 = [v3 stringWithFormat:@"Receiver<ID=%@|authString=%@|routeToReceiverAfterSetup=%s>", v4, v6, v9];
  if (v7)
  {
  }

  return v10;
}

@end