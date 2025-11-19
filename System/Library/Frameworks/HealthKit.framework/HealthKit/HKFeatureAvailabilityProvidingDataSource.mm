@interface HKFeatureAvailabilityProvidingDataSource
- (HKFeatureAvailabilityHealthDataSource)healthDataSource;
- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)a3;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (void)setKnownFeatureAvailabilityProviding:(id)a3;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
@end

@implementation HKFeatureAvailabilityProvidingDataSource

- (HKFeatureAvailabilityProvidingDataSource)initWithHealthDataSource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKFeatureAvailabilityProvidingDataSource;
  v5 = [(HKObserverBridge *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_healthDataSource, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x1E695DF90] dictionary];
    featureAvailabilityProvidingByFeatureIdentifier = v6->_featureAvailabilityProvidingByFeatureIdentifier;
    v6->_featureAvailabilityProvidingByFeatureIdentifier = v7;

    v9 = HKCreateSerialDispatchQueue(v6, 0);
    observationQueue = v6->_observationQueue;
    v6->_observationQueue = v9;
  }

  return v6;
}

- (void)setKnownFeatureAvailabilityProviding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 featureIdentifier];
    os_unfair_lock_lock(&self->_lock);
    v7 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:v6];

    if (!v7)
    {
      [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v5 forKeyedSubscript:v6];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKFeatureAvailabilityProvidingDataSource setKnownFeatureAvailabilityProviding:];
    }
  }
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_healthDataSource);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained requiresWeakRetention])
    {
      v7 = [v6 featureAvailabilityProvidingForFeatureIdentifier:v4];
      os_unfair_lock_lock(&self->_lock);
      v8 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:v4];

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
          [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:v4, v9];
        }

        goto LABEL_14;
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v12 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:v4];

      if (v12)
      {
LABEL_15:
        v11 = [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier objectForKeyedSubscript:v4];
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_16;
      }

      v7 = [v6 featureAvailabilityProvidingForFeatureIdentifier:v4];
    }

    [(NSMutableDictionary *)self->_featureAvailabilityProvidingByFeatureIdentifier setObject:v7 forKeyedSubscript:v4];
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

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:a3];
  v8 = [[_HKFeatureAvailabilityProvidingObserverBridge alloc] initWithHandle:v6];

  [v7 registerObserver:v8 queue:self->_observationQueue];

  return v8;
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self featureAvailabilityProvidingForFeatureIdentifier:a4];
  [v7 unregisterObserver:v6];
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