@interface BGTask
- (BGTaskRequest)taskRequest;
- (id)_initWithIdentifier:(id)identifier activity:(id)activity;
- (id)_unsafe_setTaskCompletedWithSuccess:(BOOL)success afterDelay:(double)delay;
- (void)_callExpirationHandlerWithReason:(int64_t)reason;
- (void)dealloc;
@end

@implementation BGTask

- (id)_initWithIdentifier:(id)identifier activity:(id)activity
{
  identifierCopy = identifier;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = BGTask;
  v9 = [(BGTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v10->__lock = 0;
    objc_storeStrong(&v10->__activity, activity);
  }

  return v10;
}

- (BGTaskRequest)taskRequest
{
  _activity = [(BGTask *)self _activity];
  if (_activity)
  {
    v3 = [BGTaskRequest _requestFromActivity:_activity];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_unsafe_setTaskCompletedWithSuccess:(BOOL)success afterDelay:(double)delay
{
  self->__completed = 1;
  [(BGTask *)self setExpirationHandler:0];
  _completionHandler = [(BGTask *)self _completionHandler];
  [(BGTask *)self _setCompletionHandler:0];
  _handlerQueue = [(BGTask *)self _handlerQueue];
  v9 = _handlerQueue;
  if (_completionHandler)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__BGTask__unsafe_setTaskCompletedWithSuccess_afterDelay___block_invoke;
    v12[3] = &unk_1E7980588;
    delayCopy = delay;
    v13 = _handlerQueue;
    v14 = _completionHandler;
    successCopy = success;
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
  selfCopy = self;
  _os_log_error_impl(&dword_1AC80E000, a2, OS_LOG_TYPE_ERROR, "Task %{public}@ dealloc'd without completing. This is a programmer error.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_callExpirationHandlerWithReason:(int64_t)reason
{
  os_unfair_recursive_lock_lock_with_options();
  expirationHandler = [(BGTask *)self expirationHandler];
  [(BGTask *)self setExpirationHandler:0];
  os_unfair_recursive_lock_unlock();
  if (expirationHandler)
  {
    expirationHandler[2](expirationHandler);
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