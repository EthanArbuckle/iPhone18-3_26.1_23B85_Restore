@interface MTRThermostatClusterOccupancyChangeEvent
- (MTRThermostatClusterOccupancyChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterOccupancyChangeEvent

- (MTRThermostatClusterOccupancyChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterOccupancyChangeEvent;
  v2 = [(MTRThermostatClusterOccupancyChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousOccupancy = v2->_previousOccupancy;
    v2->_previousOccupancy = 0;

    currentOccupancy = v3->_currentOccupancy;
    v3->_currentOccupancy = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterOccupancyChangeEvent);
  v5 = [(MTRThermostatClusterOccupancyChangeEvent *)self previousOccupancy];
  [(MTRThermostatClusterOccupancyChangeEvent *)v4 setPreviousOccupancy:v5];

  v6 = [(MTRThermostatClusterOccupancyChangeEvent *)self currentOccupancy];
  [(MTRThermostatClusterOccupancyChangeEvent *)v4 setCurrentOccupancy:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousOccupancy:%@ currentOccupancy:%@; >", v5, self->_previousOccupancy, self->_currentOccupancy];;

  return v6;
}

@end