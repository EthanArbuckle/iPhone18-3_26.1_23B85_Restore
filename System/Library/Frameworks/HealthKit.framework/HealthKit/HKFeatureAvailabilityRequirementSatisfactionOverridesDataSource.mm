@interface HKFeatureAvailabilityRequirementSatisfactionOverridesDataSource
+ (id)requirementSatisfactionOverridesDataSource;
- (void)registerObserver:(id)a3 forFeature:(id)a4 requirement:(id)a5 newValueHandler:(id)a6;
- (void)unregisterObserver:(id)a3 forFeature:(id)a4 requirement:(id)a5;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverridesDataSource

+ (id)requirementSatisfactionOverridesDataSource
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E695E000] hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

- (void)registerObserver:(id)a3 forFeature:(id)a4 requirement:(id)a5 newValueHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [objc_opt_class() requirementIdentifier];
  v13 = HKRequirementSatisfactionOverrideKeyForFeatureAndRequirement(v10, v12);

  [(HKObserverBridge *)self registerObserver:v11 forKey:v13 newValueHandler:v9];
}

- (void)unregisterObserver:(id)a3 forFeature:(id)a4 requirement:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() requirementIdentifier];
  v10 = HKRequirementSatisfactionOverrideKeyForFeatureAndRequirement(v7, v9);

  [(HKObserverBridge *)self unregisterObserver:v8 forKey:v10];
}

@end