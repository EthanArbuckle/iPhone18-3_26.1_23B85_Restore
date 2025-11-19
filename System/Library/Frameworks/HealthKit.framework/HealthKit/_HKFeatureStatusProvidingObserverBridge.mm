@interface _HKFeatureStatusProvidingObserverBridge
- (_HKFeatureStatusProvidingObserverBridge)initWithFeatureIdentifierAndContext:(id)a3 handle:(id)a4;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
@end

@implementation _HKFeatureStatusProvidingObserverBridge

- (_HKFeatureStatusProvidingObserverBridge)initWithFeatureIdentifierAndContext:(id)a3 handle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKFeatureStatusProvidingObserverBridge;
  v9 = [(_HKFeatureStatusProvidingObserverBridge *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureIdentifierAndContext, a3);
    objc_storeStrong(&v10->_handle, a4);
  }

  return v10;
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_HKFeatureStatusProvidingObserverBridge featureStatusProviding:v8 didUpdateFeatureStatus:?];
    }
  }

  [(HKObserverBridgeHandle *)self->_handle notifyObserversOfChangeForKey:self->_featureIdentifierAndContext newValue:v5];
}

- (void)featureStatusProviding:(uint64_t)a1 didUpdateFeatureStatus:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = *(a1 + 8);
  v8 = 138543618;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v6 = v4;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@]: Observed feature status update for %{public}@, notifying observers", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end