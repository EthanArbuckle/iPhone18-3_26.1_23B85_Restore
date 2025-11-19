@interface APUIAirPlaySetupConfiguration
- (id)description;
- (id)urlString;
@end

@implementation APUIAirPlaySetupConfiguration

- (id)urlString
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEB18] array];
  [v3 setScheme:@"airplay"];
  [v3 setHost:@"setup"];
  v5 = [(APUIAirPlaySetupConfiguration *)self wifi];
  v6 = [v5 SSID];

  if (v6)
  {
    v7 = MEMORY[0x277CCAD18];
    v8 = [(APUIAirPlaySetupConfiguration *)self wifi];
    v9 = [v8 SSID];
    v10 = [v7 queryItemWithName:@"wid" value:v9];
    [v4 addObject:v10];
  }

  v11 = [(APUIAirPlaySetupConfiguration *)self wifi];
  v12 = [v11 passphrase];

  if (v12)
  {
    v13 = MEMORY[0x277CCAD18];
    v14 = [(APUIAirPlaySetupConfiguration *)self wifi];
    v15 = [v14 passphrase];
    v16 = [v13 queryItemWithName:@"wp" value:v15];
    [v4 addObject:v16];
  }

  v17 = [(APUIAirPlaySetupConfiguration *)self wifi];
  v18 = [v17 captivePortalBypassToken];

  if (v18)
  {
    v19 = MEMORY[0x277CCAD18];
    v20 = [(APUIAirPlaySetupConfiguration *)self wifi];
    v21 = [v20 captivePortalBypassToken];
    v22 = [v19 queryItemWithName:@"ca" value:v21];
    [v4 addObject:v22];
  }

  v23 = [(APUIAirPlaySetupConfiguration *)self broker];
  v24 = [v23 authToken];

  if (v24)
  {
    v25 = MEMORY[0x277CCAD18];
    v26 = [(APUIAirPlaySetupConfiguration *)self broker];
    v27 = [v26 authToken];
    v28 = [v25 queryItemWithName:@"bt" value:v27];
    [v4 addObject:v28];
  }

  v29 = [(APUIAirPlaySetupConfiguration *)self receiver];
  v30 = [v29 authString];

  if (v30)
  {
    v31 = MEMORY[0x277CCAD18];
    v32 = [(APUIAirPlaySetupConfiguration *)self receiver];
    v33 = [v32 authString];
    v34 = [v31 queryItemWithName:@"rp" value:v33];
    [v4 addObject:v34];
  }

  v35 = [(APUIAirPlaySetupConfiguration *)self receiver];
  v36 = [v35 routeToReceiverAfterSetup];

  if (v36)
  {
    v37 = [MEMORY[0x277CCAD18] queryItemWithName:@"rr" value:@"1"];
    [v4 addObject:v37];
  }

  [v3 setQueryItems:v4];
  v38 = [v3 string];

  return v38;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfiguration *)self wifi];
  v5 = [(APUIAirPlaySetupConfiguration *)self broker];
  v6 = [(APUIAirPlaySetupConfiguration *)self receiver];
  v7 = [v3 stringWithFormat:@"SetupConfig<WiFi=%@|Broker=%@|Receiver=%@>", v4, v5, v6];

  return v7;
}

@end