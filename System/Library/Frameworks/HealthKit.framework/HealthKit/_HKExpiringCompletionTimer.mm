@interface _HKExpiringCompletionTimer
- (BOOL)isExpired;
- (_HKExpiringCompletionTimer)initWithCompletion:(id)completion;
- (_HKExpiringCompletionTimer)initWithName:(id)name queue:(id)queue completion:(id)completion;
- (_HKExpiringCompletionTimer)initWithQueue:(id)queue completion:(id)completion;
- (void)_cancelTimer;
- (void)_invalidateAndInvokeCompletion:(BOOL)completion error:(id)error;
- (void)_start;
- (void)dealloc;
- (void)restart;
- (void)startWithTimeoutInterval:(double)interval handler:(id)handler;
@end

@implementation _HKExpiringCompletionTimer

- (_HKExpiringCompletionTimer)initWithCompletion:(id)completion
{
  v5 = dispatch_get_global_queue(0, 0);
  v6 = [(_HKExpiringCompletionTimer *)self initWithQueue:v5 completion:completion];

  return v6;
}

- (_HKExpiringCompletionTimer)initWithName:(id)name queue:(id)queue completion:(id)completion
{
  objc_storeStrong(&self->_name, name);
  completionCopy = completion;
  queueCopy = queue;
  v10 = [(_HKExpiringCompletionTimer *)self initWithQueue:queueCopy completion:completionCopy];

  return v10;
}

- (_HKExpiringCompletionTimer)initWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _HKExpiringCompletionTimer;
  v9 = [(_HKExpiringCompletionTimer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v0 object:v1 file:@"_HKExpiringCompletionTimer.m" lineNumber:49 description:{@"%@ must be invalidated before deallocation", objc_opt_class()}];
}

- (void)_cancelTimer
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (BOOL)isExpired
{
  if (!self->_startDate)
  {
    return 0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return v3 > self->_expirationTime;
}

- (void)startWithTimeoutInterval:(double)interval handler:(id)handler
{
  handlerCopy = handler;
  if (self->_invalidated)
  {
    v10 = handlerCopy;
    [_HKExpiringCompletionTimer startWithTimeoutInterval:handler:];
    handlerCopy = v10;
  }

  if (self->_startDate)
  {
    v11 = handlerCopy;
    [_HKExpiringCompletionTimer startWithTimeoutInterval:handler:];
    handlerCopy = v11;
  }

  if (!self->_invalidated && !self->_startDate)
  {
    self->_timeout = interval;
    v9 = handlerCopy;
    v7 = [handlerCopy copy];
    timeoutHandler = self->_timeoutHandler;
    self->_timeoutHandler = v7;

    [(_HKExpiringCompletionTimer *)self _start];
    handlerCopy = v9;
  }
}

- (void)restart
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_start
{
  date = [MEMORY[0x1E695DF00] date];
  startDate = self->_startDate;
  self->_startDate = date;

  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  self->_expirationTime = v6 + self->_timeout;
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  timerSource = self->_timerSource;
  self->_timerSource = v7;

  v9 = self->_timerSource;
  v10 = dispatch_walltime(0, (self->_timeout * 1000000000.0));
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  v11 = self->_timerSource;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36___HKExpiringCompletionTimer__start__block_invoke;
  v12[3] = &unk_1E7378630;
  v12[4] = self;
  v12[5] = a2;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_resume(self->_timerSource);
}

- (void)_invalidateAndInvokeCompletion:(BOOL)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  if (!self->_invalidated)
  {
    v9 = errorCopy;
    self->_invalidated = 1;
    [(_HKExpiringCompletionTimer *)self _cancelTimer];
    v7 = _Block_copy(self->_completion);
    completion = self->_completion;
    self->_completion = 0;

    if (completionCopy)
    {
      v7[2](v7, v9 == 0);
    }

    errorCopy = v9;
  }
}

- (void)startWithTimeoutInterval:handler:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)startWithTimeoutInterval:handler:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end