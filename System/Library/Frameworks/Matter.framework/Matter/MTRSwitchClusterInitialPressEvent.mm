@interface MTRSwitchClusterInitialPressEvent
- (MTRSwitchClusterInitialPressEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSwitchClusterInitialPressEvent

- (MTRSwitchClusterInitialPressEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSwitchClusterInitialPressEvent;
  v2 = [(MTRSwitchClusterInitialPressEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    newPosition = v2->_newPosition;
    v2->_newPosition = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRSwitchClusterInitialPressEvent);
  v5 = [(MTRSwitchClusterInitialPressEvent *)self getNewPosition];
  [(MTRSwitchClusterInitialPressEvent *)v4 setNewPosition:v5];

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