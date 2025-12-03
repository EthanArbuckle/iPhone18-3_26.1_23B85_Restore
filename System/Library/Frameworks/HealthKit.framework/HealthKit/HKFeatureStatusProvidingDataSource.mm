@interface HKFeatureStatusProvidingDataSource
- (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSource;
- (HKFeatureStatusProvidingDataSource)init;
- (id)_featureStatusProvidingForFeatureIdentifierAndContext:(id)context;
- (id)_makeFeatureStatusProviderForFeatureIdentifier:(id)identifier context:(id)context dataSource:(id)source;
- (id)featureStatusProvidingForFeatureIdentifier:(id)identifier context:(id)context;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    featureStatusProvidingByFeatureIdentifierAndContext = v3->_featureStatusProvidingByFeatureIdentifierAndContext;
    v3->_featureStatusProvidingByFeatureIdentifierAndContext = dictionary;

    v6 = HKCreateSerialDispatchQueue(v3, 0);
    observationQueue = v3->_observationQueue;
    v3->_observationQueue = v6;
  }

  return v3;
}

- (id)featureStatusProvidingForFeatureIdentifier:(id)identifier context:(id)context
{
  contextCopy = context;
  identifierCopy = identifier;
  v8 = [[HKFeatureIdentifierAndContext alloc] initWithFeatureIdentifier:identifierCopy context:contextCopy];

  v9 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:v8];

  return v9;
}

- (id)_featureStatusProvidingForFeatureIdentifierAndContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    v6 = [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext objectForKeyedSubscript:contextCopy];

    if (!v6)
    {
      featureIdentifier = [contextCopy featureIdentifier];
      context = [contextCopy context];
      v9 = [(HKFeatureStatusProvidingDataSource *)self _makeFeatureStatusProviderForFeatureIdentifier:featureIdentifier context:context dataSource:WeakRetained];

      [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext setObject:v9 forKeyedSubscript:contextCopy];
    }

    v10 = [(NSMutableDictionary *)self->_featureStatusProvidingByFeatureIdentifierAndContext objectForKeyedSubscript:contextCopy];
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

- (id)_makeFeatureStatusProviderForFeatureIdentifier:(id)identifier context:(id)context dataSource:(id)source
{
  sourceCopy = source;
  v8 = MEMORY[0x1E695DFD8];
  identifierCopy = identifier;
  v10 = [v8 setWithObject:context];
  v11 = [HKFeatureAvailabilityContextConstraint onlySomeContexts:v10];

  featureAvailabilityProvidingDataSource = [sourceCopy featureAvailabilityProvidingDataSource];
  v13 = [featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];

  if (v13)
  {
    v14 = [HKFeatureStatusManager childFeatureStatusManagerWithFeatureAvailabilityProviding:v13 featureAvailabilityDataSource:sourceCopy contextConstraint:v11];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  keyCopy = key;
  v8 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:keyCopy];
  v9 = [[_HKFeatureStatusProvidingObserverBridge alloc] initWithFeatureIdentifierAndContext:keyCopy handle:handleCopy];

  [v8 registerObserver:v9 queue:self->_observationQueue];

  return v9;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  v7 = [(HKFeatureStatusProvidingDataSource *)self _featureStatusProvidingForFeatureIdentifierAndContext:key];
  [v7 unregisterObserver:observerCopy];
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