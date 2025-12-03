@interface AVTPAvatarStore
+ (id)defaultBackendWithWorkQueue:(id)queue environment:(id)environment;
+ (unint64_t)maximumNumberOfSavableAvatars;
- (AVTPAvatarStore)init;
- (AVTPAvatarStore)initWithBackend:(id)backend backendAccessQueue:(id)queue puppetStore:(id)store stickerBackend:(id)stickerBackend environment:(id)environment;
- (AVTPAvatarStore)initWithEnvironment:(id)environment;
- (AVTPBackendImageHandlingDelegate)imageHandlingDelegate;
- (BOOL)canCreateAvatarWithError:(id *)error;
- (id)avatarsForFetchRequest:(id)request error:(id *)error;
- (id)recentStickersForFetchRequest:(id)request error:(id *)error;
- (void)backend:(id)backend didChangeRecordsWithIdentifiers:(id)identifiers;
- (void)deleteAvatar:(id)avatar completionHandler:(id)handler;
- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler;
- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler;
- (void)duplicateAvatar:(id)avatar completionBlock:(id)block;
- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler;
- (void)performAsynchronousWork:(id)work;
- (void)performBackendWork:(id)work;
- (void)performPuppetStoreWork:(id)work;
- (void)postChangeNotificationForRecordWithIdentifiers:(id)identifiers remote:(BOOL)remote;
- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock;
- (void)setStickerBackendDelegate:(id)delegate;
@end

@implementation AVTPAvatarStore

+ (id)defaultBackendWithWorkQueue:(id)queue environment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIIsAvatarUIEnabled_once())
  {
    v5 = [AVTCoreDataPersistentStoreConfiguration remoteConfigurationWithEnvironment:environmentCopy];
    v6 = [[AVTCoreDataStoreBackend alloc] initWithConfiguration:v5 environment:environmentCopy];
  }

  else
  {
    v6 = objc_alloc_init(AVTStubbedStoreBackend);
  }

  return v6;
}

- (AVTPAvatarStore)init
{
  v3 = +[AVTCoreEnvironment defaultEnvironment];
  v4 = [(AVTPAvatarStore *)self initWithEnvironment:v3];

  return v4;
}

- (AVTPAvatarStore)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  lockProvider = [environmentCopy lockProvider];
  v6 = (lockProvider)[2](lockProvider, "com.apple.AvatarUI.AVTAvatarStore.backendAcccessQueue");

  v7 = [objc_opt_class() defaultBackendWithWorkQueue:v6 environment:environmentCopy];
  v8 = [[AVTPuppetStore alloc] initWithEnvironment:environmentCopy];
  v9 = [AVTStickerUserDefaultsBackend alloc];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [(AVTStickerUserDefaultsBackend *)v9 initWithWorkQueue:v6 environment:environmentCopy userDefaults:standardUserDefaults];

  v12 = [(AVTPAvatarStore *)self initWithBackend:v7 backendAccessQueue:v6 puppetStore:v8 stickerBackend:v11 environment:environmentCopy];
  return v12;
}

- (AVTPAvatarStore)initWithBackend:(id)backend backendAccessQueue:(id)queue puppetStore:(id)store stickerBackend:(id)stickerBackend environment:(id)environment
{
  backendCopy = backend;
  queueCopy = queue;
  storeCopy = store;
  stickerBackendCopy = stickerBackend;
  environmentCopy = environment;
  v31.receiver = self;
  v31.super_class = AVTPAvatarStore;
  v17 = [(AVTPAvatarStore *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_environment, environment);
    objc_storeStrong(&v18->_backend, backend);
    [(AVTStoreBackend *)v18->_backend setBackendDelegate:v18];
    objc_storeStrong(&v18->_puppetStore, store);
    serialQueueProvider = [environmentCopy serialQueueProvider];
    v20 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.AVTAvatarStore.workQueue");
    workQueue = v18->_workQueue;
    v18->_workQueue = v20;

    objc_storeStrong(&v18->_backendAccessQueue, queue);
    lockProvider = [environmentCopy lockProvider];
    v23 = (lockProvider)[2](lockProvider, "com.apple.AvatarUI.AVTAvatarStore.puppetStoreAccessQueue");
    puppetStoreAccessQueue = v18->_puppetStoreAccessQueue;
    v18->_puppetStoreAccessQueue = v23;

    logger = [environmentCopy logger];
    logger = v18->_logger;
    v18->_logger = logger;

    v27 = v18->_logger;
    v28 = [(AVTPAvatarStore *)v18 description];
    [(AVTUILogger *)v27 logCreatingStore:v28];

    objc_storeStrong(&v18->_stickerBackend, stickerBackend);
  }

  return v18;
}

- (BOOL)canCreateAvatarWithError:(id *)error
{
  if (AVTIsRunningAsSetupUser())
  {
    logger = [(AVTPAvatarStore *)self logger];
    [logger logSkippedFetchingRecordsWithReason:@"Running as setup user"];

    return 0;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__3;
    v13 = __Block_byref_object_dispose__3;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__AVTPAvatarStore_canCreateAvatarWithError___block_invoke;
    v8[3] = &unk_278CFABD8;
    v8[4] = &v15;
    v8[5] = &v9;
    [(AVTPAvatarStore *)self performBackendWork:v8];
    v6 = *(v16 + 24);
    if (error && (v16[3] & 1) == 0)
    {
      *error = v10[5];
    }

    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
  }

  return v6;
}

void __44__AVTPAvatarStore_canCreateAvatarWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 canCreateAvatarWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v4;
}

- (id)avatarsForFetchRequest:(id)request error:(id *)error
{
  v59[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v55 = 0;
  v56[0] = &v55;
  v56[1] = 0x3032000000;
  v56[2] = __Block_byref_object_copy__3;
  v56[3] = __Block_byref_object_dispose__3;
  v57 = 0;
  v52 = 0;
  v53[0] = &v52;
  v53[1] = 0x3032000000;
  v53[2] = __Block_byref_object_copy__3;
  v53[3] = __Block_byref_object_dispose__3;
  v54 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__3;
  v50 = __Block_byref_object_dispose__3;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__3;
  v44 = __Block_byref_object_dispose__3;
  v45 = 0;
  if (AVTIsRunningAsSetupUser())
  {
    logger = [(AVTPAvatarStore *)self logger];
    [logger logSkippedFetchingRecordsWithReason:@"Running as setup user"];
  }

  else
  {
    logger2 = [(AVTPAvatarStore *)self logger];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke;
    v36[3] = &unk_278CFAC28;
    v36[4] = self;
    v38 = &v55;
    v37 = requestCopy;
    v39 = &v46;
    [logger2 fetchingRecords:v36];
  }

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke_3;
  v32 = &unk_278CFAC50;
  v34 = &v52;
  v9 = requestCopy;
  v33 = v9;
  v35 = &v40;
  [(AVTPAvatarStore *)self performPuppetStoreWork:&v29];
  v10 = *(v56[0] + 40);
  v11 = *(v53[0] + 40);
  if (v10)
  {
    if (v11)
    {
      v12 = [v10 arrayByAddingObjectsFromArray:{v29, v30, v31, v32}];
      goto LABEL_24;
    }

    domain = [v41[5] domain];
    v14 = v56;
    if ([domain isEqual:@"AVTAvatarUIErrorDomain"])
    {
      v19 = [v41[5] code] == 404;

      if (v19)
      {
        logger3 = [(AVTPAvatarStore *)self logger];
        v17 = [v41[5] description];
        [logger3 logRecordsNotFoundInPuppetStore:v17];
        goto LABEL_23;
      }
    }

    else
    {
    }

    logger3 = [(AVTPAvatarStore *)self logger];
    v17 = [v41[5] description];
    [logger3 logReadingError:v17];
    goto LABEL_23;
  }

  if (v11)
  {
    domain2 = [v47[5] domain];
    v14 = v53;
    if ([domain2 isEqual:@"AVTAvatarUIErrorDomain"])
    {
      v15 = [v47[5] code] == 404;

      if (v15)
      {
        logger3 = [(AVTPAvatarStore *)self logger];
        v17 = [v47[5] description];
        [logger3 logRecordsNotFoundInRecordStore:v17];
LABEL_23:

        v12 = *(*v14 + 40);
LABEL_24:
        v25 = v12;
        v24 = 0;
        if (v12)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

    logger3 = [(AVTPAvatarStore *)self logger];
    v17 = [v47[5] description];
    [logger3 logReadingError:v17];
    goto LABEL_23;
  }

  array = [MEMORY[0x277CBEB18] array];
  v21 = array;
  if (v47[5])
  {
    [array addObject:?];
  }

  if (v41[5])
  {
    [v21 addObject:?];
  }

  v58 = @"AVTAvatarUIMultipleErrorsKey";
  v22 = [v21 copy];
  v59[0] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  v24 = [AVTError errorWithCode:666 userInfo:v23];

LABEL_25:
  if (error)
  {
    v26 = v24;
    v25 = 0;
    *error = v24;
  }

  else
  {
    v25 = 0;
  }

LABEL_28:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v55, 8);

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

void __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke_2;
  v6[3] = &unk_278CFAC00;
  v5 = *(a1 + 40);
  v3 = v5;
  v7 = v5;
  v8 = *(a1 + 56);
  [v2 performBackendWork:v6];
  v4 = [*(a1 + 32) logger];
  [v4 logFetchedRecords:objc_msgSend(*(*(*(a1 + 48) + 8) + 40) criteria:{"count"), objc_msgSend(*(a1 + 40), "criteria")}];
}

void __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 avatarsForFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__AVTPAvatarStore_avatarsForFetchRequest_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 avatarPuppetsForFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)performBackendWork:(id)work
{
  workCopy = work;
  backendAccessQueue = [(AVTPAvatarStore *)self backendAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__AVTPAvatarStore_performBackendWork___block_invoke;
  v7[3] = &unk_278CF9F78;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(backendAccessQueue, v7);
}

void __38__AVTPAvatarStore_performBackendWork___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) backend];
  (*(v1 + 16))(v1, v2);
}

- (void)performPuppetStoreWork:(id)work
{
  workCopy = work;
  puppetStoreAccessQueue = [(AVTPAvatarStore *)self puppetStoreAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AVTPAvatarStore_performPuppetStoreWork___block_invoke;
  v7[3] = &unk_278CF9F78;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_sync(puppetStoreAccessQueue, v7);
}

void __42__AVTPAvatarStore_performPuppetStoreWork___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) puppetStore];
  (*(v1 + 16))(v1, v2);
}

- (void)performAsynchronousWork:(id)work
{
  workCopy = work;
  workQueue = [(AVTPAvatarStore *)self workQueue];
  dispatch_async(workQueue, workCopy);
}

- (void)fetchAvatarsForFetchRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__AVTPAvatarStore_fetchAvatarsForFetchRequest_completionHandler___block_invoke;
  v10[3] = &unk_278CFA5D0;
  v10[4] = self;
  v11 = requestCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = requestCopy;
  [(AVTPAvatarStore *)self performAsynchronousWork:v10];
}

void __65__AVTPAvatarStore_fetchAvatarsForFetchRequest_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 avatarsForFetchRequest:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

- (void)saveAvatarRecord:(id)record thumbnailAvatar:(id)avatar completionBlock:(id)block thumbnailGenerationCompletionBlock:(id)completionBlock
{
  recordCopy = record;
  avatarCopy = avatar;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", recordCopy}];
  }

  v14 = recordCopy;
  logger = [(AVTPAvatarStore *)self logger];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke;
  v20[3] = &unk_278CFACA0;
  v20[4] = self;
  v21 = v14;
  v22 = avatarCopy;
  v23 = blockCopy;
  v24 = completionBlockCopy;
  v16 = completionBlockCopy;
  v17 = avatarCopy;
  v18 = blockCopy;
  v19 = v14;
  [logger savingRecords:v20];
}

void __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_2;
  v6[3] = &unk_278CFAC78;
  v5 = *(a1 + 32);
  v2 = *(&v5 + 1);
  v3 = *(a1 + 56);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = v3;
  v7 = v5;
  v8 = v4;
  v9 = *(a1 + 64);
  [v5 performAsynchronousWork:v6];
}

void __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_2(uint64_t a1)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) imageHandlingDelegate];
  v3 = [*(a1 + 40) identifier];
  v45[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v42 = 0;
  v5 = [v2 deleteThumbnailsForAvatarRecordsWithIdentifiers:v4 error:&v42];
  v6 = v42;

  if (v5)
  {
    v7 = [*(a1 + 32) imageHandlingDelegate];
    v8 = [*(a1 + 40) identifier];
    v9 = [*(a1 + 32) environment];
    [v7 clearStickersForAvatarRecordIdentifier:v8 withEnvironment:v9];

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__3;
    v40 = __Block_byref_object_dispose__3;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v10 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_3;
    v28[3] = &unk_278CFAC00;
    v30 = &v32;
    v29 = *(a1 + 40);
    v31 = &v36;
    [v10 performBackendWork:v28];
    if (v33[3])
    {
      v11 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v12 = [v11 imageHandlingDelegate];
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v27 = v6;
        v15 = [v12 generateThumbnailsForAvatarRecord:v13 avatar:v14 error:&v27];
        v16 = v27;
      }

      else
      {
        v12 = [v11 imageHandlingDelegate];
        v44 = *(a1 + 40);
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
        v26 = v6;
        v15 = [v12 generateThumbnailsForAvatarRecords:v19 error:&v26];
        v16 = v26;

        v6 = v19;
      }

      v20 = *(a1 + 64);
      if (v20)
      {
        (*(v20 + 16))(v20, v15, v16);
      }

      v21 = *(a1 + 56);
      if (v21)
      {
        (*(v21 + 16))(v21, *(v33 + 24), v37[5]);
      }

      v22 = *(a1 + 32);
      v23 = [*(a1 + 40) identifier];
      v43 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      [v22 postChangeNotificationForRecordWithIdentifiers:v24 remote:0];

      v6 = v16;
    }

    else
    {
      v18 = *(a1 + 56);
      if (v18)
      {
        (*(v18 + 16))(v18, 0, v37[5]);
      }
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, 0, v6);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __103__AVTPAvatarStore_saveAvatarRecord_thumbnailAvatar_completionBlock_thumbnailGenerationCompletionBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 saveAvatar:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (void)deleteAvatar:(id)avatar completionHandler:(id)handler
{
  avatarCopy = avatar;
  handlerCopy = handler;
  if ([avatarCopy isEditable])
  {
    identifier = [avatarCopy identifier];
    [(AVTPAvatarStore *)self deleteAvatarWithIdentifier:identifier completionBlock:handlerCopy];
  }

  else
  {
    identifier = [AVTError errorWithCode:577 userInfo:0];
    handlerCopy[2](handlerCopy, 0, identifier);
  }
}

- (void)deleteAvatarWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  logger = [(AVTPAvatarStore *)self logger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke;
  v11[3] = &unk_278CFA7B0;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifierCopy;
  [logger deletingRecords:v11];
}

void __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_2;
  v3[3] = &unk_278CFA5D0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performAsynchronousWork:v3];
}

void __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_2(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_3;
  v20[3] = &unk_278CFAC00;
  v22 = &v24;
  v2 = *(a1 + 32);
  v21 = *(a1 + 40);
  v23 = &v28;
  [v2 performBackendWork:v20];
  v3 = v25;
  if (*(v25 + 24) == 1)
  {
    v4 = [*(a1 + 32) imageHandlingDelegate];
    v35[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v19 = 0;
    v6 = [v4 deleteThumbnailsForAvatarRecordsWithIdentifiers:v5 error:&v19];
    v7 = v19;

    if ((v6 & 1) == 0)
    {
      v8 = [*(a1 + 32) logger];
      v9 = *(a1 + 40);
      v10 = [v7 description];
      [v8 logErrorDeletingThumbnailsForIdentifier:v9 error:v10];
    }

    v11 = [*(a1 + 32) stickerBackend];
    [v11 deleteRecentStickersWithAvatarIdentifier:*(a1 + 40) stickerIdentifier:0 completionHandler:0];

    v12 = [*(a1 + 32) imageHandlingDelegate];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) environment];
    [v12 clearStickersForAvatarRecordIdentifier:v13 withEnvironment:v14];

    v3 = v25;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, *(v3 + 24), v29[5]);
    v3 = v25;
  }

  if (*(v3 + 24) == 1)
  {
    v16 = *(a1 + 32);
    v34 = *(a1 + 40);
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [v16 postChangeNotificationForRecordWithIdentifiers:v17 remote:0];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __62__AVTPAvatarStore_deleteAvatarWithIdentifier_completionBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 deleteAvatarWithIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

- (void)duplicateAvatar:(id)avatar completionBlock:(id)block
{
  avatarCopy = avatar;
  blockCopy = block;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", avatarCopy}];
  }

  v8 = avatarCopy;
  if ([v8 isEditable])
  {
    logger = [(AVTPAvatarStore *)self logger];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke;
    v11[3] = &unk_278CFA7B0;
    v11[4] = self;
    v12 = v8;
    v13 = blockCopy;
    [logger duplicatingRecords:v11];
  }

  else
  {
    v10 = [AVTError errorWithCode:577 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, 0, v10);
  }
}

void __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke_2;
  v3[3] = &unk_278CFA5D0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performAsynchronousWork:v3];
}

void __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke_2(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke_3;
  v20[3] = &unk_278CFAC00;
  v22 = &v24;
  v2 = *(a1 + 32);
  v21 = *(a1 + 40);
  v23 = &v30;
  [v2 performBackendWork:v20];
  v3 = v25;
  if (v25[5])
  {
    v4 = [*(a1 + 32) imageHandlingDelegate];
    v5 = v25[5];
    v6 = *(a1 + 40);
    v19 = 0;
    v7 = [v4 generateThumbnailsForDuplicateAvatarRecord:v5 originalRecord:v6 error:&v19];
    v8 = v19;

    if ((v7 & 1) == 0)
    {
      v9 = [*(a1 + 32) logger];
      v10 = [*(a1 + 40) identifier];
      v11 = [v8 description];
      [v9 logErrorDuplicatingThumbnailsForIdentifier:v10 error:v11];
    }

    v3 = v25;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = v31[5];
    (*(v12 + 16))(v12, v3[5] != 0);
    v3 = v25;
  }

  v14 = v3[5];
  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [v14 identifier];
    v36[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v15 postChangeNotificationForRecordWithIdentifiers:v17 remote:0];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __51__AVTPAvatarStore_duplicateAvatar_completionBlock___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [a2 duplicateAvatarRecord:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)postChangeNotificationForRecordWithIdentifiers:(id)identifiers remote:(BOOL)remote
{
  remoteCopy = remote;
  v16[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (identifiersCopy)
  {
    v15 = @"changedRecordIDs";
    v16[0] = identifiersCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v8 = 0;
  }

  logger = [(AVTPAvatarStore *)self logger];
  [logger logPostingChangeNotificationForIdentifiers:v7];

  environment = [(AVTPAvatarStore *)self environment];
  notificationCenter = [environment notificationCenter];
  v12 = notificationCenter;
  if (remoteCopy)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  [notificationCenter postNotificationName:@"AVTAvatarStoreDidChangeNotification" object:selfCopy userInfo:v8];

  v14 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)maximumNumberOfSavableAvatars
{
  if (AVTUIRestrictMaximumAvatarCount_once())
  {
    return 3;
  }

  else
  {
    return 50;
  }
}

- (void)backend:(id)backend didChangeRecordsWithIdentifiers:(id)identifiers
{
  backendCopy = backend;
  identifiersCopy = identifiers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__AVTPAvatarStore_backend_didChangeRecordsWithIdentifiers___block_invoke;
  v10[3] = &unk_278CFA738;
  v10[4] = self;
  v11 = backendCopy;
  v12 = identifiersCopy;
  v8 = identifiersCopy;
  v9 = backendCopy;
  [(AVTPAvatarStore *)self performAsynchronousWork:v10];
}

uint64_t __59__AVTPAvatarStore_backend_didChangeRecordsWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageHandlingDelegate];
  v3 = [*(a1 + 40) recordChangeTracker];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__AVTPAvatarStore_backend_didChangeRecordsWithIdentifiers___block_invoke_2;
  v5[3] = &unk_278CFACC8;
  v5[4] = *(a1 + 32);
  [v2 updateThumbnailsForChangesWithTracker:v3 recordProvider:v5];

  return [*(a1 + 32) postChangeNotificationForRecordWithIdentifiers:*(a1 + 48) remote:1];
}

id __59__AVTPAvatarStore_backend_didChangeRecordsWithIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [AVTAvatarFetchRequest requestForAvatarWithIdentifier:a2];
  v4 = [v2 avatarsForFetchRequest:v3 error:0];
  v5 = [v4 firstObject];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v5}];
    }

    v6 = v5;
  }

  return v5;
}

- (void)setStickerBackendDelegate:(id)delegate
{
  delegateCopy = delegate;
  stickerBackend = [(AVTPAvatarStore *)self stickerBackend];
  [stickerBackend setStickerBackendDelegate:delegateCopy];
}

- (id)recentStickersForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  stickerBackend = [(AVTPAvatarStore *)self stickerBackend];
  v8 = [stickerBackend recentStickersForFetchRequest:requestCopy error:error];

  return v8;
}

- (void)didUseStickerWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  stickerBackend = [(AVTPAvatarStore *)self stickerBackend];
  [stickerBackend didUseStickerWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (void)deleteRecentStickersWithAvatarIdentifier:(id)identifier stickerIdentifier:(id)stickerIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  stickerIdentifierCopy = stickerIdentifier;
  identifierCopy = identifier;
  stickerBackend = [(AVTPAvatarStore *)self stickerBackend];
  [stickerBackend deleteRecentStickersWithAvatarIdentifier:identifierCopy stickerIdentifier:stickerIdentifierCopy completionHandler:handlerCopy];
}

- (void)deleteRecentStickersForChangeTracker:(id)tracker completionHandler:(id)handler
{
  handlerCopy = handler;
  trackerCopy = tracker;
  stickerBackend = [(AVTPAvatarStore *)self stickerBackend];
  [stickerBackend deleteRecentStickersForChangeTracker:trackerCopy completionHandler:handlerCopy];
}

- (AVTPBackendImageHandlingDelegate)imageHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageHandlingDelegate);

  return WeakRetained;
}

@end