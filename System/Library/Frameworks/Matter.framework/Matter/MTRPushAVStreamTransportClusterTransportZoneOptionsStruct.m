@interface MTRPushAVStreamTransportClusterTransportZoneOptionsStruct
- (MTRPushAVStreamTransportClusterTransportZoneOptionsStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterTransportZoneOptionsStruct

- (MTRPushAVStreamTransportClusterTransportZoneOptionsStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRPushAVStreamTransportClusterTransportZoneOptionsStruct;
  v2 = [(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    zone = v2->_zone;
    v2->_zone = 0;

    sensitivity = v3->_sensitivity;
    v3->_sensitivity = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct);
  v5 = [(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct *)self zone];
  [(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct *)v4 setZone:v5];

  v6 = [(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct *)self sensitivity];
  [(MTRPushAVStreamTransportClusterTransportZoneOptionsStruct *)v4 setSensitivity:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: zone:%@ sensitivity:%@; >", v5, self->_zone, self->_sensitivity];;

  return v6;
}

@end