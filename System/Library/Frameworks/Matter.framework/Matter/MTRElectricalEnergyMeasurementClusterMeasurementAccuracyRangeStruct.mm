@interface MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct
- (MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct

- (MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct;
  v2 = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    rangeMin = v2->_rangeMin;
    v2->_rangeMin = &unk_284C3E588;

    rangeMax = v3->_rangeMax;
    v3->_rangeMax = &unk_284C3E588;

    percentMax = v3->_percentMax;
    v3->_percentMax = 0;

    percentMin = v3->_percentMin;
    v3->_percentMin = 0;

    percentTypical = v3->_percentTypical;
    v3->_percentTypical = 0;

    fixedMax = v3->_fixedMax;
    v3->_fixedMax = 0;

    fixedMin = v3->_fixedMin;
    v3->_fixedMin = 0;

    fixedTypical = v3->_fixedTypical;
    v3->_fixedTypical = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct);
  rangeMin = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self rangeMin];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setRangeMin:rangeMin];

  rangeMax = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self rangeMax];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setRangeMax:rangeMax];

  percentMax = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self percentMax];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentMax:percentMax];

  percentMin = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self percentMin];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentMin:percentMin];

  percentTypical = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self percentTypical];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentTypical:percentTypical];

  fixedMax = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedMax];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedMax:fixedMax];

  fixedMin = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedMin];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedMin:fixedMin];

  fixedTypical = [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedTypical];
  [(MTRElectricalEnergyMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedTypical:fixedTypical];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: rangeMin:%@ rangeMax:%@; percentMax:%@; percentMin:%@; percentTypical:%@; fixedMax:%@; fixedMin:%@; fixedTypical:%@; >", v5, self->_rangeMin, self->_rangeMax, self->_percentMax, self->_percentMin, self->_percentTypical, self->_fixedMax, self->_fixedMin, self->_fixedTypical];;

  return v6;
}

@end