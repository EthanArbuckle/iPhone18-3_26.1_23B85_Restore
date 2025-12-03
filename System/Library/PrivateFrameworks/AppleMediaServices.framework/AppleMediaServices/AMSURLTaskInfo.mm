@interface AMSURLTaskInfo
+ (NSMutableDictionary)sharedTaskStore;
+ (OS_dispatch_queue)sharedTaskQueue;
+ (id)createTaskInfoForTask:(id)task;
+ (id)taskInfoForTask:(id)task;
+ (void)removeTaskInfoForTask:(id)task;
- (AMSURLAction)receivedAction;
- (AMSURLRequestProperties)properties;
- (AMSURLSession)session;
- (AMSURLTaskInfo)initWithTask:(id)task;
- (NSData)data;
- (NSError)error;
- (NSSet)retryIdentifiers;
- (NSURLResponse)response;
- (NSURLSessionTaskMetrics)metrics;
- (id)completionBlock;
- (id)createMetricsContextForDecodedObject:(id)object;
- (int64_t)retryCount;
- (unint64_t)previousAuthorizationCredentialSource;
- (unint64_t)startContiguousAsyncActionWithInitialBlock:(id)block;
- (unint64_t)startContiguousAsyncActionWithInitialDataBlock:(id)block;
- (void)_performDataAccessUsingBlock:(id)block;
- (void)addRetryIdentifier:(id)identifier;
- (void)appendData:(id)data;
- (void)assertHasExclusiveAccess;
- (void)assertIsOnPrivateQueue;
- (void)continueContiguousAsyncActionWithIdentifier:(unint64_t)identifier block:(id)block;
- (void)finishContiguousAsyncActionWithIdentifier:(unint64_t)identifier;
- (void)migrateFromTaskInfo:(id)info;
- (void)performAsyncBlock:(id)block;
- (void)performAsyncBlockWithData:(id)data;
- (void)performSyncBlock:(id)block;
- (void)performSyncBlockWithExclusiveAccess:(id)access;
- (void)setAccount:(id)account;
- (void)setCompletionBlock:(id)block;
- (void)setError:(id)error;
- (void)setMetrics:(id)metrics;
- (void)setPreviousAuthorizationCredentialSource:(unint64_t)source;
- (void)setProperties:(id)properties;
- (void)setReceivedAction:(id)action;
- (void)setResponse:(id)response;
- (void)setRetryCount:(int64_t)count;
- (void)setSession:(id)session;
@end

@implementation AMSURLTaskInfo

+ (OS_dispatch_queue)sharedTaskQueue
{
  if (qword_1ED6E3240 != -1)
  {
    dispatch_once(&qword_1ED6E3240, &__block_literal_global_23_0);
  }

  v3 = qword_1ED6E3248;

  return v3;
}

+ (NSMutableDictionary)sharedTaskStore
{
  if (_MergedGlobals_160 != -1)
  {
    dispatch_once(&_MergedGlobals_160, &__block_literal_global_149);
  }

  v3 = qword_1ED6E3238;

  return v3;
}

void __33__AMSURLTaskInfo_sharedTaskQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.AMSURLTaskInfo.task", v2);
  v1 = qword_1ED6E3248;
  qword_1ED6E3248 = v0;
}

uint64_t __33__AMSURLTaskInfo_sharedTaskStore__block_invoke()
{
  qword_1ED6E3238 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (AMSURLRequestProperties)properties
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_properties;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSURLAction)receivedAction
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_receivedAction;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSError)error
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSURLResponse)response
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_response;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)assertIsOnPrivateQueue
{
  taskQueue = [(AMSURLTaskInfo *)self taskQueue];
  dispatch_assert_queue_V2(taskQueue);
}

- (NSURLSessionTaskMetrics)metrics
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_metrics;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSData)data
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_data;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (AMSURLSession)session
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_session;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)completionBlock
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = _Block_copy(self->_completionBlock);
  os_unfair_recursive_lock_unlock();
  v4 = _Block_copy(v3);

  return v4;
}

- (AMSURLTaskInfo)initWithTask:(id)task
{
  taskCopy = task;
  v19.receiver = self;
  v19.super_class = AMSURLTaskInfo;
  v6 = [(AMSURLTaskInfo *)&v19 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
    data = v6->_data;
    v6->_data = v7;

    v6->_performingBlockWithDataAccess = 0;
    v9 = objc_alloc_init(AMSURLRequestProperties);
    properties = v6->_properties;
    v6->_properties = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    retryIdentifiers = v6->_retryIdentifiers;
    v6->_retryIdentifiers = v11;

    v6->_signpostID = 0;
    objc_storeStrong(&v6->_task, task);
    v6->_taskLock = 0;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.AppleMediaServices.TaskQueue", v13);
    taskQueue = v6->_taskQueue;
    v6->_taskQueue = v14;

    v16 = [[AMSContiguousActionPerformer alloc] initWithQueue:v6->_taskQueue];
    contiguousActionPerformer = v6->_contiguousActionPerformer;
    v6->_contiguousActionPerformer = v16;
  }

  return v6;
}

+ (id)taskInfoForTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__76;
    v16 = __Block_byref_object_dispose__76;
    v17 = 0;
    sharedTaskQueue = [self sharedTaskQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__AMSURLTaskInfo_taskInfoForTask___block_invoke;
    block[3] = &unk_1E73B73A0;
    v10 = &v12;
    selfCopy = self;
    v9 = taskCopy;
    dispatch_sync(sharedTaskQueue, block);

    v6 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __34__AMSURLTaskInfo_taskInfoForTask___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) sharedTaskStore];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)createTaskInfoForTask:(id)task
{
  taskCopy = task;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__76;
  v17 = __Block_byref_object_dispose__76;
  v18 = 0;
  sharedTaskQueue = [self sharedTaskQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AMSURLTaskInfo_createTaskInfoForTask___block_invoke;
  block[3] = &unk_1E73B73A0;
  v11 = &v13;
  selfCopy = self;
  v10 = taskCopy;
  v6 = taskCopy;
  dispatch_sync(sharedTaskQueue, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __40__AMSURLTaskInfo_createTaskInfoForTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) sharedTaskStore];
  v3 = [v2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [[AMSURLTaskInfo alloc] initWithTask:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 48) sharedTaskStore];
    [v9 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

+ (void)removeTaskInfoForTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    sharedTaskQueue = [self sharedTaskQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__AMSURLTaskInfo_removeTaskInfoForTask___block_invoke;
    v6[3] = &unk_1E73B40A8;
    selfCopy = self;
    v7 = taskCopy;
    dispatch_sync(sharedTaskQueue, v6);
  }
}

void __40__AMSURLTaskInfo_removeTaskInfoForTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) sharedTaskStore];
  [v2 removeObjectForKey:*(a1 + 32)];
}

- (unint64_t)previousAuthorizationCredentialSource
{
  os_unfair_recursive_lock_lock_with_options();
  previousAuthorizationCredentialSource = self->_previousAuthorizationCredentialSource;
  os_unfair_recursive_lock_unlock();
  return previousAuthorizationCredentialSource;
}

- (int64_t)retryCount
{
  os_unfair_recursive_lock_lock_with_options();
  retryCount = self->_retryCount;
  os_unfair_recursive_lock_unlock();
  return retryCount;
}

- (NSSet)retryIdentifiers
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_retryIdentifiers copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  v5 = _Block_copy(blockCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v5;

  os_unfair_recursive_lock_unlock();
}

- (void)setError:(id)error
{
  errorCopy = error;
  os_unfair_recursive_lock_lock_with_options();
  error = self->_error;
  self->_error = errorCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  os_unfair_recursive_lock_lock_with_options();
  metrics = self->_metrics;
  self->_metrics = metricsCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setPreviousAuthorizationCredentialSource:(unint64_t)source
{
  os_unfair_recursive_lock_lock_with_options();
  self->_previousAuthorizationCredentialSource = source;

  os_unfair_recursive_lock_unlock();
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  os_unfair_recursive_lock_lock_with_options();
  properties = self->_properties;
  self->_properties = propertiesCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setReceivedAction:(id)action
{
  actionCopy = action;
  os_unfair_recursive_lock_lock_with_options();
  receivedAction = self->_receivedAction;
  self->_receivedAction = actionCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  os_unfair_recursive_lock_lock_with_options();
  response = self->_response;
  self->_response = responseCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)setRetryCount:(int64_t)count
{
  os_unfair_recursive_lock_lock_with_options();
  self->_retryCount = count;

  os_unfair_recursive_lock_unlock();
}

- (void)setSession:(id)session
{
  sessionCopy = session;
  os_unfair_recursive_lock_lock_with_options();
  session = self->_session;
  self->_session = sessionCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)addRetryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  [(NSMutableSet *)self->_retryIdentifiers addObject:identifierCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)appendData:(id)data
{
  dataCopy = data;
  os_unfair_recursive_lock_lock_with_options();
  if (self->_performingBlockWithDataAccess)
  {
    [MEMORY[0x1E695DF30] raise:@"AMSURLTaskInfoDisallowedDataMutation" format:@"Attempted to append data while running a data access block."];
  }

  [(NSMutableData *)self->_data appendData:dataCopy];
  os_unfair_recursive_lock_unlock();
}

- (void)assertHasExclusiveAccess
{
  taskQueue = [(AMSURLTaskInfo *)self taskQueue];
  dispatch_assert_queue_V2(taskQueue);

  os_unfair_lock_assert_owner(&self->_taskLock);
}

- (id)createMetricsContextForDecodedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = [[AMSMetricsLoadURLContext alloc] initWithTaskInfo:self serverPayload:v5];

  return v6;
}

- (void)migrateFromTaskInfo:(id)info
{
  infoCopy = info;
  os_unfair_recursive_lock_lock_with_options();
  metrics = [infoCopy metrics];
  metrics = self->_metrics;
  self->_metrics = metrics;

  self->_previousAuthorizationCredentialSource = [infoCopy previousAuthorizationCredentialSource];
  properties = [infoCopy properties];
  v8 = [properties copy];
  properties = self->_properties;
  self->_properties = v8;

  self->_retryCount = [infoCopy retryCount];
  retryIdentifiers = [infoCopy retryIdentifiers];
  v11 = [retryIdentifiers mutableCopy];
  retryIdentifiers = self->_retryIdentifiers;
  self->_retryIdentifiers = v11;

  session = [infoCopy session];
  session = self->_session;
  self->_session = session;

  signpostID = [infoCopy signpostID];
  self->_signpostID = signpostID;

  os_unfair_recursive_lock_unlock();
}

- (void)performAsyncBlock:(id)block
{
  blockCopy = block;
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  [contiguousActionPerformer async:blockCopy];
}

- (void)performAsyncBlockWithData:(id)data
{
  dataCopy = data;
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AMSURLTaskInfo_performAsyncBlockWithData___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  [contiguousActionPerformer async:v7];
}

- (void)performSyncBlock:(id)block
{
  blockCopy = block;
  taskQueue = [(AMSURLTaskInfo *)self taskQueue];
  dispatch_assert_queue_not_V2(taskQueue);

  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  [contiguousActionPerformer sync:blockCopy];
}

- (void)performSyncBlockWithExclusiveAccess:(id)access
{
  accessCopy = access;
  taskQueue = [(AMSURLTaskInfo *)self taskQueue];
  dispatch_assert_queue_not_V2(taskQueue);

  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__AMSURLTaskInfo_performSyncBlockWithExclusiveAccess___block_invoke;
  v8[3] = &unk_1E73B36D0;
  v8[4] = self;
  v9 = accessCopy;
  v7 = accessCopy;
  [contiguousActionPerformer sync:v8];
}

uint64_t __54__AMSURLTaskInfo_performSyncBlockWithExclusiveAccess___block_invoke(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  (*(*(a1 + 40) + 16))();

  return os_unfair_recursive_lock_unlock();
}

- (unint64_t)startContiguousAsyncActionWithInitialBlock:(id)block
{
  blockCopy = block;
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  v6 = [contiguousActionPerformer performInitialContiguousActionWithBlock:blockCopy];

  return v6;
}

- (unint64_t)startContiguousAsyncActionWithInitialDataBlock:(id)block
{
  blockCopy = block;
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__AMSURLTaskInfo_startContiguousAsyncActionWithInitialDataBlock___block_invoke;
  v9[3] = &unk_1E73BDAA0;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [contiguousActionPerformer performInitialContiguousActionWithBlock:v9];

  return v7;
}

void __65__AMSURLTaskInfo_startContiguousAsyncActionWithInitialDataBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AMSURLTaskInfo_startContiguousAsyncActionWithInitialDataBlock___block_invoke_2;
  v4[3] = &unk_1E73BDA78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  [v3 _performDataAccessUsingBlock:v4];
}

- (void)continueContiguousAsyncActionWithIdentifier:(unint64_t)identifier block:(id)block
{
  blockCopy = block;
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  [contiguousActionPerformer continueContiguousActionWithIdentifier:identifier withBlock:blockCopy];
}

- (void)finishContiguousAsyncActionWithIdentifier:(unint64_t)identifier
{
  contiguousActionPerformer = [(AMSURLTaskInfo *)self contiguousActionPerformer];
  [contiguousActionPerformer finishContiguousActionWithIdentifier:identifier];
}

- (void)_performDataAccessUsingBlock:(id)block
{
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  self->_performingBlockWithDataAccess = 1;
  v5 = [(NSMutableData *)self->_data length];
  blockCopy[2](blockCopy, self->_data);

  if ([(NSMutableData *)self->_data length]!= v5)
  {
    [MEMORY[0x1E695DF30] raise:@"AMSURLTaskInfoDisallowedDataMutation" format:@"Data length was modified while running data access block."];
  }

  self->_performingBlockWithDataAccess = 0;

  os_unfair_recursive_lock_unlock();
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AMSURLTaskInfo_setAccount___block_invoke;
  v6[3] = &unk_1E73B3DE0;
  v6[4] = self;
  v7 = accountCopy;
  v5 = accountCopy;
  [(AMSURLTaskInfo *)self performSyncBlockWithExclusiveAccess:v6];
}

void __29__AMSURLTaskInfo_setAccount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) properties];
  [v2 setAccount:v1];
}

@end