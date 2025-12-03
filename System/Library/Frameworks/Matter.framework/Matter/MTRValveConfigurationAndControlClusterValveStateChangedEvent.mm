@interface MTRValveConfigurationAndControlClusterValveStateChangedEvent
- (MTRValveConfigurationAndControlClusterValveStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRValveConfigurationAndControlClusterValveStateChangedEvent

- (MTRValveConfigurationAndControlClusterValveStateChangedEvent)init
{
  v7.receiver = self;
  v7.super_class = MTRValveConfigurationAndControlClusterValveStateChangedEvent;
  v2 = [(MTRValveConfigurationAndControlClusterValveStateChangedEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    valveState = v2->_valveState;
    v2->_valveState = &unk_284C3E588;

    valveLevel = v3->_valveLevel;
    v3->_valveLevel = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRValveConfigurationAndControlClusterValveStateChangedEvent);
  valveState = [(MTRValveConfigurationAndControlClusterValveStateChangedEvent *)self valveState];
  [(MTRValveConfigurationAndControlClusterValveStateChangedEvent *)v4 setValveState:valveState];

  valveLevel = [(MTRValveConfigurationAndControlClusterValveStateChangedEvent *)self valveLevel];
  [(MTRValveConfigurationAndControlClusterValveStateChangedEvent *)v4 setValveLevel:valveLevel];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: valveState:%@ valveLevel:%@; >", v5, self->_valveState, self->_valveLevel];;

  return v6;
}

@end