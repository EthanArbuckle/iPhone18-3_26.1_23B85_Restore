@interface MTRThermostatClusterRunningModeChangeEvent
- (MTRThermostatClusterRunningModeChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterRunningModeChangeEvent

- (MTRThermostatClusterRunningModeChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterRunningModeChangeEvent;
  v2 = [(MTRThermostatClusterRunningModeChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousRunningMode = v2->_previousRunningMode;
    v2->_previousRunningMode = 0;

    currentRunningMode = v3->_currentRunningMode;
    v3->_currentRunningMode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterRunningModeChangeEvent);
  v5 = [(MTRThermostatClusterRunningModeChangeEvent *)self previousRunningMode];
  [(MTRThermostatClusterRunningModeChangeEvent *)v4 setPreviousRunningMode:v5];

  v6 = [(MTRThermostatClusterRunningModeChangeEvent *)self currentRunningMode];
  [(MTRThermostatClusterRunningModeChangeEvent *)v4 setCurrentRunningMode:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousRunningMode:%@ currentRunningMode:%@; >", v5, self->_previousRunningMode, self->_currentRunningMode];;

  return v6;
}

@end