@interface MTRThermostatClusterScheduleTransitionStruct
- (MTRThermostatClusterScheduleTransitionStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterScheduleTransitionStruct

- (MTRThermostatClusterScheduleTransitionStruct)init
{
  v11.receiver = self;
  v11.super_class = MTRThermostatClusterScheduleTransitionStruct;
  v2 = [(MTRThermostatClusterScheduleTransitionStruct *)&v11 init];
  v3 = v2;
  if (v2)
  {
    dayOfWeek = v2->_dayOfWeek;
    v2->_dayOfWeek = &unk_284C3E588;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = &unk_284C3E588;

    presetHandle = v3->_presetHandle;
    v3->_presetHandle = 0;

    systemMode = v3->_systemMode;
    v3->_systemMode = 0;

    coolingSetpoint = v3->_coolingSetpoint;
    v3->_coolingSetpoint = 0;

    heatingSetpoint = v3->_heatingSetpoint;
    v3->_heatingSetpoint = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterScheduleTransitionStruct);
  dayOfWeek = [(MTRThermostatClusterScheduleTransitionStruct *)self dayOfWeek];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setDayOfWeek:dayOfWeek];

  transitionTime = [(MTRThermostatClusterScheduleTransitionStruct *)self transitionTime];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setTransitionTime:transitionTime];

  presetHandle = [(MTRThermostatClusterScheduleTransitionStruct *)self presetHandle];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setPresetHandle:presetHandle];

  systemMode = [(MTRThermostatClusterScheduleTransitionStruct *)self systemMode];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setSystemMode:systemMode];

  coolingSetpoint = [(MTRThermostatClusterScheduleTransitionStruct *)self coolingSetpoint];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setCoolingSetpoint:coolingSetpoint];

  heatingSetpoint = [(MTRThermostatClusterScheduleTransitionStruct *)self heatingSetpoint];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setHeatingSetpoint:heatingSetpoint];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dayOfWeek = self->_dayOfWeek;
  transitionTime = self->_transitionTime;
  v8 = [(NSData *)self->_presetHandle base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: dayOfWeek:%@ transitionTime:%@; presetHandle:%@; systemMode:%@; coolingSetpoint:%@; heatingSetpoint:%@; >", v5, dayOfWeek, transitionTime, v8, self->_systemMode, self->_coolingSetpoint, self->_heatingSetpoint];;

  return v9;
}

@end