@interface AFSiriTaskExecution
- (AFSiriTaskExecution)initWithRequest:(id)a3 taskDeliverer:(id)a4 usageResultListener:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_completeWithResponse:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5;
- (void)handleSiriResponse:(id)a3 atTime:(unint64_t)a4;
- (void)setCompletionHandler:(id)a3;
- (void)setDeliveryHandler:(id)a3;
- (void)start;
@end

@implementation AFSiriTaskExecution

- (void)_completeWithResponse:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v17 = "[AFSiriTaskExecution _completeWithResponse:error:]";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AFSiriTaskExecution__completeWithResponse_error___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __51__AFSiriTaskExecution__completeWithResponse_error___block_invoke(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1[4] + 16);
    v22 = 136315394;
    v23 = "[AFSiriTaskExecution _completeWithResponse:error:]_block_invoke";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s cancelling watchdog for %@", &v22, 0x16u);
  }

  [*(a1[4] + 72) cancel];
  v4 = a1[4];
  v5 = *(v4 + 72);
  *(v4 + 72) = 0;

  v6 = a1[4];
  if (*(v6 + 56) == 3)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v9 = a1[6];
      if (!v9)
      {
        v9 = &stru_1F0512680;
      }

      v22 = 136315906;
      v23 = "[AFSiriTaskExecution _completeWithResponse:error:]_block_invoke";
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s %@ is already completed; not completing again with response %@ %@", &v22, 0x2Au);
    }
  }

  else
  {
    *(v6 + 56) = 3;
    v10 = *(a1[4] + 24);
    if (objc_opt_respondsToSelector())
    {
      [*(a1[4] + 24) siriTaskDidFinish];
    }

    v11 = a1[4];
    v12 = *(v11 + 48);
    if (v12)
    {
      (*(v12 + 16))(v12, a1[5], a1[6]);
      v11 = a1[4];
      v13 = *(v11 + 48);
    }

    else
    {
      v13 = 0;
    }

    *(v11 + 48) = 0;
  }

  v14 = AFSiriLogContextConnection;
  v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  v16 = a1[4];
  if (v15)
  {
    v22 = 136315394;
    v23 = "[AFSiriTaskExecution _completeWithResponse:error:]_block_invoke";
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s <AFSiriTaskExecution %p> releasing listener", &v22, 0x16u);
    v16 = a1[4];
  }

  [*(v16 + 80) setDelegate:0];
  [*(a1[4] + 80) invalidate];
  v17 = a1[4];
  v18 = *(v17 + 80);
  *(v17 + 80) = 0;

  v19 = a1[4];
  v20 = *(v19 + 64);
  *(v19 + 64) = 0;

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AFSiriTaskExecution_setCompletionHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__AFSiriTaskExecution_setCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (void)setDeliveryHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AFSiriTaskExecution_setDeliveryHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __42__AFSiriTaskExecution_setDeliveryHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)start
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__AFSiriTaskExecution_start__block_invoke;
  v3[3] = &unk_1E7348498;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(queue, v3);
}

void __28__AFSiriTaskExecution_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 1)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"AFSiriTaskExecution.m" lineNumber:136 description:@"Task executions can only be started once"];

    v2 = *(a1 + 32);
  }

  *(v2 + 56) = 2;
  v3 = *(a1 + 32);
  if (*(v3 + 40) || *(v3 + 48))
  {
    objc_storeStrong((v3 + 64), v3);
  }

  v4 = [AFSiriTask alloc];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = [*(v5 + 80) endpoint];
  v8 = [*(*(a1 + 32) + 32) endpoint];
  v9 = [(AFSiriTask *)v4 _initWithRequest:v6 remoteResponseListenerEndpoint:v7 usageResultListenerEndpoint:v8];

  objc_initWeak(&location, *(a1 + 32));
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __28__AFSiriTaskExecution_start__block_invoke_2;
  v14[3] = &unk_1E7342490;
  v14[4] = v10;
  v12 = v9;
  v15 = v12;
  objc_copyWeak(&v16, &location);
  [v11 deliverSiriTask:v12 completionHandler:v14];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __28__AFSiriTaskExecution_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__AFSiriTaskExecution_start__block_invoke_3;
  v8[3] = &unk_1E7342468;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  objc_copyWeak(&v11, (a1 + 48));
  dispatch_async(v6, v8);
  objc_destroyWeak(&v11);
}

void __28__AFSiriTaskExecution_start__block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = AFSiriLogContextConnection;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      v18 = v6[3];
      *buf = 136315906;
      v23 = "[AFSiriTaskExecution start]_block_invoke_3";
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2114;
      v29 = v7;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Delivery of task %@ by %@ failed with error %{public}@", buf, 0x2Au);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
    }

    [v6 _completeWithError:v7];
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v9 = v6[3];
      *buf = 136315650;
      v23 = "[AFSiriTaskExecution start]_block_invoke";
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Task %@ was delivered successfully by %@", buf, 0x20u);
      v6 = *(a1 + 32);
    }

    if (v6[7] != 3)
    {
      v10 = AFPreferencesSiriTaskResponseTimeout();
      v11 = [AFWatchdogTimer alloc];
      v12 = *(*(a1 + 32) + 8);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __28__AFSiriTaskExecution_start__block_invoke_34;
      v19[3] = &unk_1E73467D8;
      objc_copyWeak(v21, (a1 + 56));
      v20 = *(a1 + 48);
      v21[1] = *&v10;
      v13 = [(AFWatchdogTimer *)v11 initWithTimeoutInterval:v12 onQueue:v19 timeoutHandler:v10];
      v14 = *(a1 + 32);
      v15 = *(v14 + 72);
      *(v14 + 72) = v13;

      [*(*(a1 + 32) + 72) start];
      objc_destroyWeak(v21);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __28__AFSiriTaskExecution_start__block_invoke_34(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_FAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = 136315650;
    v11 = "[AFSiriTaskExecution start]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2050;
    v15 = v9;
    _os_log_fault_impl(&dword_1912FE000, v3, OS_LOG_TYPE_FAULT, "%s Handling of %@ timed out after %{public}.2f seconds", &v10, 0x20u);
    if (!WeakRetained)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (WeakRetained)
  {
LABEL_3:
    v4 = +[AFAnalytics sharedAnalytics];
    v5 = [WeakRetained[2] _af_analyticsContextDescription];
    [v4 logEventWithType:502 context:v5];

    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"kAFAssistantErrorDomain" code:702 userInfo:0];
    [WeakRetained _completeWithError:v6];
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AFSiriTaskExecution_listener_shouldAcceptNewConnection___block_invoke;
  v9[3] = &unk_1E7349860;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

uint64_t __58__AFSiriTaskExecution_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0578F48];
  [v2 setExportedInterface:v3];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 resume];
}

- (void)handleFailureOfRequest:(id)a3 error:(id)a4 atTime:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AFSiriTaskExecution_handleFailureOfRequest_error_atTime___block_invoke;
  v13[3] = &unk_1E73464F0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

uint64_t __59__AFSiriTaskExecution_handleFailureOfRequest_error_atTime___block_invoke(uint64_t a1)
{
  v2 = +[AFAnalytics sharedAnalytics];
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) _af_analyticsContextDescription];
  [v2 logEventWithType:506 machAbsoluteTime:v3 context:v4];

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [v5 _completeWithError:v6];
}

- (void)handleSiriResponse:(id)a3 atTime:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AFSiriTaskExecution_handleSiriResponse_atTime___block_invoke;
  block[3] = &unk_1E73484C0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

void __49__AFSiriTaskExecution_handleSiriResponse_atTime___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = +[AFAnalytics sharedAnalytics];
  v3 = *(a1 + 48);
  v4 = [*(*(a1 + 32) + 16) _af_analyticsContextDescription];
  [v2 logEventWithType:506 machAbsoluteTime:v3 context:v4];

  if ([*(a1 + 40) _isForRequest:*(*(a1 + 32) + 16)])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x1E69E9840];

    [v5 _completeWithResponse:v6];
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 16);
    v14[0] = @"SiriRequest";
    v14[1] = @"SiriResponse";
    v15[0] = v10;
    v15[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v12 = [v8 errorWithDomain:@"kAFAssistantErrorDomain" code:704 userInfo:v11];

    [*(a1 + 32) _completeWithError:v12];
    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[AFSiriTaskExecution dealloc]";
    v8 = 2048;
    v9 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s <AFSiriTaskExecution %p>", buf, 0x16u);
  }

  [(NSXPCListener *)self->_taskResponseListener setDelegate:0];
  [(NSXPCListener *)self->_taskResponseListener invalidate];
  v5.receiver = self;
  v5.super_class = AFSiriTaskExecution;
  [(AFSiriTaskExecution *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (AFSiriTaskExecution)initWithRequest:(id)a3 taskDeliverer:(id)a4 usageResultListener:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = AFSiriTaskExecution;
  v12 = [(AFSiriTaskExecution *)&v22 init];
  if (v12)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[AFSiriTaskExecution initWithRequest:taskDeliverer:usageResultListener:]";
      v25 = 2048;
      v26 = v12;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s <AFSiriTaskExecution %p>", buf, 0x16u);
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("Siri Task Execution", v14);

    queue = v12->_queue;
    v12->_queue = v15;

    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v12->_taskDeliverer, a4);
    objc_storeStrong(&v12->_usageResultListener, a5);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = &__block_literal_global_3256;

    v12->_state = 1;
    v18 = [MEMORY[0x1E696B0D8] anonymousListener];
    taskResponseListener = v12->_taskResponseListener;
    v12->_taskResponseListener = v18;

    [(NSXPCListener *)v12->_taskResponseListener setDelegate:v12];
    [(NSXPCListener *)v12->_taskResponseListener resume];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

@end