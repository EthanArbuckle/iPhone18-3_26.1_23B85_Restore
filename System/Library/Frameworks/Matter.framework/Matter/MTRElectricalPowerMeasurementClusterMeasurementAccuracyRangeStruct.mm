@interface MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct
- (MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct

- (MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct;
  v2 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)&v13 init];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct);
  v5 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self rangeMin];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setRangeMin:v5];

  v6 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self rangeMax];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setRangeMax:v6];

  v7 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self percentMax];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentMax:v7];

  v8 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self percentMin];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentMin:v8];

  v9 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self percentTypical];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setPercentTypical:v9];

  v10 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedMax];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedMax:v10];

  v11 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedMin];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedMin:v11];

  v12 = [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)self fixedTypical];
  [(MTRElectricalPowerMeasurementClusterMeasurementAccuracyRangeStruct *)v4 setFixedTypical:v12];

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