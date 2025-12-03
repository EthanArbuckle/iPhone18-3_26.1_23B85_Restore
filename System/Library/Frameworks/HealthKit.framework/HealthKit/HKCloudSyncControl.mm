@interface HKCloudSyncControl
+ (id)taskIdentifier;
- (HKCloudSyncControl)initWithHealthStore:(id)store;
- (id)defaultChangesSyncRequestForWatch;
- (void)accountConfigurationDidChangeWithCompletion:(id)completion;
- (void)cloudSyncEntityVersions:(id)versions;
- (void)cloudSyncProtocolVersion:(id)version;
- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion;
- (void)disableCloudSyncAndDeleteAllCloudDataWithProgress:(id)progress completion:(id)completion;
- (void)disableCloudSyncWithCompletion:(id)completion;
- (void)enableCloudSyncWithCompletion:(id)completion;
- (void)fetchCloudDescriptionWithProgress:(id)progress useDescriptionForLogs:(BOOL)logs prettyPrinted:(BOOL)printed updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion;
- (void)fetchCloudSyncProgress:(id)progress completion:(id)completion;
- (void)fetchCloudSyncRequiredWithCompletion:(id)completion;
- (void)fetchCloudSyncStatusWithCompletion:(id)completion;
- (void)forceCloudResetWithProgress:(id)progress completion:(id)completion;
- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)completion;
- (void)forceCloudSyncWithOptions:(unint64_t)options progress:(id)progress completion:(id)completion;
- (void)forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion;
- (void)oldestSampleStartDateInHealthDatabaseWithCompletion:(id)completion;
- (void)recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion;
- (void)requestDataRefreshWithCompletion:(id)completion;
- (void)syncWithRequest:(id)request reason:(id)reason completion:(id)completion;
@end

@implementation HKCloudSyncControl

- (HKCloudSyncControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = HKCloudSyncControl;
  v5 = [(HKCloudSyncControl *)&v12 init];
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

- (id)defaultChangesSyncRequestForWatch
{
  v2 = [HKCloudSyncRequest alloc];
  v3 = [[HKChangesSyncRequest alloc] initWithPush:1 pull:0 lite:1];
  v4 = [(HKCloudSyncRequest *)v2 initWithChangesSyncRequest:v3];

  return v4;
}

- (void)syncWithRequest:(id)request reason:(id)reason completion:(id)completion
{
  requestCopy = request;
  reasonCopy = reason;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl syncWithRequest:reason:completion:];
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__HKCloudSyncControl_syncWithRequest_reason_completion___block_invoke;
  v18[3] = &unk_1E73807F0;
  v19 = requestCopy;
  v20 = reasonCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__HKCloudSyncControl_syncWithRequest_reason_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = reasonCopy;
  v15 = requestCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (void)forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl forceCloudSyncWithOptions:reason:completion:];
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__HKCloudSyncControl_forceCloudSyncWithOptions_reason_completion___block_invoke;
  v14[3] = &unk_1E7380818;
  optionsCopy = options;
  reasonCopy = reason;
  v15 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__HKCloudSyncControl_forceCloudSyncWithOptions_reason_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v15;
  v11 = v15;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)forceCloudSyncDataUploadForProfileWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl forceCloudSyncDataUploadForProfileWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__HKCloudSyncControl_forceCloudSyncDataUploadForProfileWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__HKCloudSyncControl_forceCloudSyncDataUploadForProfileWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)fetchCloudSyncRequiredWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HKCloudSyncControl_fetchCloudSyncRequiredWithCompletion___block_invoke;
  v6[3] = &unk_1E7380868;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HKCloudSyncControl *)self fetchCloudSyncStatusWithCompletion:v6];
}

void __59__HKCloudSyncControl_fetchCloudSyncRequiredWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v13 = a3;
  v9 = a4;
  v10 = a6;
  if (v13)
  {
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:v13];
  }

  if ([v10 hk_isHealthKitErrorWithCode:701])
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCloudSyncStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl fetchCloudSyncStatusWithCompletion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HKCloudSyncControl_fetchCloudSyncStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E73808B8;
  aBlock[4] = self;
  v13 = completionCopy;
  v5 = _Block_copy(aBlock);
  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__HKCloudSyncControl_fetchCloudSyncStatusWithCompletion___block_invoke_3;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__HKCloudSyncControl_fetchCloudSyncStatusWithCompletion___block_invoke_4;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

void __57__HKCloudSyncControl_fetchCloudSyncStatusWithCompletion___block_invoke(uint64_t a1, char a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [*(*(a1 + 32) + 8) clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__HKCloudSyncControl_fetchCloudSyncStatusWithCompletion___block_invoke_2;
  block[3] = &unk_1E7380890;
  v15 = *(a1 + 40);
  v24 = a2;
  v20 = v11;
  v21 = v12;
  v25 = a5;
  v22 = v13;
  v23 = v15;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, block);
}

- (void)fetchCloudSyncProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  v8 = completionCopy;
  if (!progressCopy)
  {
    [HKCloudSyncControl fetchCloudSyncProgress:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKCloudSyncControl fetchCloudSyncProgress:completion:];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueProgressHandlerWithHandler:progressCopy];

  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v8];

  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__HKCloudSyncControl_fetchCloudSyncProgress_completion___block_invoke;
  v16[3] = &unk_1E73808E0;
  v17 = v10;
  v18 = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__HKCloudSyncControl_fetchCloudSyncProgress_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v17;
  v12 = v17;
  v13 = v9;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v14];
}

uint64_t __56__HKCloudSyncControl_fetchCloudSyncProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remote_fetchCloudSyncProgressWithCompletion:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)forceCloudSyncWithOptions:(unint64_t)options progress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl forceCloudSyncWithOptions:progress:completion:];
  }

  v10 = [(HKProxyProvider *)self->_proxyProvider clientQueueProgressHandlerWithHandler:progressCopy];

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__HKCloudSyncControl_forceCloudSyncWithOptions_progress_completion___block_invoke;
  v17[3] = &unk_1E7380908;
  optionsCopy = options;
  v18 = v11;
  v19 = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__HKCloudSyncControl_forceCloudSyncWithOptions_progress_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v18;
  v13 = v18;
  v14 = v10;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

uint64_t __68__HKCloudSyncControl_forceCloudSyncWithOptions_progress_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 remote_forceCloudSyncWithOptions:a1[6] reason:1 completion:a1[4]];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(a1[5] + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)forceCloudResetWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl forceCloudResetWithProgress:completion:];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueProgressHandlerWithHandler:progressCopy];

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__HKCloudSyncControl_forceCloudResetWithProgress_completion___block_invoke;
  v15[3] = &unk_1E73808E0;
  v16 = v9;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__HKCloudSyncControl_forceCloudResetWithProgress_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v16;
  v11 = v16;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

uint64_t __61__HKCloudSyncControl_forceCloudResetWithProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remote_forceCloudResetWithCompletion:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)fetchCloudDescriptionWithProgress:(id)progress useDescriptionForLogs:(BOOL)logs prettyPrinted:(BOOL)printed updateCacheAndPrepareForSync:(BOOL)sync completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl fetchCloudDescriptionWithProgress:useDescriptionForLogs:prettyPrinted:updateCacheAndPrepareForSync:completion:];
  }

  v14 = [(HKProxyProvider *)self->_proxyProvider clientQueueProgressHandlerWithHandler:progressCopy];

  v15 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __132__HKCloudSyncControl_fetchCloudDescriptionWithProgress_useDescriptionForLogs_prettyPrinted_updateCacheAndPrepareForSync_completion___block_invoke;
  v21[3] = &unk_1E7380930;
  logsCopy = logs;
  printedCopy = printed;
  syncCopy = sync;
  v22 = v15;
  v23 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __132__HKCloudSyncControl_fetchCloudDescriptionWithProgress_useDescriptionForLogs_prettyPrinted_updateCacheAndPrepareForSync_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v22;
  v17 = v22;
  v18 = v14;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

uint64_t __132__HKCloudSyncControl_fetchCloudDescriptionWithProgress_useDescriptionForLogs_prettyPrinted_updateCacheAndPrepareForSync_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remote_fetchCloudDescriptionUseDescriptionForLogs:*(a1 + 48) prettyPrinted:*(a1 + 49) updateCacheAndPrepareForSync:*(a1 + 50) withCompletion:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion
{
  createCopy = create;
  deleteCopy = delete;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl recordsToCreate:recordsToDelete:completion:];
  }

  v11 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__HKCloudSyncControl_recordsToCreate_recordsToDelete_completion___block_invoke;
  v18[3] = &unk_1E73807F0;
  v19 = createCopy;
  v20 = deleteCopy;
  v21 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__HKCloudSyncControl_recordsToCreate_recordsToDelete_completion___block_invoke_2;
  v16[3] = &unk_1E7376960;
  v17 = v21;
  v13 = v21;
  v14 = deleteCopy;
  v15 = createCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v18 errorHandler:v16];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl disableCloudSyncAndDeleteAllCloudDataWithProgress:completion:];
  }

  v8 = [(HKProxyProvider *)self->_proxyProvider clientQueueProgressHandlerWithHandler:progressCopy];

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__HKCloudSyncControl_disableCloudSyncAndDeleteAllCloudDataWithProgress_completion___block_invoke;
  v15[3] = &unk_1E73808E0;
  v16 = v9;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__HKCloudSyncControl_disableCloudSyncAndDeleteAllCloudDataWithProgress_completion___block_invoke_2;
  v13[3] = &unk_1E7376960;
  v14 = v16;
  v11 = v16;
  v12 = v8;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

uint64_t __83__HKCloudSyncControl_disableCloudSyncAndDeleteAllCloudDataWithProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)disableCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl disableCloudSyncWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__HKCloudSyncControl_disableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__HKCloudSyncControl_disableCloudSyncWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)enableCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl enableCloudSyncWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__HKCloudSyncControl_enableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__HKCloudSyncControl_enableCloudSyncWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl disableCloudSyncAndDeleteAllCloudDataWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKCloudSyncControl_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__HKCloudSyncControl_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)accountConfigurationDidChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl accountConfigurationDidChangeWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__HKCloudSyncControl_accountConfigurationDidChangeWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__HKCloudSyncControl_accountConfigurationDidChangeWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)oldestSampleStartDateInHealthDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKCloudSyncControl oldestSampleStartDateInHealthDatabaseWithCompletion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HKCloudSyncControl_oldestSampleStartDateInHealthDatabaseWithCompletion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__HKCloudSyncControl_oldestSampleStartDateInHealthDatabaseWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)cloudSyncProtocolVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    [HKCloudSyncControl cloudSyncProtocolVersion:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:versionCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__HKCloudSyncControl_cloudSyncProtocolVersion___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKCloudSyncControl_cloudSyncProtocolVersion___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)cloudSyncEntityVersions:(id)versions
{
  versionsCopy = versions;
  if (!versionsCopy)
  {
    [HKCloudSyncControl cloudSyncEntityVersions:];
  }

  v5 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:versionsCopy];

  proxyProvider = self->_proxyProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__HKCloudSyncControl_cloudSyncEntityVersions___block_invoke;
  v10[3] = &unk_1E7380840;
  v11 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__HKCloudSyncControl_cloudSyncEntityVersions___block_invoke_2;
  v8[3] = &unk_1E7376960;
  v9 = v11;
  v7 = v11;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v10 errorHandler:v8];
}

- (void)requestDataRefreshWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", buf, 0x16u);
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__HKCloudSyncControl_requestDataRefreshWithCompletion___block_invoke;
  v15[3] = &unk_1E7380840;
  v16 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__HKCloudSyncControl_requestDataRefreshWithCompletion___block_invoke_2;
  v13[3] = &unk_1E7376820;
  v13[4] = self;
  v14 = v16;
  v11 = v16;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __55__HKCloudSyncControl_requestDataRefreshWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __55__HKCloudSyncControl_requestDataRefreshWithCompletion___block_invoke_2_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)syncWithRequest:reason:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)forceCloudSyncWithOptions:reason:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)forceCloudSyncDataUploadForProfileWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)fetchCloudSyncStatusWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)fetchCloudSyncProgress:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"progressHandler != nil" object:? file:? lineNumber:? description:?];
}

- (void)fetchCloudSyncProgress:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)forceCloudSyncWithOptions:progress:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)forceCloudResetWithProgress:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)fetchCloudDescriptionWithProgress:useDescriptionForLogs:prettyPrinted:updateCacheAndPrepareForSync:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)recordsToCreate:recordsToDelete:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithProgress:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)disableCloudSyncWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)enableCloudSyncWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)disableCloudSyncAndDeleteAllCloudDataWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)accountConfigurationDidChangeWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)oldestSampleStartDateInHealthDatabaseWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)cloudSyncProtocolVersion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

- (void)cloudSyncEntityVersions:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

void __55__HKCloudSyncControl_requestDataRefreshWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to call remote_requestDataRefreshWithCompletion, error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end