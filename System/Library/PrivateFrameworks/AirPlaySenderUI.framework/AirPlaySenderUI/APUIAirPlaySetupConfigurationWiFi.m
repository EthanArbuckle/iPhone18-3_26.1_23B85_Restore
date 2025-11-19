@interface APUIAirPlaySetupConfigurationWiFi
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationWiFi

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
  [v4 setSSID:v5];

  v6 = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
  [v4 setPassphrase:v6];

  v7 = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
  [v4 setCaptivePortalBypassToken:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
  if (v4 && !IsAppleInternalBuild())
  {
    v6 = 0;
    v5 = @"#Redacted#";
  }

  else
  {
    v5 = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
    v6 = 1;
  }

  v7 = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
  if (v7 && !IsAppleInternalBuild())
  {
    v9 = 0;
    v8 = @"#Redacted#";
  }

  else
  {
    v8 = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
    v9 = 1;
  }

  v10 = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
  if (v10 && !IsAppleInternalBuild())
  {
    v12 = [v3 stringWithFormat:@"WiFi<SSID=%@|passphrase=%@|captivePortalBypassToken=%@>", v5, v8, @"#Redacted#"];
  }

  else
  {
    v11 = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
    v12 = [v3 stringWithFormat:@"WiFi<SSID=%@|passphrase=%@|captivePortalBypassToken=%@>", v5, v8, v11];
  }

  if (v9)
  {
  }

  if (v6)
  {
  }

  return v12;
}

@end