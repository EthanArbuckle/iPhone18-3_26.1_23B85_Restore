@interface HKAuthorizationStore
+ (id)readTaskIdentifier;
+ (id)resetTaskIdentifier;
+ (id)writeTaskIdentifier;
- (BOOL)validateRecalibrateEstimatesRequestRecord:(id)a3 error:(id *)a4;
- (HKAuthorizationStore)initWithHealthStore:(id)a3;
- (id)fetchAuthorizationContextForPromptSession:(id)a3 error:(id *)a4;
- (id)fetchConceptAuthorizationContextForPromptSession:(id)a3 error:(id *)a4;
- (void)fetchAuthorizationRecordsForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)fetchAuthorizationRecordsForType:(id)a3 completion:(id)a4;
- (void)fetchAuthorizationStatusesForDocumentType:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4;
- (void)fetchAuthorizationStatusesForSample:(id)a3 completion:(id)a4;
- (void)fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4;
- (void)fetchSourcesRequestingAuthorizationForTypes:(id)a3 completion:(id)a4;
- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4;
- (void)recalibrateEstimatesForSampleType:(id)a3 effectiveDate:(id)a4 completion:(id)a5;
- (void)resetAllObjectAuthorizationStatusForBundleIdentifier:(id)a3 objectType:(id)a4 completion:(id)a5;
- (void)resetAuthorizationStatusForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)resetAuthorizationStatusesForObjects:(id)a3 completion:(id)a4;
- (void)setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7;
- (void)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
- (void)setRequestedAuthorizationForBundleIdentifier:(id)a3 shareTypes:(id)a4 readTypes:(id)a5 completion:(id)a6;
@end

@implementation HKAuthorizationStore

- (HKAuthorizationStore)initWithHealthStore:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HKAuthorizationStore;
  v5 = [(HKAuthorizationStore *)&v28 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    v7 = [objc_opt_class() readTaskIdentifier];
    v8 = HKAuthorizationStoreClientInterface();
    v9 = HKAuthorizationStoreReadServerInterface();
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v5 exportedInterface:v8 remoteInterface:v9 taskUUID:v10];
    readProxyProvider = v5->_readProxyProvider;
    v5->_readProxyProvider = v11;

    [(HKProxyProvider *)v5->_readProxyProvider setShouldRetryOnInterruption:0];
    v13 = [HKTaskServerProxyProvider alloc];
    v14 = [objc_opt_class() writeTaskIdentifier];
    v15 = HKAuthorizationStoreClientInterface();
    v16 = HKAuthorizationStoreWriteServerInterface();
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(HKTaskServerProxyProvider *)v13 initWithHealthStore:v4 taskIdentifier:v14 exportedObject:v5 exportedInterface:v15 remoteInterface:v16 taskUUID:v17];
    writeProxyProvider = v5->_writeProxyProvider;
    v5->_writeProxyProvider = v18;

    [(HKProxyProvider *)v5->_writeProxyProvider setShouldRetryOnInterruption:0];
    v20 = [HKTaskServerProxyProvider alloc];
    v21 = [objc_opt_class() resetTaskIdentifier];
    v22 = HKAuthorizationStoreClientInterface();
    v23 = HKAuthorizationStoreResetServerInterface();
    v24 = [MEMORY[0x1E696AFB0] UUID];
    v25 = [(HKTaskServerProxyProvider *)v20 initWithHealthStore:v4 taskIdentifier:v21 exportedObject:v5 exportedInterface:v22 remoteInterface:v23 taskUUID:v24];
    resetProxyProvider = v5->_resetProxyProvider;
    v5->_resetProxyProvider = v25;

    [(HKProxyProvider *)v5->_resetProxyProvider setShouldRetryOnInterruption:0];
  }

  return v5;
}

+ (id)readTaskIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.%@", v4, @"read"];

  return v5;
}

+ (id)writeTaskIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.%@", v4, @"write"];

  return v5;
}

+ (id)resetTaskIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.%@", v4, @"reset"];

  return v5;
}

- (void)fetchAuthorizationRecordsForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [HKAuthorizationStore fetchAuthorizationRecordsForBundleIdentifier:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKAuthorizationStore fetchAuthorizationRecordsForBundleIdentifier:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__HKAuthorizationStore_fetchAuthorizationRecordsForBundleIdentifier_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = v6;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__HKAuthorizationStore_fetchAuthorizationRecordsForBundleIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchAuthorizationRecordsForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [HKAuthorizationStore fetchAuthorizationRecordsForType:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKAuthorizationStore fetchAuthorizationRecordsForType:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HKAuthorizationStore_fetchAuthorizationRecordsForType_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = v6;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__HKAuthorizationStore_fetchAuthorizationRecordsForType_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchSourcesRequestingAuthorizationForTypes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKAuthorizationStore fetchSourcesRequestingAuthorizationForTypes:completion:];
  }

  v8 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKAuthorizationStore_fetchSourcesRequestingAuthorizationForTypes_completion___block_invoke;
  v13[3] = &unk_1E737AC38;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKAuthorizationStore_fetchSourcesRequestingAuthorizationForTypes_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v13 errorHandler:v11];
}

- (void)setAuthorizationStatuses:(id)a3 authorizationModes:(id)a4 forBundleIdentifier:(id)a5 options:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 count])
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_7:
    [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
    goto LABEL_4;
  }

  [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:v15];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__HKAuthorizationStore_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke;
  v23[3] = &unk_1E737AC60;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v28 = a6;
  v27 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__HKAuthorizationStore_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v27;
  v17 = v27;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v23 errorHandler:v21];
}

- (void)setRequestedAuthorizationForBundleIdentifier:(id)a3 shareTypes:(id)a4 readTypes:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    [HKAuthorizationStore setRequestedAuthorizationForBundleIdentifier:shareTypes:readTypes:completion:];
  }

  if (![v11 count] && !objc_msgSend(v12, "count"))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must request authorization for at least one data type"];
  }

  v14 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:v13];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__HKAuthorizationStore_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke;
  v21[3] = &unk_1E737AC88;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__HKAuthorizationStore_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v25;
  v15 = v25;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v21 errorHandler:v19];
}

- (void)resetAuthorizationStatusForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__HKAuthorizationStore_resetAuthorizationStatusForBundleIdentifier_completion___block_invoke;
  v12[3] = &unk_1E737ACB0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__HKAuthorizationStore_resetAuthorizationStatusForBundleIdentifier_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchAuthorizationStatusesForDocumentType:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_7:
    [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
    goto LABEL_4;
  }

  [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__HKAuthorizationStore_fetchAuthorizationStatusesForDocumentType_bundleIdentifier_completion___block_invoke;
  v17[3] = &unk_1E737ACD8;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__HKAuthorizationStore_fetchAuthorizationStatusesForDocumentType_bundleIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v17 errorHandler:v15];
}

- (void)fetchAuthorizationStatusesForSample:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [HKAuthorizationStore fetchAuthorizationStatusesForSample:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKAuthorizationStore fetchAuthorizationStatusesForSample:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = v6;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

void __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUID];
  [v4 remote_fetchAuthorizationStatusesForSampleUUID:v5 completion:*(a1 + 40)];
}

- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [HKAuthorizationStore fetchAuthorizationStatusesForHealthConceptIdentifier:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKAuthorizationStore fetchAuthorizationStatusesForHealthConceptIdentifier:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__HKAuthorizationStore_fetchAuthorizationStatusesForHealthConceptIdentifier_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = v6;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__HKAuthorizationStore_fetchAuthorizationStatusesForHealthConceptIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [HKAuthorizationStore fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HKAuthorizationStore fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__HKAuthorizationStore_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = v6;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__HKAuthorizationStore_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (id)fetchAuthorizationContextForPromptSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__HKAuthorizationStore_fetchAuthorizationContextForPromptSession_error___block_invoke;
  v14[3] = &unk_1E737AD28;
  v7 = v6;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__HKAuthorizationStore_fetchAuthorizationContextForPromptSession_error___block_invoke_3;
  v13[3] = &unk_1E7378838;
  v13[4] = &v18;
  [(HKAuthorizationStore *)self _fetchSynchronousReadProxyWithHandler:v14 errorHandler:v13];
  v8 = v19[5];
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError(v8);
    }
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

uint64_t __72__HKAuthorizationStore_fetchAuthorizationContextForPromptSession_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__HKAuthorizationStore_fetchAuthorizationContextForPromptSession_error___block_invoke_2;
  v4[3] = &unk_1E737AD00;
  v5 = *(a1 + 40);
  return [a2 remote_fetchAuthorizationContextForPromptSession:v2 completion:v4];
}

void __72__HKAuthorizationStore_fetchAuthorizationContextForPromptSession_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchConceptAuthorizationRecordsForSource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [HKAuthorizationStore fetchConceptAuthorizationRecordsForSource:completion:];
  }

  v8 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__HKAuthorizationStore_fetchConceptAuthorizationRecordsForSource_completion___block_invoke;
  v13[3] = &unk_1E737AC38;
  v14 = v6;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKAuthorizationStore_fetchConceptAuthorizationRecordsForSource_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v13 errorHandler:v11];
}

- (id)fetchConceptAuthorizationContextForPromptSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__HKAuthorizationStore_fetchConceptAuthorizationContextForPromptSession_error___block_invoke;
  v14[3] = &unk_1E737AD28;
  v7 = v6;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKAuthorizationStore_fetchConceptAuthorizationContextForPromptSession_error___block_invoke_3;
  v13[3] = &unk_1E7378838;
  v13[4] = &v18;
  [(HKAuthorizationStore *)self _fetchSynchronousReadProxyWithHandler:v14 errorHandler:v13];
  v8 = v19[5];
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError(v8);
    }
  }

  v11 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

uint64_t __79__HKAuthorizationStore_fetchConceptAuthorizationContextForPromptSession_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79__HKAuthorizationStore_fetchConceptAuthorizationContextForPromptSession_error___block_invoke_2;
  v4[3] = &unk_1E737AD50;
  v5 = *(a1 + 40);
  return [a2 remote_fetchConceptAuthorizationContextForPromptSession:v2 completion:v4];
}

void __79__HKAuthorizationStore_fetchConceptAuthorizationContextForPromptSession_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setObjectAuthorizationStatusContext:(id)a3 forObjectType:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:a6];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__HKAuthorizationStore_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_completion___block_invoke;
  v20[3] = &unk_1E737AC88;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__HKAuthorizationStore_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v24;
  v14 = v24;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v20 errorHandler:v18];
}

- (void)resetAuthorizationStatusesForObjects:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:a4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__HKAuthorizationStore_resetAuthorizationStatusesForObjects_completion___block_invoke;
  v12[3] = &unk_1E737ACB0;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__HKAuthorizationStore_resetAuthorizationStatusesForObjects_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v12 errorHandler:v10];
}

- (void)resetAllObjectAuthorizationStatusForBundleIdentifier:(id)a3 objectType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__HKAuthorizationStore_resetAllObjectAuthorizationStatusForBundleIdentifier_objectType_completion___block_invoke;
  v16[3] = &unk_1E737AD78;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__HKAuthorizationStore_resetAllObjectAuthorizationStatusForBundleIdentifier_objectType_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v16 errorHandler:v14];
}

- (BOOL)validateRecalibrateEstimatesRequestRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__HKAuthorizationStore_validateRecalibrateEstimatesRequestRecord_error___block_invoke;
  v14[3] = &unk_1E737AD28;
  v7 = v6;
  v15 = v7;
  v16 = &v24;
  v17 = &v18;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__HKAuthorizationStore_validateRecalibrateEstimatesRequestRecord_error___block_invoke_3;
  v13[3] = &unk_1E7378838;
  v13[4] = &v18;
  [(HKAuthorizationStore *)self _fetchSynchronousReadProxyWithHandler:v14 errorHandler:v13];
  v8 = v19[5];
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError(v8);
    }
  }

  v11 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v11;
}

uint64_t __72__HKAuthorizationStore_validateRecalibrateEstimatesRequestRecord_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__HKAuthorizationStore_validateRecalibrateEstimatesRequestRecord_error___block_invoke_2;
  v4[3] = &unk_1E7378D28;
  v5 = *(a1 + 40);
  return [a2 remote_validateRecalibrateEstimatesRequestRecord:v2 completion:v4];
}

- (void)recalibrateEstimatesForSampleType:(id)a3 effectiveDate:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:a5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__HKAuthorizationStore_recalibrateEstimatesForSampleType_effectiveDate_completion___block_invoke;
  v16[3] = &unk_1E737AD78;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__HKAuthorizationStore_recalibrateEstimatesForSampleType_effectiveDate_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v16 errorHandler:v14];
}

- (void)fetchAuthorizationRecordsForBundleIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationRecordsForBundleIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationRecordsForType:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"type" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationRecordsForType:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchSourcesRequestingAuthorizationForTypes:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[authorizationStatuses count] > 0" object:? file:? lineNumber:? description:?];
}

- (void)setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"authorizationModes != nil" object:? file:? lineNumber:? description:?];
}

- (void)setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"bundleIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)setRequestedAuthorizationForBundleIdentifier:shareTypes:readTypes:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"documentType" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForSample:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"sample" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForSample:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"healthConceptIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"healthConceptDomain" object:? file:? lineNumber:? description:?];
}

- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchConceptAuthorizationRecordsForSource:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end