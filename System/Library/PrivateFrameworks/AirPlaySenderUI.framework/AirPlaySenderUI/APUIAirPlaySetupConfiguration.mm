@interface APUIAirPlaySetupConfiguration
- (id)description;
- (id)urlString;
@end

@implementation APUIAirPlaySetupConfiguration

- (id)urlString
{
  v3 = objc_opt_new();
  array = [MEMORY[0x277CBEB18] array];
  [v3 setScheme:@"airplay"];
  [v3 setHost:@"setup"];
  wifi = [(APUIAirPlaySetupConfiguration *)self wifi];
  sSID = [wifi SSID];

  if (sSID)
  {
    v7 = MEMORY[0x277CCAD18];
    wifi2 = [(APUIAirPlaySetupConfiguration *)self wifi];
    sSID2 = [wifi2 SSID];
    v10 = [v7 queryItemWithName:@"wid" value:sSID2];
    [array addObject:v10];
  }

  wifi3 = [(APUIAirPlaySetupConfiguration *)self wifi];
  passphrase = [wifi3 passphrase];

  if (passphrase)
  {
    v13 = MEMORY[0x277CCAD18];
    wifi4 = [(APUIAirPlaySetupConfiguration *)self wifi];
    passphrase2 = [wifi4 passphrase];
    v16 = [v13 queryItemWithName:@"wp" value:passphrase2];
    [array addObject:v16];
  }

  wifi5 = [(APUIAirPlaySetupConfiguration *)self wifi];
  captivePortalBypassToken = [wifi5 captivePortalBypassToken];

  if (captivePortalBypassToken)
  {
    v19 = MEMORY[0x277CCAD18];
    wifi6 = [(APUIAirPlaySetupConfiguration *)self wifi];
    captivePortalBypassToken2 = [wifi6 captivePortalBypassToken];
    v22 = [v19 queryItemWithName:@"ca" value:captivePortalBypassToken2];
    [array addObject:v22];
  }

  broker = [(APUIAirPlaySetupConfiguration *)self broker];
  authToken = [broker authToken];

  if (authToken)
  {
    v25 = MEMORY[0x277CCAD18];
    broker2 = [(APUIAirPlaySetupConfiguration *)self broker];
    authToken2 = [broker2 authToken];
    v28 = [v25 queryItemWithName:@"bt" value:authToken2];
    [array addObject:v28];
  }

  receiver = [(APUIAirPlaySetupConfiguration *)self receiver];
  authString = [receiver authString];

  if (authString)
  {
    v31 = MEMORY[0x277CCAD18];
    receiver2 = [(APUIAirPlaySetupConfiguration *)self receiver];
    authString2 = [receiver2 authString];
    v34 = [v31 queryItemWithName:@"rp" value:authString2];
    [array addObject:v34];
  }

  receiver3 = [(APUIAirPlaySetupConfiguration *)self receiver];
  routeToReceiverAfterSetup = [receiver3 routeToReceiverAfterSetup];

  if (routeToReceiverAfterSetup)
  {
    v37 = [MEMORY[0x277CCAD18] queryItemWithName:@"rr" value:@"1"];
    [array addObject:v37];
  }

  [v3 setQueryItems:array];
  string = [v3 string];

  return string;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  wifi = [(APUIAirPlaySetupConfiguration *)self wifi];
  broker = [(APUIAirPlaySetupConfiguration *)self broker];
  receiver = [(APUIAirPlaySetupConfiguration *)self receiver];
  v7 = [v3 stringWithFormat:@"SetupConfig<WiFi=%@|Broker=%@|Receiver=%@>", wifi, broker, receiver];

  return v7;
}

@end