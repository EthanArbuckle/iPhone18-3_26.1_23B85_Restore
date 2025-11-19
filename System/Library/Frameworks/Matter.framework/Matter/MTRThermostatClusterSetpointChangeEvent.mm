@interface MTRThermostatClusterSetpointChangeEvent
- (MTRThermostatClusterSetpointChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterSetpointChangeEvent

- (MTRThermostatClusterSetpointChangeEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRThermostatClusterSetpointChangeEvent;
  v2 = [(MTRThermostatClusterSetpointChangeEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    systemMode = v2->_systemMode;
    v2->_systemMode = &unk_284C3E588;

    occupancy = v3->_occupancy;
    v3->_occupancy = 0;

    previousSetpoint = v3->_previousSetpoint;
    v3->_previousSetpoint = 0;

    currentSetpoint = v3->_currentSetpoint;
    v3->_currentSetpoint = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterSetpointChangeEvent);
  v5 = [(MTRThermostatClusterSetpointChangeEvent *)self systemMode];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setSystemMode:v5];

  v6 = [(MTRThermostatClusterSetpointChangeEvent *)self occupancy];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setOccupancy:v6];

  v7 = [(MTRThermostatClusterSetpointChangeEvent *)self previousSetpoint];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setPreviousSetpoint:v7];

  v8 = [(MTRThermostatClusterSetpointChangeEvent *)self currentSetpoint];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setCurrentSetpoint:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: systemMode:%@ occupancy:%@; previousSetpoint:%@; currentSetpoint:%@; >", v5, self->_systemMode, self->_occupancy, self->_previousSetpoint, self->_currentSetpoint];;

  return v6;
}

@end