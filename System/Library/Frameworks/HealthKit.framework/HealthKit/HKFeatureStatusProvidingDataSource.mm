@interface HKFeatureStatusProvidingDataSource
- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource;
- (HKFeatureStatusProvidingDataSource)init;
- (id)_featureStatusProvidingForFeatureIdentifierAndContext:(id)a3;
- (id)_makeFeatureStatusProviderForFeatureIdentifier:(id)a3 context:(id)a4 dataSource:(id)a5;
- (id)featureStatusProvidingForFeatureIdentifier:(id)a3 context:(id)a4;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
@end

@implementation HKFeatureStatusProvidingDataSource

- (HKFeatureStatusProvidingDataSource)init
{
  v9.receiver = self;
  v9.super_class = HKFeatureStatusProvidingDataSource;
  v2 = [(HKObserverBridge *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    featureStatusProvidingByFeatureIdentifierAndContext = v3->_featureStatusProvidingByFeatureIdentifierAndContext;
    v3->_featureStatusProvidingByFeatureIdentifierAndContext = v4;

    v6 = HKCreateSerialDispatchQueue(v3, 0);
    observationQueue = v3->_observationQueue;
    v3->_observationQueue = v6;
  }

  return v3;
}

- (id)featureStatusProvidingForFeatureIdentifier:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:v7 context:v6];

  v9 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:v8];

  return v9;
}

- (id)_featureStatusProvidingForFeatureIdentifierAndContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [v4 featureIdentifier];
      v8 = [v4 context];
      v9 = [(HKFeatureStatusProvidingDataSource *)self _makeFeatureStatusProviderForFeatureIdentifier:v7 context:v8 dataSource:WeakRetained];

      [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext setObject:v9 forKeyedSubscript:v4];
    }

    v10 = [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogInfrastructure();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:v11];
    }

    os_unfair_lock_unlock(&self->_lock);
    v10 = 0;
  }

  return v10;
}

- (id)_makeFeatureStatusProviderForFeatureIdentifier:(id)a3 context:(id)a4 dataSource:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E695DFD8];
  v9 = a3;
  v10 = [v8 setWithObject:a4];
  v11 = [HKFeatureAvailabilityContextConstraint onlySomeContexts:v10];

  v12 = [v7 featureAvailabilityProvidingDataSource];
  v13 = [v12 featureAvailabilityProvidingForFeatureIdentifier:v9];

  if (v13)
  {
    v14 = [HKFeatureStatusManager childFeatureStatusManagerWithFeatureAvailabilityProviding:v13 featureAvailabilityDataSource:v7 contextConstraint:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:v7];
  v9 = [[_HKFeatureStatusProvidingObserverBridge alloc] initWithFeatureIdentifierAndContext:v7 handle:v6];

  [v8 registerObserver:v9 queue:self->_observationQueue];

  return v9;
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:a4];
  [v7 unregisterObserver:v6];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_featureStatusProvidingForFeatureIdentifierAndContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "[%{public}@]: Data source is nil", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end