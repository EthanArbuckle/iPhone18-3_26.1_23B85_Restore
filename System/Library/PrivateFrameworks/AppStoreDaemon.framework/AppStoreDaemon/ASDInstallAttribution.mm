@interface ASDInstallAttribution
+ (id)sharedInstance;
- (ASDInstallAttribution)init;
- (id)_initWithServiceBroker:(id)broker;
- (void)addInstallAttributionParamsWithConfig:(id)config completionHandler:(id)handler;
- (void)endImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)registerInstallAttributionPingbackForApp:(id)app completionHandler:(id)handler;
- (void)startGhostFetchTaskWithCompletionHandler:(id)handler;
- (void)startImpressionWithConfig:(id)config completionHandler:(id)handler;
- (void)startPingbackTaskWithCompletionHandler:(id)handler;
- (void)updateConversionValueForInstallAttributionPingbackForApp:(id)app conversionValue:(id)value completionHandler:(id)handler;
- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue completionHandler:(id)handler;
- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue lockWindow:(BOOL)window completionHandler:(id)handler;
@end

@implementation ASDInstallAttribution

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ASDInstallAttribution_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)_initWithServiceBroker:(id)broker
{
  brokerCopy = broker;
  v9.receiver = self;
  v9.super_class = ASDInstallAttribution;
  v6 = [(ASDInstallAttribution *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceBroker, broker);
  }

  return v7;
}

- (void)startImpressionWithConfig:(id)config completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  configCopy = config;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sourceAppAdamId = [configCopy sourceAppAdamId];
    sourceAppBundleId = [configCopy sourceAppBundleId];
    *buf = 138543618;
    v19 = sourceAppAdamId;
    v20 = 2114;
    v21 = sourceAppBundleId;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Starting impression as requested from adamID: %{public}@ bundleID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__ASDInstallAttribution_startImpressionWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = configCopy;
  v17 = handlerCopy;
  v12 = configCopy;
  v13 = handlerCopy;
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

- (void)endImpressionWithConfig:(id)config completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  configCopy = config;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sourceAppAdamId = [configCopy sourceAppAdamId];
    sourceAppBundleId = [configCopy sourceAppBundleId];
    *buf = 138543618;
    v19 = sourceAppAdamId;
    v20 = 2114;
    v21 = sourceAppBundleId;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Ending impression as requested from adamID: %{public}@ bundleID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ASDInstallAttribution_endImpressionWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = configCopy;
  v17 = handlerCopy;
  v12 = configCopy;
  v13 = handlerCopy;
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

- (void)startPingbackTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)startGhostFetchTaskWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)addInstallAttributionParamsWithConfig:(id)config completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  configCopy = config;
  handlerCopy = handler;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sourceAppBundleId = [configCopy sourceAppBundleId];
    sourceAppAdamId = [configCopy sourceAppAdamId];
    *buf = 138543618;
    v19 = sourceAppBundleId;
    v20 = 2114;
    v21 = sourceAppAdamId;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "Adding install attribution params from bundleID: %{public}@ adamID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__ASDInstallAttribution_addInstallAttributionParamsWithConfig_completionHandler___block_invoke;
  v15[3] = &unk_1E7CDD120;
  v16 = configCopy;
  v17 = handlerCopy;
  v12 = configCopy;
  v13 = handlerCopy;
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

- (void)registerInstallAttributionPingbackForApp:(id)app completionHandler:(id)handler
{
  appCopy = app;
  handlerCopy = handler;
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
  v13 = appCopy;
  v14 = handlerCopy;
  v10 = appCopy;
  v11 = handlerCopy;
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

- (void)updateConversionValueForInstallAttributionPingbackForApp:(id)app conversionValue:(id)value completionHandler:(id)handler
{
  appCopy = app;
  valueCopy = value;
  handlerCopy = handler;
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
  v18 = valueCopy;
  v19 = handlerCopy;
  v17 = appCopy;
  v13 = valueCopy;
  v14 = appCopy;
  v15 = handlerCopy;
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

- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue completionHandler:(id)handler
{
  appCopy = app;
  valueCopy = value;
  conversionValueCopy = conversionValue;
  handlerCopy = handler;
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
  v21 = appCopy;
  v22 = valueCopy;
  v23 = conversionValueCopy;
  v24 = handlerCopy;
  v16 = conversionValueCopy;
  v17 = valueCopy;
  v18 = appCopy;
  v19 = handlerCopy;
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

- (void)updatePostbackConversionValuesForApp:(id)app fineConversionValue:(id)value coarseConversionValue:(id)conversionValue lockWindow:(BOOL)window completionHandler:(id)handler
{
  appCopy = app;
  valueCopy = value;
  conversionValueCopy = conversionValue;
  handlerCopy = handler;
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
  v23 = appCopy;
  v24 = valueCopy;
  v25 = conversionValueCopy;
  v26 = handlerCopy;
  windowCopy = window;
  v18 = conversionValueCopy;
  v19 = valueCopy;
  v20 = appCopy;
  v21 = handlerCopy;
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