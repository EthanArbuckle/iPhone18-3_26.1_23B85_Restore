@interface HMAccessoryInfoWifiInfo
- (HMAccessoryInfoWifiInfo)initWithMacAddress:(id)a3 networkSSID:(id)a4;
- (HMAccessoryInfoWifiInfo)initWithProtoData:(id)a3;
- (HMAccessoryInfoWifiInfo)initWithProtoPayload:(id)a3;
- (HMAccessoryInfoWifiInfo)initWithWifiNetworkInfo:(id)a3;
- (id)hmfWifiNetworkInfo;
- (id)protoData;
- (id)protoPayload;
@end

@implementation HMAccessoryInfoWifiInfo

- (HMAccessoryInfoWifiInfo)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoWifiNetworkInfoEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoWifiInfo *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoWifiInfo)initWithProtoPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 macAddress];
  v6 = [v4 networkSSID];

  v7 = [(HMAccessoryInfoWifiInfo *)self initWithMacAddress:v5 networkSSID:v6];
  return v7;
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoWifiInfo *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
  v4 = [(HMAccessoryInfoWifiInfo *)self macAddress];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v3 setMacAddress:v4];

  v5 = [(HMAccessoryInfoWifiInfo *)self networkSSID];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v3 setNetworkSSID:v5];

  return v3;
}

- (id)hmfWifiNetworkInfo
{
  v3 = objc_alloc(MEMORY[0x1E69A29F0]);
  v4 = [(HMAccessoryInfoWifiInfo *)self macAddress];
  v5 = [v3 initWithMACAddressString:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A80]);
    v7 = [(HMAccessoryInfoWifiInfo *)self networkSSID];
    v8 = [v6 initWithMACAddress:v5 SSID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMAccessoryInfoWifiInfo)initWithMacAddress:(id)a3 networkSSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMAccessoryInfoWifiInfo;
  v9 = [(HMAccessoryInfoWifiInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_macAddress, a3);
    objc_storeStrong(&v10->_networkSSID, a4);
  }

  return v10;
}

- (HMAccessoryInfoWifiInfo)initWithWifiNetworkInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 MACAddress];
  v6 = [v5 formattedString];
  v7 = [v4 SSID];

  v8 = [(HMAccessoryInfoWifiInfo *)self initWithMacAddress:v6 networkSSID:v7];
  return v8;
}

@end