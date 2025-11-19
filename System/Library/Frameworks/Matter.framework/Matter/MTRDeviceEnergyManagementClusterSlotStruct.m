@interface MTRDeviceEnergyManagementClusterSlotStruct
- (MTRDeviceEnergyManagementClusterSlotStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDeviceEnergyManagementClusterSlotStruct

- (MTRDeviceEnergyManagementClusterSlotStruct)init
{
  v23.receiver = self;
  v23.super_class = MTRDeviceEnergyManagementClusterSlotStruct;
  v2 = [(MTRDeviceEnergyManagementClusterSlotStruct *)&v23 init];
  v3 = v2;
  if (v2)
  {
    minDuration = v2->_minDuration;
    v2->_minDuration = &unk_284C3E588;

    maxDuration = v3->_maxDuration;
    v3->_maxDuration = &unk_284C3E588;

    defaultDuration = v3->_defaultDuration;
    v3->_defaultDuration = &unk_284C3E588;

    elapsedSlotTime = v3->_elapsedSlotTime;
    v3->_elapsedSlotTime = &unk_284C3E588;

    remainingSlotTime = v3->_remainingSlotTime;
    v3->_remainingSlotTime = &unk_284C3E588;

    slotIsPausable = v3->_slotIsPausable;
    v3->_slotIsPausable = 0;

    minPauseDuration = v3->_minPauseDuration;
    v3->_minPauseDuration = 0;

    maxPauseDuration = v3->_maxPauseDuration;
    v3->_maxPauseDuration = 0;

    manufacturerESAState = v3->_manufacturerESAState;
    v3->_manufacturerESAState = 0;

    nominalPower = v3->_nominalPower;
    v3->_nominalPower = 0;

    minPower = v3->_minPower;
    v3->_minPower = 0;

    maxPower = v3->_maxPower;
    v3->_maxPower = 0;

    nominalEnergy = v3->_nominalEnergy;
    v3->_nominalEnergy = 0;

    costs = v3->_costs;
    v3->_costs = 0;

    minPowerAdjustment = v3->_minPowerAdjustment;
    v3->_minPowerAdjustment = 0;

    maxPowerAdjustment = v3->_maxPowerAdjustment;
    v3->_maxPowerAdjustment = 0;

    minDurationAdjustment = v3->_minDurationAdjustment;
    v3->_minDurationAdjustment = 0;

    maxDurationAdjustment = v3->_maxDurationAdjustment;
    v3->_maxDurationAdjustment = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDeviceEnergyManagementClusterSlotStruct);
  v5 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self minDuration];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMinDuration:v5];

  v6 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self maxDuration];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMaxDuration:v6];

  v7 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self defaultDuration];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setDefaultDuration:v7];

  v8 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self elapsedSlotTime];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setElapsedSlotTime:v8];

  v9 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self remainingSlotTime];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setRemainingSlotTime:v9];

  v10 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self slotIsPausable];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setSlotIsPausable:v10];

  v11 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self minPauseDuration];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMinPauseDuration:v11];

  v12 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self maxPauseDuration];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMaxPauseDuration:v12];

  v13 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self manufacturerESAState];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setManufacturerESAState:v13];

  v14 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self nominalPower];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setNominalPower:v14];

  v15 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self minPower];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMinPower:v15];

  v16 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self maxPower];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMaxPower:v16];

  v17 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self nominalEnergy];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setNominalEnergy:v17];

  v18 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self costs];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setCosts:v18];

  v19 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self minPowerAdjustment];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMinPowerAdjustment:v19];

  v20 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self maxPowerAdjustment];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMaxPowerAdjustment:v20];

  v21 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self minDurationAdjustment];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMinDurationAdjustment:v21];

  v22 = [(MTRDeviceEnergyManagementClusterSlotStruct *)self maxDurationAdjustment];
  [(MTRDeviceEnergyManagementClusterSlotStruct *)v4 setMaxDurationAdjustment:v22];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: minDuration:%@ maxDuration:%@; defaultDuration:%@; elapsedSlotTime:%@; remainingSlotTime:%@; slotIsPausable:%@; minPauseDuration:%@; maxPauseDuration:%@; manufacturerESAState:%@; nominalPower:%@; minPower:%@; maxPower:%@; nominalEnergy:%@; costs:%@; minPowerAdjustment:%@; maxPowerAdjustment:%@; minDurationAdjustment:%@; maxDurationAdjustment:%@; >", v5, self->_minDuration, self->_maxDuration, self->_defaultDuration, self->_elapsedSlotTime, self->_remainingSlotTime, self->_slotIsPausable, self->_minPauseDuration, self->_maxPauseDuration, self->_manufacturerESAState, self->_nominalPower, self->_minPower, self->_maxPower, self->_nominalEnergy, self->_costs, self->_minPowerAdjustment, self->_maxPowerAdjustment, self->_minDurationAdjustment, self->_maxDurationAdjustment];;

  return v6;
}

@end