@interface MTRThreadNetworkDirectoryClusterThreadNetworkStruct
- (MTRThreadNetworkDirectoryClusterThreadNetworkStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThreadNetworkDirectoryClusterThreadNetworkStruct

- (MTRThreadNetworkDirectoryClusterThreadNetworkStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRThreadNetworkDirectoryClusterThreadNetworkStruct;
  v2 = [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    extendedPanID = v2->_extendedPanID;
    v2->_extendedPanID = v3;

    networkName = v2->_networkName;
    v2->_networkName = &stru_284BD0DD8;

    channel = v2->_channel;
    v2->_channel = &unk_284C3E588;

    activeTimestamp = v2->_activeTimestamp;
    v2->_activeTimestamp = &unk_284C3E588;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThreadNetworkDirectoryClusterThreadNetworkStruct);
  v5 = [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)self extendedPanID];
  [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)v4 setExtendedPanID:v5];

  v6 = [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)self networkName];
  [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)v4 setNetworkName:v6];

  v7 = [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)self channel];
  [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)v4 setChannel:v7];

  v8 = [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)self activeTimestamp];
  [(MTRThreadNetworkDirectoryClusterThreadNetworkStruct *)v4 setActiveTimestamp:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_extendedPanID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: extendedPanID:%@ networkName:%@; channel:%@; activeTimestamp:%@; >", v5, v6, self->_networkName, self->_channel, self->_activeTimestamp];;

  return v7;
}

@end