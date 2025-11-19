@interface HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature
- (NSArray)requiredEntitlements;
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 featureAvailabilityProvidingDataSource];
  v10 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke;
  v12[3] = &unk_1E737A0A0;
  v13 = v7;
  v14 = a2;
  v12[4] = self;
  v11 = v7;
  [v9 registerObserver:v8 forKey:v10 newValueHandler:v12];
}

void __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke_cold_1(a1);
  }

  v6 = [*(a1 + 32) isSatisfiedWithOnboardingRecord:v5 dataSource:*(a1 + 40) error:0];
  if (!v6)
  {
    __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke_cold_2(a1, (a1 + 32));
  }

  [v7 featureAvailabilityRequirement:*(a1 + 32) didUpdateSatisfaction:{objc_msgSend(v6, "BOOLValue")}];
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v6 = a3;
  v8 = [a4 featureAvailabilityProvidingDataSource];
  v7 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  [v8 unregisterObserver:v6 forKey:v7];
}

- (NSArray)requiredEntitlements
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HKFeatureAvailabilityOnboardingRecordRequirement *)self featureIdentifier];
  v3 = [HKFeatureAvailabilityRequirementEntitlement featureAvailabilityReadEntitlementForFeatureIdentifier:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature.m" lineNumber:29 description:{@"[%@] Onboarding record should never be nil", objc_opt_class()}];
}

void __122__HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature_registerObserver_forDataSource___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"HKFeatureAvailabilityRequirementOnboardingRecordIsNotPresentForMutuallyExclusiveFeature.m" lineNumber:33 description:@"Checking satisfaction using known onboarding record should never fail"];
}

@end