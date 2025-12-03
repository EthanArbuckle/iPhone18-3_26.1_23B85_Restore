@interface NEEthernetTunnelNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEEthernetTunnelNetworkSettings)initWithCoder:(id)coder;
- (NEEthernetTunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address ethernetAddress:(NSString *)ethernetAddress mtu:(NSInteger)mtu;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEEthernetTunnelNetworkSettings

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v13.receiver = self;
  v13.super_class = NEEthernetTunnelNetworkSettings;
  v5 = [(NEPacketTunnelNetworkSettings *)&v13 checkValidityAndCollectErrors:errorsCopy];
  ethernetAddress = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];

  if (!ethernetAddress)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  ethernetAddress2 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];
  v8 = createEthernetAddressFromString(ethernetAddress2);

  if (!v8)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  v9 = [(NEPacketTunnelNetworkSettings *)self MTU];

  if (!v9)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  v10 = [(NEPacketTunnelNetworkSettings *)self MTU];
  unsignedIntValue = [v10 unsignedIntValue];

  if (!unsignedIntValue)
  {
    [NEConfiguration addError:the MTU must be greater than 0"") toList:errorsCopy];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NEEthernetTunnelNetworkSettings;
  v4 = [(NEPacketTunnelNetworkSettings *)&v7 copyWithZone:zone];
  ethernetAddress = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];
  [v4 setEthernetAddress:ethernetAddress];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NEEthernetTunnelNetworkSettings;
  coderCopy = coder;
  [(NEPacketTunnelNetworkSettings *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ethernetAddress"];
}

- (NEEthernetTunnelNetworkSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NEEthernetTunnelNetworkSettings;
  v5 = [(NEPacketTunnelNetworkSettings *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ethernetAddress"];
    ethernetAddress = v5->_ethernetAddress;
    v5->_ethernetAddress = v6;
  }

  return v5;
}

- (NEEthernetTunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address ethernetAddress:(NSString *)ethernetAddress mtu:(NSInteger)mtu
{
  v9 = ethernetAddress;
  v14.receiver = self;
  v14.super_class = NEEthernetTunnelNetworkSettings;
  v10 = [(NETunnelNetworkSettings *)&v14 initWithTunnelRemoteAddress:address];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ethernetAddress, ethernetAddress);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:mtu];
    [(NEPacketTunnelNetworkSettings *)v11 setMTU:v12];
  }

  return v11;
}

@end