@interface MTRDoorLockClusterDoorStateChangeEvent
- (MTRDoorLockClusterDoorStateChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterDoorStateChangeEvent

- (MTRDoorLockClusterDoorStateChangeEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRDoorLockClusterDoorStateChangeEvent;
  v2 = [(MTRDoorLockClusterDoorStateChangeEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    doorState = v2->_doorState;
    v2->_doorState = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterDoorStateChangeEvent);
  v5 = [(MTRDoorLockClusterDoorStateChangeEvent *)self doorState];
  [(MTRDoorLockClusterDoorStateChangeEvent *)v4 setDoorState:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: doorState:%@ >", v5, self->_doorState];;

  return v6;
}

@end