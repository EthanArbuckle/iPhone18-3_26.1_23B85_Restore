@interface THNetworkSignature
- (THNetworkSignature)initWithCoder:(id)coder;
- (THNetworkSignature)initWithSignatures:(id)signatures ipv6NwSignature:(id)signature wifSSID:(id)d wifiPassword:(id)password;
- (id)initSignaturesWithArrays:(char *)arrays ipv4BytesLen:(int)len ipv6Bytes:(char *)bytes ipv6BytesLen:(int)bytesLen wifSSID:(id)d wifiPassword:(id)password;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THNetworkSignature

- (THNetworkSignature)initWithSignatures:(id)signatures ipv6NwSignature:(id)signature wifSSID:(id)d wifiPassword:(id)password
{
  signaturesCopy = signatures;
  signatureCopy = signature;
  dCopy = d;
  passwordCopy = password;
  v24.receiver = self;
  v24.super_class = THNetworkSignature;
  v14 = [(THNetworkSignature *)&v24 init];
  if (v14)
  {
    v15 = [signaturesCopy copy];
    ipv4NwSignature = v14->_ipv4NwSignature;
    v14->_ipv4NwSignature = v15;

    v17 = [signatureCopy copy];
    ipv6NwSignature = v14->_ipv6NwSignature;
    v14->_ipv6NwSignature = v17;

    v19 = [dCopy copy];
    wifiSSID = v14->_wifiSSID;
    v14->_wifiSSID = v19;

    v21 = [passwordCopy copy];
    wifiPassword = v14->_wifiPassword;
    v14->_wifiPassword = v21;
  }

  return v14;
}

- (id)initSignaturesWithArrays:(char *)arrays ipv4BytesLen:(int)len ipv6Bytes:(char *)bytes ipv6BytesLen:(int)bytesLen wifSSID:(id)d wifiPassword:(id)password
{
  dCopy = d;
  passwordCopy = password;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:arrays length:len];
  v17 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:bytesLen];
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
    selfCopy = 0;
  }

  else
  {
    self = [(THNetworkSignature *)self initWithSignatures:v16 ipv6NwSignature:v17 wifSSID:dCopy wifiPassword:passwordCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (THNetworkSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipv4"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipv6"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssid"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passwd"];

  v9 = [(THNetworkSignature *)self initWithSignatures:v5 ipv6NwSignature:v6 wifSSID:v7 wifiPassword:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ipv4NwSignature = [(THNetworkSignature *)self ipv4NwSignature];
  [coderCopy encodeObject:ipv4NwSignature forKey:@"ipv4"];

  ipv6NwSignature = [(THNetworkSignature *)self ipv6NwSignature];
  [coderCopy encodeObject:ipv6NwSignature forKey:@"ipv6"];

  wifiSSID = [(THNetworkSignature *)self wifiSSID];
  [coderCopy encodeObject:wifiSSID forKey:@"ssid"];

  wifiPassword = [(THNetworkSignature *)self wifiPassword];
  [coderCopy encodeObject:wifiPassword forKey:@"passwd"];
}

@end