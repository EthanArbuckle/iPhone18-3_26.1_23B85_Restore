@interface MTRThermostatClusterScheduleStruct
- (MTRThermostatClusterScheduleStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThermostatClusterScheduleStruct

- (MTRThermostatClusterScheduleStruct)init
{
  v12.receiver = self;
  v12.super_class = MTRThermostatClusterScheduleStruct;
  v2 = [(MTRThermostatClusterScheduleStruct *)&v12 init];
  v3 = v2;
  if (v2)
  {
    scheduleHandle = v2->_scheduleHandle;
    v2->_scheduleHandle = 0;

    systemMode = v3->_systemMode;
    v3->_systemMode = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;

    presetHandle = v3->_presetHandle;
    v3->_presetHandle = 0;

    array = [MEMORY[0x277CBEA60] array];
    transitions = v3->_transitions;
    v3->_transitions = array;

    builtIn = v3->_builtIn;
    v3->_builtIn = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThermostatClusterScheduleStruct);
  scheduleHandle = [(MTRThermostatClusterScheduleStruct *)self scheduleHandle];
  [(MTRThermostatClusterScheduleStruct *)v4 setScheduleHandle:scheduleHandle];

  systemMode = [(MTRThermostatClusterScheduleStruct *)self systemMode];
  [(MTRThermostatClusterScheduleStruct *)v4 setSystemMode:systemMode];

  name = [(MTRThermostatClusterScheduleStruct *)self name];
  [(MTRThermostatClusterScheduleStruct *)v4 setName:name];

  presetHandle = [(MTRThermostatClusterScheduleStruct *)self presetHandle];
  [(MTRThermostatClusterScheduleStruct *)v4 setPresetHandle:presetHandle];

  transitions = [(MTRThermostatClusterScheduleStruct *)self transitions];
  [(MTRThermostatClusterScheduleStruct *)v4 setTransitions:transitions];

  builtIn = [(MTRThermostatClusterScheduleStruct *)self builtIn];
  [(MTRThermostatClusterScheduleStruct *)v4 setBuiltIn:builtIn];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_scheduleHandle base64EncodedStringWithOptions:0];
  systemMode = self->_systemMode;
  name = self->_name;
  v9 = [(NSData *)self->_presetHandle base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: scheduleHandle:%@ systemMode:%@; name:%@; presetHandle:%@; transitions:%@; builtIn:%@; >", v5, v6, systemMode, name, v9, self->_transitions, self->_builtIn];;

  return v10;
}

@end