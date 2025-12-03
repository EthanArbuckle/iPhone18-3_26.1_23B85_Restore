@interface HKNanoSyncControl
+ (id)taskIdentifier;
- (HKNanoSyncControl)initWithHealthStore:(id)store;
- (void)fetchNanoSyncPairedDevicesWithCompletion:(id)completion;
- (void)forceNanoSyncWithOptions:(unint64_t)options completion:(id)completion;
- (void)resetNanoSyncWithCompletion:(id)completion;
- (void)waitForLastChanceSyncWithDevicePairingID:(id)d timeout:(double)timeout completion:(id)completion;
@end

@implementation HKNanoSyncControl

- (HKNanoSyncControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKNanoSyncControl;
  v5 = [(HKNanoSyncControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    [(HKProxyProvider *)v5->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)fetchNanoSyncPairedDevicesWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__HKNanoSyncControl_fetchNanoSyncPairedDevicesWithCompletion___block_invoke;
  v9[3] = &unk_1E7378480;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKNanoSyncControl_fetchNanoSyncPairedDevicesWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)forceNanoSyncWithOptions:(unint64_t)options completion:(id)completion
{
  v6 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__HKNanoSyncControl_forceNanoSyncWithOptions_completion___block_invoke;
  v11[3] = &unk_1E73784A8;
  optionsCopy = options;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HKNanoSyncControl_forceNanoSyncWithOptions_completion___block_invoke_2;
  v9[3] = &unk_1E7376960;
  v10 = v12;
  v8 = v12;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)resetNanoSyncWithCompletion:(id)completion
{
  v4 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__HKNanoSyncControl_resetNanoSyncWithCompletion___block_invoke;
  v9[3] = &unk_1E7378480;
  v10 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__HKNanoSyncControl_resetNanoSyncWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7376960;
  v8 = v10;
  v6 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)waitForLastChanceSyncWithDevicePairingID:(id)d timeout:(double)timeout completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = completionCopy;
  if (!dCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "pairingID"}];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s may not be nil", "completion"}];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__HKNanoSyncControl_waitForLastChanceSyncWithDevicePairingID_timeout_completion___block_invoke;
  v17[3] = &unk_1E73784D0;
  v18 = dCopy;
  timeoutCopy = timeout;
  v19 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__HKNanoSyncControl_waitForLastChanceSyncWithDevicePairingID_timeout_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v19;
  v13 = v19;
  v14 = dCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

@end