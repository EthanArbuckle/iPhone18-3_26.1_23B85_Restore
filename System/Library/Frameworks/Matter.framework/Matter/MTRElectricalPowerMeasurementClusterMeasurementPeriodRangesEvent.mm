@interface MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent
- (MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent

- (MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent;
  v2 = [(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    ranges = v2->_ranges;
    v2->_ranges = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent);
  v5 = [(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent *)self ranges];
  [(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent *)v4 setRanges:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ranges:%@ >", v5, self->_ranges];;

  return v6;
}

@end