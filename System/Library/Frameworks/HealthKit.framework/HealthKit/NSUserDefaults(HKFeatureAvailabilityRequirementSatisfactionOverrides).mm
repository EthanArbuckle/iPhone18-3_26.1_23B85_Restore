@interface NSUserDefaults(HKFeatureAvailabilityRequirementSatisfactionOverrides)
+ (id)hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults;
@end

@implementation NSUserDefaults(HKFeatureAvailabilityRequirementSatisfactionOverrides)

+ (id)hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults
{
  v1 = [[a1 alloc] initWithSuiteName:@"com.apple.private.health.feature-availability-requirement-overrides"];

  return v1;
}

@end