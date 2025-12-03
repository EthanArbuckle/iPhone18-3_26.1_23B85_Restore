@interface MTRDescriptorClusterDeviceTypeStruct
- (MTRDescriptorClusterDeviceTypeStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDescriptorClusterDeviceTypeStruct

- (MTRDescriptorClusterDeviceTypeStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRDescriptorClusterDeviceTypeStruct;
  v2 = [(MTRDescriptorClusterDeviceTypeStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    deviceType = v2->_deviceType;
    v2->_deviceType = &unk_284C3E588;

    revision = v3->_revision;
    v3->_revision = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDescriptorClusterDeviceTypeStruct);
  deviceType = [(MTRDescriptorClusterDeviceTypeStruct *)self deviceType];
  [(MTRDescriptorClusterDeviceTypeStruct *)v4 setDeviceType:deviceType];

  revision = [(MTRDescriptorClusterDeviceTypeStruct *)self revision];
  [(MTRDescriptorClusterDeviceTypeStruct *)v4 setRevision:revision];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: deviceType:%@ revision:%@; >", v5, self->_deviceType, self->_revision];;

  return v6;
}

@end