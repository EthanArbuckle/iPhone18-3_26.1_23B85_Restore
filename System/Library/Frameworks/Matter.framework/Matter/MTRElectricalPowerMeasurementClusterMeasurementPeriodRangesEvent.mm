@interface MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent
- (MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
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
    array = [MEMORY[0x277CBEA60] array];
    ranges = v2->_ranges;
    v2->_ranges = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent);
  ranges = [(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent *)self ranges];
  [(MTRElectricalPowerMeasurementClusterMeasurementPeriodRangesEvent *)v4 setRanges:ranges];

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