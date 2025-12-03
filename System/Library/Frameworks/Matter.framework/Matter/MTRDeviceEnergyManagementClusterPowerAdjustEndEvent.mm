@interface MTRDeviceEnergyManagementClusterPowerAdjustEndEvent
- (MTRDeviceEnergyManagementClusterPowerAdjustEndEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterPowerAdjustEndEvent

- (MTRDeviceEnergyManagementClusterPowerAdjustEndEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRDeviceEnergyManagementClusterPowerAdjustEndEvent;
  v2 = [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    cause = v2->_cause;
    v2->_cause = &unk_284C3E588;

    duration = v3->_duration;
    v3->_duration = &unk_284C3E588;

    energyUse = v3->_energyUse;
    v3->_energyUse = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent);
  cause = [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)self cause];
  [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)v4 setCause:cause];

  duration = [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)self duration];
  [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)v4 setDuration:duration];

  energyUse = [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)self energyUse];
  [(MTRDeviceEnergyManagementClusterPowerAdjustEndEvent *)v4 setEnergyUse:energyUse];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: cause:%@ duration:%@; energyUse:%@; >", v5, self->_cause, self->_duration, self->_energyUse];;

  return v6;
}

@end