@interface HKFeatureAvailabilityProvidingDataSource
- (HKFeatureAvailabilityHealthDataSource)healthDataSource;
- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)source;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)setKnownFeatureAvailabilityProviding:(id)providing;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKFeatureAvailabilityProvidingDataSource

- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HKFeatureAvailabilityProvidingDataSource;
  v5 = [(HKObserverBridge *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_healthDataSource, sourceCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    featureAvailabilityProvidingByFeatureIdentifier = v6->_featureAvailabilityProvidingByFeatureIdentifier;
    v6->_featureAvailabilityProvidingByFeatureIdentifier = dictionary;

    v9 = HKCreateSerialDispatchQueue(v6, 0);
    observationQueue = v6->_observationQueue;
    v6->_observationQueue = v9;
  }

  return v6;
}

- (void)setKnownFeatureAvailabilityProviding:(id)providing
{
  providingCopy = providing;
  v5 = providingCopy;
  if (providingCopy)
  {
    featureIdentifier = [providingCopy featureIdentifier];
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:featureIdentifier];

    if (!v7)
    {
      [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v5 forKeyedSubscript:featureIdentifier];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    featureIdentifier = HKLogInfrastructure();
    if (os_log_type_enabled(featureIdentifier, OS_LOG_TYPE_ERROR))
    {
      [HKFeatureAvailabilityProvidingDataSource setKnownFeatureAvailabilityProviding:];
    }
  }
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_healthDataSource);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained requiresWeakRetention])
    {
      v7 = [v6 featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
      os_unfair_lock_lock(&self->_lock);
      v8 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

      if (v8)
      {
LABEL_14:

        goto LABEL_15;
      }

      if (!v7)
      {
        _HKInitializeLogging();
        v9 = HKLogInfrastructure();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:identifierCopy, v9];
        }

        goto LABEL_14;
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v12 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];

      if (v12)
      {
LABEL_15:
        v11 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:identifierCopy];
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_16;
      }

      v7 = [v6 featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
    }

    [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v7 forKeyedSubscript:identifierCopy];
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [HKFeatureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:];
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:key];
  v8 = [[_HKFeatureAvailabilityProvidingObserverBridge alloc] initWithHandle:handleCopy];

  [v7 registerObserver:v8 queue:self->_observationQueue];

  return v8;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:key];
  [v7 unregisterObserver:observerCopy];
}

- (HKFeatureAvailabilityHealthDataSource)healthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_healthDataSource);

  return WeakRetained;
}

- (void)setKnownFeatureAvailabilityProviding:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "[%{public}@]: Given nil featureAvailabilityProviding in -setKnownFeatureAvailabilityProviding:", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingForFeatureIdentifier:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a2;
  v5 = v8;
  _os_log_fault_impl(&dword_19197B000, a3, OS_LOG_TYPE_FAULT, "[%{public}@]: Unknown feature identifier %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)featureAvailabilityProvidingForFeatureIdentifier:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "[%{public}@]: Health data source is nil", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end