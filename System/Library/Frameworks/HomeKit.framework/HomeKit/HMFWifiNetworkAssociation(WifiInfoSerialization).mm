@interface HMFWifiNetworkAssociation(WifiInfoSerialization)
- (HMAccessoryInfoProtoWifiNetworkInfoEvent)protoPayload;
@end

@implementation HMFWifiNetworkAssociation(WifiInfoSerialization)

- (HMAccessoryInfoProtoWifiNetworkInfoEvent)protoPayload
{
  v2 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
  v3 = [a1 MACAddress];
  v4 = [v3 formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setMacAddress:v4];

  v5 = [a1 SSID];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkSSID:v5];

  -[HMAccessoryInfoProtoWifiNetworkInfoEvent setRequiresPassword:](v2, "setRequiresPassword:", [a1 requiresPassword]);
  v6 = [a1 gatewayIPAddress];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkGatewayIPAddress:v6];

  v7 = [a1 BSSID];
  v8 = [v7 formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkBSSID:v8];

  v9 = [a1 gatewayMACAddress];
  v10 = [v9 formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkGatewayMacAddress:v10];

  return v2;
}

@end