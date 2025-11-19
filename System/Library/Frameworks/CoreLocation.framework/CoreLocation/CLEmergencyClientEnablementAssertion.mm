@interface CLEmergencyClientEnablementAssertion
+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4;
+ (id)newAssertionForBundlePath:(id)a3 withReason:(id)a4;
@end

@implementation CLEmergencyClientEnablementAssertion

+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CLEmergencyClientEnablementAssertion;
  return objc_msgSendSuper2(&v5, sel_newAssertionWithBundleId_bundlePath_reason_overrideDeauthorizationForBeneficiary_, a3, &stru_1F0E6F140, a4, 1);
}

+ (id)newAssertionForBundlePath:(id)a3 withReason:(id)a4
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CLEmergencyClientEnablementAssertion;
  return objc_msgSendSuper2(&v5, sel_newAssertionWithBundleId_bundlePath_reason_overrideDeauthorizationForBeneficiary_, &stru_1F0E6F140, a3, a4, 1);
}

@end