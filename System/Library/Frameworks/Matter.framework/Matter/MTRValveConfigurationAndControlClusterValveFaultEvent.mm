@interface MTRValveConfigurationAndControlClusterValveFaultEvent
- (MTRValveConfigurationAndControlClusterValveFaultEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRValveConfigurationAndControlClusterValveFaultEvent

- (MTRValveConfigurationAndControlClusterValveFaultEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRValveConfigurationAndControlClusterValveFaultEvent;
  v2 = [(MTRValveConfigurationAndControlClusterValveFaultEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    valveFault = v2->_valveFault;
    v2->_valveFault = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRValveConfigurationAndControlClusterValveFaultEvent);
  valveFault = [(MTRValveConfigurationAndControlClusterValveFaultEvent *)self valveFault];
  [(MTRValveConfigurationAndControlClusterValveFaultEvent *)v4 setValveFault:valveFault];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: valveFault:%@ >", v5, self->_valveFault];;

  return v6;
}

@end