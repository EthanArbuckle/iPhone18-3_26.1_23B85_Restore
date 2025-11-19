@interface MTRThermostatClusterScheduleTypeStruct
- (MTRThermostatClusterScheduleTypeStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRThermostatClusterScheduleTypeStruct

- (MTRThermostatClusterScheduleTypeStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRThermostatClusterScheduleTypeStruct;
  v2 = [(MTRThermostatClusterScheduleTypeStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    systemMode = v2->_systemMode;
    v2->_systemMode = &unk_284C3E588;

    numberOfSchedules = v3->_numberOfSchedules;
    v3->_numberOfSchedules = &unk_284C3E588;

    scheduleTypeFeatures = v3->_scheduleTypeFeatures;
    v3->_scheduleTypeFeatures = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRThermostatClusterScheduleTypeStruct);
  v5 = [(MTRThermostatClusterScheduleTypeStruct *)self systemMode];
  [(MTRThermostatClusterScheduleTypeStruct *)v4 setSystemMode:v5];

  v6 = [(MTRThermostatClusterScheduleTypeStruct *)self numberOfSchedules];
  [(MTRThermostatClusterScheduleTypeStruct *)v4 setNumberOfSchedules:v6];

  v7 = [(MTRThermostatClusterScheduleTypeStruct *)self scheduleTypeFeatures];
  [(MTRThermostatClusterScheduleTypeStruct *)v4 setScheduleTypeFeatures:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: systemMode:%@ numberOfSchedules:%@; scheduleTypeFeatures:%@; >", v5, self->_systemMode, self->_numberOfSchedules, self->_scheduleTypeFeatures];;

  return v6;
}

@end