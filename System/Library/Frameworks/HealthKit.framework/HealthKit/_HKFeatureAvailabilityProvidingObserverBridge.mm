@interface _HKFeatureAvailabilityProvidingObserverBridge
- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)a3;
- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3;
@end

@implementation _HKFeatureAvailabilityProvidingObserverBridge

- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKFeatureAvailabilityProvidingObserverBridge;
  v6 = [(_HKFeatureAvailabilityProvidingObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
  }

  return v7;
}

- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v5 = [v4 featureOnboardingRecordWithError:&v13];
  v6 = v13;
  if (v5)
  {
    handle = self->_handle;
    v8 = [v4 featureIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:v8 newValue:v5];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 featureIdentifier];
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_19197B000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 featureIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed setting update for %{public}@, notifying observers", &v10, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:v4];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 featureIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed onboarding completion update for %{public}@, notifying observers", &v10, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:v4];
  v9 = *MEMORY[0x1E69E9840];
}

@end