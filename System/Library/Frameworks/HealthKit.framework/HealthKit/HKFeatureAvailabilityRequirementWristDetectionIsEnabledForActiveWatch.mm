@interface HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch
- (BOOL)isEqual:(id)equal;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch

- (NSArray)requiredEntitlements
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[HKFeatureAvailabilityRequirementEntitlement userDefaultsCarouselDomainAccessEntitlement];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  v4 = MEMORY[0x1E696AD98];
  wristDetectionSettingDataSource = [source wristDetectionSettingDataSource];
  wristDetectionSettingManager = [wristDetectionSettingDataSource wristDetectionSettingManager];
  v7 = [v4 numberWithBool:{objc_msgSend(wristDetectionSettingManager, "isWristDetectEnabled")}];

  return v7;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  wristDetectionSettingDataSource = [source wristDetectionSettingDataSource];
  null = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E737C118;
  v9[4] = self;
  [wristDetectionSettingDataSource registerObserver:observerCopy forKey:null newValueHandler:v9];
}

void __104__HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 featureAvailabilityRequirement:v4 didUpdateSatisfaction:{objc_msgSend(a3, "BOOLValue")}];
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  wristDetectionSettingDataSource = [source wristDetectionSettingDataSource];
  null = [MEMORY[0x1E695DFB0] null];
  [wristDetectionSettingDataSource unregisterObserver:observerCopy forKey:null];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

@end