@interface HMFWifiNetworkAssociation(WifiInfoSerialization)
- (HMAccessoryInfoProtoWifiNetworkInfoEvent)protoPayload;
@end

@implementation HMFWifiNetworkAssociation(WifiInfoSerialization)

- (HMAccessoryInfoProtoWifiNetworkInfoEvent)protoPayload
{
  v2 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
  mACAddress = [self MACAddress];
  formattedString = [mACAddress formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setMacAddress:formattedString];

  sSID = [self SSID];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkSSID:sSID];

  -[HMAccessoryInfoProtoWifiNetworkInfoEvent setRequiresPassword:](v2, "setRequiresPassword:", [self requiresPassword]);
  gatewayIPAddress = [self gatewayIPAddress];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkGatewayIPAddress:gatewayIPAddress];

  bSSID = [self BSSID];
  formattedString2 = [bSSID formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkBSSID:formattedString2];

  gatewayMACAddress = [self gatewayMACAddress];
  formattedString3 = [gatewayMACAddress formattedString];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v2 setNetworkGatewayMacAddress:formattedString3];

  return v2;
}

@end