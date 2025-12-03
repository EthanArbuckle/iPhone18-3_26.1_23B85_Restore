@interface MTRRefrigeratorAlarmClusterNotifyEvent
- (MTRRefrigeratorAlarmClusterNotifyEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRRefrigeratorAlarmClusterNotifyEvent

- (MTRRefrigeratorAlarmClusterNotifyEvent)init
{
  v9.receiver = self;
  v9.super_class = MTRRefrigeratorAlarmClusterNotifyEvent;
  v2 = [(MTRRefrigeratorAlarmClusterNotifyEvent *)&v9 init];
  v3 = v2;
  if (v2)
  {
    active = v2->_active;
    v2->_active = &unk_284C3E588;

    inactive = v3->_inactive;
    v3->_inactive = &unk_284C3E588;

    state = v3->_state;
    v3->_state = &unk_284C3E588;

    mask = v3->_mask;
    v3->_mask = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRRefrigeratorAlarmClusterNotifyEvent);
  active = [(MTRRefrigeratorAlarmClusterNotifyEvent *)self active];
  [(MTRRefrigeratorAlarmClusterNotifyEvent *)v4 setActive:active];

  inactive = [(MTRRefrigeratorAlarmClusterNotifyEvent *)self inactive];
  [(MTRRefrigeratorAlarmClusterNotifyEvent *)v4 setInactive:inactive];

  state = [(MTRRefrigeratorAlarmClusterNotifyEvent *)self state];
  [(MTRRefrigeratorAlarmClusterNotifyEvent *)v4 setState:state];

  mask = [(MTRRefrigeratorAlarmClusterNotifyEvent *)self mask];
  [(MTRRefrigeratorAlarmClusterNotifyEvent *)v4 setMask:mask];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: active:%@ inactive:%@; state:%@; mask:%@; >", v5, self->_active, self->_inactive, self->_state, self->_mask];;

  return v6;
}

@end