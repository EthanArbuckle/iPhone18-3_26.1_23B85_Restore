@interface ATXUpdatePredictionsManager
+ (BOOL)shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason:(unint64_t)reason;
+ (id)homeScreenPageConfigs;
+ (id)sharedInstance;
+ (void)homeScreenPageConfigs;
- (ATXUpdatePredictionsManager)init;
- (ATXUpdatePredictionsManager)initWithATXServer:(id)server actionProducer:(id)producer updateSources:(id)sources updatePredictionsLogger:(id)logger;
- (id)_stringArrayFromBoxedConsumerSubTypeArray:(id)array;
- (id)disabledConsumerSubTypes;
- (id)disabledConsumerSubTypesWithHomeScreenPageConfigs:(id)configs;
- (id)documentConsumerSubTypesToUpdateWithRefreshRate:(double)rate disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes;
- (void)logPredictionUpdatesForBoxedAppConsumerSubTypes:(id)types actionConsumerSubTypes:(id)subTypes reason:(unint64_t)reason;
- (void)processAppDirectoryFeedback;
- (void)processAppDirectoryFeedbackNoSync;
- (void)processHomeScreenFeedback;
- (void)processHomeScreenFeedbackNoSync;
- (void)processLockscreenFeedback;
- (void)processLockscreenFeedbackNoSync;
- (void)processSpotlightActionFeedback;
- (void)processSpotlightActionFeedbackNoSync;
- (void)processSpotlightAppFeedback;
- (void)processSpotlightAppFeedbackNoSync;
- (void)refreshActionPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache;
- (void)refreshAppPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache;
- (void)updateBehavioralPredictionsIfOlderThan:(double)than reason:(unint64_t)reason;
@end

@implementation ATXUpdatePredictionsManager

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_42 != -1)
  {
    +[ATXUpdatePredictionsManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_54;

  return v3;
}

void __45__ATXUpdatePredictionsManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_54;
  sharedInstance__pasExprOnceResult_54 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXUpdatePredictionsManager)init
{
  if ([MEMORY[0x277CEB480] shouldComputeActions])
  {
    v3 = objc_opt_new();
  }

  else
  {
    v3 = 0;
  }

  v4 = +[ATXServer sharedInstance];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXUpdatePredictionsManager *)self initWithATXServer:v4 actionProducer:v3 updateSources:v5 updatePredictionsLogger:v6];

  return v7;
}

- (ATXUpdatePredictionsManager)initWithATXServer:(id)server actionProducer:(id)producer updateSources:(id)sources updatePredictionsLogger:(id)logger
{
  serverCopy = server;
  producerCopy = producer;
  sourcesCopy = sources;
  loggerCopy = logger;
  v24.receiver = self;
  v24.super_class = ATXUpdatePredictionsManager;
  v15 = [(ATXUpdatePredictionsManager *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_atxServer, server);
    objc_storeStrong(&v16->_actionProducer, producer);
    objc_storeStrong(&v16->_updateSources, sources);
    objc_storeStrong(&v16->_updatePredictionsLogger, logger);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    uTF8String = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(uTF8String, v20);
    queue = v16->_queue;
    v16->_queue = v21;
  }

  return v16;
}

- (void)updateBehavioralPredictionsIfOlderThan:(double)than reason:(unint64_t)reason
{
  sel_getName(a2);
  v7 = os_transaction_create();
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ATXUpdatePredictionsManager_updateBehavioralPredictionsIfOlderThan_reason___block_invoke;
  v10[3] = &unk_27859A060;
  v11 = v7;
  reasonCopy = reason;
  thanCopy = than;
  v10[4] = self;
  v9 = v7;
  dispatch_sync(queue, v10);
}

void __77__ATXUpdatePredictionsManager_updateBehavioralPredictionsIfOlderThan_reason___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason:*(a1 + 48)];
  v4 = [*(a1 + 32) disabledConsumerSubTypes];
  v5 = [*(a1 + 32) appConsumerSubTypesToUpdateWithRefreshRate:v4 disabledConsumerSubTypes:v3 shouldOverrideRefreshRateForDisabledConsumerSubTypes:*(a1 + 56)];
  v6 = [*(a1 + 32) actionConsumerSubTypesToUpdateWithRefreshRate:v4 disabledConsumerSubTypes:v3 shouldOverrideRefreshRateForDisabledConsumerSubTypes:*(a1 + 56)];
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [*(a1 + 32) _stringArrayFromBoxedConsumerSubTypeArray:v5];
    *buf = 138543874;
    v45 = v10;
    v46 = 2080;
    v47 = "[ATXUpdatePredictionsManager updateBehavioralPredictionsIfOlderThan:reason:]_block_invoke";
    v48 = 2114;
    v49 = v11;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - %s: app consumerSubTypes to refresh: %{public}@", buf, 0x20u);
  }

  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [*(a1 + 32) _stringArrayFromBoxedConsumerSubTypeArray:v6];
    *buf = 138543874;
    v45 = v15;
    v46 = 2080;
    v47 = "[ATXUpdatePredictionsManager updateBehavioralPredictionsIfOlderThan:reason:]_block_invoke";
    v48 = 2114;
    v49 = v16;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - %s: action consumerSubTypes to refresh: %{public}@", buf, 0x20u);
  }

  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v17 = objc_autoreleasePoolPush();
    [*(a1 + 32) processLockscreenFeedbackNoSync];
    objc_autoreleasePoolPop(v17);
    v18 = objc_autoreleasePoolPush();
    [*(a1 + 32) processHomeScreenFeedbackNoSync];
    objc_autoreleasePoolPop(v18);
    v19 = objc_autoreleasePoolPush();
    [*(a1 + 32) processSpotlightAppFeedbackNoSync];
    objc_autoreleasePoolPop(v19);
    v20 = objc_autoreleasePoolPush();
    [*(a1 + 32) processAppDirectoryFeedbackNoSync];
    objc_autoreleasePoolPop(v20);
    if ([v6 count])
    {
      v21 = objc_autoreleasePoolPush();
      [*(a1 + 32) processSpotlightActionFeedbackNoSync];
      objc_autoreleasePoolPop(v21);
    }
  }

  v22 = objc_opt_new();
  if ([v5 count])
  {
    [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"Start app predictions"];
    v23 = objc_autoreleasePoolPush();
    [*(a1 + 32) refreshAppPredictionsWithConsumerSubTypes:v5 featureCache:v22];
    v24 = [*(a1 + 32) atxServer];
    [v24 updateBlendingLayerForAllConsumerSubTypes];

    objc_autoreleasePoolPop(v23);
    [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"End app predictions"];
  }

  if ([v6 count])
  {
    [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"Start action predictions"];
    v25 = objc_autoreleasePoolPush();
    [*(a1 + 32) refreshActionPredictionsWithConsumerSubTypes:v6 featureCache:v22];
    v26 = [*(a1 + 32) actionProducer];
    [v26 updateBlendingLayerForAllConsumerSubTypes];

    objc_autoreleasePoolPop(v25);
    [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"End action predictions"];
  }

  if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [*(a1 + 32) documentConsumerSubTypesToUpdateWithRefreshRate:v4 disabledConsumerSubTypes:v3 shouldOverrideRefreshRateForDisabledConsumerSubTypes:*(a1 + 56)];
    v29 = __atxlog_handle_document_predictor();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = objc_opt_class();
      NSStringFromClass(v31);
      v43 = v27;
      v33 = v32 = v4;
      v34 = [*(a1 + 32) _stringArrayFromBoxedConsumerSubTypeArray:v28];
      *buf = 138543874;
      v45 = v33;
      v46 = 2080;
      v47 = "[ATXUpdatePredictionsManager updateBehavioralPredictionsIfOlderThan:reason:]_block_invoke";
      v48 = 2114;
      v49 = v34;
      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ - %s: document consumerSubTypes to refresh: %{public}@", buf, 0x20u);

      v4 = v32;
      v27 = v43;
    }

    if ([v28 count])
    {
      [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"Start document predictions"];
      v35 = objc_autoreleasePoolPush();
      [*(a1 + 32) processSpotlightDocumentFeedbackNoSync];
      objc_autoreleasePoolPop(v35);
      v36 = objc_autoreleasePoolPush();
      [*(a1 + 32) refreshDocumentPredictionsWithConsumerSubTypes:v28 featureCache:v22];
      objc_autoreleasePoolPop(v36);
      [MEMORY[0x277CEBCF8] logCurrentMemoryFootprint:@"End document predictions"];
    }

    objc_autoreleasePoolPop(v27);
  }

  [*(a1 + 32) logPredictionUpdatesForBoxedAppConsumerSubTypes:v5 actionConsumerSubTypes:v6 reason:*(a1 + 48)];
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v37 = objc_autoreleasePoolPush();
    v38 = +[_ATXFeedback sharedInstance];
    [v38 unloadCachedHistograms];

    v39 = +[ATXActionFeedback sharedInstance];
    [v39 unloadCachedHistograms];

    objc_autoreleasePoolPop(v37);
  }

  v40 = *(a1 + 40);
  v41 = objc_opt_self();

  v42 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason:(unint64_t)reason
{
  if (reason >= 0x18)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXUpdatePredictionsManager *)reason shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason:v5];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason called with invalid ATXUpdatePredictionsReason value of %lu", reason}];
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x8Fu >> reason;
  }

  return v4 & 1;
}

- (id)documentConsumerSubTypesToUpdateWithRefreshRate:(double)rate disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes
{
  v5 = objc_opt_new();

  return v5;
}

- (id)disabledConsumerSubTypes
{
  homeScreenPageConfigs = [objc_opt_class() homeScreenPageConfigs];
  v4 = [(ATXUpdatePredictionsManager *)self disabledConsumerSubTypesWithHomeScreenPageConfigs:homeScreenPageConfigs];

  return v4;
}

- (id)disabledConsumerSubTypesWithHomeScreenPageConfigs:(id)configs
{
  v59 = *MEMORY[0x277D85DE8];
  configsCopy = configs;
  if (configsCopy)
  {
    selfCopy = self;
    v37 = [MEMORY[0x277CBEB58] setWithObjects:{&unk_283A57C98, &unk_283A57CB0, 0}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v31 = configsCopy;
    obj = configsCopy;
    v34 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v34)
    {
      v33 = *v47;
      v5 = *MEMORY[0x277CEBBA0];
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v46 + 1) + 8 * v6);
        if (![v37 count])
        {
          break;
        }

        v35 = v6;
        panels = [v7 panels];
        v9 = [panels count];

        if (v9)
        {
          [v37 removeObject:&unk_283A57CB0];
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        stacks = [v7 stacks];
        v10 = [stacks countByEnumeratingWithState:&v42 objects:v57 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v43;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(stacks);
              }

              v14 = *(*(&v42 + 1) + 8 * i);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              widgets = [v14 widgets];
              v16 = [widgets countByEnumeratingWithState:&v38 objects:v56 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v39;
                while (2)
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v39 != v18)
                    {
                      objc_enumerationMutation(widgets);
                    }

                    extensionBundleId = [*(*(&v38 + 1) + 8 * j) extensionBundleId];
                    v21 = [extensionBundleId isEqualToString:v5];

                    if (v21)
                    {
                      [v37 removeObject:&unk_283A57C98];
                      [v37 removeObject:&unk_283A57CB0];
                      goto LABEL_25;
                    }
                  }

                  v17 = [widgets countByEnumeratingWithState:&v38 objects:v56 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_25:
            }

            v11 = [stacks countByEnumeratingWithState:&v42 objects:v57 count:16];
          }

          while (v11);
        }

        v6 = v35 + 1;
        if (v35 + 1 == v34)
        {
          v34 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
          if (v34)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v22 = __atxlog_handle_default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      allObjects = [v37 allObjects];
      v26 = [(ATXUpdatePredictionsManager *)selfCopy _stringArrayFromBoxedConsumerSubTypeArray:allObjects];
      *buf = 138412802;
      v51 = v24;
      v52 = 2080;
      v53 = "[ATXUpdatePredictionsManager disabledConsumerSubTypesWithHomeScreenPageConfigs:]";
      v54 = 2112;
      v55 = v26;
      _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%@ - %s: %@", buf, 0x20u);
    }

    v27 = [v37 copy];
    configsCopy = v31;
  }

  else
  {
    v27 = [MEMORY[0x277CBEB98] set];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)homeScreenPageConfigs
{
  v2 = objc_opt_new();
  v9 = 0;
  v3 = [v2 loadHomeScreenAndTodayPageConfigurationsWithError:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[(ATXUpdatePredictionsManager *)v5];
    }
  }

  return v3;
}

- (void)refreshAppPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache
{
  cacheCopy = cache;
  typesCopy = types;
  atxServer = [(ATXUpdatePredictionsManager *)self atxServer];
  [atxServer updateAppPredictionsWithConsumerSubTypes:typesCopy featureCache:cacheCopy];
}

- (void)refreshActionPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache
{
  cacheCopy = cache;
  typesCopy = types;
  actionProducer = [(ATXUpdatePredictionsManager *)self actionProducer];
  [actionProducer invalidateCacheForConsumerSubTypes:typesCopy featureCache:cacheCopy];
}

- (void)processLockscreenFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATXUpdatePredictionsManager_processLockscreenFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processHomeScreenFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATXUpdatePredictionsManager_processHomeScreenFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processSpotlightAppFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATXUpdatePredictionsManager_processSpotlightAppFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processSpotlightActionFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ATXUpdatePredictionsManager_processSpotlightActionFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processAppDirectoryFeedback
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ATXUpdatePredictionsManager_processAppDirectoryFeedback__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)processLockscreenFeedbackNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  sel_getName(a2);
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  clientModelIdsWithFeedbackListeners = [v5 clientModelIdsWithFeedbackListeners];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  feedbackRootDirectory = [MEMORY[0x277CEBCB0] feedbackRootDirectory];
  v9 = [feedbackRootDirectory stringByAppendingPathComponent:@"blendingFeedback-ATXConsumerSubTypeActionLockScreen"];
  v10 = [v7 initFileURLWithPath:v9];

  v11 = [[ATXProactiveSuggestioniOSUIFeedbackQuery alloc] initWithClientModelIds:clientModelIdsWithFeedbackListeners consumerSubTypeToConsider:22 startDateForResults:0 bookmarkURLPath:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ATXUpdatePredictionsManager_processLockscreenFeedbackNoSync__block_invoke;
  v14[3] = &unk_2785A1E68;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATXUpdatePredictionsManager_processLockscreenFeedbackNoSync__block_invoke_2;
  v13[3] = &unk_27859EE08;
  v13[4] = self;
  v12 = v5;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v11 enumerateUIFeedbackResultsWithBlock:v14 completionBlock:v13];
}

void __62__ATXUpdatePredictionsManager_processLockscreenFeedbackNoSync__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - finished processing lockscreen feedback with error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processHomeScreenFeedbackNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  sel_getName(a2);
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  clientModelIdsWithFeedbackListeners = [v5 clientModelIdsWithFeedbackListeners];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  feedbackRootDirectory = [MEMORY[0x277CEBCB0] feedbackRootDirectory];
  v9 = [feedbackRootDirectory stringByAppendingPathComponent:@"blendingFeedback-ATXConsumerSubTypeSuggestionHomeScreen"];
  v10 = [v7 initFileURLWithPath:v9];

  v11 = [(ATXProactiveSuggestioniOSUIFeedbackQuery *)[ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery alloc] initWithClientModelIds:clientModelIdsWithFeedbackListeners consumerSubTypeToConsider:34 startDateForResults:0 bookmarkURLPath:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ATXUpdatePredictionsManager_processHomeScreenFeedbackNoSync__block_invoke;
  v14[3] = &unk_2785A1E68;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATXUpdatePredictionsManager_processHomeScreenFeedbackNoSync__block_invoke_2;
  v13[3] = &unk_27859EE08;
  v13[4] = self;
  v12 = v5;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v11 enumerateUIFeedbackResultsWithBlock:v14 completionBlock:v13];
}

void __62__ATXUpdatePredictionsManager_processHomeScreenFeedbackNoSync__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - finished processing homescreen feedback with error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processSpotlightAppFeedbackNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  sel_getName(a2);
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  clientModelIdsWithFeedbackListeners = [v5 clientModelIdsWithFeedbackListeners];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  feedbackRootDirectory = [MEMORY[0x277CEBCB0] feedbackRootDirectory];
  v9 = [feedbackRootDirectory stringByAppendingPathComponent:@"blendingFeedback-ATXConsumerSubTypeSpotlightUnknown"];
  v10 = [v7 initFileURLWithPath:v9];

  v11 = [[ATXProactiveSuggestioniOSUIFeedbackQuery alloc] initWithClientModelIds:clientModelIdsWithFeedbackListeners consumerSubTypeToConsider:9 startDateForResults:0 bookmarkURLPath:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ATXUpdatePredictionsManager_processSpotlightAppFeedbackNoSync__block_invoke;
  v14[3] = &unk_2785A1E68;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ATXUpdatePredictionsManager_processSpotlightAppFeedbackNoSync__block_invoke_2;
  v13[3] = &unk_27859EE08;
  v13[4] = self;
  v12 = v5;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v11 enumerateUIFeedbackResultsWithBlock:v14 completionBlock:v13];
}

void __64__ATXUpdatePredictionsManager_processSpotlightAppFeedbackNoSync__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - finished processing spotlight app feedback with error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processSpotlightActionFeedbackNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  sel_getName(a2);
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  clientModelIdsWithFeedbackListeners = [v5 clientModelIdsWithFeedbackListeners];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  feedbackRootDirectory = [MEMORY[0x277CEBCB0] feedbackRootDirectory];
  v9 = [feedbackRootDirectory stringByAppendingPathComponent:@"blendingFeedback-ATXConsumerSubTypeActionSpotlightUnknown"];
  v10 = [v7 initFileURLWithPath:v9];

  v11 = [(ATXProactiveSuggestioniOSUIFeedbackQuery *)[ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery alloc] initWithClientModelIds:clientModelIdsWithFeedbackListeners consumerSubTypeToConsider:21 startDateForResults:0 bookmarkURLPath:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__ATXUpdatePredictionsManager_processSpotlightActionFeedbackNoSync__block_invoke;
  v14[3] = &unk_2785A1E68;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ATXUpdatePredictionsManager_processSpotlightActionFeedbackNoSync__block_invoke_2;
  v13[3] = &unk_27859EE08;
  v13[4] = self;
  v12 = v5;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v11 enumerateUIFeedbackResultsWithBlock:v14 completionBlock:v13];
}

void __67__ATXUpdatePredictionsManager_processSpotlightActionFeedbackNoSync__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - finished processing spotlight action feedback with error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processAppDirectoryFeedbackNoSync
{
  dispatch_assert_queue_V2(self->_queue);
  sel_getName(a2);
  v4 = os_transaction_create();
  v5 = objc_opt_new();
  clientModelIdsWithFeedbackListeners = [v5 clientModelIdsWithFeedbackListeners];
  v7 = objc_alloc(MEMORY[0x277CBEBC0]);
  feedbackRootDirectory = [MEMORY[0x277CEBCB0] feedbackRootDirectory];
  v9 = [feedbackRootDirectory stringByAppendingPathComponent:@"blendingFeedback-ATXConsumerSubTypeAppDirectory"];
  v10 = [v7 initFileURLWithPath:v9];

  v11 = [[ATXProactiveSuggestioniOSUIFeedbackQuery alloc] initWithClientModelIds:clientModelIdsWithFeedbackListeners consumerSubTypeToConsider:35 startDateForResults:0 bookmarkURLPath:v10];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ATXUpdatePredictionsManager_processAppDirectoryFeedbackNoSync__block_invoke;
  v14[3] = &unk_2785A1E68;
  v15 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ATXUpdatePredictionsManager_processAppDirectoryFeedbackNoSync__block_invoke_81;
  v13[3] = &unk_27859EE08;
  v13[4] = self;
  v12 = v5;
  [(ATXProactiveSuggestionUIFeedbackQuery *)v11 enumerateUIFeedbackResultsWithBlock:v14 completionBlock:v13];
}

void __64__ATXUpdatePredictionsManager_processAppDirectoryFeedbackNoSync__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_INFO, "Got app directory feedback: %@", &v6, 0xCu);
  }

  [*(a1 + 32) handleNewFeedbackResult:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void __64__ATXUpdatePredictionsManager_processAppDirectoryFeedbackNoSync__block_invoke_81(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - finished processing app directory feedback with error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logPredictionUpdatesForBoxedAppConsumerSubTypes:(id)types actionConsumerSubTypes:(id)subTypes reason:(unint64_t)reason
{
  subTypesCopy = subTypes;
  if ([types containsObject:&unk_283A57CC8])
  {
    [(ATXUpdatePredictionsLogger *)self->_updatePredictionsLogger countPredictionUpdateWithReason:reason client:0];
  }

  if ([subTypesCopy containsObject:&unk_283A57CE0])
  {
    [(ATXUpdatePredictionsLogger *)self->_updatePredictionsLogger countPredictionUpdateWithReason:reason client:1];
  }
}

- (id)_stringArrayFromBoxedConsumerSubTypeArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        unsignedIntegerValue = [*(*(&v15 + 1) + 8 * i) unsignedIntegerValue];
        v11 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:unsignedIntegerValue];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "shouldOverrideRefreshRateForDisabledConsumerSubTypesForReason called with invalid ATXUpdatePredictionsReason value of %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)homeScreenPageConfigs
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to fetch HomeScreen Page Configs with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end