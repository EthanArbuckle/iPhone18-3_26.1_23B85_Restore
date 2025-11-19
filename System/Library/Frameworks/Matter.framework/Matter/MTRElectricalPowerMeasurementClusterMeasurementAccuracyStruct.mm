@interface MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct
- (MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct

- (MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct;
  v2 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    measurementType = v2->_measurementType;
    v2->_measurementType = &unk_284C3E588;

    measured = v3->_measured;
    v3->_measured = &unk_284C3E588;

    minMeasuredValue = v3->_minMeasuredValue;
    v3->_minMeasuredValue = &unk_284C3E588;

    maxMeasuredValue = v3->_maxMeasuredValue;
    v3->_maxMeasuredValue = &unk_284C3E588;

    v8 = [MEMORY[0x277CBEA60] array];
    accuracyRanges = v3->_accuracyRanges;
    v3->_accuracyRanges = v8;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct);
  v5 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)self measurementType];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)v4 setMeasurementType:v5];

  v6 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)self measured];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)v4 setMeasured:v6];

  v7 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)self minMeasuredValue];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)v4 setMinMeasuredValue:v7];

  v8 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)self maxMeasuredValue];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)v4 setMaxMeasuredValue:v8];

  v9 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)self accuracyRanges];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyStruct *)v4 setAccuracyRanges:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: measurementType:%@ measured:%@; minMeasuredValue:%@; maxMeasuredValue:%@; accuracyRanges:%@; >", v5, self->_measurementType, self->_measured, self->_minMeasuredValue, self->_maxMeasuredValue, self->_accuracyRanges];;

  return v6;
}

@end