@interface AFSiriTaskmaster
+ (id)taskmasterForMachServiceForAppWithBundleIdentifier:(id)a3;
+ (id)taskmasterForMachServiceWithName:(id)a3;
+ (id)taskmasterForUIApplicationWithBundleIdentifier:(id)a3;
- (AFSiriTaskmaster)initWithTaskDeliverer:(id)a3;
- (AFSiriTaskmasterDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)description;
- (void)_handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5;
- (void)dealloc;
- (void)handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5;
- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5;
- (void)handleSiriTaskUsageResult:(id)a3 fromRequest:(id)a4;
@end

@implementation AFSiriTaskmaster

- (AFSiriTaskmasterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleSiriTaskUsageResult:(id)a3 fromRequest:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C7960];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 _originatingAceID];
  [v9 setOriginalCommandId:v10];

  v11 = [v7 requestName];

  v17 = v11;
  v12 = [v8 _resultDescription];

  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v9 setOutcomes:v13];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained taskmaster:self didReceivePunchoutOutcome:v9];

  [(NSXPCListener *)self->_usageResultListener setDelegate:0];
  [(NSXPCListener *)self->_usageResultListener invalidate];
  usageResultListener = self->_usageResultListener;
  self->_usageResultListener = 0;

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__AFSiriTaskmaster_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_1E7349860;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

uint64_t __55__AFSiriTaskmaster_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F059A298];
  [v2 setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 resume];
}

- (void)handleSiriRequest:(id)a3 deliveryHandler:(id)a4 completionHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"AFSiriTaskmaster.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v12 = +[AFAnalytics sharedAnalytics];
  [v12 logEventWithType:701 context:0];

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = MEMORY[0x193AFB7B0](v11);
    *buf = 136315650;
    v28 = "[AFSiriTaskmaster handleSiriRequest:deliveryHandler:completionHandler:]";
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke;
  block[3] = &unk_1E7346198;
  v23 = v9;
  v24 = self;
  v25 = v10;
  v26 = v11;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [[AFSiriTaskExecution alloc] initWithRequest:*(a1 + 32) taskDeliverer:*(*(a1 + 40) + 16) usageResultListener:*(*(a1 + 40) + 24)];
  [*(*(a1 + 40) + 32) setObject:v2 forKey:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_2;
  v11[3] = &unk_1E7349838;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  [(AFSiriTaskExecution *)v2 setDeliveryHandler:v11];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_3;
  v7 = &unk_1E7346170;
  v8 = *(a1 + 40);
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 56);
  [(AFSiriTaskExecution *)v2 setCompletionHandler:&v4];
  v3 = [AFAnalytics sharedAnalytics:v4];
  [v3 logEventWithType:702 context:0];

  [(AFSiriTaskExecution *)v2 start];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v5 = +[AFAnalytics sharedAnalytics];
  [v5 logEventWithType:703 context:0];
  v2 = *(a1 + 32);
  NSClassFromString(&cfstr_Stgenericinten.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) _af_analyticsContextDescription];
    [v5 logEventWithType:503 context:v3];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[AFAnalytics sharedAnalytics];
  [v7 logEventWithType:704 context:0];

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_4;
  block[3] = &unk_1E7346148;
  objc_copyWeak(&v16, (a1 + 48));
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  objc_destroyWeak(&v16);
}

uint64_t __72__AFSiriTaskmaster_handleSiriRequest_deliveryHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 32) removeObjectForKey:WeakRetained];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
  }

  return MEMORY[0x1EEE66BE0]();
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@" %p; ", self];
  [v3 appendString:@"taskDeliverer="];
  v5 = [(AFSiriTaskDelivering *)self->_taskDeliverer description];
  [v3 appendString:v5];

  [v3 appendString:{@", taskExecutions="}];
  v6 = NSAllMapTableValues(self->_executorForRequest);
  v7 = [v6 description];
  [v3 appendString:v7];

  [v3 appendString:@">"];

  return v3;
}

- (void)handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[AFSiriTaskmaster handleFailureOfRequest:error:atTime:]";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s Unexpected failure %@ of request %@", buf, 0x20u);
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__AFSiriTaskmaster_handleFailureOfRequest_error_atTime___block_invoke;
  v15[3] = &unk_1E73464F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v12 = v9;
  v13 = v8;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(NSMapTable *)self->_executorForRequest objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    [v10 handleFailureOfRequest:v8 error:v9 atTime:a5];
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[AFSiriTaskmaster _handleFailureOfRequest:error:atTime:]";
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s No execution for this request, it can not be failed %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_usageResultListener setDelegate:0];
  [(NSXPCListener *)self->_usageResultListener invalidate];
  v3.receiver = self;
  v3.super_class = AFSiriTaskmaster;
  [(AFSiriTaskmaster *)&v3 dealloc];
}

- (AFSiriTaskmaster)initWithTaskDeliverer:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = AFSiriTaskmaster;
  v6 = [(AFSiriTaskmaster *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("Siri Taskmaster", v7);

    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_taskDeliverer, a3);
    v10 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    executorForRequest = v6->_executorForRequest;
    v6->_executorForRequest = v10;

    v12 = [MEMORY[0x1E696B0D8] anonymousListener];
    usageResultListener = v6->_usageResultListener;
    v6->_usageResultListener = v12;

    [(NSXPCListener *)v6->_usageResultListener setDelegate:v6];
    [(NSXPCListener *)v6->_usageResultListener resume];
  }

  return v6;
}

+ (id)taskmasterForUIApplicationWithBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"AFUIApplicationSiriTaskDeliverer.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [[AFUIApplicationSiriTaskDeliverer alloc] initWithAppBundleIdentifier:v5];
  v7 = [[a1 alloc] initWithTaskDeliverer:v6];
  [(AFUIApplicationSiriTaskDeliverer *)v6 setTaskmaster:v7];

  return v7;
}

+ (id)taskmasterForMachServiceForAppWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [AFMachServiceSiriTaskDeliverer machServiceSiriTaskDelivererForAppWithBundleIdentifier:v4];

  v7 = [v5 initWithTaskDeliverer:v6];

  return v7;
}

+ (id)taskmasterForMachServiceWithName:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [[AFMachServiceSiriTaskDeliverer alloc] initWithMachServiceName:v4];

  v7 = [v5 initWithTaskDeliverer:v6];

  return v7;
}

@end