@interface MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct
- (MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct

- (MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct;
  v2 = [(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    powerAdjustCapability = v2->_powerAdjustCapability;
    v2->_powerAdjustCapability = 0;

    cause = v3->_cause;
    v3->_cause = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct);
  powerAdjustCapability = [(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct *)self powerAdjustCapability];
  [(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct *)v4 setPowerAdjustCapability:powerAdjustCapability];

  cause = [(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct *)self cause];
  [(MTRDeviceEnergyManagementClusterPowerAdjustCapabilityStruct *)v4 setCause:cause];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: powerAdjustCapability:%@ cause:%@; >", v5, self->_powerAdjustCapability, self->_cause];;

  return v6;
}

@end