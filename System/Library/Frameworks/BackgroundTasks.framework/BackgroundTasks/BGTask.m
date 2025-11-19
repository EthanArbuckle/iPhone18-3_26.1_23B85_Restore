@interface BGTask
- (BGTaskRequest)taskRequest;
- (id)_initWithIdentifier:(id)a3 activity:(id)a4;
- (id)_unsafe_setTaskCompletedWithSuccess:(BOOL)a3 afterDelay:(double)a4;
- (void)_callExpirationHandlerWithReason:(int64_t)a3;
- (void)dealloc;
@end

@implementation BGTask

- (id)_initWithIdentifier:(id)a3 activity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BGTask;
  v9 = [(BGTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->__lock = 0;
    objc_storeStrong(&v10->__activity, a4);
  }

  return v10;
}

- (BGTaskRequest)taskRequest
{
  v2 = [(BGTask *)self _activity];
  if (v2)
  {
    v3 = [BGTaskRequest _requestFromActivity:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unsafe_setTaskCompletedWithSuccess:(BOOL)a3 afterDelay:(double)a4
{
  self->__completed = 1;
  [(BGTask *)self setExpirationHandler:0];
  v7 = [(BGTask *)self _completionHandler];
  [(BGTask *)self _setCompletionHandler:0];
  v8 = [(BGTask *)self _handlerQueue];
  v9 = v8;
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__BGTask__unsafe_setTaskCompletedWithSuccess_afterDelay___block_invoke;
    v12[3] = &unk_1E7980588;
    v15 = a4;
    v13 = v8;
    v14 = v7;
    v16 = a3;
    v10 = MEMORY[0x1B26EAFA0](v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __57__BGTask__unsafe_setTaskCompletedWithSuccess_afterDelay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 0.0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }

  else
  {
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__BGTask__unsafe_setTaskCompletedWithSuccess_afterDelay___block_invoke_2;
    v8[3] = &unk_1E7980560;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    dispatch_after(v3, v4, v8);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1AC80E000, a2, OS_LOG_TYPE_ERROR, "Task %{public}@ dealloc'd without completing. This is a programmer error.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_callExpirationHandlerWithReason:(int64_t)a3
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = [(BGTask *)self expirationHandler];
  [(BGTask *)self setExpirationHandler:0];
  os_unfair_recursive_lock_unlock();
  if (v4)
  {
    v4[2](v4);
  }

  else
  {
    v5 = +[BGTaskScheduler _log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BGTask *)self _callExpirationHandlerWithReason:v5];
    }

    [(BGTask *)self setTaskCompletedWithSuccess:0];
  }
}

- (void)_callExpirationHandlerWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1AC80E000, a2, OS_LOG_TYPE_ERROR, "Client didn't provide an expiration handler for task %{public}@, completing with NO success for them", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end