@interface CNSensitiveContentUIEntitlementVerifierTestDouble
- (CNSensitiveContentUIEntitlementVerifierTestDouble)initWithCanShowSensitiveUI:(BOOL)i processHasCommunicationFilterEntitlements:(BOOL)entitlements;
@end

@implementation CNSensitiveContentUIEntitlementVerifierTestDouble

- (CNSensitiveContentUIEntitlementVerifierTestDouble)initWithCanShowSensitiveUI:(BOOL)i processHasCommunicationFilterEntitlements:(BOOL)entitlements
{
  v10.receiver = self;
  v10.super_class = CNSensitiveContentUIEntitlementVerifierTestDouble;
  v6 = [(CNSensitiveContentUIEntitlementVerifierTestDouble *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_canShowSensitiveUI = i;
    v6->_hasCommunicationFilterEntitlements = entitlements;
    v8 = v6;
  }

  return v7;
}

@end