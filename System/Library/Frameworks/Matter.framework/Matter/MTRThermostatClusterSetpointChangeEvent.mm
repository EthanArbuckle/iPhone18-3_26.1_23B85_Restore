@interface MTRThermostatClusterSetpointChangeEvent
- (MTRThermostatClusterSetpointChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterSetpointChangeEvent);
  systemMode = [(MTRThermostatClusterSetpointChangeEvent *)self systemMode];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setSystemMode:systemMode];

  occupancy = [(MTRThermostatClusterSetpointChangeEvent *)self occupancy];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setOccupancy:occupancy];

  previousSetpoint = [(MTRThermostatClusterSetpointChangeEvent *)self previousSetpoint];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setPreviousSetpoint:previousSetpoint];

  currentSetpoint = [(MTRThermostatClusterSetpointChangeEvent *)self currentSetpoint];
  [(MTRThermostatClusterSetpointChangeEvent *)v4 setCurrentSetpoint:currentSetpoint];

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