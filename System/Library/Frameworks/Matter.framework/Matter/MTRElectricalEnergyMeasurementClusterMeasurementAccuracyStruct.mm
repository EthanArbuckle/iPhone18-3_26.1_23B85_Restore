@interface MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct
- (MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct

- (MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct;
  v2 = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)&v11 init];
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

    array = [MEMORY[0x277CBEA60] array];
    accuracyRanges = v3->_accuracyRanges;
    v3->_accuracyRanges = array;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct);
  measurementType = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)self measurementType];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)v4 setMeasurementType:measurementType];

  measured = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)self measured];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)v4 setMeasured:measured];

  minMeasuredValue = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)self minMeasuredValue];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)v4 setMinMeasuredValue:minMeasuredValue];

  maxMeasuredValue = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)self maxMeasuredValue];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)v4 setMaxMeasuredValue:maxMeasuredValue];

  accuracyRanges = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)self accuracyRanges];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyStruct *)v4 setAccuracyRanges:accuracyRanges];

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