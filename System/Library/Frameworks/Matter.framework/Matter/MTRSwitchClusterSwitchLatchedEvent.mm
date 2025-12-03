@interface MTRSwitchClusterSwitchLatchedEvent
- (MTRSwitchClusterSwitchLatchedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSwitchClusterSwitchLatchedEvent

- (MTRSwitchClusterSwitchLatchedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSwitchClusterSwitchLatchedEvent;
  v2 = [(MTRSwitchClusterSwitchLatchedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    newPosition = v2->_newPosition;
    v2->_newPosition = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSwitchClusterSwitchLatchedEvent);
  getNewPosition = [(MTRSwitchClusterSwitchLatchedEvent *)self getNewPosition];
  [(MTRSwitchClusterSwitchLatchedEvent *)v4 setNewPosition:getNewPosition];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: newPosition:%@ >", v5, self->_newPosition];;

  return v6;
}

@end