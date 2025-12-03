@interface MTRBridgedDeviceBasicInformationClusterReachableChangedEvent
- (MTRBridgedDeviceBasicInformationClusterReachableChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRBridgedDeviceBasicInformationClusterReachableChangedEvent

- (MTRBridgedDeviceBasicInformationClusterReachableChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRBridgedDeviceBasicInformationClusterReachableChangedEvent;
  v2 = [(MTRBridgedDeviceBasicInformationClusterReachableChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    reachableNewValue = v2->_reachableNewValue;
    v2->_reachableNewValue = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRBridgedDeviceBasicInformationClusterReachableChangedEvent);
  reachableNewValue = [(MTRBridgedDeviceBasicInformationClusterReachableChangedEvent *)self reachableNewValue];
  [(MTRBridgedDeviceBasicInformationClusterReachableChangedEvent *)v4 setReachableNewValue:reachableNewValue];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: reachableNewValue:%@ >", v5, self->_reachableNewValue];;

  return v6;
}

@end