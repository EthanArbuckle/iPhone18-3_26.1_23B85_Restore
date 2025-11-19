@interface HKSharedSummaryCloudSyncManager
+ (id)taskIdentifier;
- (HKSharedSummaryCloudSyncManager)initWithHealthStore:(id)a3;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)fetchAccountInfoWithCompletion:(id)a3;
- (void)pullWithCompletion:(id)a3;
- (void)pushWithCompletion:(id)a3;
@end

@implementation HKSharedSummaryCloudSyncManager

- (HKSharedSummaryCloudSyncManager)initWithHealthStore:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKSharedSummaryCloudSyncManager;
  v5 = [(HKSharedSummaryCloudSyncManager *)&v13 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v8 exportedObject:v5 taskUUID:v9];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v10;
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchAccountInfoWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__HKSharedSummaryCloudSyncManager_fetchAccountInfoWithCompletion___block_invoke;
  v9[3] = &unk_1E737A298;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__HKSharedSummaryCloudSyncManager_fetchAccountInfoWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __66__HKSharedSummaryCloudSyncManager_fetchAccountInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
  {
    __66__HKSharedSummaryCloudSyncManager_fetchAccountInfoWithCompletion___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pushWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKSharedSummaryCloudSyncManager_pushWithCompletion___block_invoke;
  v9[3] = &unk_1E737A298;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HKSharedSummaryCloudSyncManager_pushWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __54__HKSharedSummaryCloudSyncManager_pushWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __54__HKSharedSummaryCloudSyncManager_pushWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pullWithCompletion:(id)a3
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKSharedSummaryCloudSyncManager_pullWithCompletion___block_invoke;
  v9[3] = &unk_1E737A298;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__HKSharedSummaryCloudSyncManager_pullWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376820;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

void __54__HKSharedSummaryCloudSyncManager_pullWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __54__HKSharedSummaryCloudSyncManager_pullWithCompletion___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

void __66__HKSharedSummaryCloudSyncManager_fetchAccountInfoWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch account info with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __54__HKSharedSummaryCloudSyncManager_pushWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[summary-sharing] %{public}@: Failed to push with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __54__HKSharedSummaryCloudSyncManager_pullWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "[summary-sharing] %{public}@: Failed to pull with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end