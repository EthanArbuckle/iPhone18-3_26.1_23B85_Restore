@interface HKECGAvailabilityResult
+ (id)resultWithNoAdvertisements;
- (HKECGAvailabilityResult)initWithAdvertiseDirectOnboarding:(BOOL)onboarding advertiseDirectOnboardingSecondary:(BOOL)secondary advertiseUpgrade:(BOOL)upgrade advertiseUpgradeSecondary:(BOOL)upgradeSecondary advertiseUpgradeBackgroundDelivered:(BOOL)delivered;
@end

@implementation HKECGAvailabilityResult

+ (id)resultWithNoAdvertisements
{
  v2 = [[self alloc] initWithAdvertiseDirectOnboarding:0 advertiseDirectOnboardingSecondary:0 advertiseUpgrade:0 advertiseUpgradeSecondary:0 advertiseUpgradeBackgroundDelivered:0];

  return v2;
}

- (HKECGAvailabilityResult)initWithAdvertiseDirectOnboarding:(BOOL)onboarding advertiseDirectOnboardingSecondary:(BOOL)secondary advertiseUpgrade:(BOOL)upgrade advertiseUpgradeSecondary:(BOOL)upgradeSecondary advertiseUpgradeBackgroundDelivered:(BOOL)delivered
{
  v13.receiver = self;
  v13.super_class = HKECGAvailabilityResult;
  result = [(HKECGAvailabilityResult *)&v13 init];
  if (result)
  {
    result->_advertiseDirectOnboarding = onboarding;
    result->_advertiseDirectOnboardingEscapeHatch = secondary;
    result->_advertiseUpgrade = upgrade;
    result->_advertiseUpgradeEscapeHatch = upgradeSecondary;
    result->_advertiseUpgradeBackgroundDelivered = delivered;
  }

  return result;
}

@end