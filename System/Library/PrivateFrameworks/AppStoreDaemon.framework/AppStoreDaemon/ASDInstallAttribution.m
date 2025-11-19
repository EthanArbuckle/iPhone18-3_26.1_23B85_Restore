@interface ASDInstallAttribution
+ (id)sharedInstance;
- (ASDInstallAttribution)init;
- (id)_initWithServiceBroker:(id)a3;
- (void)addInstallAttributionParamsWithConfig:(id)a3 completionHandler:(id)a4;
- (void)endImpressionWithConfig:(id)a3 completionHandler:(id)a4;
- (void)registerInstallAttributionPingbackForApp:(id)a3 completionHandler:(id)a4;
- (void)startGhostFetchTaskWithCompletionHandler:(id)a3;
- (void)startImpressionWithConfig:(id)a3 completionHandler:(id)a4;
- (void)startPingbackTaskWithCompletionHandler:(id)a3;
- (void)updateConversionValueForInstallAttributionPingbackForApp:(id)a3 conversionValue:(id)a4 completionHandler:(id)a5;
- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 completionHandler:(id)a6;
- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 lockWindow:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation ASDInstallAttribution

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ASDInstallAttribution_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D5C0 != -1)
  {
    dispatch_once(&qword_1ED90D5C0, block);
  }

  v2 = _MergedGlobals_44;

  return v2;
}

uint64_t __39__ASDInstallAttribution_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_44 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (ASDInstallAttribution)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = [(ASDInstallAttribution *)self _initWithServiceBroker:v3];

  return v4;
}

- (id)_initWithServiceBroker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDInstallAttribution;
  v6 = [(ASDInstallAttribution *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceBroker, a3);
  }

  return v7;
}

- (void)startImpressionWithConfig:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 sourceAppAdamId];
    v10 = [v6 sourceAppBundleId];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Starting impression as requested from adamID: %{public}@ bundleID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__ASDInstallAttribution_startImpressionWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = v6;
  v17 = v7;
  v12 = v6;
  v13 = v7;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __69__ASDInstallAttribution_startImpressionWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__ASDInstallAttribution_startImpressionWithConfig_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 startAdImpressionWithConfig:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting the install attribution service %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __69__ASDInstallAttribution_startImpressionWithConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting service proxy for install attribution %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)endImpressionWithConfig:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 sourceAppAdamId];
    v10 = [v6 sourceAppBundleId];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Ending impression as requested from adamID: %{public}@ bundleID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ASDInstallAttribution_endImpressionWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = v6;
  v17 = v7;
  v12 = v6;
  v13 = v7;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __67__ASDInstallAttribution_endImpressionWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__ASDInstallAttribution_endImpressionWithConfig_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 endAdImpressionWithConfig:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting the install attribution service %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __67__ASDInstallAttribution_endImpressionWithConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting service proxy for install attribution %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startPingbackTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "Starting pingback task", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__ASDInstallAttribution_startPingbackTaskWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CDD148;
  v9 = v4;
  v7 = v4;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v8];
}

void __64__ASDInstallAttribution_startPingbackTaskWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_18];
    [v6 startPingbackTaskWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting the install attribution service %@", &v9, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __64__ASDInstallAttribution_startPingbackTaskWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Error getting service proxy for install attribution %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startGhostFetchTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "Starting pingback task", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__ASDInstallAttribution_startGhostFetchTaskWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CDD148;
  v9 = v4;
  v7 = v4;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v8];
}

void __66__ASDInstallAttribution_startGhostFetchTaskWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
    [v6 startGhostFetchTaskWithCompletionHandler:*(a1 + 32)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting the install attribution service %@", &v9, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __66__ASDInstallAttribution_startGhostFetchTaskWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Error getting service proxy for install attribution %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __63__ASDInstallAttribution_addInstallAttributionParamsWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Error getting install attribution service: %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addInstallAttributionParamsWithConfig:(id)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 sourceAppBundleId];
    v10 = [v6 sourceAppAdamId];
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Adding install attribution params from bundleID: %{public}@ adamID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__ASDInstallAttribution_addInstallAttributionParamsWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = v6;
  v17 = v7;
  v12 = v6;
  v13 = v7;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

void __81__ASDInstallAttribution_addInstallAttributionParamsWithConfig_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__ASDInstallAttribution_addInstallAttributionParamsWithConfig_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 addInstallAttributionParamsWithConfig:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install attribution service", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __81__ASDInstallAttribution_addInstallAttributionParamsWithConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install attribution remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerInstallAttributionPingbackForApp:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Registering install attribution pingback", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__ASDInstallAttribution_registerInstallAttributionPingbackForApp_completionHandler___block_invoke;
  v12[3] = &unk_1E7CDD120;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v12];
}

void __84__ASDInstallAttribution_registerInstallAttributionPingbackForApp_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__ASDInstallAttribution_registerInstallAttributionPingbackForApp_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 40);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 registerPingbackForApp:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install attribution service", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __84__ASDInstallAttribution_registerInstallAttributionPingbackForApp_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install attribution remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateConversionValueForInstallAttributionPingbackForApp:(id)a3 conversionValue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEFAULT, "Updating conversion value for install attribution pingback", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__ASDInstallAttribution_updateConversionValueForInstallAttributionPingbackForApp_conversionValue_completionHandler___block_invoke;
  v16[3] = &unk_1E7CDD170;
  v18 = v9;
  v19 = v10;
  v17 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v16];
}

void __116__ASDInstallAttribution_updateConversionValueForInstallAttributionPingbackForApp_conversionValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __116__ASDInstallAttribution_updateConversionValueForInstallAttributionPingbackForApp_conversionValue_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 48);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 updateConversionValueForApp:*(a1 + 32) conversionValue:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install attribution service", v8, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __116__ASDInstallAttribution_updateConversionValueForInstallAttributionPingbackForApp_conversionValue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install attribution remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v14, OS_LOG_TYPE_DEFAULT, "Updating conversion values for install attribution pingback", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __122__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_completionHandler___block_invoke;
  v20[3] = &unk_1E7CDD198;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v20];
}

void __122__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __122__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 56);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 updatePostbackConversionValuesForApp:*(a1 + 32) fineConversionValue:*(a1 + 40) coarseConversionValue:*(a1 + 48) completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install attribution service", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __122__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install attribution remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updatePostbackConversionValuesForApp:(id)a3 fineConversionValue:(id)a4 coarseConversionValue:(id)a5 lockWindow:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8220000, v16, OS_LOG_TYPE_DEFAULT, "Updating conversion values for install attribution pingback", buf, 2u);
  }

  serviceBroker = self->_serviceBroker;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __133__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_lockWindow_completionHandler___block_invoke;
  v22[3] = &unk_1E7CDD1C0;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = a6;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v15;
  [(ASDServiceBroker *)serviceBroker getInstallAttributionServiceWithCompletionHandler:v22];
}

void __133__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_lockWindow_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __133__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_lockWindow_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CDB730;
    v10 = *(a1 + 56);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v9];
    [v6 updatePostbackConversionValuesForApp:*(a1 + 32) fineConversionValue:*(a1 + 40) coarseConversionValue:*(a1 + 48) lockWindow:*(a1 + 64) completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "Error getting install attribution service", v8, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __133__ASDInstallAttribution_updatePostbackConversionValuesForApp_fineConversionValue_coarseConversionValue_lockWindow_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting install attribution remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end