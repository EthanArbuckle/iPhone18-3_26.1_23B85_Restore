@interface MechanismAssertionHolding
- (MechanismAssertionHolding)initWithMechanism:(id)mechanism object:(id)object;
- (void)dropWithReason:(id)reason;
@end

@implementation MechanismAssertionHolding

- (MechanismAssertionHolding)initWithMechanism:(id)mechanism object:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MechanismAssertionHolding;
  v8 = [(MechanismAssertion *)&v11 initWithMechanism:mechanism];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, object);
  }

  return v9;
}

- (void)dropWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = MechanismAssertionHolding;
  [(MechanismAssertion *)&v5 dropWithReason:reason];
  object = self->_object;
  self->_object = 0;
}

@end