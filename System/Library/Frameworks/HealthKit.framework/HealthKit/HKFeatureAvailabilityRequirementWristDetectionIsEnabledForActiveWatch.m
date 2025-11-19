@interface HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch
- (BOOL)isEqual:(id)a3;
- (NSArray)requiredEntitlements;
- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
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

- (id)isSatisfiedWithDataSource:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x1E696AD98];
  v5 = [a3 wristDetectionSettingDataSource];
  v6 = [v5 wristDetectionSettingManager];
  v7 = [v4 numberWithBool:{objc_msgSend(v6, "isWristDetectEnabled")}];

  return v7;
}

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = [a4 wristDetectionSettingDataSource];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E737C118;
  v9[4] = self;
  [v7 registerObserver:v6 forKey:v8 newValueHandler:v9];
}

void __104__HKFeatureAvailabilityRequirementWristDetectionIsEnabledForActiveWatch_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 featureAvailabilityRequirement:v4 didUpdateSatisfaction:{objc_msgSend(a3, "BOOLValue")}];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v5 = a3;
  v7 = [a4 wristDetectionSettingDataSource];
  v6 = [MEMORY[0x1E695DFB0] null];
  [v7 unregisterObserver:v5 forKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
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