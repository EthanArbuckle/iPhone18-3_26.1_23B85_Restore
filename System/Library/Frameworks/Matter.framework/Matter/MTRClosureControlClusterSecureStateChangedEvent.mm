@interface MTRClosureControlClusterSecureStateChangedEvent
- (MTRClosureControlClusterSecureStateChangedEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRClosureControlClusterSecureStateChangedEvent

- (MTRClosureControlClusterSecureStateChangedEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRClosureControlClusterSecureStateChangedEvent;
  v2 = [(MTRClosureControlClusterSecureStateChangedEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    secureValue = v2->_secureValue;
    v2->_secureValue = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRClosureControlClusterSecureStateChangedEvent);
  secureValue = [(MTRClosureControlClusterSecureStateChangedEvent *)self secureValue];
  [(MTRClosureControlClusterSecureStateChangedEvent *)v4 setSecureValue:secureValue];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: secureValue:%@ >", v5, self->_secureValue];;

  return v6;
}

@end