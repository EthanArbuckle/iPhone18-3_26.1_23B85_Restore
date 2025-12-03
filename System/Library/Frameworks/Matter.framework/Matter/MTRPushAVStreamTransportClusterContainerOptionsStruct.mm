@interface MTRPushAVStreamTransportClusterContainerOptionsStruct
- (MTRPushAVStreamTransportClusterContainerOptionsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterContainerOptionsStruct

- (MTRPushAVStreamTransportClusterContainerOptionsStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRPushAVStreamTransportClusterContainerOptionsStruct;
  v2 = [(MTRPushAVStreamTransportClusterContainerOptionsStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    containerType = v2->_containerType;
    v2->_containerType = &unk_284C3E588;

    cmafContainerOptions = v3->_cmafContainerOptions;
    v3->_cmafContainerOptions = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterContainerOptionsStruct);
  containerType = [(MTRPushAVStreamTransportClusterContainerOptionsStruct *)self containerType];
  [(MTRPushAVStreamTransportClusterContainerOptionsStruct *)v4 setContainerType:containerType];

  cmafContainerOptions = [(MTRPushAVStreamTransportClusterContainerOptionsStruct *)self cmafContainerOptions];
  [(MTRPushAVStreamTransportClusterContainerOptionsStruct *)v4 setCmafContainerOptions:cmafContainerOptions];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: containerType:%@ cmafContainerOptions:%@; >", v5, self->_containerType, self->_cmafContainerOptions];;

  return v6;
}

@end