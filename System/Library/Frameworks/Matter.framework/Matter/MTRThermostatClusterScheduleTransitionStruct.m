@interface MTRThermostatClusterScheduleTransitionStruct
- (MTRThermostatClusterScheduleTransitionStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterScheduleTransitionStruct);
  v5 = [(MTRThermostatClusterScheduleTransitionStruct *)self dayOfWeek];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setDayOfWeek:v5];

  v6 = [(MTRThermostatClusterScheduleTransitionStruct *)self transitionTime];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setTransitionTime:v6];

  v7 = [(MTRThermostatClusterScheduleTransitionStruct *)self presetHandle];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setPresetHandle:v7];

  v8 = [(MTRThermostatClusterScheduleTransitionStruct *)self systemMode];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setSystemMode:v8];

  v9 = [(MTRThermostatClusterScheduleTransitionStruct *)self coolingSetpoint];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setCoolingSetpoint:v9];

  v10 = [(MTRThermostatClusterScheduleTransitionStruct *)self heatingSetpoint];
  [(MTRThermostatClusterScheduleTransitionStruct *)v4 setHeatingSetpoint:v10];

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