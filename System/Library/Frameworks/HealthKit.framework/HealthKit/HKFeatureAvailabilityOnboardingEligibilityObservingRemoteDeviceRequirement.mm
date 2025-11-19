@interface HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement
- (void)registerObserver:(id)a3 forDataSource:(id)a4;
- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4;
@end

@implementation HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement

- (void)registerObserver:(id)a3 forDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v7);
  v8 = [v7 devicePairingAndSwitchingNotificationDataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379DC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [v8 registerObserverForDevicePairingChanges:v6 block:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v10 = 0;
    v7 = [v6 isSatisfiedWithDataSource:WeakRetained error:&v10];
    v8 = v10;
    if (v7)
    {
      [v3 featureAvailabilityRequirement:*v5 didUpdateSatisfaction:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(v5, v8, v9);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3 fromDataSource:(id)a4
{
  v5 = a3;
  v6 = [a4 devicePairingAndSwitchingNotificationDataSource];
  [v6 unregisterObserverForDevicePairingChanges:v5];
}

void __109__HKFeatureAvailabilityOnboardingEligibilityObservingRemoteDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining satisfaction in response to change in device pairing state: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end