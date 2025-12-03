@interface MTRDeviceEnergyManagementClusterSlotAdjustmentStruct
- (MTRDeviceEnergyManagementClusterSlotAdjustmentStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterSlotAdjustmentStruct

- (MTRDeviceEnergyManagementClusterSlotAdjustmentStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRDeviceEnergyManagementClusterSlotAdjustmentStruct;
  v2 = [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    slotIndex = v2->_slotIndex;
    v2->_slotIndex = &unk_284C3E588;

    nominalPower = v3->_nominalPower;
    v3->_nominalPower = 0;

    duration = v3->_duration;
    v3->_duration = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct);
  slotIndex = [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)self slotIndex];
  [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)v4 setSlotIndex:slotIndex];

  nominalPower = [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)self nominalPower];
  [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)v4 setNominalPower:nominalPower];

  duration = [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)self duration];
  [(MTRDeviceEnergyManagementClusterSlotAdjustmentStruct *)v4 setDuration:duration];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: slotIndex:%@ nominalPower:%@; duration:%@; >", v5, self->_slotIndex, self->_nominalPower, self->_duration];;

  return v6;
}

@end