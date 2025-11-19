@interface HMFWiFiNetworkInfo(WifiInfoSerialization)
+ (id)wifiNetworkInfoFromProto:()WifiInfoSerialization;
@end

@implementation HMFWiFiNetworkInfo(WifiInfoSerialization)

+ (id)wifiNetworkInfoFromProto:()WifiInfoSerialization
{
  v3 = a3;
  v4 = [v3 macAddress];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69A29F0]);
    v6 = [v3 macAddress];
    v7 = [v5 initWithMACAddressString:v6];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69A2A80]);
      v9 = [v3 networkSSID];
      v10 = [v3 networkBSSID];
      v11 = [v3 networkGatewayIPAddress];
      v12 = [v3 networkGatewayMacAddress];
      v13 = [v8 initWithMACAddress:v7 SSID:v9 BSSID:v10 gatewayIPAddress:v11 gatewayMACAddress:v12];
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