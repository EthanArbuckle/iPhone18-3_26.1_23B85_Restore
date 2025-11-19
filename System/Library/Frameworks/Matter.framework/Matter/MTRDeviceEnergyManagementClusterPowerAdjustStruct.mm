@interface MTRDeviceEnergyManagementClusterPowerAdjustStruct
- (MTRDeviceEnergyManagementClusterPowerAdjustStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterPowerAdjustStruct

- (MTRDeviceEnergyManagementClusterPowerAdjustStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRDeviceEnergyManagementClusterPowerAdjustStruct;
  v2 = [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    minPower = v2->_minPower;
    v2->_minPower = &unk_284C3E588;

    maxPower = v3->_maxPower;
    v3->_maxPower = &unk_284C3E588;

    minDuration = v3->_minDuration;
    v3->_minDuration = &unk_284C3E588;

    maxDuration = v3->_maxDuration;
    v3->_maxDuration = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterPowerAdjustStruct);
  v5 = [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)self minPower];
  [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)v4 setMinPower:v5];

  v6 = [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)self maxPower];
  [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)v4 setMaxPower:v6];

  v7 = [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)self minDuration];
  [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)v4 setMinDuration:v7];

  v8 = [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)self maxDuration];
  [(MTRDeviceEnergyManagementClusterPowerAdjustStruct *)v4 setMaxDuration:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: minPower:%@ maxPower:%@; minDuration:%@; maxDuration:%@; >", v5, self->_minPower, self->_maxPower, self->_minDuration, self->_maxDuration];;

  return v6;
}

@end