@interface MTRThermostatClusterLocalTemperatureChangeEvent
- (MTRThermostatClusterLocalTemperatureChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterLocalTemperatureChangeEvent

- (MTRThermostatClusterLocalTemperatureChangeEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRThermostatClusterLocalTemperatureChangeEvent;
  v2 = [(MTRThermostatClusterLocalTemperatureChangeEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    currentLocalTemperature = v2->_currentLocalTemperature;
    v2->_currentLocalTemperature = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterLocalTemperatureChangeEvent);
  currentLocalTemperature = [(MTRThermostatClusterLocalTemperatureChangeEvent *)self currentLocalTemperature];
  [(MTRThermostatClusterLocalTemperatureChangeEvent *)v4 setCurrentLocalTemperature:currentLocalTemperature];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: currentLocalTemperature:%@ >", v5, self->_currentLocalTemperature];;

  return v6;
}

@end