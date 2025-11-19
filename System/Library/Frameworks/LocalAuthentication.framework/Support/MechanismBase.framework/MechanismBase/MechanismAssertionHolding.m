@interface MechanismAssertionHolding
- (MechanismAssertionHolding)initWithMechanism:(id)a3 object:(id)a4;
- (void)dropWithReason:(id)a3;
@end

@implementation MechanismAssertionHolding

- (MechanismAssertionHolding)initWithMechanism:(id)a3 object:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MechanismAssertionHolding;
  v8 = [(MechanismAssertion *)&v11 initWithMechanism:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_object, a4);
  }

  return v9;
}

- (void)dropWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = MechanismAssertionHolding;
  [(MechanismAssertion *)&v5 dropWithReason:a3];
  object = self->_object;
  self->_object = 0;
}

@end