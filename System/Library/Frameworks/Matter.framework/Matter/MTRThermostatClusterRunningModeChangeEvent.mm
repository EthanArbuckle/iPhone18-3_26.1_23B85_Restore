@interface MTRThermostatClusterRunningModeChangeEvent
- (MTRThermostatClusterRunningModeChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterRunningModeChangeEvent);
  previousRunningMode = [(MTRThermostatClusterRunningModeChangeEvent *)self previousRunningMode];
  [(MTRThermostatClusterRunningModeChangeEvent *)v4 setPreviousRunningMode:previousRunningMode];

  currentRunningMode = [(MTRThermostatClusterRunningModeChangeEvent *)self currentRunningMode];
  [(MTRThermostatClusterRunningModeChangeEvent *)v4 setCurrentRunningMode:currentRunningMode];

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