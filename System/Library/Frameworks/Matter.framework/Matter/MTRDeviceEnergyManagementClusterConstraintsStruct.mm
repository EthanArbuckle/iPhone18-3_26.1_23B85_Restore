@interface MTRDeviceEnergyManagementClusterConstraintsStruct
- (MTRDeviceEnergyManagementClusterConstraintsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterConstraintsStruct

- (MTRDeviceEnergyManagementClusterConstraintsStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRDeviceEnergyManagementClusterConstraintsStruct;
  v2 = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    startTime = v2->_startTime;
    v2->_startTime = &unk_284C3E588;

    duration = v3->_duration;
    v3->_duration = &unk_284C3E588;

    nominalPower = v3->_nominalPower;
    v3->_nominalPower = 0;

    maximumEnergy = v3->_maximumEnergy;
    v3->_maximumEnergy = 0;

    loadControl = v3->_loadControl;
    v3->_loadControl = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterConstraintsStruct);
  startTime = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)self startTime];
  [(MTRDeviceEnergyManagementClusterConstraintsStruct *)v4 setStartTime:startTime];

  duration = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)self duration];
  [(MTRDeviceEnergyManagementClusterConstraintsStruct *)v4 setDuration:duration];

  nominalPower = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)self nominalPower];
  [(MTRDeviceEnergyManagementClusterConstraintsStruct *)v4 setNominalPower:nominalPower];

  maximumEnergy = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)self maximumEnergy];
  [(MTRDeviceEnergyManagementClusterConstraintsStruct *)v4 setMaximumEnergy:maximumEnergy];

  loadControl = [(MTRDeviceEnergyManagementClusterConstraintsStruct *)self loadControl];
  [(MTRDeviceEnergyManagementClusterConstraintsStruct *)v4 setLoadControl:loadControl];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: startTime:%@ duration:%@; nominalPower:%@; maximumEnergy:%@; loadControl:%@; >", v5, self->_startTime, self->_duration, self->_nominalPower, self->_maximumEnergy, self->_loadControl];;

  return v6;
}

@end