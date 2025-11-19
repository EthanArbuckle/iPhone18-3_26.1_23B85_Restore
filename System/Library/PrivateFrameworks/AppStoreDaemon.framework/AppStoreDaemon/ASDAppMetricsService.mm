@interface ASDAppMetricsService
+ (id)defaultService;
+ (id)interface;
- (ASDAppMetricsService)init;
- (id)_initWithServiceBroker:(id)a3;
- (void)getMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4;
- (void)postMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4;
- (void)recordMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4;
- (void)resetMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4;
@end

@implementation ASDAppMetricsService

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049E18];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getMetricsEventsForType_withReplyHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

- (ASDAppMetricsService)init
{
  v3 = +[ASDServiceBroker defaultBroker];
  v4 = [(ASDAppMetricsService *)self _initWithServiceBroker:v3];

  return v4;
}

+ (id)defaultService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ASDAppMetricsService_defaultService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED90D458 != -1)
  {
    dispatch_once(&qword_1ED90D458, block);
  }

  v2 = _MergedGlobals_24;

  return v2;
}

uint64_t __38__ASDAppMetricsService_defaultService__block_invoke(uint64_t a1)
{
  _MergedGlobals_24 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithServiceBroker:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDAppMetricsService;
  v5 = [(ASDAppMetricsService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serviceBroker, v4);
  }

  return v6;
}

- (void)getMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = +[ASDServiceBroker defaultBroker];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke;
  v9[3] = &unk_1E7CDBB08;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 getAppMetricsServiceWithCompletionHandler:v9];
}

void __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke_2;
    v15[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke_2;
    v13[3] = &unk_1E7CDB7A8;
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    [v7 getMetricsEventsForType:v8 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get results due to error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get events due to error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ASDAppMetricsService_getMetricsEventsForType_withReplyHandler___block_invoke_2_3;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)postMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = +[ASDServiceBroker defaultBroker];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke;
  v9[3] = &unk_1E7CDBB08;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 getAppMetricsServiceWithCompletionHandler:v9];
}

void __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke_2;
    v15[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke_6;
    v13[3] = &unk_1E7CDB758;
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    [v7 postMetricsEventsForType:v8 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to post due to error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to post due to error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke_6(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ASDAppMetricsService_postMetricsEventsForType_withReplyHandler___block_invoke_2_7;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)recordMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = +[ASDServiceBroker defaultBroker];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke;
  v9[3] = &unk_1E7CDBB08;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 getAppMetricsServiceWithCompletionHandler:v9];
}

void __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke_2;
    v15[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke_9;
    v13[3] = &unk_1E7CDB758;
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    [v7 recordMetricsEventsForType:v8 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to record due to error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to record due to error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke_9(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__ASDAppMetricsService_recordMetricsEventsForType_withReplyHandler___block_invoke_2_10;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)resetMetricsEventsForType:(int64_t)a3 withReplyHandler:(id)a4
{
  v6 = a4;
  v7 = +[ASDServiceBroker defaultBroker];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke;
  v9[3] = &unk_1E7CDBB08;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 getAppMetricsServiceWithCompletionHandler:v9];
}

void __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke_2;
    v15[3] = &unk_1E7CDBAB8;
    v6 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v6;
    v7 = [a2 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke_11;
    v13[3] = &unk_1E7CDB758;
    v8 = *(a1 + 48);
    v14 = *(a1 + 40);
    [v7 resetMetricsEventsForType:v8 withReplyHandler:v13];
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset due to error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v8 = v10;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset due to error: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v3, v5);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke_11(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ASDAppMetricsService_resetMetricsEventsForType_withReplyHandler___block_invoke_2_12;
  block[3] = &unk_1E7CDBB30;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

@end