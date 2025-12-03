@interface MTRBridgedDeviceBasicInformationClusterActiveChangedEvent
- (MTRBridgedDeviceBasicInformationClusterActiveChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBridgedDeviceBasicInformationClusterActiveChangedEvent

- (MTRBridgedDeviceBasicInformationClusterActiveChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRBridgedDeviceBasicInformationClusterActiveChangedEvent;
  v2 = [(MTRBridgedDeviceBasicInformationClusterActiveChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    promisedActiveDuration = v2->_promisedActiveDuration;
    v2->_promisedActiveDuration = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBridgedDeviceBasicInformationClusterActiveChangedEvent);
  promisedActiveDuration = [(MTRBridgedDeviceBasicInformationClusterActiveChangedEvent *)self promisedActiveDuration];
  [(MTRBridgedDeviceBasicInformationClusterActiveChangedEvent *)v4 setPromisedActiveDuration:promisedActiveDuration];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: promisedActiveDuration:%@ >", v5, self->_promisedActiveDuration];;

  return v6;
}

@end