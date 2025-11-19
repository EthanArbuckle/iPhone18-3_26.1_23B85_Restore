@interface MTRBooleanStateClusterStateChangeEvent
- (MTRBooleanStateClusterStateChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRBooleanStateClusterStateChangeEvent

- (MTRBooleanStateClusterStateChangeEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRBooleanStateClusterStateChangeEvent;
  v2 = [(MTRBooleanStateClusterStateChangeEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    stateValue = v2->_stateValue;
    v2->_stateValue = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRBooleanStateClusterStateChangeEvent);
  v5 = [(MTRBooleanStateClusterStateChangeEvent *)self stateValue];
  [(MTRBooleanStateClusterStateChangeEvent *)v4 setStateValue:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: stateValue:%@ >", v5, self->_stateValue];;

  return v6;
}

@end