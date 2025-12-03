@interface NSUserDefaults(HKFeatureAvailabilityRequirementSatisfactionOverrides)
+ (id)hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults;
@end

@implementation NSUserDefaults(HKFeatureAvailabilityRequirementSatisfactionOverrides)

+ (id)hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults
{
  v1 = [[self alloc] initWithSuiteName:@"com.apple.private.health.feature-availability-requirement-overrides"];

  return v1;
}

@end