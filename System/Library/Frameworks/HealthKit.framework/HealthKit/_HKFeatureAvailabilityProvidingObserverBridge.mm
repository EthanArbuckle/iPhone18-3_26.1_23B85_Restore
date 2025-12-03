@interface _HKFeatureAvailabilityProvidingObserverBridge
- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)handle;
- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)providing;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings;
@end

@implementation _HKFeatureAvailabilityProvidingObserverBridge

- (_HKFeatureAvailabilityProvidingObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKFeatureAvailabilityProvidingObserverBridge;
  v6 = [(_HKFeatureAvailabilityProvidingObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)_notifyObserversWithFeatureAvailabilityProviding:(id)providing
{
  v20 = *MEMORY[0x1E69E9840];
  providingCopy = providing;
  v13 = 0;
  v5 = [providingCopy featureOnboardingRecordWithError:&v13];
  v6 = v13;
  if (v5)
  {
    handle = self->_handle;
    featureIdentifier = [providingCopy featureIdentifier];
    [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:featureIdentifier newValue:v5];
  }

  else
  {
    _HKInitializeLogging();
    featureIdentifier = HKLogInfrastructure();
    if (os_log_type_enabled(featureIdentifier, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      featureIdentifier2 = [providingCopy featureIdentifier];
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = featureIdentifier2;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_19197B000, featureIdentifier, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving onboarding record for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingDidUpdateSettings:(id)settings
{
  v14 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    featureIdentifier = [settingsCopy featureIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = featureIdentifier;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed setting update for %{public}@, notifying observers", &v10, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:settingsCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    featureIdentifier = [completionCopy featureIdentifier];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = featureIdentifier;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed onboarding completion update for %{public}@, notifying observers", &v10, 0x16u);
  }

  [(_HKFeatureAvailabilityProvidingObserverBridge *)self _notifyObserversWithFeatureAvailabilityProviding:completionCopy];
  v9 = *MEMORY[0x1E69E9840];
}

@end