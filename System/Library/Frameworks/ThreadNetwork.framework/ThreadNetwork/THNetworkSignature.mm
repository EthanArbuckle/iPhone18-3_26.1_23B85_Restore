@interface THNetworkSignature
- (THNetworkSignature)initWithCoder:(id)a3;
- (THNetworkSignature)initWithSignatures:(id)a3 ipv6NwSignature:(id)a4 wifSSID:(id)a5 wifiPassword:(id)a6;
- (id)initSignaturesWithArrays:(char *)a3 ipv4BytesLen:(int)a4 ipv6Bytes:(char *)a5 ipv6BytesLen:(int)a6 wifSSID:(id)a7 wifiPassword:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THNetworkSignature

- (THNetworkSignature)initWithSignatures:(id)a3 ipv6NwSignature:(id)a4 wifSSID:(id)a5 wifiPassword:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = THNetworkSignature;
  v14 = [(THNetworkSignature *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    ipv4NwSignature = v14->_ipv4NwSignature;
    v14->_ipv4NwSignature = v15;

    v17 = [v11 copy];
    ipv6NwSignature = v14->_ipv6NwSignature;
    v14->_ipv6NwSignature = v17;

    v19 = [v12 copy];
    wifiSSID = v14->_wifiSSID;
    v14->_wifiSSID = v19;

    v21 = [v13 copy];
    wifiPassword = v14->_wifiPassword;
    v14->_wifiPassword = v21;
  }

  return v14;
}

- (id)initSignaturesWithArrays:(char *)a3 ipv4BytesLen:(int)a4 ipv6Bytes:(char *)a5 ipv6BytesLen:(int)a6 wifSSID:(id)a7 wifiPassword:(id)a8
{
  v14 = a7;
  v15 = a8;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  v17 = [MEMORY[0x277CBEA90] dataWithBytes:a5 length:a6];
  v18 = v17;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    self = [(THNetworkSignature *)self initWithSignatures:v16 ipv6NwSignature:v17 wifSSID:v14 wifiPassword:v15];
    v20 = self;
  }

  return v20;
}

- (THNetworkSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipv4"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipv6"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passwd"];

  v9 = [(THNetworkSignature *)self initWithSignatures:v5 ipv6NwSignature:v6 wifSSID:v7 wifiPassword:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THNetworkSignature *)self ipv4NwSignature];
  [v4 encodeObject:v5 forKey:@"ipv4"];

  v6 = [(THNetworkSignature *)self ipv6NwSignature];
  [v4 encodeObject:v6 forKey:@"ipv6"];

  v7 = [(THNetworkSignature *)self wifiSSID];
  [v4 encodeObject:v7 forKey:@"ssid"];

  v8 = [(THNetworkSignature *)self wifiPassword];
  [v4 encodeObject:v8 forKey:@"passwd"];
}

@end