@interface MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct
- (MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct

- (MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct;
  v2 = [(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    order = v2->_order;
    v2->_order = &unk_284C3E588;

    measurement = v3->_measurement;
    v3->_measurement = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct);
  v5 = [(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct *)self order];
  [(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct *)v4 setOrder:v5];

  v6 = [(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct *)self measurement];
  [(MTRElectricalPowerMeasurementClusterHarmonicMeasurementStruct *)v4 setMeasurement:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: order:%@ measurement:%@; >", v5, self->_order, self->_measurement];;

  return v6;
}

@end