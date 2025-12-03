@interface HKCountryMonitorControl
+ (id)taskIdentifier;
+ (void)checkCurrentCountry;
+ (void)checkCurrentCountryWithHealthStore:(id)store;
- (HKCountryMonitorControl)initWithHealthStore:(id)store;
- (void)dealloc;
- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion;
@end

@implementation HKCountryMonitorControl

- (HKCountryMonitorControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKCountryMonitorControl;
  v5 = [(HKCountryMonitorControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  OUTLINED_FUNCTION_1_7(&dword_19197B000, v2, v3, "[%{public}@:%p] Deallocating", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)checkCurrentCountry
{
  v3 = objc_alloc_init(HKHealthStore);
  [self checkCurrentCountryWithHealthStore:v3];
}

+ (void)checkCurrentCountryWithHealthStore:(id)store
{
  storeCopy = store;
  v5 = [[self alloc] initWithHealthStore:storeCopy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKCountryMonitorControl_checkCurrentCountryWithHealthStore___block_invoke;
  v7[3] = &unk_1E737E2B8;
  v8 = v5;
  v6 = v5;
  [v6 fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:v7];
}

void __62__HKCountryMonitorControl_checkCurrentCountryWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    v12 = 138543874;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2114;
    v17 = v5;
    v10 = v8;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Completed fetch of current ISO country code with error: %{public}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:(id)completion
{
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [HKCountryMonitorControl fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke;
  aBlock[3] = &unk_1E737E308;
  aBlock[4] = self;
  v17 = completionCopy;
  v8 = completionCopy;
  v9 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_3;
  v14[3] = &unk_1E737E330;
  v15 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4;
  v12[3] = &unk_1E7376820;
  v12[4] = self;
  v13 = v15;
  v11 = v15;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [*(*(a1 + 32) + 8) clientQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_2;
  v12[3] = &unk_1E737E2E0;
  v15 = *(a1 + 40);
  v16 = a3;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

uint64_t __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[7], a1[5]);
  }

  return result;
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_14(v0);
  OUTLINED_FUNCTION_1_7(&dword_19197B000, v2, v3, "[%{public}@:%p] Fetching current country ISO country code and notifying observers", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __86__HKCountryMonitorControl_fetchCurrentISOCountryCodeAndNotifyObserversWithCompletion___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v11 = 138543874;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v9 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Failed to communicate with task server to fetch current ISO country code and notify observers: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

@end