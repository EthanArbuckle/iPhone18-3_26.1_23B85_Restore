@interface HMAccessoryInfoWifiInfo
- (HMAccessoryInfoWifiInfo)initWithMacAddress:(id)address networkSSID:(id)d;
- (HMAccessoryInfoWifiInfo)initWithProtoData:(id)data;
- (HMAccessoryInfoWifiInfo)initWithProtoPayload:(id)payload;
- (HMAccessoryInfoWifiInfo)initWithWifiNetworkInfo:(id)info;
- (id)hmfWifiNetworkInfo;
- (id)protoData;
- (id)protoPayload;
@end

@implementation HMAccessoryInfoWifiInfo

- (HMAccessoryInfoWifiInfo)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoWifiNetworkInfoEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoWifiInfo *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoWifiInfo)initWithProtoPayload:(id)payload
{
  payloadCopy = payload;
  macAddress = [payloadCopy macAddress];
  networkSSID = [payloadCopy networkSSID];

  v7 = [(HMAccessoryInfoWifiInfo *)self initWithMacAddress:macAddress networkSSID:networkSSID];
  return v7;
}

- (id)protoData
{
  protoPayload = [(HMAccessoryInfoWifiInfo *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoWifiNetworkInfoEvent);
  macAddress = [(HMAccessoryInfoWifiInfo *)self macAddress];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v3 setMacAddress:macAddress];

  networkSSID = [(HMAccessoryInfoWifiInfo *)self networkSSID];
  [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)v3 setNetworkSSID:networkSSID];

  return v3;
}

- (id)hmfWifiNetworkInfo
{
  v3 = objc_alloc(MEMORY[0x1E69A29F0]);
  macAddress = [(HMAccessoryInfoWifiInfo *)self macAddress];
  v5 = [v3 initWithMACAddressString:macAddress];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A80]);
    networkSSID = [(HMAccessoryInfoWifiInfo *)self networkSSID];
    v8 = [v6 initWithMACAddress:v5 SSID:networkSSID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMAccessoryInfoWifiInfo)initWithMacAddress:(id)address networkSSID:(id)d
{
  addressCopy = address;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMAccessoryInfoWifiInfo;
  v9 = [(HMAccessoryInfoWifiInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_macAddress, address);
    objc_storeStrong(&v10->_networkSSID, d);
  }

  return v10;
}

- (HMAccessoryInfoWifiInfo)initWithWifiNetworkInfo:(id)info
{
  infoCopy = info;
  mACAddress = [infoCopy MACAddress];
  formattedString = [mACAddress formattedString];
  sSID = [infoCopy SSID];

  v8 = [(HMAccessoryInfoWifiInfo *)self initWithMacAddress:formattedString networkSSID:sSID];
  return v8;
}

@end