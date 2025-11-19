@interface MTRNetworkCommissioningClusterNetworkInfoStruct
- (MTRNetworkCommissioningClusterNetworkInfoStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterNetworkInfoStruct

- (MTRNetworkCommissioningClusterNetworkInfoStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRNetworkCommissioningClusterNetworkInfoStruct;
  v2 = [(MTRNetworkCommissioningClusterNetworkInfoStruct *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    networkID = v2->_networkID;
    v2->_networkID = v3;

    connected = v2->_connected;
    v2->_connected = &unk_284C3E588;

    networkIdentifier = v2->_networkIdentifier;
    v2->_networkIdentifier = 0;

    clientIdentifier = v2->_clientIdentifier;
    v2->_clientIdentifier = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterNetworkInfoStruct);
  v5 = [(MTRNetworkCommissioningClusterNetworkInfoStruct *)self networkID];
  [(MTRNetworkCommissioningClusterNetworkInfoStruct *)v4 setNetworkID:v5];

  v6 = [(MTRNetworkCommissioningClusterNetworkInfoStruct *)self connected];
  [(MTRNetworkCommissioningClusterNetworkInfoStruct *)v4 setConnected:v6];

  v7 = [(MTRNetworkCommissioningClusterNetworkInfoStruct *)self networkIdentifier];
  [(MTRNetworkCommissioningClusterNetworkInfoStruct *)v4 setNetworkIdentifier:v7];

  v8 = [(MTRNetworkCommissioningClusterNetworkInfoStruct *)self clientIdentifier];
  [(MTRNetworkCommissioningClusterNetworkInfoStruct *)v4 setClientIdentifier:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_networkID base64EncodedStringWithOptions:0];
  connected = self->_connected;
  v8 = [(NSData *)self->_networkIdentifier base64EncodedStringWithOptions:0];
  v9 = [(NSData *)self->_clientIdentifier base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: networkID:%@ connected:%@; networkIdentifier:%@; clientIdentifier:%@; >", v5, v6, connected, v8, v9];;

  return v10;
}

@end