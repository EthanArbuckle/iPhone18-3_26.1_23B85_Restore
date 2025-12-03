@interface MTRThermostatClusterRunningStateChangeEvent
- (MTRThermostatClusterRunningStateChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterRunningStateChangeEvent

- (MTRThermostatClusterRunningStateChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterRunningStateChangeEvent;
  v2 = [(MTRThermostatClusterRunningStateChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousRunningState = v2->_previousRunningState;
    v2->_previousRunningState = 0;

    currentRunningState = v3->_currentRunningState;
    v3->_currentRunningState = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterRunningStateChangeEvent);
  previousRunningState = [(MTRThermostatClusterRunningStateChangeEvent *)self previousRunningState];
  [(MTRThermostatClusterRunningStateChangeEvent *)v4 setPreviousRunningState:previousRunningState];

  currentRunningState = [(MTRThermostatClusterRunningStateChangeEvent *)self currentRunningState];
  [(MTRThermostatClusterRunningStateChangeEvent *)v4 setCurrentRunningState:currentRunningState];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousRunningState:%@ currentRunningState:%@; >", v5, self->_previousRunningState, self->_currentRunningState];;

  return v6;
}

@end