@interface MTRTimeSynchronizationClusterTimeZoneStatusEvent
- (MTRTimeSynchronizationClusterTimeZoneStatusEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTimeSynchronizationClusterTimeZoneStatusEvent

- (MTRTimeSynchronizationClusterTimeZoneStatusEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRTimeSynchronizationClusterTimeZoneStatusEvent;
  v2 = [(MTRTimeSynchronizationClusterTimeZoneStatusEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    offset = v2->_offset;
    v2->_offset = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTimeSynchronizationClusterTimeZoneStatusEvent);
  offset = [(MTRTimeSynchronizationClusterTimeZoneStatusEvent *)self offset];
  [(MTRTimeSynchronizationClusterTimeZoneStatusEvent *)v4 setOffset:offset];

  name = [(MTRTimeSynchronizationClusterTimeZoneStatusEvent *)self name];
  [(MTRTimeSynchronizationClusterTimeZoneStatusEvent *)v4 setName:name];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: offset:%@ name:%@; >", v5, self->_offset, self->_name];;

  return v6;
}

@end