@interface CNSensitiveContentUIEntitlementVerifierTestDouble
- (CNSensitiveContentUIEntitlementVerifierTestDouble)initWithCanShowSensitiveUI:(BOOL)a3 processHasCommunicationFilterEntitlements:(BOOL)a4;
@end

@implementation CNSensitiveContentUIEntitlementVerifierTestDouble

- (CNSensitiveContentUIEntitlementVerifierTestDouble)initWithCanShowSensitiveUI:(BOOL)a3 processHasCommunicationFilterEntitlements:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CNSensitiveContentUIEntitlementVerifierTestDouble;
  v6 = [(CNSensitiveContentUIEntitlementVerifierTestDouble *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_canShowSensitiveUI = a3;
    v6->_hasCommunicationFilterEntitlements = a4;
    v8 = v6;
  }

  return v7;
}

@end