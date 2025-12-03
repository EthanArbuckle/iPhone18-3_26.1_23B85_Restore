@interface HKAuthorizationStore
+ (id)readTaskIdentifier;
+ (id)resetTaskIdentifier;
+ (id)writeTaskIdentifier;
- (BOOL)validateRecalibrateEstimatesRequestRecord:(id)record error:(id *)error;
- (HKAuthorizationStore)initWithHealthStore:(id)store;
- (id)fetchAuthorizationContextForPromptSession:(id)session error:(id *)error;
- (id)fetchConceptAuthorizationContextForPromptSession:(id)session error:(id *)error;
- (void)fetchAuthorizationRecordsForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchAuthorizationRecordsForType:(id)type completion:(id)completion;
- (void)fetchAuthorizationStatusesForDocumentType:(id)type bundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)identifier completion:(id)completion;
- (void)fetchAuthorizationStatusesForSample:(id)sample completion:(id)completion;
- (void)fetchConceptAuthorizationRecordsForSource:(id)source completion:(id)completion;
- (void)fetchSourcesRequestingAuthorizationForTypes:(id)types completion:(id)completion;
- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)domain completion:(id)completion;
- (void)recalibrateEstimatesForSampleType:(id)type effectiveDate:(id)date completion:(id)completion;
- (void)resetAllObjectAuthorizationStatusForBundleIdentifier:(id)identifier objectType:(id)type completion:(id)completion;
- (void)resetAuthorizationStatusForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)resetAuthorizationStatusesForObjects:(id)objects completion:(id)completion;
- (void)setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes forBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
- (void)setObjectAuthorizationStatusContext:(id)context forObjectType:(id)type bundleIdentifier:(id)identifier completion:(id)completion;
- (void)setRequestedAuthorizationForBundleIdentifier:(id)identifier shareTypes:(id)types readTypes:(id)readTypes completion:(id)completion;
@end

@implementation HKAuthorizationStore

- (HKAuthorizationStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v28.receiver = self;
  v28.super_class = HKAuthorizationStore;
  v5 = [(HKAuthorizationStore *)&v28 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    readTaskIdentifier = [objc_opt_class() readTaskIdentifier];
    v8 = HKAuthorizationStoreClientInterface();
    v9 = HKAuthorizationStoreReadServerInterface();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:readTaskIdentifier exportedObject:v5 exportedInterface:v8 remoteInterface:v9 taskUUID:uUID];
    readProxyProvider = v5->_readProxyProvider;
    v5->_readProxyProvider = v11;

    [(HKProxyProvider *)v5->_readProxyProvider setShouldRetryOnInterruption:0];
    v13 = [HKTaskServerProxyProvider alloc];
    writeTaskIdentifier = [objc_opt_class() writeTaskIdentifier];
    v15 = HKAuthorizationStoreClientInterface();
    v16 = HKAuthorizationStoreWriteServerInterface();
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [(HKTaskServerProxyProvider *)v13 initWithHealthStore:storeCopy taskIdentifier:writeTaskIdentifier exportedObject:v5 exportedInterface:v15 remoteInterface:v16 taskUUID:uUID2];
    writeProxyProvider = v5->_writeProxyProvider;
    v5->_writeProxyProvider = v18;

    [(HKProxyProvider *)v5->_writeProxyProvider setShouldRetryOnInterruption:0];
    v20 = [HKTaskServerProxyProvider alloc];
    resetTaskIdentifier = [objc_opt_class() resetTaskIdentifier];
    v22 = HKAuthorizationStoreClientInterface();
    v23 = HKAuthorizationStoreResetServerInterface();
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    v25 = [(HKTaskServerProxyProvider *)v20 initWithHealthStore:storeCopy taskIdentifier:resetTaskIdentifier exportedObject:v5 exportedInterface:v22 remoteInterface:v23 taskUUID:uUID3];
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

- (void)fetchAuthorizationRecordsForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (!identifierCopy)
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

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__HKAuthorizationStore_fetchAuthorizationRecordsForBundleIdentifier_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = identifierCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__HKAuthorizationStore_fetchAuthorizationRecordsForBundleIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchAuthorizationRecordsForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v8 = completionCopy;
  if (!typeCopy)
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

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HKAuthorizationStore_fetchAuthorizationRecordsForType_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = typeCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__HKAuthorizationStore_fetchAuthorizationRecordsForType_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = typeCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchSourcesRequestingAuthorizationForTypes:(id)types completion:(id)completion
{
  typesCopy = types;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKAuthorizationStore fetchSourcesRequestingAuthorizationForTypes:completion:];
  }

  v8 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__HKAuthorizationStore_fetchSourcesRequestingAuthorizationForTypes_completion___block_invoke;
  v13[3] = &unk_1E737AC38;
  v14 = typesCopy;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__HKAuthorizationStore_fetchSourcesRequestingAuthorizationForTypes_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = typesCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v13 errorHandler:v11];
}

- (void)setAuthorizationStatuses:(id)statuses authorizationModes:(id)modes forBundleIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  statusesCopy = statuses;
  modesCopy = modes;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([statusesCopy count])
  {
    if (modesCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
    if (identifierCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
    goto LABEL_4;
  }

  [HKAuthorizationStore setAuthorizationStatuses:authorizationModes:forBundleIdentifier:options:completion:];
  if (!modesCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!identifierCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__HKAuthorizationStore_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke;
  v23[3] = &unk_1E737AC60;
  v24 = statusesCopy;
  v25 = modesCopy;
  v26 = identifierCopy;
  optionsCopy = options;
  v27 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__HKAuthorizationStore_setAuthorizationStatuses_authorizationModes_forBundleIdentifier_options_completion___block_invoke_2;
  v21[3] = &unk_1E7376960;
  v22 = v27;
  v17 = v27;
  v18 = identifierCopy;
  v19 = modesCopy;
  v20 = statusesCopy;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v23 errorHandler:v21];
}

- (void)setRequestedAuthorizationForBundleIdentifier:(id)identifier shareTypes:(id)types readTypes:(id)readTypes completion:(id)completion
{
  identifierCopy = identifier;
  typesCopy = types;
  readTypesCopy = readTypes;
  completionCopy = completion;
  if (!identifierCopy)
  {
    [HKAuthorizationStore setRequestedAuthorizationForBundleIdentifier:shareTypes:readTypes:completion:];
  }

  if (![typesCopy count] && !objc_msgSend(readTypesCopy, "count"))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must request authorization for at least one data type"];
  }

  v14 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__HKAuthorizationStore_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke;
  v21[3] = &unk_1E737AC88;
  v22 = identifierCopy;
  v23 = typesCopy;
  v24 = readTypesCopy;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101__HKAuthorizationStore_setRequestedAuthorizationForBundleIdentifier_shareTypes_readTypes_completion___block_invoke_2;
  v19[3] = &unk_1E7376960;
  v20 = v25;
  v15 = v25;
  v16 = readTypesCopy;
  v17 = typesCopy;
  v18 = identifierCopy;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v21 errorHandler:v19];
}

- (void)resetAuthorizationStatusForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__HKAuthorizationStore_resetAuthorizationStatusForBundleIdentifier_completion___block_invoke;
  v12[3] = &unk_1E737ACB0;
  v13 = identifierCopy;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__HKAuthorizationStore_resetAuthorizationStatusForBundleIdentifier_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = identifierCopy;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v12 errorHandler:v10];
}

- (void)fetchAuthorizationStatusesForDocumentType:(id)type bundleIdentifier:(id)identifier completion:(id)completion
{
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  if (typeCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
    goto LABEL_4;
  }

  [HKAuthorizationStore fetchAuthorizationStatusesForDocumentType:bundleIdentifier:completion:];
  if (!identifierCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!completionCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__HKAuthorizationStore_fetchAuthorizationStatusesForDocumentType_bundleIdentifier_completion___block_invoke;
  v17[3] = &unk_1E737ACD8;
  v18 = typeCopy;
  v19 = identifierCopy;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__HKAuthorizationStore_fetchAuthorizationStatusesForDocumentType_bundleIdentifier_completion___block_invoke_2;
  v15[3] = &unk_1E7376960;
  v16 = v20;
  v12 = v20;
  v13 = identifierCopy;
  v14 = typeCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v17 errorHandler:v15];
}

- (void)fetchAuthorizationStatusesForSample:(id)sample completion:(id)completion
{
  sampleCopy = sample;
  completionCopy = completion;
  v8 = completionCopy;
  if (!sampleCopy)
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

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = sampleCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = sampleCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

void __71__HKAuthorizationStore_fetchAuthorizationStatusesForSample_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 UUID];
  [v4 remote_fetchAuthorizationStatusesForSampleUUID:v5 completion:*(a1 + 40)];
}

- (void)fetchAuthorizationStatusesForHealthConceptIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = completionCopy;
  if (!identifierCopy)
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

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__HKAuthorizationStore_fetchAuthorizationStatusesForHealthConceptIdentifier_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = identifierCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__HKAuthorizationStore_fetchAuthorizationStatusesForHealthConceptIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = identifierCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (void)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v8 = completionCopy;
  if (!domainCopy)
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

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__HKAuthorizationStore_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain_completion___block_invoke;
  v14[3] = &unk_1E737AC38;
  v15 = domainCopy;
  v16 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__HKAuthorizationStore_fetchSourcesWithExistingAuthorizationsForHealthConceptDomain_completion___block_invoke_2;
  v12[3] = &unk_1E7376960;
  v13 = v16;
  v10 = v16;
  v11 = domainCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v14 errorHandler:v12];
}

- (id)fetchAuthorizationContextForPromptSession:(id)session error:(id *)error
{
  sessionCopy = session;
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
  v7 = sessionCopy;
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
    if (error)
    {
      v10 = v8;
      *error = v9;
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

- (void)fetchConceptAuthorizationRecordsForSource:(id)source completion:(id)completion
{
  sourceCopy = source;
  completionCopy = completion;
  if (!completionCopy)
  {
    [HKAuthorizationStore fetchConceptAuthorizationRecordsForSource:completion:];
  }

  v8 = [(HKProxyProvider *)self->_readProxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__HKAuthorizationStore_fetchConceptAuthorizationRecordsForSource_completion___block_invoke;
  v13[3] = &unk_1E737AC38;
  v14 = sourceCopy;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__HKAuthorizationStore_fetchConceptAuthorizationRecordsForSource_completion___block_invoke_2;
  v11[3] = &unk_1E7376960;
  v12 = v15;
  v9 = v15;
  v10 = sourceCopy;
  [(HKAuthorizationStore *)self _fetchReadProxyWithHandler:v13 errorHandler:v11];
}

- (id)fetchConceptAuthorizationContextForPromptSession:(id)session error:(id *)error
{
  sessionCopy = session;
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
  v7 = sessionCopy;
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
    if (error)
    {
      v10 = v8;
      *error = v9;
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

- (void)setObjectAuthorizationStatusContext:(id)context forObjectType:(id)type bundleIdentifier:(id)identifier completion:(id)completion
{
  contextCopy = context;
  typeCopy = type;
  identifierCopy = identifier;
  v13 = [(HKProxyProvider *)self->_writeProxyProvider clientQueueActionHandlerWithCompletion:completion];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__HKAuthorizationStore_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_completion___block_invoke;
  v20[3] = &unk_1E737AC88;
  v21 = contextCopy;
  v22 = typeCopy;
  v23 = identifierCopy;
  v24 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__HKAuthorizationStore_setObjectAuthorizationStatusContext_forObjectType_bundleIdentifier_completion___block_invoke_2;
  v18[3] = &unk_1E7376960;
  v19 = v24;
  v14 = v24;
  v15 = identifierCopy;
  v16 = typeCopy;
  v17 = contextCopy;
  [(HKAuthorizationStore *)self _fetchWriteProxyWithHandler:v20 errorHandler:v18];
}

- (void)resetAuthorizationStatusesForObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  v7 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:completion];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__HKAuthorizationStore_resetAuthorizationStatusesForObjects_completion___block_invoke;
  v12[3] = &unk_1E737ACB0;
  v13 = objectsCopy;
  v14 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__HKAuthorizationStore_resetAuthorizationStatusesForObjects_completion___block_invoke_2;
  v10[3] = &unk_1E7376960;
  v11 = v14;
  v8 = v14;
  v9 = objectsCopy;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v12 errorHandler:v10];
}

- (void)resetAllObjectAuthorizationStatusForBundleIdentifier:(id)identifier objectType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  typeCopy = type;
  v10 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__HKAuthorizationStore_resetAllObjectAuthorizationStatusForBundleIdentifier_objectType_completion___block_invoke;
  v16[3] = &unk_1E737AD78;
  v17 = identifierCopy;
  v18 = typeCopy;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__HKAuthorizationStore_resetAllObjectAuthorizationStatusForBundleIdentifier_objectType_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = typeCopy;
  v13 = identifierCopy;
  [(HKAuthorizationStore *)self _fetchResetProxyWithHandler:v16 errorHandler:v14];
}

- (BOOL)validateRecalibrateEstimatesRequestRecord:(id)record error:(id *)error
{
  recordCopy = record;
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
  v7 = recordCopy;
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
    if (error)
    {
      v10 = v8;
      *error = v9;
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

- (void)recalibrateEstimatesForSampleType:(id)type effectiveDate:(id)date completion:(id)completion
{
  typeCopy = type;
  dateCopy = date;
  v10 = [(HKProxyProvider *)self->_resetProxyProvider clientQueueActionHandlerWithCompletion:completion];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__HKAuthorizationStore_recalibrateEstimatesForSampleType_effectiveDate_completion___block_invoke;
  v16[3] = &unk_1E737AD78;
  v17 = typeCopy;
  v18 = dateCopy;
  v19 = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__HKAuthorizationStore_recalibrateEstimatesForSampleType_effectiveDate_completion___block_invoke_2;
  v14[3] = &unk_1E7376960;
  v15 = v19;
  v11 = v19;
  v12 = dateCopy;
  v13 = typeCopy;
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