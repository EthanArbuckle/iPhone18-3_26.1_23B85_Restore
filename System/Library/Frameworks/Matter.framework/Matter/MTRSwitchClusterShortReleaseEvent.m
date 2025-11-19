@interface MTRSwitchClusterShortReleaseEvent
- (MTRSwitchClusterShortReleaseEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSwitchClusterShortReleaseEvent

- (MTRSwitchClusterShortReleaseEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSwitchClusterShortReleaseEvent;
  v2 = [(MTRSwitchClusterShortReleaseEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    previousPosition = v2->_previousPosition;
    v2->_previousPosition = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRSwitchClusterShortReleaseEvent);
  v5 = [(MTRSwitchClusterShortReleaseEvent *)self previousPosition];
  [(MTRSwitchClusterShortReleaseEvent *)v4 setPreviousPosition:v5];

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