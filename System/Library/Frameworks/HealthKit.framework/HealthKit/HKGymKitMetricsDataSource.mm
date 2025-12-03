@interface HKGymKitMetricsDataSource
+ (id)clientInterface;
- (HKGymKitMetricsDataSource)initWithHealthStore:(id)store workoutConfiguration:(id)configuration delegate:(id)delegate;
- (HKGymKitMetricsDataSourceDelegate)delegate;
- (void)_startTaskServerIfNeededWithCompletion:(id)completion;
- (void)clientRemote_didReceiveMetrics:(id)metrics;
- (void)connectionInterrupted;
- (void)workoutBuilderDidFinish;
@end

@implementation HKGymKitMetricsDataSource

- (HKGymKitMetricsDataSource)initWithHealthStore:(id)store workoutConfiguration:(id)configuration delegate:(id)delegate
{
  storeCopy = store;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HKGymKitMetricsDataSource;
  v12 = [(HKGymKitMetricsDataSource *)&v20 init];
  if (v12)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    objc_storeStrong(&v12->_healthStore, store);
    objc_storeStrong(&v12->_workoutConfiguration, configuration);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v15 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v12->_healthStore taskIdentifier:@"HKGymKitMetricsDataSourceServerIdentifier" exportedObject:v12 taskUUID:v12->_identifier];
    proxyProvider = v12->_proxyProvider;
    v12->_proxyProvider = v15;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__HKGymKitMetricsDataSource_initWithHealthStore_workoutConfiguration_delegate___block_invoke;
    v18[3] = &unk_1E7376A00;
    v19 = v12;
    [(HKGymKitMetricsDataSource *)v19 _startTaskServerIfNeededWithCompletion:v18];
  }

  return v12;
}

void __79__HKGymKitMetricsDataSource_initWithHealthStore_workoutConfiguration_delegate___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __79__HKGymKitMetricsDataSource_initWithHealthStore_workoutConfiguration_delegate___block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)workoutBuilderDidFinish
{
  proxyProvider = self->_proxyProvider;
  self->_proxyProvider = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)clientRemote_didReceiveMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_copyWeak(&to, &self->_delegate);
  clientQueue = [(HKHealthStore *)self->_healthStore clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke;
  v7[3] = &unk_1E7385A90;
  v8 = metricsCopy;
  v6 = metricsCopy;
  objc_copyWeak(&v10, &to);
  selfCopy = self;
  dispatch_async(clientQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&to);
}

void __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke(uint64_t a1)
{
  v2 = +[HKUnit wattUnit];
  v3 = [HKUnit unitFromString:@"J/s"];
  v4 = *(a1 + 32);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke_2;
  v14 = &unk_1E7385A68;
  v5 = v2;
  v15 = v5;
  v6 = v3;
  v16 = v6;
  v7 = [v4 hk_map:&v11];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained((a1 + 48));
    [v9 gymKitMetricsDataSource:*(a1 + 40) didReceiveMetrics:{v7, v11, v12, v13, v14, v15}];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke_cold_1(a1, v10);
    }
  }
}

void __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  if ([v9 isCompatibleWithUnit:v8])
  {
    [v9 doubleValueForUnit:*(a1 + 32)];
    v11 = v10;

    v9 = [HKQuantity quantityWithUnit:*(a1 + 40) doubleValue:v11];
  }

  v7[2](v7, v12, v9);
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F87F8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_clientRemote_didReceiveMetrics_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectionInterrupted
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__HKGymKitMetricsDataSource_connectionInterrupted__block_invoke;
  v2[3] = &unk_1E7376A00;
  v2[4] = self;
  [(HKGymKitMetricsDataSource *)self _startTaskServerIfNeededWithCompletion:v2];
}

void __50__HKGymKitMetricsDataSource_connectionInterrupted__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      __50__HKGymKitMetricsDataSource_connectionInterrupted__block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)_startTaskServerIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__HKGymKitMetricsDataSource__startTaskServerIfNeededWithCompletion___block_invoke;
  v9[3] = &unk_1E7385AB8;
  v10 = completionCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__HKGymKitMetricsDataSource__startTaskServerIfNeededWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

uint64_t __68__HKGymKitMetricsDataSource__startTaskServerIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 remote_startTaskServerIfNeeded];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (HKGymKitMetricsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __79__HKGymKitMetricsDataSource_initWithHealthStore_workoutConfiguration_delegate___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(*(a1 + 32) + 32);
  OUTLINED_FUNCTION_0_31();
  OUTLINED_FUNCTION_1_15(&dword_19197B000, v8, v9, "%{public}@: Unable to start task server %@ with error: %@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __60__HKGymKitMetricsDataSource_clientRemote_didReceiveMetrics___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(*(a1 + 40) + 32);
  OUTLINED_FUNCTION_0_31();
  _os_log_error_impl(&dword_19197B000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Metrics received but no delegate configured for data source %@", v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __50__HKGymKitMetricsDataSource_connectionInterrupted__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(*(a1 + 32) + 32);
  OUTLINED_FUNCTION_0_31();
  OUTLINED_FUNCTION_1_15(&dword_19197B000, v8, v9, "%{public}@: Unable to fetch data source %@ proxy after interrupted connection with error: %@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

@end