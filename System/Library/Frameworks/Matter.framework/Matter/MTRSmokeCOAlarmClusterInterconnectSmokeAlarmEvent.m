@interface MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent
- (MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent

- (MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent;
  v2 = [(MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent *)&v6 init];
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
  v4 = objc_alloc_init(MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent);
  v5 = [(MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent *)self alarmSeverityLevel];
  [(MTRSmokeCOAlarmClusterInterconnectSmokeAlarmEvent *)v4 setAlarmSeverityLevel:v5];

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