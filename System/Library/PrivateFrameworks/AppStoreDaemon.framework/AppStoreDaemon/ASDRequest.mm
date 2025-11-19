@interface ASDRequest
+ (id)_sharedBroker;
+ (void)cancelAllRequestsWithErrorHandler:(id)a3;
- (ASDRequest)init;
- (ASDRequest)initWithCoder:(id)a3;
- (ASDRequestObserver)observer;
- (id)description;
- (void)_callErrorHandler:(uint64_t)a1 withError:(void *)a2 orDefaultCode:(void *)a3;
- (void)_callErrorHandler:(void *)a3 withError:;
- (void)_cancelWithErrorHandler:(id)a3;
- (void)_notifyObserverOfCompletionWithError:(void *)a1;
- (void)_startWithErrorHandler:(id)a3;
- (void)receiveResponse:(id)a3;
@end

@implementation ASDRequest

- (ASDRequest)init
{
  v6.receiver = self;
  v6.super_class = ASDRequest;
  v2 = [(ASDRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    requestID = v2->_requestID;
    v2->_requestID = v3;
  }

  return v2;
}

+ (id)_sharedBroker
{
  if (_MergedGlobals_49 != -1)
  {
    dispatch_once(&_MergedGlobals_49, &__block_literal_global_22);
  }

  v3 = qword_1ED90D610;

  return v3;
}

uint64_t __27__ASDRequest__sharedBroker__block_invoke()
{
  qword_1ED90D610 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ASDRequest;
  v4 = [(ASDRequest *)&v9 description];
  v5 = [(ASDRequest *)self requestID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@: %@", v4, v6];

  return v7;
}

+ (void)cancelAllRequestsWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedBroker];
  [v5 cancelAllRequestsWithErrorHandler:v4];
}

- (void)receiveResponse:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543874;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = self;
    v12 = 2114;
    v13 = v4;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Request %{public}@ received unhandled response: %{public}@", &v8, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (ASDRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDRequest;
  v5 = [(ASDRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v6;
  }

  return v5;
}

- (void)_callErrorHandler:(void *)a3 withError:
{
  v5 = a2;
  v6 = a3;
  if (a1 && v5)
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__ASDRequest__callErrorHandler_withError___block_invoke;
    v8[3] = &unk_1E7CDB890;
    v10 = v5;
    v9 = v6;
    dispatch_async(v7, v8);
  }
}

- (void)_callErrorHandler:(uint64_t)a1 withError:(void *)a2 orDefaultCode:(void *)a3
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      v6 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 508, @"Could not connect to helper daemon", 0, 0);
    }

    [(ASDRequest *)a1 _callErrorHandler:v7 withError:v6];
  }
}

- (void)_cancelWithErrorHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ASDRequest *)self proxy];
  if (v5)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__ASDRequest__cancelWithErrorHandler___block_invoke;
    v14[3] = &unk_1E7CDBAB8;
    v14[4] = self;
    v6 = v4;
    v15 = v6;
    v7 = [v5 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__ASDRequest__cancelWithErrorHandler___block_invoke_16;
    v12[3] = &unk_1E7CDBAB8;
    v12[4] = self;
    v13 = v6;
    [v7 cancelWithErrorHandler:v12];
  }

  else if (v4)
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Cannot cancel request that has not yet been started", buf, 0xCu);
    }

    v9 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 532, @"Request has not been started", 0, 0);
    (*(v4 + 2))(v4, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __38__ASDRequest__cancelWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain remote proxy with error: %{public}@", &v8, 0x16u);
  }

  [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserverOfCompletionWithError:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 observer];
    if (v4)
    {
      v5 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__ASDRequest__notifyObserverOfCompletionWithError___block_invoke;
      block[3] = &unk_1E7CDBA20;
      v7 = v4;
      v8 = a1;
      v9 = v3;
      dispatch_async(v5, block);
    }
  }
}

- (void)_startWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__ASDRequest__startWithErrorHandler___block_invoke;
  v11 = &unk_1E7CDBAB8;
  v12 = self;
  v13 = v4;
  v5 = v4;
  v6 = &v8;
  if (self)
  {
    v7 = [ASDRequest _sharedBroker:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__ASDRequest__submitRequestWithErrorHandler___block_invoke;
    v14[3] = &unk_1E7CDD558;
    v14[4] = self;
    v15 = v6;
    [v7 submitRequest:self withReplyHandler:v14];
  }
}

void __37__ASDRequest__startWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) proxy];
  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__ASDRequest__startWithErrorHandler___block_invoke_2;
    v14[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v5;
    v6 = [v4 remoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__ASDRequest__startWithErrorHandler___block_invoke_20;
    v12[3] = &unk_1E7CDBAB8;
    v7 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v7;
    [v6 startWithErrorHandler:v12];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v3;
      v11 = v17;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Cannot start request because submission failed with error: %{public}@", buf, 0x16u);
    }

    [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
    [(ASDRequest *)*(a1 + 32) _notifyObserverOfCompletionWithError:v3];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __37__ASDRequest__startWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v3;
    v7 = v9;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain remote proxy with error: %{public}@", &v8, 0x16u);
  }

  [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
  [(ASDRequest *)*(a1 + 32) _notifyObserverOfCompletionWithError:v3];

  v5 = *MEMORY[0x1E69E9840];
}

void __37__ASDRequest__startWithErrorHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v3;
      v7 = v11;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to start with error: %{public}@", &v10, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = 0;
    v7 = v11;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_INFO, "[%{public}@]: Started successfully with error: %{public}@", &v10, 0x16u);
    goto LABEL_6;
  }

  [(ASDRequest *)*(a1 + 32) _callErrorHandler:v3 withError:?];
  v9 = *MEMORY[0x1E69E9840];
}

void __45__ASDRequest__submitRequestWithErrorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory(13);
  v8 = v7;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v12 = v18;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Request could not be submitted: %{public}@", &v17, 0x16u);
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = 0;
    v12 = v10;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@]: Request submitted successfully: %{public}@ error: %{public}@", &v17, 0x20u);
LABEL_8:
  }

  [*(a1 + 32) setProxy:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v13, v14);

  v15 = *MEMORY[0x1E69E9840];
}

- (ASDRequestObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end