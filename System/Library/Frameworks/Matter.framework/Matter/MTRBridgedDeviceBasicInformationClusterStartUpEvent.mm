@interface MTRBridgedDeviceBasicInformationClusterStartUpEvent
- (MTRBridgedDeviceBasicInformationClusterStartUpEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBridgedDeviceBasicInformationClusterStartUpEvent

- (MTRBridgedDeviceBasicInformationClusterStartUpEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRBridgedDeviceBasicInformationClusterStartUpEvent;
  v2 = [(MTRBridgedDeviceBasicInformationClusterStartUpEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    softwareVersion = v2->_softwareVersion;
    v2->_softwareVersion = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBridgedDeviceBasicInformationClusterStartUpEvent);
  softwareVersion = [(MTRBridgedDeviceBasicInformationClusterStartUpEvent *)self softwareVersion];
  [(MTRBridgedDeviceBasicInformationClusterStartUpEvent *)v4 setSoftwareVersion:softwareVersion];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: softwareVersion:%@ >", v5, self->_softwareVersion];;

  return v6;
}

@end