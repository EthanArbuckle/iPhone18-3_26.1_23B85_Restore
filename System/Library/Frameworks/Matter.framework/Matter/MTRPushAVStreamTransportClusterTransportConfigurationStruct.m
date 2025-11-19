@interface MTRPushAVStreamTransportClusterTransportConfigurationStruct
- (MTRPushAVStreamTransportClusterTransportConfigurationStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterTransportConfigurationStruct

- (MTRPushAVStreamTransportClusterTransportConfigurationStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRPushAVStreamTransportClusterTransportConfigurationStruct;
  v2 = [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    connectionID = v2->_connectionID;
    v2->_connectionID = &unk_284C3E588;

    transportStatus = v3->_transportStatus;
    v3->_transportStatus = &unk_284C3E588;

    transportOptions = v3->_transportOptions;
    v3->_transportOptions = 0;

    fabricIndex = v3->_fabricIndex;
    v3->_fabricIndex = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterTransportConfigurationStruct);
  v5 = [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)self connectionID];
  [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)v4 setConnectionID:v5];

  v6 = [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)self transportStatus];
  [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)v4 setTransportStatus:v6];

  v7 = [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)self transportOptions];
  [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)v4 setTransportOptions:v7];

  v8 = [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)self fabricIndex];
  [(MTRPushAVStreamTransportClusterTransportConfigurationStruct *)v4 setFabricIndex:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: connectionID:%@ transportStatus:%@; transportOptions:%@; fabricIndex:%@; >", v5, self->_connectionID, self->_transportStatus, self->_transportOptions, self->_fabricIndex];;

  return v6;
}

@end