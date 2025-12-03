@interface _HKDeepBreathingSession
+ (id)taskIdentifier;
- (BOOL)_isServerAttached;
- (NSString)description;
- (_HKDeepBreathingSession)initWithHealthStore:(id)store configuration:(id)configuration;
- (_HKDeepBreathingSessionDelegate)delegate;
- (int64_t)serverState;
- (void)_connectionDidEncounterError:(id)error;
- (void)_queue_alertDelegateDidEncounterError:(id)error;
- (void)_queue_alertDelegateDidReceiveHeartRate:(double)rate;
- (void)_queue_deactivate;
- (void)_queue_transitionToServerState:(int64_t)state;
- (void)clientRemote_sessionDidReceiveError:(id)error;
- (void)clientRemote_sessionDidReceiveHeartRate:(double)rate;
- (void)connectionInvalidated;
- (void)endSessionWithEndReason:(int64_t)reason;
- (void)fetchProxyWithHandler:(id)handler errorHandler:(id)errorHandler;
- (void)startSessionWithStartDate:(id)date completion:(id)completion;
@end

@implementation _HKDeepBreathingSession

- (_HKDeepBreathingSession)initWithHealthStore:(id)store configuration:(id)configuration
{
  storeCopy = store;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = _HKDeepBreathingSession;
  v8 = [(_HKDeepBreathingSession *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v10 = HKCreateSerialDispatchQueue(v8, @"queue");
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = HKCreateSerialDispatchQueue(v9, @"client");
    clientQueue = v9->_clientQueue;
    v9->_clientQueue = v12;

    v14 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v17 = [(HKTaskServerProxyProvider *)v14 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v9 taskUUID:uUID];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v17;

    [(HKProxyProvider *)v9->_proxyProvider setShouldRetryOnInterruption:0];
    [(HKTaskServerProxyProvider *)v9->_proxyProvider setTaskConfiguration:configurationCopy];
    v9->_serverState = 2;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sessionConfiguration = [(_HKDeepBreathingSession *)self sessionConfiguration];
  v6 = [v3 stringWithFormat:@"<%@:%p, configuration:%@>", v4, self, sessionConfiguration];

  return v6;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___HKDeepBreathingSession_connectionInvalidated__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startSessionWithStartDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke;
  aBlock[3] = &unk_1E7378BE8;
  aBlock[4] = self;
  v19 = completionCopy;
  v8 = completionCopy;
  v9 = _Block_copy(aBlock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_3;
  v14[3] = &unk_1E7380050;
  v15 = dateCopy;
  selfCopy = self;
  v17 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64___HKDeepBreathingSession_startSessionWithStartDate_completion___block_invoke_18;
  v12[3] = &unk_1E7376960;
  v13 = v17;
  v10 = v17;
  v11 = dateCopy;
  [(_HKDeepBreathingSession *)self fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)endSessionWithEndReason:(int64_t)reason
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51___HKDeepBreathingSession_endSessionWithEndReason___block_invoke;
  v3[3] = &__block_descriptor_40_e41_v16__0____HKDeepBreathingSessionServer__8l;
  v3[4] = reason;
  [(_HKDeepBreathingSession *)self fetchProxyWithHandler:v3 errorHandler:&__block_literal_global_23_1];
}

- (void)fetchProxyWithHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  if ([(_HKDeepBreathingSession *)self _isServerAttached])
  {
    [(HKProxyProvider *)self->_proxyProvider fetchProxyWithHandler:handlerCopy errorHandler:errorHandlerCopy];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"requested server proxy while server is not attached (%ld)", -[_HKDeepBreathingSession serverState](self, "serverState")}];
    errorHandlerCopy[2](errorHandlerCopy, v8);
  }
}

- (void)_queue_deactivate
{
  [(_HKDeepBreathingSession *)self _queue_transitionToServerState:1];
  proxyProvider = self->_proxyProvider;

  [(HKProxyProvider *)proxyProvider invalidate];
}

- (int64_t)serverState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___HKDeepBreathingSession_serverState__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_queue_transitionToServerState:(int64_t)state
{
  v13 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v6 = HKLogDeepBreathing;
  if (os_log_type_enabled(HKLogDeepBreathing, OS_LOG_TYPE_DEFAULT))
  {
    serverState = self->_serverState;
    v9 = 134218240;
    v10 = serverState;
    v11 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "transitioning server state (%ld -> %ld)", &v9, 0x16u);
  }

  if (state == 3 && self->_serverState != 2)
  {
    [(_HKDeepBreathingSession *)a2 _queue_transitionToServerState:?];
  }

  self->_serverState = state;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_connectionDidEncounterError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___HKDeepBreathingSession__connectionDidEncounterError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)_isServerAttached
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44___HKDeepBreathingSession__isServerAttached__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)clientRemote_sessionDidReceiveHeartRate:(double)rate
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67___HKDeepBreathingSession_clientRemote_sessionDidReceiveHeartRate___block_invoke;
  v4[3] = &unk_1E7378630;
  v4[4] = self;
  *&v4[5] = rate;
  dispatch_sync(queue, v4);
}

- (void)clientRemote_sessionDidReceiveError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___HKDeepBreathingSession_clientRemote_sessionDidReceiveError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(queue, v7);
}

- (void)_queue_alertDelegateDidReceiveHeartRate:(double)rate
{
  objc_copyWeak(&to, &self->_delegate);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67___HKDeepBreathingSession__queue_alertDelegateDidReceiveHeartRate___block_invoke;
  v5[3] = &unk_1E73800B8;
  objc_copyWeak(v6, &to);
  v5[4] = self;
  v6[1] = *&rate;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&to);
}

- (void)_queue_alertDelegateDidEncounterError:(id)error
{
  errorCopy = error;
  objc_copyWeak(&to, &self->_delegate);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___HKDeepBreathingSession__queue_alertDelegateDidEncounterError___block_invoke;
  v6[3] = &unk_1E73800E0;
  objc_copyWeak(&v8, &to);
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&to);
}

- (_HKDeepBreathingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_transitionToServerState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDeepBreathingSession.m" lineNumber:154 description:@"cannot move from detached -> started"];
}

@end