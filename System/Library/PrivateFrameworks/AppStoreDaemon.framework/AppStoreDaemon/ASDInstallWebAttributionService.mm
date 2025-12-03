@interface ASDInstallWebAttributionService
+ (ASDInstallWebAttributionService)sharedInstance;
- (void)addInstallWebAttributionParamsWithConfig:(id)config completionHandler:(id)handler;
- (void)removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:(id)d completionHandler:(id)handler;
@end

@implementation ASDInstallWebAttributionService

+ (ASDInstallWebAttributionService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ASDInstallWebAttributionService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED90D520 != -1)
  {
    dispatch_once(&qword_1ED90D520, block);
  }

  v2 = _MergedGlobals_35;

  return v2;
}

void __49__ASDInstallWebAttributionService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = +[ASDServiceBroker defaultBroker];
  v5 = v2;
  if (v1)
  {
    v6.receiver = v1;
    v6.super_class = ASDInstallWebAttributionService;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v1 = v3;
    if (v3)
    {
      objc_storeStrong(v3 + 1, v2);
    }
  }

  v4 = _MergedGlobals_35;
  _MergedGlobals_35 = v1;
}

- (void)addInstallWebAttributionParamsWithConfig:(id)config completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  configCopy = config;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = v9;
    sourceWebRegistrableDomain = [configCopy sourceWebRegistrableDomain];
    appAdamId = [configCopy appAdamId];
    *buf = 138543874;
    v21 = v9;
    v22 = 2114;
    v23 = sourceWebRegistrableDomain;
    v24 = 2114;
    v25 = appAdamId;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding install attribution params from web from domain: %{public}@ for adamID: %{public}@", buf, 0x20u);
  }

  serviceBroker = self->_serviceBroker;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__ASDInstallWebAttributionService_addInstallWebAttributionParamsWithConfig_completionHandler___block_invoke;
  v17[3] = &unk_1E7CDC9C0;
  v18 = configCopy;
  v19 = handlerCopy;
  v14 = configCopy;
  v15 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getInstallWebAttributionServiceWithCompletionHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __94__ASDInstallWebAttributionService_addInstallWebAttributionParamsWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __94__ASDInstallWebAttributionService_addInstallWebAttributionParamsWithConfig_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 addInstallWebAttributionParamsWithConfig:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install web attribution service", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __94__ASDInstallWebAttributionService_addInstallWebAttributionParamsWithConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install web attribution service remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:(id)d completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = dCopy;
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove web install attribution params from session id: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __115__ASDInstallWebAttributionService_removeInstallWebAttributionParamsFromPrivateBrowsingSessionID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CDC9C0;
  v15 = dCopy;
  v16 = handlerCopy;
  v11 = dCopy;
  v12 = handlerCopy;
  [(ASDServiceBroker *)serviceBroker getInstallWebAttributionServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __115__ASDInstallWebAttributionService_removeInstallWebAttributionParamsFromPrivateBrowsingSessionID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __115__ASDInstallWebAttributionService_removeInstallWebAttributionParamsFromPrivateBrowsingSessionID_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install web attribution service", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __115__ASDInstallWebAttributionService_removeInstallWebAttributionParamsFromPrivateBrowsingSessionID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install web attribution service remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end