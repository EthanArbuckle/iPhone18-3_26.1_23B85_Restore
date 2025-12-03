@interface SFEntitledAssetManager
+ (BOOL)isOverrideSupportedForAssetType:(unint64_t)type;
+ (BOOL)isSubscribedToAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId;
+ (id)_assetSetSubscriptionWithConfig:(id)config regionId:(id)id expiration:(id)expiration;
+ (id)_assetSetSubscriptionsWithAssetType:(unint64_t)type exceptLanguages:(id)languages subscriberId:(id)id;
+ (id)_overrideModelQualityForConfig:(id)config;
+ (id)_overridePathForConfig:(id)config;
+ (id)_overrideStatusForConfig:(id)config;
+ (id)assetNameForAssetType:(unint64_t)type;
+ (id)assetPathFromStatus:(id)status;
+ (id)assetSetNameForAssetType:(unint64_t)type;
+ (id)assetSetUsageForConfig:(id)config regionId:(id)id;
+ (id)assetSetUsagesForAssetType:(unint64_t)type;
+ (id)assetUsageTypeForAssetType:(unint64_t)type;
+ (id)installationStateForDownloadStatus:(unint64_t)status;
+ (id)jsonFilenameForAssetType:(unint64_t)type;
+ (id)modelAttributesForAsset:(id)asset;
+ (id)modelTasksForLocaleWithInstallationStatus:(id)status;
+ (id)offlineDictationLocales;
+ (id)onDeviceDictationLocales;
+ (id)sharedInstance;
+ (id)statusForAsset:(id)asset;
+ (id)subscriptionNameForConfig:(id)config regionId:(id)id;
+ (id)subscriptionNamePrefixForAssetType:(unint64_t)type;
+ (id)subscriptionsForSubscriberId:(id)id;
+ (id)supportedLanguagesForAssetType:(unint64_t)type;
+ (id)unsubscribeFromAssetsWithAssetType:(unint64_t)type exceptLanguages:(id)languages subscriberId:(id)id;
+ (unint64_t)_assetTypeForSubscriptionName:(id)name;
+ (void)initialize;
+ (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable completionHandler:(id)handler;
+ (void)subscribeToAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId expiration:(id)expiration completionHandler:(id)handler;
+ (void)unsubscribeFromAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId completionHandler:(id)handler;
- (SFEntitledAssetManager)initWithAssetSetDict:(id)dict cleanupDuration:(unint64_t)duration;
- (id)_assetSetWithName:(id)name usage:(id)usage;
- (id)_assetSetsWithAssetType:(unint64_t)type;
- (id)_assetWithAssetConfig:(id)config regionId:(id)id;
- (id)_assetsWithAssetType:(unint64_t)type;
- (id)_installationStatusForLanguagesWithAssetType:(unint64_t)type includeDetailedStatus:(BOOL)status subscriberId:(id)id;
- (id)_installedAssetWithConfig:(id)config regionId:(id)id shouldSubscribe:(BOOL)subscribe subscriberId:(id)subscriberId expiration:(id)expiration;
- (id)assetStatusForConfig:(id)config;
- (id)assetVersionForConfig:(id)config;
- (id)installedAssetWithConfig:(id)config;
- (id)installedAudioSamplingConfigWithAssetName:(id)name;
- (id)installedLanguagesForAssetType:(unint64_t)type;
- (id)modelQualityTypeStatusStringWithConfig:(id)config;
- (void)_cancelCleanupTimer;
- (void)_cleanupTimerFired;
- (void)_refreshAssetSetsWithName:(id)name;
- (void)_scheduleCleanupTimer;
- (void)dealloc;
- (void)downloadStatusWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)installationStateForAssetConfig:(id)config subscriberId:(id)id completionHandler:(id)handler;
- (void)refreshAssetSetWithConfig:(id)config regionId:(id)id;
- (void)registerAssetDelegate:(id)delegate assetType:(unint64_t)type;
- (void)releaseAssetSets;
- (void)releaseAssetSetsWithAssetType:(unint64_t)type;
- (void)switchToNewAssetsForAssetType:(unint64_t)type;
- (void)wait;
@end

@implementation SFEntitledAssetManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sCleanupQueue = dispatch_get_global_queue(9, 0);

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1906 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1906, &__block_literal_global_1907);
  }

  v3 = sharedInstance_sharedManager_1908;

  return v3;
}

uint64_t __40__SFEntitledAssetManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedManager_1908 = objc_alloc_init(SFEntitledAssetManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)_scheduleCleanupTimer
{
  dispatch_assert_queue_V2(self->_queue);
  [(SFEntitledAssetManager *)self _cancelCleanupTimer];
  if (!self->_cleanupTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, sCleanupQueue);
    cleanupTimer = self->_cleanupTimer;
    self->_cleanupTimer = v3;

    objc_initWeak(&location, self);
    v5 = self->_cleanupTimer;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__SFEntitledAssetManager__scheduleCleanupTimer__block_invoke;
    v8[3] = &unk_1E797C5C8;
    objc_copyWeak(&v9, &location);
    dispatch_source_set_event_handler(v5, v8);
    v6 = self->_cleanupTimer;
    v7 = dispatch_time(0, 1000000000 * self->_cleanupDuration);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_cleanupTimer);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_cancelCleanupTimer
{
  dispatch_assert_queue_V2(self->_queue);
  cleanupTimer = self->_cleanupTimer;
  if (cleanupTimer)
  {
    dispatch_source_cancel(cleanupTimer);
    v4 = self->_cleanupTimer;
    self->_cleanupTimer = 0;
  }
}

+ (id)offlineDictationLocales
{
  if (offlineDictationLocales_onceToken != -1)
  {
    dispatch_once(&offlineDictationLocales_onceToken, &__block_literal_global_457);
  }

  v3 = offlineDictationLocales_offlineDictationLocales;

  return v3;
}

void __49__SFEntitledAssetManager_offlineDictationLocales__block_invoke()
{
  v3 = [MEMORY[0x1E69DEF08] sharedManager];
  v0 = [v3 queryAllSupportedKeys:@"com.apple.dictation.offline"];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&offlineDictationLocales_offlineDictationLocales, v2);
}

+ (id)onDeviceDictationLocales
{
  if (onDeviceDictationLocales_onceToken != -1)
  {
    dispatch_once(&onDeviceDictationLocales_onceToken, &__block_literal_global_460);
  }

  v3 = onDeviceDictationLocales_onDeviceDictationLocales;

  return v3;
}

void __50__SFEntitledAssetManager_onDeviceDictationLocales__block_invoke()
{
  v3 = [MEMORY[0x1E69DEF08] sharedManager];
  v0 = [v3 queryAllSupportedKeys:@"com.apple.dictation.ondevice"];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&onDeviceDictationLocales_onDeviceDictationLocales, v2);
}

- (void)_cleanupTimerFired
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SFLogFramework;
  if (self->_cleanupDuration == 18000)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[SFEntitledAssetManager _cleanupTimerFired]";
    }
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SFEntitledAssetManager _cleanupTimerFired]";
    _os_log_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Cleanup timer fired.", &v5, 0xCu);
  }

  [(SFEntitledAssetManager *)self releaseAssetSets];
  v4 = *MEMORY[0x1E69E9840];
}

void __47__SFEntitledAssetManager__scheduleCleanupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupTimerFired];
}

- (id)_assetSetsWithAssetType:(unint64_t)type
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [SFEntitledAssetManager assetSetNameForAssetType:type];
  v6 = [(NSMutableDictionary *)self->_assetSetDict objectForKey:v5];
  allValues = [v6 allValues];

  return allValues;
}

- (id)_assetsWithAssetType:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(SFEntitledAssetManager *)self _assetSetsWithAssetType:type];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        assets = [*(*(&v15 + 1) + 8 * i) assets];
        allValues = [assets allValues];
        [array addObjectsFromArray:allValues];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)_assetSetWithName:(id)name usage:(id)usage
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  usageCopy = usage;
  dispatch_assert_queue_V2(self->_queue);
  if ([nameCopy length])
  {
    dictionary = [(NSMutableDictionary *)self->_assetSetDict objectForKey:nameCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_assetSetDict setObject:dictionary forKey:nameCopy];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [dictionary allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        if ([v14 isEqualToDictionary:usageCopy])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v15 = [dictionary objectForKey:v14];

      if (v15)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_12:
    }

    mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
    v15 = [mEMORY[0x1E69DEEF0] retrieveAssetSet:nameCopy usages:usageCopy];

    if (v15)
    {
      [dictionary setObject:v15 forKey:usageCopy];
      [(SFEntitledAssetManager *)self _scheduleCleanupTimer];
    }

    else
    {
      v18 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v26 = "[SFEntitledAssetManager _assetSetWithName:usage:]";
        v27 = 2112;
        v28 = nameCopy;
        v29 = 2112;
        v30 = usageCopy;
        _os_log_error_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_ERROR, "%s No valid asset set resolved from name %@, usage %@, returning nil.", buf, 0x20u);
      }

      v15 = 0;
    }

LABEL_22:
  }

  else
  {
    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SFEntitledAssetManager _assetSetWithName:usage:]";
      _os_log_error_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_ERROR, "%s Empty asset name.", buf, 0xCu);
    }

    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_assetWithAssetConfig:(id)config regionId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [SFEntitledAssetManager assetSetUsageForConfig:configCopy regionId:idCopy];
  if (v8)
  {
    v9 = +[SFEntitledAssetManager assetSetNameForAssetType:](SFEntitledAssetManager, "assetSetNameForAssetType:", [configCopy assetType]);
    v10 = +[SFEntitledAssetManager assetNameForAssetType:](SFEntitledAssetManager, "assetNameForAssetType:", [configCopy assetType]);
    v11 = [(SFEntitledAssetManager *)self _assetSetWithName:v9 usage:v8];
    v12 = [v11 assetNamed:v10];
    if (!v12)
    {
      v13 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315906;
        v23 = "[SFEntitledAssetManager _assetWithAssetConfig:regionId:]";
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v8;
        _os_log_error_impl(&dword_1AC5BC000, v13, OS_LOG_TYPE_ERROR, "%s No asset found with name: %@, asset set: %@, usage: %@", &v22, 0x2Au);
      }
    }
  }

  else
  {
    v14 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v17 = v14;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v19 = @"Unknown";
      }

      else
      {
        v19 = off_1E797BC18[assetType - 1];
      }

      v20 = v19;
      language = [configCopy language];
      v22 = 136315907;
      v23 = "[SFEntitledAssetManager _assetWithAssetConfig:regionId:]";
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = language;
      v28 = 2113;
      v29 = idCopy;
      _os_log_error_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_ERROR, "%s No valid usage resolved from asset type: %@, language: %@, regionId: %{private}@", &v22, 0x2Au);
    }

    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)installedAudioSamplingConfigWithAssetName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"assetName cannot be nil."];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1841;
  v16 = __Block_byref_object_dispose__1842;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFEntitledAssetManager_installedAudioSamplingConfigWithAssetName___block_invoke;
  block[3] = &unk_1E797C5A0;
  block[4] = self;
  v10 = nameCopy;
  v11 = &v12;
  v6 = nameCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __68__SFEntitledAssetManager_installedAudioSamplingConfigWithAssetName___block_invoke(uint64_t a1)
{
  v8 = [SFEntitledAssetManager assetSetNameForAssetType:3];
  v2 = [*(a1 + 32) _assetSetWithName:v8 usage:MEMORY[0x1E695E0F8]];
  v3 = [v2 assetNamed:*(a1 + 40)];
  v4 = [v3 location];
  v5 = [v4 path];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_installedAssetWithConfig:(id)config regionId:(id)id shouldSubscribe:(BOOL)subscribe subscriberId:(id)subscriberId expiration:(id)expiration
{
  subscribeCopy = subscribe;
  v58 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  subscriberIdCopy = subscriberId;
  expirationCopy = expiration;
  v16 = [SFEntitledAssetManager _overridePathForConfig:configCopy];
  if (v16)
  {
    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = off_1E797BC18[assetType - 1];
      }

      v28 = v20;
      language = [configCopy language];
      *v55 = 136315906;
      *&v55[4] = "[SFEntitledAssetManager _installedAssetWithConfig:regionId:shouldSubscribe:subscriberId:expiration:]";
      *&v55[12] = 2112;
      *&v55[14] = v28;
      *&v55[22] = 2112;
      v56 = language;
      LOWORD(v57) = 2112;
      *(&v57 + 2) = v16;
      _os_log_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_DEFAULT, "%s Using override path for asset type: %@, language: %@, at path: %@", v55, 0x2Au);
    }

    v27 = v16;
  }

  else
  {
    language2 = [configCopy language];

    if (language2)
    {
      if (subscriberIdCopy && subscribeCopy)
      {
        subscriptionQueue = self->_subscriptionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __101__SFEntitledAssetManager__installedAssetWithConfig_regionId_shouldSubscribe_subscriberId_expiration___block_invoke;
        block[3] = &unk_1E797C550;
        v45 = configCopy;
        v46 = idCopy;
        v47 = subscriberIdCopy;
        v48 = expirationCopy;
        dispatch_async(subscriptionQueue, block);
      }

      *v55 = 0;
      *&v55[8] = v55;
      *&v55[16] = 0x3032000000;
      v56 = __Block_byref_object_copy__1841;
      *&v57 = __Block_byref_object_dispose__1842;
      *(&v57 + 1) = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3032000000;
      v41 = __Block_byref_object_copy__1841;
      v42 = __Block_byref_object_dispose__1842;
      v43 = 0;
      queue = self->_queue;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __101__SFEntitledAssetManager__installedAssetWithConfig_regionId_shouldSubscribe_subscriberId_expiration___block_invoke_2;
      v33[3] = &unk_1E797C578;
      v33[4] = self;
      v34 = configCopy;
      v35 = idCopy;
      v36 = v55;
      v37 = &v38;
      dispatch_sync(queue, v33);
      v24 = *(*&v55[8] + 40);
      if (v24)
      {
        v25 = SFLogFramework;
        if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v39[5];
          *buf = 136315650;
          v50 = "[SFEntitledAssetManager _installedAssetWithConfig:regionId:shouldSubscribe:subscriberId:expiration:]";
          v51 = 2112;
          v52 = v26;
          v53 = 2112;
          v54 = v24;
          _os_log_impl(&dword_1AC5BC000, v25, OS_LOG_TYPE_DEFAULT, "%s Found asset: %@, at path: %@", buf, 0x20u);
          v24 = *(*&v55[8] + 40);
        }
      }

      v27 = v24;

      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(v55, 8);
    }

    else
    {
      v32 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        *v55 = 136315138;
        *&v55[4] = "[SFEntitledAssetManager _installedAssetWithConfig:regionId:shouldSubscribe:subscriberId:expiration:]";
        _os_log_error_impl(&dword_1AC5BC000, v32, OS_LOG_TYPE_ERROR, "%s language cannot be nil.", v55, 0xCu);
      }

      v27 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

void __101__SFEntitledAssetManager__installedAssetWithConfig_regionId_shouldSubscribe_subscriberId_expiration___block_invoke_2(uint64_t a1)
{
  v9 = [*(a1 + 32) _assetWithAssetConfig:*(a1 + 40) regionId:*(a1 + 48)];
  v2 = [v9 location];
  v3 = [v2 path];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v9 _assetId];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)installedAssetWithConfig:(id)config
{
  configCopy = config;
  regionId = [configCopy regionId];
  v6 = [(SFEntitledAssetManager *)self installedAssetWithConfig:configCopy regionId:regionId];

  return v6;
}

- (void)installationStateForAssetConfig:(id)config subscriberId:(id)id completionHandler:(id)handler
{
  configCopy = config;
  idCopy = id;
  handlerCopy = handler;
  if (handlerCopy)
  {
    regionId = [configCopy regionId];
    v12 = [SFEntitledAssetManager isSubscribedToAssetWithConfig:configCopy regionId:regionId subscriberId:idCopy];

    if (v12)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__SFEntitledAssetManager_installationStateForAssetConfig_subscriberId_completionHandler___block_invoke;
      block[3] = &unk_1E797C528;
      block[4] = self;
      v15 = configCopy;
      v16 = handlerCopy;
      dispatch_async(queue, block);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 2);
    }
  }
}

void __89__SFEntitledAssetManager_installationStateForAssetConfig_subscriberId_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v3 regionId];
  v5 = [v2 _assetWithAssetConfig:v3 regionId:v4];

  (*(a1[6] + 16))();
}

- (void)downloadStatusWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v88 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  subscriberIdCopy = subscriberId;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__1841;
  v74 = __Block_byref_object_dispose__1842;
  v75 = [(SFEntitledAssetManager *)self installedAssetWithConfig:configCopy regionId:idCopy];
  if (!v71[5])
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__1841;
    v68 = __Block_byref_object_dispose__1842;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__1841;
    v62 = __Block_byref_object_dispose__1842;
    v63 = 0;
    v47 = [SFEntitledAssetManager subscriptionNameForConfig:configCopy regionId:idCopy];
    if (![v47 length])
    {
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = off_1E797BC18[assetType - 1];
      }

      v18 = v20;
      v32 = MEMORY[0x1E696AEC0];
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v33 localizedStringForKey:@"No valid subscription name resolved from asset type: %@ value:language: %@ table:{regionId: %@", &stru_1F2139F58, @"Localizable"}];
      language = [configCopy language];
      idCopy = [v32 localizedStringWithFormat:v34, v18, language, idCopy];
      v37 = v65[5];
      v65[5] = idCopy;

      v38 = SFLogFramework;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        language2 = [configCopy language];
        *buf = 136315907;
        v81 = "[SFEntitledAssetManager downloadStatusWithConfig:regionId:subscriberId:progressHandler:completionHandler:]";
        v82 = 2112;
        v83 = v18;
        v84 = 2112;
        v85 = language2;
        v86 = 2113;
        v87 = idCopy;
        _os_log_error_impl(&dword_1AC5BC000, v38, OS_LOG_TYPE_ERROR, "%s No valid subscription name resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);
      }

      if (completionHandlerCopy)
      {
        v39 = MEMORY[0x1E696ABC0];
        v40 = v65[5];
        v78 = *MEMORY[0x1E696A578];
        v79 = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v42 = [v39 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v41];
        v43 = v59[5];
        v59[5] = v42;

        completionHandlerCopy[2](completionHandlerCopy, 0, v59[5]);
      }

      goto LABEL_17;
    }

    if ([SFEntitledAssetManager isSubscribedToAssetWithConfig:configCopy regionId:idCopy subscriberId:subscriberIdCopy])
    {
      mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __107__SFEntitledAssetManager_downloadStatusWithConfig_regionId_subscriberId_progressHandler_completionHandler___block_invoke;
      v56[3] = &unk_1E797C4D8;
      v57 = handlerCopy;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __107__SFEntitledAssetManager_downloadStatusWithConfig_regionId_subscriberId_progressHandler_completionHandler___block_invoke_2;
      v48[3] = &unk_1E797C500;
      v52 = completionHandlerCopy;
      v48[4] = self;
      v49 = configCopy;
      v50 = idCopy;
      v53 = &v70;
      v54 = &v64;
      v51 = v47;
      v55 = &v58;
      [mEMORY[0x1E69DEEF0] updateAssetsForSubscriber:subscriberIdCopy subscriptionName:v51 policies:0 queue:0 progress:v56 completion:v48];

      v18 = v57;
LABEL_17:

      goto LABEL_18;
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"Cannot check the download status value:%@ is not subscribed to %@" table:{&stru_1F2139F58, @"Localizable"}];
    v24 = [v21 localizedStringWithFormat:v23, subscriberIdCopy, v47];
    v25 = v65[5];
    v65[5] = v24;

    v26 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v46 = v65[5];
      *buf = 136315394;
      v81 = "[SFEntitledAssetManager downloadStatusWithConfig:regionId:subscriberId:progressHandler:completionHandler:]";
      v82 = 2112;
      v83 = v46;
      _os_log_error_impl(&dword_1AC5BC000, v26, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      if (!completionHandlerCopy)
      {
        goto LABEL_18;
      }
    }

    else if (!completionHandlerCopy)
    {
LABEL_18:

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(&v64, 8);

      goto LABEL_19;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = v65[5];
    v76 = *MEMORY[0x1E696A578];
    v77 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v30 = [v27 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v29];
    v31 = v59[5];
    v59[5] = v30;

    completionHandlerCopy[2](completionHandlerCopy, 0, v59[5]);
    goto LABEL_18;
  }

  if (completionHandlerCopy)
  {
    (completionHandlerCopy[2])(completionHandlerCopy);
  }

LABEL_19:
  _Block_object_dispose(&v70, 8);

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t __107__SFEntitledAssetManager_downloadStatusWithConfig_regionId_subscriberId_progressHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a2 == 3);
  }

  return result;
}

uint64_t __107__SFEntitledAssetManager_downloadStatusWithConfig_regionId_subscriberId_progressHandler_completionHandler___block_invoke_2(uint64_t result)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(result + 64))
  {
    v1 = result;
    [*(result + 32) refreshAssetSetWithConfig:*(v1 + 40) regionId:*(v1 + 48)];
    v2 = [*(v1 + 32) installedAssetWithConfig:*(v1 + 40) regionId:*(v1 + 48)];
    v3 = *(*(v1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (!*(*(*(v1 + 72) + 8) + 40))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"%@ asset not found after attempted download." value:&stru_1F2139F58 table:@"Localizable"];
      v8 = [v5 localizedStringWithFormat:v7, *(v1 + 56)];
      v9 = *(*(v1 + 80) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*(*(v1 + 80) + 8) + 40);
        *buf = 136315394;
        v25 = "[SFEntitledAssetManager downloadStatusWithConfig:regionId:subscriberId:progressHandler:completionHandler:]_block_invoke_2";
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = *(*(*(v1 + 80) + 8) + 40);
      v22 = *MEMORY[0x1E696A578];
      v23 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = [v12 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v14];
      v16 = *(*(v1 + 88) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = *(*(*(v1 + 72) + 8) + 40);
    }

    v19 = *(*(*(v1 + 88) + 8) + 40);
    result = (*(*(v1 + 64) + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_installationStatusForLanguagesWithAssetType:(unint64_t)type includeDetailedStatus:(BOOL)status subscriberId:(id)id
{
  statusCopy = status;
  v57 = *MEMORY[0x1E69E9840];
  idCopy = id;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v43 = [SFEntitledAssetManager assetNameForAssetType:type];
  v7 = [SFEntitledAssetManager assetSetNameForAssetType:type];
  v41 = [SFEntitledAssetManager assetUsageTypeForAssetType:type];
  v8 = [SFEntitledAssetManager assetSetUsagesForAssetType:type];
  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v40 = [mEMORY[0x1E69DEEF0] retrieveAssetSet:v7 usages:MEMORY[0x1E695E0F8]];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v8;
  v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v47)
  {
    if (idCopy)
    {
      v10 = statusCopy;
    }

    else
    {
      v10 = 0;
    }

    v39 = v10;
    v46 = *v49;
    v11 = 0x1E696A000uLL;
    typeCopy = type;
    do
    {
      v12 = 0;
      do
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v13];
        v16 = [[SFEntitledAssetConfig alloc] initWithLanguage:v15 assetType:type];
        v17 = [SFEntitledAssetManager _overridePathForConfig:v16];
        if (v17)
        {
          v18 = [SFEntitledAssetManager _overrideStatusForConfig:v16];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = [*(v11 + 3776) stringWithFormat:@"%@:", @"Version"];
          }

          v22 = v20;

          v29 = [*(v11 + 3776) stringWithFormat:@"%@ ModelInfo=%@: AssetId=OVERRIDE:", v22, v17];
LABEL_22:
          [dictionary setObject:v29 forKey:v15];

          goto LABEL_23;
        }

        v54 = v41;
        v55 = v13;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v22 = [v40 assetNamed:v43 withUsage:v21];

        if (!v22)
        {
          v23 = +[SFEntitledAssetManager onDeviceDictationLocales];
          v24 = [v23 containsObject:v13];
          v25 = @"0";
          if (v24)
          {
            v25 = @"1";
          }

          v26 = v25;

          v27 = objc_alloc(MEMORY[0x1E69DEED0]);
          v52 = @"PreferOverServer";
          v53 = v26;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

          v22 = [v27 initWithName:v43 location:0 metadata:v28];
        }

        if ([v22 _assetMetadataAvailable])
        {
          v29 = [SFEntitledAssetManager statusForAsset:v22];
          type = typeCopy;
          if ((v39 & (SFEntitledAssetStatusIsInstalled(v29) ^ 1)) == 1 && [SFEntitledAssetManager isSubscribedToAssetWithConfig:v16 regionId:0 subscriberId:idCopy])
          {
            v37 = [SFEntitledAssetManager subscriptionNameForConfig:v16 regionId:0];
            mEMORY[0x1E69DEEF0]2 = [MEMORY[0x1E69DEEF0] sharedManager];
            v31 = [mEMORY[0x1E69DEEF0]2 downloadStatusForSubscriber:idCopy subscriptionName:v37];

            v32 = [SFEntitledAssetManager installationStateForDownloadStatus:v31];
            v36 = [v29 stringByReplacingOccurrencesOfString:@"Not Installing" withString:v32];

            type = typeCopy;
            v29 = v36;
          }

          goto LABEL_22;
        }

        type = typeCopy;
LABEL_23:

        objc_autoreleasePoolPop(v14);
        ++v12;
        v11 = 0x1E696A000;
      }

      while (v47 != v12);
      v33 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
      v47 = v33;
    }

    while (v33);
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)installedLanguagesForAssetType:(unint64_t)type
{
  v37 = *MEMORY[0x1E69E9840];
  v29 = [SFEntitledAssetManager assetNameForAssetType:?];
  v4 = [SFEntitledAssetManager assetSetNameForAssetType:type];
  v28 = [SFEntitledAssetManager assetUsageTypeForAssetType:type];
  v5 = [SFEntitledAssetManager assetSetUsagesForAssetType:type];
  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v25 = v4;
  v7 = [mEMORY[0x1E69DEEF0] retrieveAssetSet:v4 usages:MEMORY[0x1E695E0F8]];

  typeCopy = type;
  v8 = [SFEntitledAssetManager isOverrideSupportedForAssetType:type];
  v9 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v14];
        if (v8)
        {
          v16 = [[SFEntitledAssetConfig alloc] initWithLanguage:v15 assetType:typeCopy];
          v17 = [SFEntitledAssetManager _overridePathForConfig:v16];
          if (v17)
          {
            v18 = v17;
            [v9 addObject:v15];

            goto LABEL_12;
          }
        }

        v34 = v28;
        v35 = v14;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v16 = [v7 assetNamed:v29 withUsage:v19];

        location = [(SFEntitledAssetConfig *)v16 location];
        path = [location path];

        if (path)
        {
          [v9 addObject:v15];
        }

LABEL_12:
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v11);
  }

  v22 = [v9 copy];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)modelQualityTypeStatusStringWithConfig:(id)config
{
  configCopy = config;
  v5 = [SFEntitledAssetManager _overrideModelQualityForConfig:configCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1841;
    v20 = __Block_byref_object_dispose__1842;
    v21 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SFEntitledAssetManager_modelQualityTypeStatusStringWithConfig___block_invoke;
    block[3] = &unk_1E797C5A0;
    v15 = &v16;
    block[4] = self;
    v14 = configCopy;
    dispatch_sync(queue, block);
    v9 = v17[5];
    if (v9)
    {
      _preferOverServer = [v9 _preferOverServer];
      v11 = @"LQ";
      if (_preferOverServer)
      {
        v11 = @"HQ";
      }

      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  return v7;
}

uint64_t __65__SFEntitledAssetManager_modelQualityTypeStatusStringWithConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetWithAssetConfig:*(a1 + 40) regionId:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)assetVersionForConfig:(id)config
{
  configCopy = config;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1841;
  v16 = __Block_byref_object_dispose__1842;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SFEntitledAssetManager_assetVersionForConfig___block_invoke;
  block[3] = &unk_1E797C5A0;
  v11 = &v12;
  block[4] = self;
  v6 = configCopy;
  v10 = v6;
  dispatch_sync(queue, block);
  _assetVersion = [v13[5] _assetVersion];

  _Block_object_dispose(&v12, 8);

  return _assetVersion;
}

void __48__SFEntitledAssetManager_assetVersionForConfig___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v3 regionId];
  v4 = [v2 _assetWithAssetConfig:v3 regionId:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)assetStatusForConfig:(id)config
{
  configCopy = config;
  v5 = [SFEntitledAssetManager _overridePathForConfig:configCopy];
  if (v5 && ([SFEntitledAssetManager _overrideStatusForConfig:configCopy], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ModelInfo=%@: AssetId=OVERRIDE:", v6, v5];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1841;
    v18 = __Block_byref_object_dispose__1842;
    v19 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SFEntitledAssetManager_assetStatusForConfig___block_invoke;
    block[3] = &unk_1E797C5A0;
    v13 = &v14;
    block[4] = self;
    v12 = configCopy;
    dispatch_sync(queue, block);
    if (v15[5])
    {
      v8 = [SFEntitledAssetManager statusForAsset:?];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  return v8;
}

uint64_t __47__SFEntitledAssetManager_assetStatusForConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetWithAssetConfig:*(a1 + 40) regionId:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)switchToNewAssetsForAssetType:(unint64_t)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SFEntitledAssetManager_switchToNewAssetsForAssetType___block_invoke;
  v4[3] = &unk_1E797C3E8;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(queue, v4);
}

void __56__SFEntitledAssetManager_switchToNewAssetsForAssetType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    if ((v3 - 1) > 6)
    {
      v5 = @"Unknown";
    }

    else
    {
      v5 = off_1E797BC18[v3 - 1];
    }

    v6 = v5;
    v9 = 136315394;
    v10 = "[SFEntitledAssetManager switchToNewAssetsForAssetType:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Switching to new %@ assets.", &v9, 0x16u);
  }

  v7 = [SFEntitledAssetManager assetSetNameForAssetType:*(a1 + 40)];
  [*(a1 + 32) _refreshAssetSetsWithName:v7];
  [*(a1 + 32) _scheduleCleanupTimer];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_refreshAssetSetsWithName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v6 = [(NSMutableDictionary *)self->_assetSetDict objectForKey:nameCopy];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
        v13 = [mEMORY[0x1E69DEEF0] retrieveAssetSet:nameCopy usages:v11];

        [dictionary setObject:v13 forKey:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  [(NSMutableDictionary *)selfCopy->_assetSetDict setObject:dictionary forKey:nameCopy];
  v14 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SFEntitledAssetManager _refreshAssetSetsWithName:]";
    v23 = 2112;
    v24 = nameCopy;
    _os_log_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Refreshed all %@ asset sets.", buf, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)refreshAssetSetWithConfig:(id)config regionId:(id)id
{
  v31 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  v8 = [SFEntitledAssetManager assetSetUsageForConfig:configCopy regionId:idCopy];
  if (v8)
  {
    v9 = +[SFEntitledAssetManager assetSetNameForAssetType:](SFEntitledAssetManager, "assetSetNameForAssetType:", [configCopy assetType]);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SFEntitledAssetManager_refreshAssetSetWithConfig_regionId___block_invoke;
    block[3] = &unk_1E797C460;
    block[4] = self;
    v11 = v9;
    v21 = v11;
    v12 = v8;
    v22 = v12;
    dispatch_sync(queue, block);
    v13 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "[SFEntitledAssetManager refreshAssetSetWithConfig:regionId:]";
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1AC5BC000, v13, OS_LOG_TYPE_DEFAULT, "%s Refreshed %@ asset set with usage: %@", buf, 0x20u);
    }
  }

  else
  {
    v14 = SFLogFramework;
    if (!os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = v14;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v17 = @"Unknown";
    }

    else
    {
      v17 = off_1E797BC18[assetType - 1];
    }

    v18 = v17;
    language = [configCopy language];
    *buf = 136315907;
    v24 = "[SFEntitledAssetManager refreshAssetSetWithConfig:regionId:]";
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = language;
    v29 = 2113;
    v30 = idCopy;
    _os_log_error_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_ERROR, "%s No valid usage resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);
  }

LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
}

void __61__SFEntitledAssetManager_refreshAssetSetWithConfig_regionId___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v2 = [v5 objectForKey:*(a1 + 48)];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DEEF0] sharedManager];
    v4 = [v3 retrieveAssetSet:*(a1 + 40) usages:*(a1 + 48)];

    [v5 setObject:v4 forKey:*(a1 + 48)];
    [*(a1 + 32) _scheduleCleanupTimer];
  }
}

- (void)registerAssetDelegate:(id)delegate assetType:(unint64_t)type
{
  v30 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[SFEntitledAssetManager registerAssetDelegate:assetType:]";
    _os_log_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v8 = [SFEntitledAssetManager assetSetNameForAssetType:type];
  if ([v8 length])
  {
    objc_initWeak(buf, delegateCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke;
    aBlock[3] = &unk_1E797C410;
    objc_copyWeak(&v27, buf);
    v9 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_2;
    v22[3] = &unk_1E797C488;
    objc_copyWeak(v24, &location);
    v10 = v8;
    v23 = v10;
    v24[1] = type;
    v11 = _Block_copy(v22);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_513;
    block[3] = &unk_1E797C4B0;
    block[4] = self;
    v19 = v10;
    v13 = v9;
    v20 = v13;
    v14 = v11;
    v21 = v14;
    dispatch_sync(queue, block);
    v14[2](v14);
    v15 = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_514;
    v17[3] = &unk_1E797CAB8;
    v17[4] = self;
    dispatch_sync(v15, v17);

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x1E69E9840];
}

BOOL __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained assetStatus:v3];
  }

  return v5 != 0;
}

void __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_3;
    block[3] = &unk_1E797CB08;
    v14 = *(a1 + 32);
    v5 = v3;
    v15 = v5;
    dispatch_sync(v4, block);
    v6 = [v5 installationStatusForLanguagesWithAssetType:*(a1 + 48)];
    v7 = v3[1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_510;
    v9[3] = &unk_1E797C460;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = v6;
    v8 = v6;
    dispatch_sync(v7, v9);
  }
}

void __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_513(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 56);
    v4 = [MEMORY[0x1E695DF70] array];
    [v3 setObject:v4 forKey:*(a1 + 40)];
  }

  v5 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v6 = _Block_copy(*(a1 + 48));
  [v5 addObject:v6];

  v7 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  if (!v7)
  {
    v8 = [MEMORY[0x1E69DEEF0] sharedManager];
    v7 = [v8 observeAssetSet:*(a1 + 40) queue:0 handler:*(a1 + 56)];

    if (v7)
    {
      [*(*(a1 + 32) + 48) setObject:v7 forKey:*(a1 + 40)];
    }

    else
    {
      v9 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a1 + 40);
        v12 = 136315394;
        v13 = "[SFEntitledAssetManager registerAssetDelegate:assetType:]_block_invoke";
        v14 = 2112;
        v15 = v11;
        _os_log_fault_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_FAULT, "%s Failed to initialize %@ asset set observer.", &v12, 0x16u);
      }

      v7 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_514(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SFEntitledAssetManager registerAssetDelegate:assetType:]_block_invoke";
    _os_log_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_DEFAULT, "%s Cancelling the cleanup timer after registering an asset delegate.", &v5, 0xCu);
  }

  result = [*(a1 + 32) _cancelCleanupTimer];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SFEntitledAssetManager registerAssetDelegate:assetType:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_DEFAULT, "%s New UAF update for %@ assets.", &v6, 0x16u);
  }

  result = [*(a1 + 40) _refreshAssetSetsWithName:*(a1 + 32)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_510(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_2_511;
  v13 = &unk_1E797C438;
  v14 = *(a1 + 48);
  v4 = v3;
  v15 = v4;
  [v2 enumerateObjectsUsingBlock:&v10];
  [v2 removeObjectsInArray:{v4, v10, v11, v12, v13}];
  if (![v2 count])
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 136315394;
      v17 = "[SFEntitledAssetManager registerAssetDelegate:assetType:]_block_invoke";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Removed update handler for %@ assets.", buf, 0x16u);
    }

    v7 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
    v8 = [MEMORY[0x1E69DEEF0] sharedManager];
    [v8 removeObserver:v7];

    [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __58__SFEntitledAssetManager_registerAssetDelegate_assetType___block_invoke_2_511(uint64_t a1, void *a2)
{
  aBlock = a2;
  if (((*(aBlock + 2))(aBlock, *(a1 + 32)) & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = _Block_copy(aBlock);
    [v3 addObject:v4];
  }
}

- (void)releaseAssetSetsWithAssetType:(unint64_t)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SFEntitledAssetManager_releaseAssetSetsWithAssetType___block_invoke;
  v4[3] = &unk_1E797C3E8;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(queue, v4);
}

void __56__SFEntitledAssetManager_releaseAssetSetsWithAssetType___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = v2;
    if ((v3 - 1) > 6)
    {
      v5 = @"Unknown";
    }

    else
    {
      v5 = off_1E797BC18[v3 - 1];
    }

    v6 = v5;
    v9 = 136315394;
    v10 = "[SFEntitledAssetManager releaseAssetSetsWithAssetType:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Releasing %@ assets sets.", &v9, 0x16u);
  }

  v7 = [SFEntitledAssetManager assetNameForAssetType:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObjectForKey:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)releaseAssetSets
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFEntitledAssetManager_releaseAssetSets__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __42__SFEntitledAssetManager_releaseAssetSets__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SFEntitledAssetManager releaseAssetSets]_block_invoke";
    _os_log_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_DEFAULT, "%s Releasing all asset sets.", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  result = [*(a1 + 32) _cancelCleanupTimer];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)wait
{
  dispatch_sync(self->_queue, &__block_literal_global_433);
  subscriptionQueue = self->_subscriptionQueue;

  dispatch_sync(subscriptionQueue, &__block_literal_global_435);
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFEntitledAssetManager_dealloc__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = SFEntitledAssetManager;
  [(SFEntitledAssetManager *)&v4 dealloc];
}

- (SFEntitledAssetManager)initWithAssetSetDict:(id)dict cleanupDuration:(unint64_t)duration
{
  dictCopy = dict;
  v23.receiver = self;
  v23.super_class = SFEntitledAssetManager;
  v7 = [(SFEntitledAssetManager *)&v23 init];
  if (v7)
  {
    v8 = dispatch_queue_create("SFEntitledAssetManager Queue", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = dispatch_queue_create("SFEntitledAssetManager Subscription Queue", 0);
    subscriptionQueue = v7->_subscriptionQueue;
    v7->_subscriptionQueue = v10;

    durationCopy = 18000;
    if (duration)
    {
      durationCopy = duration;
    }

    v7->_cleanupDuration = durationCopy;
    if (dictCopy)
    {
      dictionary = dictCopy;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    assetSetDict = v7->_assetSetDict;
    v7->_assetSetDict = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    observers = v7->_observers;
    v7->_observers = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    delegates = v7->_delegates;
    v7->_delegates = dictionary3;

    v19 = v7->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SFEntitledAssetManager_initWithAssetSetDict_cleanupDuration___block_invoke;
    block[3] = &unk_1E797CAB8;
    v22 = v7;
    dispatch_sync(v19, block);
  }

  return v7;
}

+ (id)_overrideModelQualityForConfig:(id)config
{
  v3 = MEMORY[0x1E695E000];
  configCopy = config;
  standardUserDefaults = [v3 standardUserDefaults];
  assetType = [configCopy assetType];
  if ((assetType - 1) > 6)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E797BC18[assetType - 1];
  }

  v8 = v7;
  v9 = MEMORY[0x1E696AEC0];
  language = [configCopy language];

  v11 = [v9 stringWithFormat:@"%@/%@/%@", @"overrideAssetStatus", v8, language];

  v12 = [standardUserDefaults objectForKey:v11];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"overrideAssetStatus", v8];

    v15 = [standardUserDefaults objectForKey:v14];
    if (!v15)
    {
      firstObject2 = 0;
      v11 = v14;
      goto LABEL_18;
    }

    v13 = v15;
    v11 = v14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v13 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstObject2 = [v13 firstObject];
      }

      else
      {
        firstObject2 = 0;
      }
    }

    else
    {
      firstObject2 = 0;
    }
  }

LABEL_18:

  return firstObject2;
}

+ (id)_overrideStatusForConfig:(id)config
{
  v32 = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (!+[SFEntitledAssetManager isOverrideSupportedForAssetType:](SFEntitledAssetManager, "isOverrideSupportedForAssetType:", [configCopy assetType]))
  {
    v7 = 0;
    goto LABEL_25;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  assetType = [configCopy assetType];
  if ((assetType - 1) > 6)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E797BC18[assetType - 1];
  }

  v8 = v6;
  v9 = MEMORY[0x1E696AEC0];
  language = [configCopy language];
  v11 = [v9 stringWithFormat:@"%@/%@/%@", @"overrideAssetStatus", v8, language];

  v12 = [standardUserDefaults objectForKey:v11];
  if (v12)
  {
    v13 = v12;
LABEL_10:
    v16 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@:", @"Version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 appendFormat:@" %@:", v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v11;
        v26 = v8;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v17 = v13;
        v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v28;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v27 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v16 appendFormat:@" %@:", v22];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v19);
        }

        v8 = v26;
        v11 = v25;
      }
    }

    v7 = [v16 copy];

    goto LABEL_24;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"overrideAssetStatus", v8];

  v15 = [standardUserDefaults objectForKey:v14];
  if (v15)
  {
    v13 = v15;
    v11 = v14;
    goto LABEL_10;
  }

  v7 = 0;
  v11 = v14;
LABEL_24:

LABEL_25:
  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_overridePathForConfig:(id)config
{
  configCopy = config;
  if (!+[SFEntitledAssetManager isOverrideSupportedForAssetType:](SFEntitledAssetManager, "isOverrideSupportedForAssetType:", [configCopy assetType]))
  {
    v7 = 0;
    goto LABEL_15;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  assetType = [configCopy assetType];
  if ((assetType - 1) > 6)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E797BC18[assetType - 1];
  }

  v8 = v6;
  v9 = MEMORY[0x1E696AEC0];
  language = [configCopy language];
  v11 = [v9 stringWithFormat:@"%@/%@/%@", @"overrideAssetPath", v8, language];

  v12 = [standardUserDefaults objectForKey:v11];
  if (v12)
  {
    v13 = v12;
    v14 = v11;
LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    v7 = v16;

    goto LABEL_14;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"overrideAssetPath", v8];

  v15 = [standardUserDefaults objectForKey:v14];
  if (v15)
  {
    v13 = v15;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_14:

LABEL_15:

  return v7;
}

+ (BOOL)isOverrideSupportedForAssetType:(unint64_t)type
{
  if (SFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
  }

  if (SFIsInternalInstall_isInternal)
  {
    v4 = 0xC8u >> type;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if (type > 7)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

+ (id)_assetSetSubscriptionWithConfig:(id)config regionId:(id)id expiration:(id)expiration
{
  v34 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  expirationCopy = expiration;
  v10 = [SFEntitledAssetManager subscriptionNameForConfig:configCopy regionId:idCopy];
  if ([v10 length])
  {
    v11 = +[SFEntitledAssetManager assetSetNameForAssetType:](SFEntitledAssetManager, "assetSetNameForAssetType:", [configCopy assetType]);
    v12 = [SFEntitledAssetManager assetSetUsageForConfig:configCopy regionId:idCopy];
    v13 = objc_alloc(MEMORY[0x1E69DEEF8]);
    v24 = v11;
    v25 = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 initWithName:v10 assetSets:v14 usageAliases:0 expires:expirationCopy];
  }

  else
  {
    v16 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v19 = v16;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v21 = @"Unknown";
      }

      else
      {
        v21 = off_1E797BC18[assetType - 1];
      }

      v22 = v21;
      language = [configCopy language];
      *buf = 136315907;
      v27 = "+[SFEntitledAssetManager _assetSetSubscriptionWithConfig:regionId:expiration:]";
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = language;
      v32 = 2113;
      v33 = idCopy;
      _os_log_error_impl(&dword_1AC5BC000, v19, OS_LOG_TYPE_ERROR, "%s No valid subscription name resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_assetSetSubscriptionsWithAssetType:(unint64_t)type exceptLanguages:(id)languages subscriberId:(id)id
{
  v39 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  idCopy = id;
  typeCopy = type;
  v8 = [SFEntitledAssetManager subscriptionNamePrefixForAssetType:type];
  if (![v8 length])
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    goto LABEL_23;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v28 = idCopy;
  v10 = [mEMORY[0x1E69DEEF0] subscriptionsForSubscriber:idCopy];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v11)
  {
    firstObject = 0;
    goto LABEL_22;
  }

  v12 = v11;
  firstObject = 0;
  v32 = *v35;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v35 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v34 + 1) + 8 * i);
      name = [v15 name];
      v17 = [name hasPrefix:v8];

      if (!v17)
      {
        if (typeCopy != 3)
        {
          continue;
        }

        name2 = [v15 name];
        v23 = [name2 hasPrefix:@"hammer."];

        if (!v23)
        {
          continue;
        }

        name3 = [v15 name];
        v20 = [name3 substringFromIndex:{objc_msgSend(@"hammer.", "length")}];
        v24 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v20];

        firstObject = v24;
        goto LABEL_13;
      }

      name4 = [v15 name];
      v19 = [name4 substringFromIndex:{objc_msgSend(v8, "length")}];
      v20 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v19];

      if (typeCopy == 5)
      {
        name3 = [v20 componentsSeparatedByString:@"."];
        firstObject = [name3 firstObject];
LABEL_13:

        goto LABEL_15;
      }

      firstObject = v20;
LABEL_15:
      if (([languagesCopy containsObject:firstObject] & 1) == 0)
      {
        name5 = [v15 name];
        [dictionary setObject:firstObject forKey:name5];
      }
    }

    v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v12);
LABEL_22:

  idCopy = v28;
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (id)assetPathFromStatus:(id)status
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [status componentsSeparatedByString:{@":", 0}];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasPrefix:@" ModelInfo="])
        {
          v9 = [v8 stringByReplacingOccurrencesOfString:@" ModelInfo=" withString:&stru_1F2139F58];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable completionHandler:(id)handler
{
  purgeableCopy = purgeable;
  v18[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  configCopy = config;
  v9 = +[SFEntitledAssetManager assetNameForAssetType:](SFEntitledAssetManager, "assetNameForAssetType:", [configCopy assetType]);
  v10 = +[SFEntitledAssetManager assetSetNameForAssetType:](SFEntitledAssetManager, "assetSetNameForAssetType:", [configCopy assetType]);
  v11 = +[SFEntitledAssetManager assetUsageTypeForAssetType:](SFEntitledAssetManager, "assetUsageTypeForAssetType:", [configCopy assetType]);
  language = [configCopy language];

  v13 = [SFUtilities stringByReplacingHyphensWithUnderscores:language];

  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v17 = v11;
  v18[0] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [mEMORY[0x1E69DEEF0] disableCacheDelete:!purgeableCopy forAssetNamed:v9 assetSet:v10 usages:v15 queue:0 completion:handlerCopy];

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)statusForAsset:(id)asset
{
  assetCopy = asset;
  location = [assetCopy location];
  path = [location path];
  v6 = @"Version";
  if (!path)
  {
    v6 = @"Not Installing";
  }

  v7 = v6;

  v8 = [SFEntitledAssetManager modelAttributesForAsset:assetCopy];
  location2 = [assetCopy location];
  path2 = [location2 path];
  if (path2)
  {
    v11 = MEMORY[0x1E696AEC0];
    location3 = [assetCopy location];
    path3 = [location3 path];
    v14 = [v11 stringWithFormat:@"ModelInfo=%@: ", path3];
  }

  else
  {
    v14 = &stru_1F2139F58;
  }

  v15 = MEMORY[0x1E696AEC0];
  _assetId = [assetCopy _assetId];
  v17 = [v15 stringWithFormat:@"AssetId=%@", _assetId];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@: %@%@:", v7, v8, v14, v17];

  return v18;
}

+ (id)supportedLanguagesForAssetType:(unint64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [SFEntitledAssetManager assetSetUsagesForAssetType:type];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SFUtilities stringByReplacingUnderscoresWithHyphens:*(*(&v13 + 1) + 8 * i)];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)modelTasksForLocaleWithInstallationStatus:(id)status
{
  v21 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [statusCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [statusCopy objectForKey:v9];
        v11 = [SFEntitledAssetManager assetPathFromStatus:v10];
        if (v11)
        {
          [SFModelTaskSet taskSetWithAssetPath:v11];
        }

        else
        {
          +[SFModelTaskSet set];
        }
        v12 = ;
        [dictionary setObject:v12 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (BOOL)isSubscribedToAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId
{
  v48 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  subscriberIdCopy = subscriberId;
  if (!subscriberIdCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subscriberId cannot be nil."];
  }

  v10 = [SFEntitledAssetManager subscriptionNameForConfig:configCopy regionId:idCopy];
  if ([v10 length])
  {
    v11 = +[SFEntitledAssetManager assetSetNameForAssetType:](SFEntitledAssetManager, "assetSetNameForAssetType:", [configCopy assetType]);
    v12 = [SFEntitledAssetManager assetSetUsageForConfig:configCopy regionId:idCopy];
    mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
    v14 = [mEMORY[0x1E69DEEF0] subscriptionsForSubscriber:subscriberIdCopy];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v32 = subscriberIdCopy;
      v33 = idCopy;
      v34 = configCopy;
      v17 = *v36;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          name = [v19 name];
          v21 = [name isEqualToString:v10];

          if (v21)
          {
            assetSets = [v19 assetSets];
            v23 = [assetSets objectForKey:v11];

            LOBYTE(assetSets) = [v23 isEqualToDictionary:v12];
            if (assetSets)
            {
              LOBYTE(v16) = 1;
              goto LABEL_18;
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_18:
      idCopy = v33;
      configCopy = v34;
      subscriberIdCopy = v32;
    }
  }

  else
  {
    v24 = SFLogFramework;
    LOBYTE(v16) = 0;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v27 = @"Unknown";
      }

      else
      {
        v27 = off_1E797BC18[assetType - 1];
      }

      v28 = v27;
      language = [configCopy language];
      *buf = 136315907;
      v41 = "+[SFEntitledAssetManager isSubscribedToAssetWithConfig:regionId:subscriberId:]";
      v42 = 2112;
      v43 = v28;
      v44 = 2112;
      v45 = language;
      v46 = 2113;
      v47 = idCopy;
      _os_log_impl(&dword_1AC5BC000, v25, OS_LOG_TYPE_DEFAULT, "%s No valid subscription name resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);

      LOBYTE(v16) = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)unsubscribeFromAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  subscriberIdCopy = subscriberId;
  handlerCopy = handler;
  if (!subscriberIdCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subscriberId cannot be nil."];
  }

  if ([SFEntitledAssetManager isSubscribedToAssetWithConfig:configCopy regionId:idCopy subscriberId:subscriberIdCopy])
  {
    v13 = [SFEntitledAssetManager subscriptionNameForConfig:configCopy regionId:idCopy];
    if ([v13 length])
    {
      v14 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
      if ([configCopy assetType] == 3)
      {
        v15 = [SFEntitledAssetConfig alloc];
        language = [configCopy language];
        v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:language assetType:1];

        v18 = [SFEntitledAssetManager subscriptionNameForConfig:v17 regionId:0];
        [v14 addObject:v18];
      }

      mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __97__SFEntitledAssetManager_unsubscribeFromAssetWithConfig_regionId_subscriberId_completionHandler___block_invoke;
      v28[3] = &unk_1E797C3C0;
      v29 = subscriberIdCopy;
      v30 = v14;
      v31 = handlerCopy;
      v20 = v14;
      [mEMORY[0x1E69DEEF0] unsubscribe:v29 subscriptionNames:v20 queue:0 completion:v28];
    }

    else
    {
      v21 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        assetType = [configCopy assetType];
        if ((assetType - 1) > 6)
        {
          v24 = @"Unknown";
        }

        else
        {
          v24 = off_1E797BC18[assetType - 1];
        }

        v25 = v24;
        language2 = [configCopy language];
        *buf = 136315907;
        v33 = "+[SFEntitledAssetManager unsubscribeFromAssetWithConfig:regionId:subscriberId:completionHandler:]";
        v34 = 2112;
        v35 = v25;
        v36 = 2112;
        v37 = language2;
        v38 = 2113;
        v39 = idCopy;
        _os_log_impl(&dword_1AC5BC000, v22, OS_LOG_TYPE_DEFAULT, "%s No valid subscription name resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0);
      }
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __97__SFEntitledAssetManager_unsubscribeFromAssetWithConfig_regionId_subscriberId_completionHandler___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SFLogFramework;
  if (v3)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v11 = 136315906;
      v12 = "+[SFEntitledAssetManager unsubscribeFromAssetWithConfig:regionId:subscriberId:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s Failed to unsubscribe %@ from %@, error: %@", &v11, 0x2Au);
    }
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v11 = 136315650;
    v12 = "+[SFEntitledAssetManager unsubscribeFromAssetWithConfig:regionId:subscriberId:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Unsubscribed %@ from %@", &v11, 0x20u);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)unsubscribeFromAssetsWithAssetType:(unint64_t)type exceptLanguages:(id)languages subscriberId:(id)id
{
  languagesCopy = languages;
  idCopy = id;
  if (!idCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subscriberId cannot be nil."];
  }

  v9 = [SFEntitledAssetManager _assetSetSubscriptionsWithAssetType:type exceptLanguages:languagesCopy subscriberId:idCopy];
  allKeys = [v9 allKeys];
  v11 = [allKeys sortedArrayUsingSelector:sel_compare_];

  if ([v11 count])
  {
    mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __90__SFEntitledAssetManager_unsubscribeFromAssetsWithAssetType_exceptLanguages_subscriberId___block_invoke;
    v20 = &unk_1E797CAE0;
    v21 = idCopy;
    v22 = v11;
    [mEMORY[0x1E69DEEF0] unsubscribe:v21 subscriptionNames:v22 queue:0 completion:&v17];
  }

  v13 = MEMORY[0x1E695DFD8];
  allValues = [v9 allValues];
  v15 = [v13 setWithArray:allValues];

  return v15;
}

void __90__SFEntitledAssetManager_unsubscribeFromAssetsWithAssetType_exceptLanguages_subscriberId___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SFLogFramework;
  if (v3)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 136315906;
      v11 = "+[SFEntitledAssetManager unsubscribeFromAssetsWithAssetType:exceptLanguages:subscriberId:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s Failed to unsubscribe %@ from %@, error: %@", &v10, 0x2Au);
    }
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = "+[SFEntitledAssetManager unsubscribeFromAssetsWithAssetType:exceptLanguages:subscriberId:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Unsubscribed %@ from %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)subscribeToAssetWithConfig:(id)config regionId:(id)id subscriberId:(id)subscriberId expiration:(id)expiration completionHandler:(id)handler
{
  v69[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  subscriberIdCopy = subscriberId;
  expirationCopy = expiration;
  handlerCopy = handler;
  if (!subscriberIdCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", @"subscriberId cannot be nil."}];
  }

  if ([configCopy assetType] == 7)
  {
    language = [configCopy language];
    v18 = [language isEqualToString:@"cmn"];

    if (v18)
    {
      v19 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"zh" assetType:7];
      [self unsubscribeFromAssetWithConfig:v19 regionId:0 subscriberId:subscriberIdCopy];
    }
  }

  if ([configCopy assetType] == 7 && !+[SFUtilities isGeneralASRSupportedOnDevice](SFUtilities, "isGeneralASRSupportedOnDevice"))
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"GeneralASR is not supported on this platform." value:&stru_1F2139F58 table:@"Localizable"];
    v25 = [v34 localizedStringWithFormat:v36];

    v37 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v61 = "+[SFEntitledAssetManager subscribeToAssetWithConfig:regionId:subscriberId:expiration:completionHandler:]";
      v62 = 2112;
      v63 = v25;
      _os_log_error_impl(&dword_1AC5BC000, v37, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      if (!handlerCopy)
      {
        goto LABEL_32;
      }
    }

    else if (!handlerCopy)
    {
LABEL_32:

      goto LABEL_33;
    }

    v38 = MEMORY[0x1E696ABC0];
    v68 = *MEMORY[0x1E696A578];
    v69[0] = v25;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v32 = [v38 errorWithDomain:@"SFSpeechErrorDomain" code:4 userInfo:v39];

    handlerCopy[2](handlerCopy, v32);
LABEL_31:

    goto LABEL_32;
  }

  if (expirationCopy || ![SFEntitledAssetManager isSubscribedToAssetWithConfig:configCopy regionId:idCopy subscriberId:subscriberIdCopy])
  {
    v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:subscriberIdCopy];

    if (v20)
    {
      v21 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v61 = "+[SFEntitledAssetManager subscribeToAssetWithConfig:regionId:subscriberId:expiration:completionHandler:]";
        v62 = 2112;
        v63 = subscriberIdCopy;
        _os_log_error_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_ERROR, "%s Subscriber identifier (%@) unexpectedly matches the profile of a UUID, forcing the prospective subscription to expire in 24 hours.", buf, 0x16u);
      }

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v24 = [currentCalendar dateByAddingUnit:16 value:1 toDate:date options:0];

      expirationCopy = v24;
    }

    v25 = [SFEntitledAssetManager _assetSetSubscriptionWithConfig:configCopy regionId:idCopy expiration:expirationCopy];
    if (v25)
    {
      v26 = [MEMORY[0x1E695DF70] arrayWithObject:v25];
      if ([configCopy assetType] == 3)
      {
        v27 = [SFEntitledAssetConfig alloc];
        language2 = [configCopy language];
        v29 = [(SFEntitledAssetConfig *)v27 initWithLanguage:language2 assetType:1];

        v30 = [SFEntitledAssetManager _assetSetSubscriptionWithConfig:v29 regionId:0 expiration:expirationCopy];
        [v26 addObject:v30];
      }

      mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __104__SFEntitledAssetManager_subscribeToAssetWithConfig_regionId_subscriberId_expiration_completionHandler___block_invoke;
      v54[3] = &unk_1E797C3C0;
      v55 = subscriberIdCopy;
      v56 = v26;
      v57 = handlerCopy;
      v32 = v26;
      [mEMORY[0x1E69DEEF0] subscribe:v55 subscriptions:v32 queue:0 completion:v54];

      v33 = v55;
      goto LABEL_30;
    }

    assetType = [configCopy assetType];
    v53 = idCopy;
    if ((assetType - 1) > 6)
    {
      v41 = @"Unknown";
    }

    else
    {
      v41 = off_1E797BC18[assetType - 1];
    }

    v32 = v41;
    v42 = MEMORY[0x1E696AEC0];
    v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"No valid subscription resolved from asset type: %@ value:language: %@ table:{regionId: %@", &stru_1F2139F58, @"Localizable"}];
    language3 = [configCopy language];
    v33 = [v42 localizedStringWithFormat:v44, v32, language3, v53];

    v46 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v51 = v46;
      language4 = [configCopy language];
      *buf = 136315907;
      v61 = "+[SFEntitledAssetManager subscribeToAssetWithConfig:regionId:subscriberId:expiration:completionHandler:]";
      v62 = 2112;
      v63 = v32;
      v64 = 2112;
      v65 = language4;
      v66 = 2113;
      v67 = v53;
      _os_log_error_impl(&dword_1AC5BC000, v51, OS_LOG_TYPE_ERROR, "%s No valid subscription resolved from asset type: %@, language: %@, regionId: %{private}@", buf, 0x2Au);

      if (!handlerCopy)
      {
        goto LABEL_29;
      }
    }

    else if (!handlerCopy)
    {
LABEL_29:
      idCopy = v53;
LABEL_30:

      goto LABEL_31;
    }

    v47 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A578];
    v59 = v33;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v49 = [v47 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v48];

    handlerCopy[2](handlerCopy, v49);
    goto LABEL_29;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_33:

  v50 = *MEMORY[0x1E69E9840];
}

void __104__SFEntitledAssetManager_subscribeToAssetWithConfig_regionId_subscriberId_expiration_completionHandler___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SFLogFramework;
  if (v3)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v6 = a1[5];
      v11 = 136315906;
      v12 = "+[SFEntitledAssetManager subscribeToAssetWithConfig:regionId:subscriberId:expiration:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s Failed to subscribe %@ to %@, error: %@", &v11, 0x2Au);
    }
  }

  else if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v11 = 136315650;
    v12 = "+[SFEntitledAssetManager subscribeToAssetWithConfig:regionId:subscriberId:expiration:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Subscribed %@ to %@", &v11, 0x20u);
  }

  v9 = a1[6];
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)_assetTypeForSubscriptionName:(id)name
{
  v17[6] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v16[0] = @"hammer.";
  v16[1] = @"assistant.";
  v17[0] = &unk_1F214A0F8;
  v17[1] = &unk_1F214A110;
  v16[2] = @"geolmregion.";
  v16[3] = @"geolm.";
  v17[2] = &unk_1F214A128;
  v17[3] = &unk_1F214A140;
  v16[4] = @"language.identification";
  v16[5] = @"transcription.";
  v17[4] = &unk_1F214A158;
  v17[5] = &unk_1F214A170;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SFEntitledAssetManager__assetTypeForSubscriptionName___block_invoke;
  v9[3] = &unk_1E797C398;
  v5 = nameCopy;
  v10 = v5;
  v11 = &v12;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __56__SFEntitledAssetManager__assetTypeForSubscriptionName___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) hasPrefix:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 unsignedIntegerValue];
    *a4 = 1;
  }
}

+ (id)subscriptionsForSubscriberId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (!idCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"subscriberId cannot be nil."];
  }

  array = [MEMORY[0x1E695DF70] array];
  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v22 = idCopy;
  v5 = [mEMORY[0x1E69DEEF0] subscriptionsForSubscriber:idCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        name = [v10 name];
        v12 = [SFEntitledAssetManager _assetTypeForSubscriptionName:name];
        if (v12)
        {
          v13 = v12;
          if (v12 == 6)
          {
            v14 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];
            [array addObject:v14];
          }

          else
          {
            v14 = [SFEntitledAssetManager assetSetNameForAssetType:v12];
            assetSets = [v10 assetSets];
            v16 = [assetSets objectForKey:v14];

            v17 = [v16 objectForKey:@"asr.language"];
            v18 = [v16 objectForKey:@"asr.geo"];
            if (v17)
            {
              v19 = [[SFEntitledAssetConfig alloc] initWithAssetType:v13 language:v17 regionId:v18];
              [array addObject:v19];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)assetSetUsagesForAssetType:(unint64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  if (type - 1 > 6)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E797BC18[type - 1];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__SFEntitledAssetManager_assetSetUsagesForAssetType___block_invoke;
  aBlock[3] = &unk_1E797C370;
  typeCopy = type;
  v7 = v5;
  v19 = v7;
  v8 = v6;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  if (type == 7)
  {
    if (!+[SFUtilities isGeneralASRSupportedOnDevice])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (type != 3)
  {
LABEL_10:
    v9[2](v9);
    goto LABEL_11;
  }

  v10 = _AFPreferencesLanguageCode();
  v11 = [SFUtilities stringByReplacingHyphensWithUnderscores:v10];

  if (v11)
  {
    [v8 addObject:v11];
  }

  v12 = +[SFEntitledAssetManager offlineDictationLocales];
  [v8 addObjectsFromArray:v12];

  v13 = +[SFEntitledAssetManager onDeviceDictationLocales];
  [v8 addObjectsFromArray:v13];

LABEL_11:
  v14 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "+[SFEntitledAssetManager assetSetUsagesForAssetType:]";
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEFAULT, "%s All usages for %@ assets: %@", buf, 0x20u);
  }

  allObjects = [v8 allObjects];

  v16 = *MEMORY[0x1E69E9840];

  return allObjects;
}

void __53__SFEntitledAssetManager_assetSetUsagesForAssetType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [SFEntitledAssetManager assetSetNameForAssetType:*(a1 + 48)];
  v3 = [SFEntitledAssetManager assetUsageTypeForAssetType:*(a1 + 48)];
  v4 = [MEMORY[0x1E69DEEF0] sharedManager];
  v5 = [v4 knownUsagesForAssetSet:v2 usageType:v3];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 136315650;
    v13 = "+[SFEntitledAssetManager assetSetUsagesForAssetType:]_block_invoke";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Adding known usages for %@ assets: %@", &v12, 0x20u);
  }

  [*(a1 + 40) addObjectsFromArray:v8];

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)modelAttributesForAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy _preferOverServer])
  {
    if ([assetCopy _supportsContinuousListening])
    {
      v4 = [@"HQ" stringByAppendingFormat:@": %@", @"CL"];
    }

    else
    {
      v4 = @"HQ";
    }

    if ([assetCopy _supportsOnDeviceSearch])
    {
      v5 = [(__CFString *)v4 stringByAppendingFormat:@": %@", @"DS"];

      v4 = v5;
    }

    if ([assetCopy _supportsAutoPunctuation])
    {
      v6 = [(__CFString *)v4 stringByAppendingFormat:@": %@", @"AP"];

      v4 = v6;
    }

    if ([assetCopy _supportsEmojiRecognition])
    {
      v7 = [(__CFString *)v4 stringByAppendingFormat:@": %@", @"ER"];

      v4 = v7;
    }

    if ([assetCopy _supportsVoiceCommands])
    {
      v8 = [(__CFString *)v4 stringByAppendingFormat:@": %@", @"VC"];

      v4 = v8;
    }
  }

  else
  {
    v4 = @"LQ";
  }

  return v4;
}

+ (id)jsonFilenameForAssetType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = type - 1;
  if (type - 1 < 7 && ((0x7Du >> v3) & 1) != 0)
  {
    result = off_1E797C6F0[v3];
  }

  else
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (v3 > 6)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E797BC18[v3];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "+[SFEntitledAssetManager jsonFilenameForAssetType:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported asset type: %@", &v10, 0x16u);
    }

    result = &stru_1F2139F58;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)assetSetNameForAssetType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = type - 1;
  if (type - 1 < 7 && ((0x7Du >> v3) & 1) != 0)
  {
    result = off_1E797C6B8[v3];
  }

  else
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (v3 > 6)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E797BC18[v3];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "+[SFEntitledAssetManager assetSetNameForAssetType:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported asset type: %@", &v10, 0x16u);
    }

    result = &stru_1F2139F58;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)assetUsageTypeForAssetType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = type - 1;
  if (type - 1 < 7 && ((0x7Du >> v3) & 1) != 0)
  {
    result = off_1E797C680[v3];
  }

  else
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (v3 > 6)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E797BC18[v3];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "+[SFEntitledAssetManager assetUsageTypeForAssetType:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported asset type: %@", &v10, 0x16u);
    }

    result = &stru_1F2139F58;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)assetSetUsageForConfig:(id)config regionId:(id)id
{
  v39[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  language = [configCopy language];

  if (language)
  {
    v8 = +[SFEntitledAssetManager assetUsageTypeForAssetType:](SFEntitledAssetManager, "assetUsageTypeForAssetType:", [configCopy assetType]);
    if (![v8 length])
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    language2 = [configCopy language];
    v10 = [SFUtilities stringByReplacingHyphensWithUnderscores:language2];

    assetType = [configCopy assetType];
    if (assetType <= 7)
    {
      if (((1 << assetType) & 0x9A) != 0)
      {
        v38 = v8;
        v39[0] = v10;
        v12 = MEMORY[0x1E695DF20];
        v13 = v39;
        v14 = &v38;
LABEL_6:
        v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
LABEL_21:

        goto LABEL_22;
      }

      if (assetType == 5)
      {
        if (idCopy)
        {
          v21 = [v10 stringByAppendingString:{@".", v8}];
          v22 = [v21 stringByAppendingString:idCopy];
          v31 = v22;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];

          goto LABEL_21;
        }

        v23 = SFLogFramework;
        if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
        {
          v18 = v23;
          assetType2 = [configCopy assetType];
          if ((assetType2 - 1) > 6)
          {
            v29 = @"Unknown";
          }

          else
          {
            v29 = off_1E797BC18[assetType2 - 1];
          }

          v26 = v29;
          *buf = 136315394;
          v33 = "+[SFEntitledAssetManager assetSetUsageForConfig:regionId:]";
          v34 = 2112;
          v35 = v26;
          v27 = "%s regionId cannot be nil for asset type: %@";
          goto LABEL_32;
        }

LABEL_20:
        v15 = 0;
        goto LABEL_21;
      }

      if (assetType == 6)
      {
        v36 = v8;
        v37 = @"1";
        v12 = MEMORY[0x1E695DF20];
        v13 = &v37;
        v14 = &v36;
        goto LABEL_6;
      }
    }

    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      assetType3 = [configCopy assetType];
      if ((assetType3 - 1) > 6)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = off_1E797BC18[assetType3 - 1];
      }

      v26 = v20;
      *buf = 136315394;
      v33 = "+[SFEntitledAssetManager assetSetUsageForConfig:regionId:]";
      v34 = 2112;
      v35 = v26;
      v27 = "%s Unsupported asset type: %@";
LABEL_32:
      _os_log_error_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v16 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v33 = "+[SFEntitledAssetManager assetSetUsageForConfig:regionId:]";
    _os_log_error_impl(&dword_1AC5BC000, v16, OS_LOG_TYPE_ERROR, "%s language cannot be nil.", buf, 0xCu);
  }

  v15 = 0;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)assetNameForAssetType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = type - 1;
  if (type - 1 < 7 && ((0x7Du >> v3) & 1) != 0)
  {
    result = off_1E797C648[v3];
  }

  else
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (v3 > 6)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E797BC18[v3];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "+[SFEntitledAssetManager assetNameForAssetType:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported asset type: %@", &v10, 0x16u);
    }

    result = &stru_1F2139F58;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)subscriptionNamePrefixForAssetType:(unint64_t)type
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = type - 1;
  if (type - 1 < 7 && ((0x7Du >> v3) & 1) != 0)
  {
    result = off_1E797C610[v3];
  }

  else
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      if (v3 > 6)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E797BC18[v3];
      }

      v9 = v8;
      v10 = 136315394;
      v11 = "+[SFEntitledAssetManager subscriptionNamePrefixForAssetType:]";
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unsupported asset type: %@", &v10, 0x16u);
    }

    result = &stru_1F2139F58;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)subscriptionNameForConfig:(id)config regionId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  configCopy = config;
  idCopy = id;
  v7 = +[SFEntitledAssetManager subscriptionNamePrefixForAssetType:](SFEntitledAssetManager, "subscriptionNamePrefixForAssetType:", [configCopy assetType]);
  if ([v7 length])
  {
    assetType = [configCopy assetType];
    if (assetType != 5)
    {
      if (assetType == 6)
      {
        v9 = v7;
        goto LABEL_16;
      }

      language = [configCopy language];
      v11 = [SFUtilities stringByReplacingHyphensWithUnderscores:language];

      v9 = [v7 stringByAppendingString:v11];
      goto LABEL_8;
    }

    if (idCopy)
    {
      language2 = [configCopy language];
      v11 = [SFUtilities stringByReplacingHyphensWithUnderscores:language2];

      v12 = [v7 stringByAppendingString:v11];
      v13 = [v12 stringByAppendingString:@"."];
      v9 = [v13 stringByAppendingString:idCopy];

LABEL_8:
      goto LABEL_16;
    }

    assetType2 = [configCopy assetType];
    if ((assetType2 - 1) > 6)
    {
      v16 = @"Unknown";
    }

    else
    {
      v16 = off_1E797BC18[assetType2 - 1];
    }

    v17 = v16;
    v18 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "+[SFEntitledAssetManager subscriptionNameForConfig:regionId:]";
      v23 = 2112;
      v24 = v17;
      _os_log_error_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_ERROR, "%s regionId cannot be nil for asset type: %@", &v21, 0x16u);
    }
  }

  v9 = &stru_1F2139F58;
LABEL_16:

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)installationStateForDownloadStatus:(unint64_t)status
{
  v11 = *MEMORY[0x1E69E9840];
  if (status - 1 >= 5)
  {
    v5 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "+[SFEntitledAssetManager installationStateForDownloadStatus:]";
      v9 = 2048;
      statusCopy = status;
      _os_log_error_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_ERROR, "%s Unsupported download status: %lu", &v7, 0x16u);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_1E797C5E8[status - 1];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end