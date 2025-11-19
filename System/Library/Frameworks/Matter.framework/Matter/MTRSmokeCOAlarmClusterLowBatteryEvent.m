@interface MTRSmokeCOAlarmClusterLowBatteryEvent
- (MTRSmokeCOAlarmClusterLowBatteryEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSmokeCOAlarmClusterLowBatteryEvent

- (MTRSmokeCOAlarmClusterLowBatteryEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSmokeCOAlarmClusterLowBatteryEvent;
  v2 = [(MTRSmokeCOAlarmClusterLowBatteryEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    alarmSeverityLevel = v2->_alarmSeverityLevel;
    v2->_alarmSeverityLevel = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRSmokeCOAlarmClusterLowBatteryEvent);
  v5 = [(MTRSmokeCOAlarmClusterLowBatteryEvent *)self alarmSeverityLevel];
  [(MTRSmokeCOAlarmClusterLowBatteryEvent *)v4 setAlarmSeverityLevel:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: alarmSeverityLevel:%@ >", v5, self->_alarmSeverityLevel];;

  return v6;
}

@end