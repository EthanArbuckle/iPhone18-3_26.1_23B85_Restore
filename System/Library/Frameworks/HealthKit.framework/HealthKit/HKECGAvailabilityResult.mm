@interface HKECGAvailabilityResult
+ (id)resultWithNoAdvertisements;
- (HKECGAvailabilityResult)initWithAdvertiseDirectOnboarding:(BOOL)a3 advertiseDirectOnboardingSecondary:(BOOL)a4 advertiseUpgrade:(BOOL)a5 advertiseUpgradeSecondary:(BOOL)a6 advertiseUpgradeBackgroundDelivered:(BOOL)a7;
@end

@implementation HKECGAvailabilityResult

+ (id)resultWithNoAdvertisements
{
  v2 = [[a1 alloc] initWithAdvertiseDirectOnboarding:0 advertiseDirectOnboardingSecondary:0 advertiseUpgrade:0 advertiseUpgradeSecondary:0 advertiseUpgradeBackgroundDelivered:0];

  return v2;
}

- (HKECGAvailabilityResult)initWithAdvertiseDirectOnboarding:(BOOL)a3 advertiseDirectOnboardingSecondary:(BOOL)a4 advertiseUpgrade:(BOOL)a5 advertiseUpgradeSecondary:(BOOL)a6 advertiseUpgradeBackgroundDelivered:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = HKECGAvailabilityResult;
  result = [(HKECGAvailabilityResult *)&v13 init];
  if (result)
  {
    result->_advertiseDirectOnboarding = a3;
    result->_advertiseDirectOnboardingEscapeHatch = a4;
    result->_advertiseUpgrade = a5;
    result->_advertiseUpgradeEscapeHatch = a6;
    result->_advertiseUpgradeBackgroundDelivered = a7;
  }

  return result;
}

@end