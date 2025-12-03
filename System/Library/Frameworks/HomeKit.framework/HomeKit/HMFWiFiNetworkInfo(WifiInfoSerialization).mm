@interface HMFWiFiNetworkInfo(WifiInfoSerialization)
+ (id)wifiNetworkInfoFromProto:()WifiInfoSerialization;
@end

@implementation HMFWiFiNetworkInfo(WifiInfoSerialization)

+ (id)wifiNetworkInfoFromProto:()WifiInfoSerialization
{
  v3 = a3;
  macAddress = [v3 macAddress];

  if (macAddress)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29F0]);
    macAddress2 = [v3 macAddress];
    v7 = [v5 initWithMACAddressString:macAddress2];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69A2A80]);
      networkSSID = [v3 networkSSID];
      networkBSSID = [v3 networkBSSID];
      networkGatewayIPAddress = [v3 networkGatewayIPAddress];
      networkGatewayMacAddress = [v3 networkGatewayMacAddress];
      v13 = [v8 initWithMACAddress:v7 SSID:networkSSID BSSID:networkBSSID gatewayIPAddress:networkGatewayIPAddress gatewayMACAddress:networkGatewayMacAddress];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end