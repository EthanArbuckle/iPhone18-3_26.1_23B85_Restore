@interface CLEmergencyClientEnablementAssertion
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason;
+ (id)newAssertionForBundlePath:(id)path withReason:(id)reason;
@end

@implementation CLEmergencyClientEnablementAssertion

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CLEmergencyClientEnablementAssertion;
  return objc_msgSendSuper2(&v5, sel_newAssertionWithBundleId_bundlePath_reason_overrideDeauthorizationForBeneficiary_, identifier, &stru_1F0E6F140, reason, 1);
}

+ (id)newAssertionForBundlePath:(id)path withReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CLEmergencyClientEnablementAssertion;
  return objc_msgSendSuper2(&v5, sel_newAssertionWithBundleId_bundlePath_reason_overrideDeauthorizationForBeneficiary_, &stru_1F0E6F140, path, reason, 1);
}

@end