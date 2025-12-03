@interface MTRElectricalPowerMeasurementClusterMeasurementRangeStruct
- (MTRElectricalPowerMeasurementClusterMeasurementRangeStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalPowerMeasurementClusterMeasurementRangeStruct

- (MTRElectricalPowerMeasurementClusterMeasurementRangeStruct)init
{
  v16.receiver = self;
  v16.super_class = MTRElectricalPowerMeasurementClusterMeasurementRangeStruct;
  v2 = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)&v16 init];
  v3 = v2;
  if (v2)
  {
    measurementType = v2->_measurementType;
    v2->_measurementType = &unk_284C3E588;

    min = v3->_min;
    v3->_min = &unk_284C3E588;

    max = v3->_max;
    v3->_max = &unk_284C3E588;

    startTimestamp = v3->_startTimestamp;
    v3->_startTimestamp = 0;

    endTimestamp = v3->_endTimestamp;
    v3->_endTimestamp = 0;

    minTimestamp = v3->_minTimestamp;
    v3->_minTimestamp = 0;

    maxTimestamp = v3->_maxTimestamp;
    v3->_maxTimestamp = 0;

    startSystime = v3->_startSystime;
    v3->_startSystime = 0;

    endSystime = v3->_endSystime;
    v3->_endSystime = 0;

    minSystime = v3->_minSystime;
    v3->_minSystime = 0;

    maxSystime = v3->_maxSystime;
    v3->_maxSystime = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct);
  measurementType = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self measurementType];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMeasurementType:measurementType];

  v6 = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self min];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMin:v6];

  v7 = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self max];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMax:v7];

  startTimestamp = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self startTimestamp];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setStartTimestamp:startTimestamp];

  endTimestamp = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self endTimestamp];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setEndTimestamp:endTimestamp];

  minTimestamp = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self minTimestamp];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMinTimestamp:minTimestamp];

  maxTimestamp = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self maxTimestamp];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMaxTimestamp:maxTimestamp];

  startSystime = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self startSystime];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setStartSystime:startSystime];

  endSystime = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self endSystime];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setEndSystime:endSystime];

  minSystime = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self minSystime];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMinSystime:minSystime];

  maxSystime = [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)self maxSystime];
  [(MTRElectricalPowerMeasurementClusterMeasurementRangeStruct *)v4 setMaxSystime:maxSystime];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: measurementType:%@ min:%@; max:%@; startTimestamp:%@; endTimestamp:%@; minTimestamp:%@; maxTimestamp:%@; startSystime:%@; endSystime:%@; minSystime:%@; maxSystime:%@; >", v5, self->_measurementType, self->_min, self->_max, self->_startTimestamp, self->_endTimestamp, self->_minTimestamp, self->_maxTimestamp, self->_startSystime, self->_endSystime, self->_minSystime, self->_maxSystime];;

  return v6;
}

@end