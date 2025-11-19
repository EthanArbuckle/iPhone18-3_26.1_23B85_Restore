@interface AVTStickerRecentsSwiftProvider
+ (id)imageStoreWithEnvironment:(id)a3;
+ (id)stickerCacheWithEnvironment:(id)a3;
- (AVTStickerRecentsSwiftProvider)initWithDelegate:(id)a3;
- (id)fetchRecents:(int64_t)a3 excludingStickersMatchingRules:(id)a4;
- (void)_notifyStoreChanged;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)endObservingAvatarStoreChanges;
- (void)fetchDefaultMemojiIfNeeded;
@end

@implementation AVTStickerRecentsSwiftProvider

- (AVTStickerRecentsSwiftProvider)initWithDelegate:(id)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = AVTStickerRecentsSwiftProvider;
  v5 = [(AVTStickerRecentsSwiftProvider *)&v39 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_recentsRequestedCount = 0;
    v7 = +[AVTUIEnvironment defaultEnvironment];
    environment = v6->_environment;
    v6->_environment = v7;

    v9 = [objc_opt_class() imageStoreWithEnvironment:v6->_environment];
    imageStore = v6->_imageStore;
    v6->_imageStore = v9;

    v11 = objc_alloc_init(AVTAvatarStore);
    if (([(AVTAvatarStore *)v11 conformsToProtocol:&unk_1F39DD3B0]& 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v11}];
    }

    v12 = v11;
    [(AVTAvatarStore *)v12 setStickerBackendDelegate:v6];
    objc_storeStrong(&v6->_avatarStore, v11);
    v13 = [AVTUIStickerGeneratorPool alloc];
    v14 = [(AVTUIEnvironment *)v6->_environment logger];
    v15 = [(AVTUIStickerGeneratorPool *)v13 initWithMaxStickerGeneratorCount:1 logger:v14];
    generatorPool = v6->_generatorPool;
    v6->_generatorPool = v15;

    v17 = [(AVTUIEnvironment *)v6->_environment serialQueueProvider];
    v18 = (v17)[2](v17, "com.apple.AvatarUI.StickerRecentsWorkQueue");
    recentsWorkQueue = v6->_recentsWorkQueue;
    v6->_recentsWorkQueue = v18;

    v20 = [(AVTUIEnvironment *)v6->_environment backgroundRenderingQueue];
    renderingQueue = v6->_renderingQueue;
    v6->_renderingQueue = v20;

    v22 = [(AVTUIEnvironment *)v6->_environment backgroundEncodingQueue];
    encodingQueue = v6->_encodingQueue;
    v6->_encodingQueue = v22;

    v24 = [objc_opt_class() stickerCacheWithEnvironment:v6->_environment];
    cache = v6->_cache;
    v6->_cache = v24;

    if (AVTUIShowPrereleaseStickerPack_once())
    {
      v26 = *MEMORY[0x1E698E300];
      v41[0] = *MEMORY[0x1E698E2E0];
      v41[1] = v26;
      v27 = MEMORY[0x1E695DEC8];
      v28 = v41;
      v29 = 2;
    }

    else
    {
      v40 = *MEMORY[0x1E698E2E0];
      v27 = MEMORY[0x1E695DEC8];
      v28 = &v40;
      v29 = 1;
    }

    v30 = [v27 arrayWithObjects:v28 count:v29];
    v31 = [[AVTStickerConfigurationProvider alloc] initWithEnvironment:v6->_environment forStickerPacks:v30 stickerConfigurationNames:0];
    configurationProvider = v6->_configurationProvider;
    v6->_configurationProvider = v31;

    v33 = [[AVTStickerRecentsMigrator alloc] initWithStore:v6->_avatarStore stickerConfigurationProvider:v6->_configurationProvider environment:v6->_environment];
    stickerRecentsMigrator = v6->_stickerRecentsMigrator;
    v6->_stickerRecentsMigrator = v33;

    v35 = [(AVTUIEnvironment *)v6->_environment coreEnvironment];
    v36 = [AVTSerialTaskScheduler fifoSchedulerWithEnvironment:v35];
    taskScheduler = v6->_taskScheduler;
    v6->_taskScheduler = v36;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTStickerRecentsSwiftProvider;
  [(AVTStickerRecentsSwiftProvider *)&v5 dealloc];
}

+ (id)stickerCacheWithEnvironment:(id)a3
{
  v3 = a3;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    v4 = [v3 stickerImageStoreLocation];
    v5 = [v3 logger];
    [AVTImageStore clearContentAtLocation:v4 logger:v5];

    AVTUISetFlushStickersCache();
  }

  v6 = objc_alloc_init(AVTPassThroughResourceCache);

  return v6;
}

+ (id)imageStoreWithEnvironment:(id)a3
{
  v3 = a3;
  if (!AVTUIStickersCaching() || AVTUIFlushStickersCache())
  {
    v4 = [v3 stickerImageStoreLocation];
    v5 = [v3 logger];
    [AVTImageStore clearContentAtLocation:v4 logger:v5];

    AVTUISetFlushStickersCache();
  }

  v6 = +[AVTUIStickerRenderer imageEncoder];
  v7 = [AVTClippableImageStore alloc];
  v8 = [v3 coreEnvironment];
  v9 = [v3 stickerImageStoreLocation];
  v10 = [(AVTImageStore *)v7 initWithEnvironment:v8 validateImages:1 location:v9 encoder:v6];

  return v10;
}

- (id)fetchRecents:(int64_t)a3 excludingStickersMatchingRules:(id)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v44 = a3;
  self->_recentsRequestedCount = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVTStickerRecentsSwiftProvider_fetchRecents_excludingStickersMatchingRules___block_invoke;
  block[3] = &unk_1E7F3A9B8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  val = self;
  [(AVTStickerRecentsMigrator *)self->_stickerRecentsMigrator performMigrationIfNeeded];
  [(AVTStickerRecentsSwiftProvider *)self fetchDefaultMemojiIfNeeded];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__13;
  v69 = __Block_byref_object_dispose__13;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__13;
  v63 = __Block_byref_object_dispose__13;
  v64 = 0;
  v47 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v7)
  {
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E698E358]);
        v12 = [MEMORY[0x1E696AFB0] UUID];
        v13 = [v12 UUIDString];
        v14 = [v10 avatarRecordIdentifier];
        v15 = [v10 stickerConfigurationIdentifier];
        v16 = [v11 initWithIdentifier:v13 avatarRecordIdentifier:v14 stickerConfigurationIdentifier:v15 frequencySum:&unk_1F39A5B48 serializationVersion:&unk_1F39A5B60];

        [v47 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v7);
  }

  v17 = [(AVTAvatarRecord *)val->_defaultMemoji identifier];
  avatarStore = val->_avatarStore;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __78__AVTStickerRecentsSwiftProvider_fetchRecents_excludingStickersMatchingRules___block_invoke_102;
  v54[3] = &unk_1E7F3B270;
  v54[4] = &v65;
  v54[5] = &v59;
  [AVTStickerRecentsPresetsProvider filteredAndPaddedStickerRecordsWithRecents:MEMORY[0x1E695E0F0] excludingRecords:v47 paddingMemojiIdentifier:v17 avatarStore:avatarStore numberOfStickers:v44 resultBlock:v54];

  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v66[5], "count")}];
  if (v44 >= 1)
  {
    v19 = 0;
    while (v19 < [v66[5] count])
    {
      v20 = [v66[5] objectAtIndexedSubscript:v19];
      v21 = v60[5];
      v22 = [v20 avatarRecordIdentifier];
      v23 = [v21 objectForKeyedSubscript:v22];

      configurationProvider = val->_configurationProvider;
      v25 = [v20 stickerConfigurationIdentifier];
      v26 = [(AVTStickerConfigurationProvider *)configurationProvider stickerConfigurationForAvatarRecord:v23 stickerName:v25];

      if (!v26)
      {
        [(AVTStickerRecentsMigrator *)val->_stickerRecentsMigrator setNeedsMigrationOnNextLaunch];
        v40 = [(AVTUIEnvironment *)val->_environment logger];
        v41 = [v20 description];
        [v40 logFetchedRecentStickerWithNoStickerConfiguration:v41];

        v39 = MEMORY[0x1E695E0F0];
        v38 = v43;
        goto LABEL_17;
      }

      v27 = [AVTUIStickerRenderer alloc];
      v28 = MEMORY[0x1E69E96A0];
      v29 = [(AVTUIStickerRenderer *)v27 initWithAvatarRecord:v23 cache:val->_cache imageStore:val->_imageStore stickerGeneratorPool:val->_generatorPool environment:val->_environment renderingScheduler:val->_taskScheduler renderingQueue:val->_renderingQueue encodingQueue:val->_encodingQueue callbackQueue:MEMORY[0x1E69E96A0]];

      v30 = [(AVTUIStickerRenderer *)v29 scheduledStickerResourceProviderForStickerConfiguration:v26];
      v31 = objc_alloc(MEMORY[0x1E696AFB0]);
      v32 = [v20 identifier];
      v33 = [v31 initWithUUIDString:v32];

      objc_initWeak(&location, val);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __78__AVTStickerRecentsSwiftProvider_fetchRecents_excludingStickersMatchingRules___block_invoke_2;
      v48[3] = &unk_1E7F3C350;
      objc_copyWeak(&v52, &location);
      v34 = v33;
      v49 = v34;
      v35 = v26;
      v50 = v35;
      v36 = v20;
      v51 = v36;
      v37 = (v30)[2](v30, v48, 0);
      if (v37)
      {
        [(AVTSerialTaskScheduler *)val->_taskScheduler scheduleTask:v37];
      }

      [v43 addObject:v34];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);

      if (v44 == ++v19)
      {
        break;
      }
    }
  }

  v38 = v43;
  v39 = v43;
LABEL_17:

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  return v39;
}

void __78__AVTStickerRecentsSwiftProvider_fetchRecents_excludingStickersMatchingRules___block_invoke_102(uint64_t a1, void *a2, void *a3)
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

void __78__AVTStickerRecentsSwiftProvider_fetchRecents_excludingStickersMatchingRules___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 1);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) localizedName];
    v8 = [v12 image];
    v9 = [v12 URL];
    v10 = [*(a1 + 48) avatarRecordIdentifier];
    v11 = [*(a1 + 48) stickerConfigurationIdentifier];
    [v5 avtStickerRecentRenderedWithIdentifier:v6 localizedDescription:v7 image:v8 url:v9 avatarRecordIdentifier:v10 stickerConfigurationIdentifier:v11];
  }
}

- (void)fetchDefaultMemojiIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB341000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch default memoji: %@", &v2, 0xCu);
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AVTStickerRecentsSwiftProvider_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__AVTStickerRecentsSwiftProvider_beginObservingAvatarStoreChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyStoreChanged];
}

- (void)endObservingAvatarStoreChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
}

- (void)_notifyStoreChanged
{
  objc_initWeak(&location, self);
  recentsWorkQueue = self->_recentsWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVTStickerRecentsSwiftProvider__notifyStoreChanged__block_invoke;
  v4[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v5, &location);
  dispatch_async(recentsWorkQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__AVTStickerRecentsSwiftProvider__notifyStoreChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[2] >= 1)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 1);
    [v2 avtStickerRecentStoreDidChange];

    WeakRetained = v3;
  }
}

@end