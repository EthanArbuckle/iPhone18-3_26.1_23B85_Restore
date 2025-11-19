@interface MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent
- (MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent

- (MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent;
  v2 = [(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    alarmsActive = v2->_alarmsActive;
    v2->_alarmsActive = &unk_284C3E588;

    alarmsSuppressed = v3->_alarmsSuppressed;
    v3->_alarmsSuppressed = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent);
  v5 = [(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent *)self alarmsActive];
  [(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent *)v4 setAlarmsActive:v5];

  v6 = [(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent *)self alarmsSuppressed];
  [(MTRBooleanStateConfigurationClusterAlarmsStateChangedEvent *)v4 setAlarmsSuppressed:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: alarmsActive:%@ alarmsSuppressed:%@; >", v5, self->_alarmsActive, self->_alarmsSuppressed];;

  return v6;
}

@end