@interface MTRThermostatClusterWeeklyScheduleTransitionStruct
- (MTRThermostatClusterWeeklyScheduleTransitionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterWeeklyScheduleTransitionStruct

- (MTRThermostatClusterWeeklyScheduleTransitionStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRThermostatClusterWeeklyScheduleTransitionStruct;
  v2 = [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    transitionTime = v2->_transitionTime;
    v2->_transitionTime = &unk_284C3E588;

    heatSetpoint = v3->_heatSetpoint;
    v3->_heatSetpoint = 0;

    coolSetpoint = v3->_coolSetpoint;
    v3->_coolSetpoint = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterWeeklyScheduleTransitionStruct);
  transitionTime = [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)self transitionTime];
  [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)v4 setTransitionTime:transitionTime];

  heatSetpoint = [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)self heatSetpoint];
  [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)v4 setHeatSetpoint:heatSetpoint];

  coolSetpoint = [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)self coolSetpoint];
  [(MTRThermostatClusterWeeklyScheduleTransitionStruct *)v4 setCoolSetpoint:coolSetpoint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: transitionTime:%@ heatSetpoint:%@; coolSetpoint:%@; >", v5, self->_transitionTime, self->_heatSetpoint, self->_coolSetpoint];;

  return v6;
}

@end