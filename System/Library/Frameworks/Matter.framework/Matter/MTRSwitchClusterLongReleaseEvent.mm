@interface MTRSwitchClusterLongReleaseEvent
- (MTRSwitchClusterLongReleaseEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSwitchClusterLongReleaseEvent

- (MTRSwitchClusterLongReleaseEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSwitchClusterLongReleaseEvent;
  v2 = [(MTRSwitchClusterLongReleaseEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    previousPosition = v2->_previousPosition;
    v2->_previousPosition = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSwitchClusterLongReleaseEvent);
  previousPosition = [(MTRSwitchClusterLongReleaseEvent *)self previousPosition];
  [(MTRSwitchClusterLongReleaseEvent *)v4 setPreviousPosition:previousPosition];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: previousPosition:%@ >", v5, self->_previousPosition];;

  return v6;
}

@end