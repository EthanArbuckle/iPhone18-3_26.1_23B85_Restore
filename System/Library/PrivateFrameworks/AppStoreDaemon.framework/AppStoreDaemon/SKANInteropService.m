@interface SKANInteropService
+ (SKANInteropService)sharedInstance;
- (void)getImpressionsForApp:(id)a3 completionHandler:(id)a4;
- (void)storePostbacks:(id)a3 completionHandler:(id)a4;
- (void)storeSkannerEvents:(id)a3 advertisedItemID:(id)a4 completionHandler:(id)a5;
@end

@implementation SKANInteropService

+ (SKANInteropService)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SKANInteropService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D510 != -1)
  {
    dispatch_once(&qword_1ED90D510, block);
  }

  v2 = _MergedGlobals_34;

  return v2;
}

void __36__SKANInteropService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = +[ASDServiceBroker defaultBroker];
  v5 = v2;
  if (v1)
  {
    v6.receiver = v1;
    v6.super_class = SKANInteropService;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v1 = v3;
    if (v3)
    {
      objc_storeStrong(v3 + 1, v2);
    }
  }

  v4 = _MergedGlobals_34;
  _MergedGlobals_34 = v1;
}

- (void)getImpressionsForApp:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v6;
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting skan impressions for adamID: %{public}@", buf, 0x16u);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke;
  v14[3] = &unk_1E7CDC970;
  v15 = v6;
  v16 = v7;
  v11 = v6;
  v12 = v7;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 getImpressionsForApp:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __61__SKANInteropService_getImpressionsForApp_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)storeSkannerEvents:(id)a3 advertisedItemID:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = objc_opt_class();
    v12 = v23;
    _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storing SKanner events from BD", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke;
  v18[3] = &unk_1E7CDC998;
  v20 = v9;
  v21 = v10;
  v19 = v8;
  v14 = v9;
  v15 = v8;
  v16 = v10;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 48);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 storeSkannerEvents:*(a1 + 32) advertisedItemID:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __76__SKANInteropService_storeSkannerEvents_advertisedItemID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)storePostbacks:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Storing postbacks from BD", buf, 0xCu);
  }

  serviceBroker = self->_serviceBroker;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__SKANInteropService_storePostbacks_completionHandler___block_invoke;
  v14[3] = &unk_1E7CDC970;
  v15 = v6;
  v16 = v7;
  v11 = v6;
  v12 = v7;
  [(ASDServiceBroker *)serviceBroker getSKANInteropServiceWithCompletionHandler:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __55__SKANInteropService_storePostbacks_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__SKANInteropService_storePostbacks_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7CDB730;
    v8 = *(a1 + 40);
    v4 = [a2 remoteObjectProxyWithErrorHandler:v7];
    [v4 storePostbacks:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v5 = ASDLogHandleForCategory(32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Error getting skan interop service", v6, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __55__SKANInteropService_storePostbacks_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "Error getting skan interop service remote proxy: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end