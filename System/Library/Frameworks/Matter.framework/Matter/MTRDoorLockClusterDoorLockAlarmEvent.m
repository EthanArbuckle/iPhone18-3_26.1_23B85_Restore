@interface MTRDoorLockClusterDoorLockAlarmEvent
- (MTRDoorLockClusterDoorLockAlarmEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterDoorLockAlarmEvent

- (MTRDoorLockClusterDoorLockAlarmEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRDoorLockClusterDoorLockAlarmEvent;
  v2 = [(MTRDoorLockClusterDoorLockAlarmEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    alarmCode = v2->_alarmCode;
    v2->_alarmCode = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterDoorLockAlarmEvent);
  v5 = [(MTRDoorLockClusterDoorLockAlarmEvent *)self alarmCode];
  [(MTRDoorLockClusterDoorLockAlarmEvent *)v4 setAlarmCode:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: alarmCode:%@ >", v5, self->_alarmCode];;

  return v6;
}

@end