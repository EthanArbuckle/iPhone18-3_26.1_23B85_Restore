@interface MTRClosureControlClusterEngageStateChangedEvent
- (MTRClosureControlClusterEngageStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureControlClusterEngageStateChangedEvent

- (MTRClosureControlClusterEngageStateChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRClosureControlClusterEngageStateChangedEvent;
  v2 = [(MTRClosureControlClusterEngageStateChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    engageValue = v2->_engageValue;
    v2->_engageValue = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRClosureControlClusterEngageStateChangedEvent);
  engageValue = [(MTRClosureControlClusterEngageStateChangedEvent *)self engageValue];
  [(MTRClosureControlClusterEngageStateChangedEvent *)v4 setEngageValue:engageValue];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: engageValue:%@ >", v5, self->_engageValue];;

  return v6;
}

@end