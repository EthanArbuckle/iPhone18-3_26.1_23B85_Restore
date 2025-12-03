@interface MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct
- (MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct

- (MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct;
  v2 = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)&v12 init];
  v3 = v2;
  if (v2)
  {
    energy = v2->_energy;
    v2->_energy = &unk_284C3E588;

    startTimestamp = v3->_startTimestamp;
    v3->_startTimestamp = 0;

    endTimestamp = v3->_endTimestamp;
    v3->_endTimestamp = 0;

    startSystime = v3->_startSystime;
    v3->_startSystime = 0;

    endSystime = v3->_endSystime;
    v3->_endSystime = 0;

    apparentEnergy = v3->_apparentEnergy;
    v3->_apparentEnergy = 0;

    reactiveEnergy = v3->_reactiveEnergy;
    v3->_reactiveEnergy = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct);
  energy = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self energy];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setEnergy:energy];

  startTimestamp = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self startTimestamp];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setStartTimestamp:startTimestamp];

  endTimestamp = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self endTimestamp];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setEndTimestamp:endTimestamp];

  startSystime = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self startSystime];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setStartSystime:startSystime];

  endSystime = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self endSystime];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setEndSystime:endSystime];

  apparentEnergy = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self apparentEnergy];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setApparentEnergy:apparentEnergy];

  reactiveEnergy = [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)self reactiveEnergy];
  [(MTRElectricalEnergyMeasurementClusterEnergyMeasurementStruct *)v4 setReactiveEnergy:reactiveEnergy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: energy:%@ startTimestamp:%@; endTimestamp:%@; startSystime:%@; endSystime:%@; apparentEnergy:%@; reactiveEnergy:%@; >", v5, self->_energy, self->_startTimestamp, self->_endTimestamp, self->_startSystime, self->_endSystime, self->_apparentEnergy, self->_reactiveEnergy];;

  return v6;
}

@end