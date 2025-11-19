@interface HKStaticSyncControl
+ (id)taskIdentifier;
- (HKStaticSyncControl)initWithHealthStore:(id)a3;
- (void)runStaticSyncExportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 batchSize:(unint64_t)a6 progressHandler:(id)a7 completion:(id)a8;
- (void)runStaticSyncImportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 progressHandler:(id)a6 completion:(id)a7;
@end

@implementation HKStaticSyncControl

- (HKStaticSyncControl)initWithHealthStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKStaticSyncControl;
  v5 = [(HKStaticSyncControl *)&v12 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() taskIdentifier];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 taskUUID:v8];
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

- (void)runStaticSyncExportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 batchSize:(unint64_t)a6 progressHandler:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  proxyProvider = self->_proxyProvider;
  v17 = a8;
  v18 = [(HKProxyProvider *)proxyProvider clientQueueProgressHandlerWithHandler:a7];
  v19 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v17];

  v20 = self->_proxyProvider;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __111__HKStaticSyncControl_runStaticSyncExportWithOptions_storeIdentifier_URL_batchSize_progressHandler_completion___block_invoke;
  v27[3] = &unk_1E737DC48;
  v28 = v14;
  v29 = v15;
  v32 = a3;
  v33 = a6;
  v30 = v19;
  v31 = v18;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __111__HKStaticSyncControl_runStaticSyncExportWithOptions_storeIdentifier_URL_batchSize_progressHandler_completion___block_invoke_2;
  v25[3] = &unk_1E7376960;
  v26 = v30;
  v21 = v30;
  v22 = v18;
  v23 = v15;
  v24 = v14;
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

- (void)runStaticSyncImportWithOptions:(unint64_t)a3 storeIdentifier:(id)a4 URL:(id)a5 progressHandler:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  proxyProvider = self->_proxyProvider;
  v15 = a7;
  v16 = [(HKProxyProvider *)proxyProvider clientQueueProgressHandlerWithHandler:a6];
  v17 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v15];

  v18 = self->_proxyProvider;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__HKStaticSyncControl_runStaticSyncImportWithOptions_storeIdentifier_URL_progressHandler_completion___block_invoke;
  v25[3] = &unk_1E737DC70;
  v30 = a3;
  v26 = v12;
  v27 = v13;
  v28 = v17;
  v29 = v16;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101__HKStaticSyncControl_runStaticSyncImportWithOptions_storeIdentifier_URL_progressHandler_completion___block_invoke_2;
  v23[3] = &unk_1E7376960;
  v24 = v28;
  v19 = v28;
  v20 = v16;
  v21 = v13;
  v22 = v12;
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