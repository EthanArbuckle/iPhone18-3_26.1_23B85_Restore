@interface MTRThermostatClusterSystemModeChangeEvent
- (MTRThermostatClusterSystemModeChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterSystemModeChangeEvent

- (MTRThermostatClusterSystemModeChangeEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRThermostatClusterSystemModeChangeEvent;
  v2 = [(MTRThermostatClusterSystemModeChangeEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    previousSystemMode = v2->_previousSystemMode;
    v2->_previousSystemMode = 0;

    currentSystemMode = v3->_currentSystemMode;
    v3->_currentSystemMode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterSystemModeChangeEvent);
  v5 = [(MTRThermostatClusterSystemModeChangeEvent *)self previousSystemMode];
  [(MTRThermostatClusterSystemModeChangeEvent *)v4 setPreviousSystemMode:v5];

  v6 = [(MTRThermostatClusterSystemModeChangeEvent *)self currentSystemMode];
  [(MTRThermostatClusterSystemModeChangeEvent *)v4 setCurrentSystemMode:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousSystemMode:%@ currentSystemMode:%@; >", v5, self->_previousSystemMode, self->_currentSystemMode];;

  return v6;
}

@end