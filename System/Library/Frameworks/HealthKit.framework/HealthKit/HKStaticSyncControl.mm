@interface HKStaticSyncControl
+ (id)taskIdentifier;
- (HKStaticSyncControl)initWithHealthStore:(id)store;
- (void)runStaticSyncExportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size progressHandler:(id)handler completion:(id)completion;
- (void)runStaticSyncImportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l progressHandler:(id)handler completion:(id)completion;
@end

@implementation HKStaticSyncControl

- (HKStaticSyncControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKStaticSyncControl;
  v5 = [(HKStaticSyncControl *)&v12 init];
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

- (void)runStaticSyncExportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l batchSize:(unint64_t)size progressHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  lCopy = l;
  proxyProvider = self->_proxyProvider;
  completionCopy = completion;
  v18 = [(HKProxyProvider *)proxyProvider clientQueueProgressHandlerWithHandler:handler];
  v19 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  v20 = self->_proxyProvider;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __111__HKStaticSyncControl_runStaticSyncExportWithOptions_storeIdentifier_URL_batchSize_progressHandler_completion___block_invoke;
  v27[3] = &unk_1E737DC48;
  v28 = identifierCopy;
  v29 = lCopy;
  optionsCopy = options;
  sizeCopy = size;
  v30 = v19;
  v31 = v18;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__HKStaticSyncControl_runStaticSyncExportWithOptions_storeIdentifier_URL_batchSize_progressHandler_completion___block_invoke_2;
  v25[3] = &unk_1E7376960;
  v26 = v30;
  v21 = v30;
  v22 = v18;
  v23 = lCopy;
  v24 = identifierCopy;
  [(HKProxyProvider *)v20 fetchProxyWithHandler:v27 errorHandler:v25];
}

uint64_t __111__HKStaticSyncControl_runStaticSyncExportWithOptions_storeIdentifier_URL_batchSize_progressHandler_completion___block_invoke(void *a1, void *a2)
{
  [a2 remote_runStaticSyncExportWithOptions:a1[8] storeIdentifier:a1[4] URL:a1[5] batchSize:a1[9] completion:a1[6]];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(a1[7] + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)runStaticSyncImportWithOptions:(unint64_t)options storeIdentifier:(id)identifier URL:(id)l progressHandler:(id)handler completion:(id)completion
{
  identifierCopy = identifier;
  lCopy = l;
  proxyProvider = self->_proxyProvider;
  completionCopy = completion;
  v16 = [(HKProxyProvider *)proxyProvider clientQueueProgressHandlerWithHandler:handler];
  v17 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  v18 = self->_proxyProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__HKStaticSyncControl_runStaticSyncImportWithOptions_storeIdentifier_URL_progressHandler_completion___block_invoke;
  v25[3] = &unk_1E737DC70;
  optionsCopy = options;
  v26 = identifierCopy;
  v27 = lCopy;
  v28 = v17;
  v29 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__HKStaticSyncControl_runStaticSyncImportWithOptions_storeIdentifier_URL_progressHandler_completion___block_invoke_2;
  v23[3] = &unk_1E7376960;
  v24 = v28;
  v19 = v28;
  v20 = v16;
  v21 = lCopy;
  v22 = identifierCopy;
  [(HKProxyProvider *)v18 fetchProxyWithHandler:v25 errorHandler:v23];
}

uint64_t __101__HKStaticSyncControl_runStaticSyncImportWithOptions_storeIdentifier_URL_progressHandler_completion___block_invoke(void *a1, void *a2)
{
  [a2 remote_runStaticSyncImportWithOptions:a1[8] storeIdentifier:a1[4] URL:a1[5] completion:a1[6]];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(a1[7] + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

@end