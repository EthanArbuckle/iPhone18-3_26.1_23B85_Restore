@interface APUIAirPlaySetupConfigurationWiFi
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APUIAirPlaySetupConfigurationWiFi

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  sSID = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
  [v4 setSSID:sSID];

  passphrase = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
  [v4 setPassphrase:passphrase];

  captivePortalBypassToken = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
  [v4 setCaptivePortalBypassToken:captivePortalBypassToken];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sSID = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
  if (sSID && !IsAppleInternalBuild())
  {
    v6 = 0;
    sSID2 = @"#Redacted#";
  }

  else
  {
    sSID2 = [(APUIAirPlaySetupConfigurationWiFi *)self SSID];
    v6 = 1;
  }

  passphrase = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
  if (passphrase && !IsAppleInternalBuild())
  {
    v9 = 0;
    passphrase2 = @"#Redacted#";
  }

  else
  {
    passphrase2 = [(APUIAirPlaySetupConfigurationWiFi *)self passphrase];
    v9 = 1;
  }

  captivePortalBypassToken = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
  if (captivePortalBypassToken && !IsAppleInternalBuild())
  {
    v12 = [v3 stringWithFormat:@"WiFi<SSID=%@|passphrase=%@|captivePortalBypassToken=%@>", sSID2, passphrase2, @"#Redacted#"];
  }

  else
  {
    captivePortalBypassToken2 = [(APUIAirPlaySetupConfigurationWiFi *)self captivePortalBypassToken];
    v12 = [v3 stringWithFormat:@"WiFi<SSID=%@|passphrase=%@|captivePortalBypassToken=%@>", sSID2, passphrase2, captivePortalBypassToken2];
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