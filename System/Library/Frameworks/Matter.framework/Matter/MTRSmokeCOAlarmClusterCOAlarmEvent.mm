@interface MTRSmokeCOAlarmClusterCOAlarmEvent
- (MTRSmokeCOAlarmClusterCOAlarmEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSmokeCOAlarmClusterCOAlarmEvent

- (MTRSmokeCOAlarmClusterCOAlarmEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSmokeCOAlarmClusterCOAlarmEvent;
  v2 = [(MTRSmokeCOAlarmClusterCOAlarmEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    alarmSeverityLevel = v2->_alarmSeverityLevel;
    v2->_alarmSeverityLevel = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSmokeCOAlarmClusterCOAlarmEvent);
  alarmSeverityLevel = [(MTRSmokeCOAlarmClusterCOAlarmEvent *)self alarmSeverityLevel];
  [(MTRSmokeCOAlarmClusterCOAlarmEvent *)v4 setAlarmSeverityLevel:alarmSeverityLevel];

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