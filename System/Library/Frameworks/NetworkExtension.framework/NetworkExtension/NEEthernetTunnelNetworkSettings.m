@interface NEEthernetTunnelNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEEthernetTunnelNetworkSettings)initWithCoder:(id)a3;
- (NEEthernetTunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address ethernetAddress:(NSString *)ethernetAddress mtu:(NSInteger)mtu;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEEthernetTunnelNetworkSettings

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEEthernetTunnelNetworkSettings;
  v5 = [(NEPacketTunnelNetworkSettings *)&v13 checkValidityAndCollectErrors:v4];
  v6 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];

  if (!v6)
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v7 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];
  v8 = createEthernetAddressFromString(v7);

  if (!v8)
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v9 = [(NEPacketTunnelNetworkSettings *)self MTU];

  if (!v9)
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v10 = [(NEPacketTunnelNetworkSettings *)self MTU];
  v11 = [v10 unsignedIntValue];

  if (!v11)
  {
    [NEConfiguration addError:the MTU must be greater than 0"") toList:v4];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NEEthernetTunnelNetworkSettings;
  v4 = [(NEPacketTunnelNetworkSettings *)&v7 copyWithZone:a3];
  v5 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress];
  [v4 setEthernetAddress:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NEEthernetTunnelNetworkSettings;
  v4 = a3;
  [(NEPacketTunnelNetworkSettings *)&v6 encodeWithCoder:v4];
  v5 = [(NEEthernetTunnelNetworkSettings *)self ethernetAddress:v6.receiver];
  [v4 encodeObject:v5 forKey:@"ethernetAddress"];
}

- (NEEthernetTunnelNetworkSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NEEthernetTunnelNetworkSettings;
  v5 = [(NEPacketTunnelNetworkSettings *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ethernetAddress"];
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