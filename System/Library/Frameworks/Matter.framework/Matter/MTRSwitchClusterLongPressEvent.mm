@interface MTRSwitchClusterLongPressEvent
- (MTRSwitchClusterLongPressEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRSwitchClusterLongPressEvent

- (MTRSwitchClusterLongPressEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRSwitchClusterLongPressEvent;
  v2 = [(MTRSwitchClusterLongPressEvent *)&v6 init];
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
  v4 = objc_alloc_init(MTRSwitchClusterLongPressEvent);
  v5 = [(MTRSwitchClusterLongPressEvent *)self getNewPosition];
  [(MTRSwitchClusterLongPressEvent *)v4 setNewPosition:v5];

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