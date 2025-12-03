@interface HKFeatureAvailabilityRequirementSatisfactionOverridesDataSource
+ (id)requirementSatisfactionOverridesDataSource;
- (void)registerObserver:(id)observer forFeature:(id)feature requirement:(id)requirement newValueHandler:(id)handler;
- (void)unregisterObserver:(id)observer forFeature:(id)feature requirement:(id)requirement;
@end

@implementation HKFeatureAvailabilityRequirementSatisfactionOverridesDataSource

+ (id)requirementSatisfactionOverridesDataSource
{
  v2 = [self alloc];
  hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults = [MEMORY[0x1E695E000] hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults];
  v4 = [v2 initWithUserDefaults:hk_featureAvailabilityRequirementEvaluationOverridesUserDefaults];

  return v4;
}

- (void)registerObserver:(id)observer forFeature:(id)feature requirement:(id)requirement newValueHandler:(id)handler
{
  handlerCopy = handler;
  featureCopy = feature;
  observerCopy = observer;
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  v13 = HKRequirementSatisfactionOverrideKeyForFeatureAndRequirement(featureCopy, requirementIdentifier);

  [(HKObserverBridge *)self registerObserver:observerCopy forKey:v13 newValueHandler:handlerCopy];
}

- (void)unregisterObserver:(id)observer forFeature:(id)feature requirement:(id)requirement
{
  featureCopy = feature;
  observerCopy = observer;
  requirementIdentifier = [objc_opt_class() requirementIdentifier];
  v10 = HKRequirementSatisfactionOverrideKeyForFeatureAndRequirement(featureCopy, requirementIdentifier);

  [(HKObserverBridge *)self unregisterObserver:observerCopy forKey:v10];
}

@end