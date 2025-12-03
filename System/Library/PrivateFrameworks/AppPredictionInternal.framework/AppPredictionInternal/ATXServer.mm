@interface ATXServer
+ (id)consumerSubTypesToUpdate;
+ (id)sharedInstance;
- (ATXServer)initWithCacheFileBasePath:(id)path machServiceName:(id)name predictionContextBuilder:(id)builder;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)syncGenerateNewAppPredictionsForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers featureCache:(id)cache;
- (BOOL)updateAppPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache;
- (id)consumerSubTypesToUpdateWithRefreshRate:(double)rate disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes;
- (void)approvedSiriKitIntentsWithReply:(id)reply;
- (void)dealloc;
- (void)fetchLastExecutedActionsWithCompletion:(id)completion;
- (void)fetchMenuItemsForCurrentAppInFocusWithCompletion:(id)completion;
- (void)fetchPreWarmedContextualActionSuggestionsWithCompletion:(id)completion;
- (void)fetchSemanticallySimilarDocumentsWithCompletion:(id)completion;
- (void)fetchToolKitBasedFallbackActionIdsWithCompletion:(id)completion;
- (void)generateNewAppPredictionsForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers featureCache:(id)cache reply:(id)reply;
- (void)getAppPredictorAssetMappingDescriptionWithReply:(id)reply;
- (void)getWebsitePredictionsForContextType:(id)type limit:(unint64_t)limit reply:(id)reply;
- (void)notifySpotlightInvoked:(BOOL)invoked;
- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type;
- (void)recentURLsWithLimit:(unint64_t)limit typeIdentifiersForScope:(id)scope withCompletion:(id)completion;
- (void)sendFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType atxResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids reply:(id)self0;
- (void)shouldPredictAppBundleId:(id)id reply:(id)reply;
- (void)sortAppsByLaunches:(id)launches reply:(id)reply;
- (void)updateBlendingLayerForAllConsumerSubTypes;
@end

@implementation ATXServer

- (ATXServer)initWithCacheFileBasePath:(id)path machServiceName:(id)name predictionContextBuilder:(id)builder
{
  pathCopy = path;
  nameCopy = name;
  builderCopy = builder;
  v25.receiver = self;
  v25.super_class = ATXServer;
  v12 = [(ATXServer *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cacheFileBasePath, path);
    objc_storeStrong(&v13->_machServiceName, name);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.proactive.AppPrediction.ATXServer.queue", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.proactive.AppPrediction.ATXServer.prewarmingQueue", v17);
    prewarmingQueue = v13->_prewarmingQueue;
    v13->_prewarmingQueue = v18;

    objc_storeStrong(&v13->_contextBuilder, builder);
    if (v13->_machServiceName)
    {
      v20 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:v13->_machServiceName];
      listener = v13->_listener;
      v13->_listener = v20;

      [(NSXPCListener *)v13->_listener setDelegate:v13];
      [(NSXPCListener *)v13->_listener resume];
    }

    v22 = objc_opt_new();
    cacheFileDescriptors = v13->_cacheFileDescriptors;
    v13->_cacheFileDescriptors = v22;
  }

  return v13;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_11 != -1)
  {
    +[ATXServer sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __27__ATXServer_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v2 = [v1 stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v3 = [v2 stringByDeletingLastPathComponent];
  [v0 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];

  v4 = [ATXServer alloc];
  v10 = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v5 = [v10 stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v6 = *MEMORY[0x277CEB9D0];
  v7 = +[ATXPredictionContextBuilder sharedInstance];
  v8 = [(ATXServer *)v4 initWithCacheFileBasePath:v5 machServiceName:v6 predictionContextBuilder:v7];
  v9 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v8;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ATXServer_dealloc__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = ATXServer;
  [(ATXServer *)&v4 dealloc];
}

void __20__ATXServer_dealloc__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 40) invalidate];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 48) allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) intValue];
        if ((v7 & 0x80000000) == 0)
        {
          close(v7);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncGenerateNewAppPredictionsForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers featureCache:(id)cache
{
  intentCopy = intent;
  identifiersCopy = identifiers;
  typeIdentifiersCopy = typeIdentifiers;
  cacheCopy = cache;
  v16 = +[_ATXAppPredictor sharedInstance];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __139__ATXServer_syncGenerateNewAppPredictionsForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers_featureCache___block_invoke;
  v24[3] = &unk_27859FCE8;
  typeCopy = type;
  v24[4] = self;
  v25 = v16;
  v26 = intentCopy;
  v27 = identifiersCopy;
  v28 = typeIdentifiersCopy;
  v29 = cacheCopy;
  v30 = &v32;
  v18 = cacheCopy;
  v19 = typeIdentifiersCopy;
  v20 = identifiersCopy;
  v21 = intentCopy;
  v22 = v16;
  dispatch_sync(queue, v24);
  LOBYTE(typeIdentifiersCopy) = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  return typeIdentifiersCopy;
}

void __139__ATXServer_syncGenerateNewAppPredictionsForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers_featureCache___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v3 = [v2 getFullCachePathWithBaseCachePath:*(*(a1 + 32) + 8) consumerSubType:*(a1 + 88)];

  v4 = *(*(a1 + 32) + 48);
  v5 = [*(a1 + 40) predictAndWriteCacheFileWithLimit:0x7FFFFFFFLL consumerSubType:*(a1 + 88) intent:*(a1 + 48) candidateBundleIdentifiers:*(a1 + 56) candidateActiontypes:*(a1 + 64) scoreLogger:0 path:v3 cacheFileDescriptors:v4 featureCache:*(a1 + 72)];
  *(*(*(a1 + 80) + 8) + 24) = v5;
  v6 = __atxlog_handle_default();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 88)];
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      v9 = "Updating App Predictions: Finished app prediction refresh for %@ and writing cache to %@.";
LABEL_6:
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else if (v7)
  {
    v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 88)];
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    v9 = "Updating App Predictions: App prediction refresh for %@ encountered issues writing cache to %@.";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)generateNewAppPredictionsForConsumerSubType:(unsigned __int8)type intent:(id)intent candidateBundleIdentifiers:(id)identifiers candidateIntentTypeIdentifiers:(id)typeIdentifiers featureCache:(id)cache reply:(id)reply
{
  intentCopy = intent;
  identifiersCopy = identifiers;
  typeIdentifiersCopy = typeIdentifiers;
  cacheCopy = cache;
  replyCopy = reply;
  v19 = +[_ATXAppPredictor sharedInstance];
  queue = self->_queue;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __141__ATXServer_generateNewAppPredictionsForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers_featureCache_reply___block_invoke;
  v27[3] = &unk_27859FD10;
  typeCopy = type;
  v27[4] = self;
  v28 = v19;
  v29 = intentCopy;
  v30 = identifiersCopy;
  v31 = typeIdentifiersCopy;
  v32 = cacheCopy;
  v33 = replyCopy;
  v21 = replyCopy;
  v22 = cacheCopy;
  v23 = typeIdentifiersCopy;
  v24 = identifiersCopy;
  v25 = intentCopy;
  v26 = v19;
  dispatch_async(queue, v27);
}

void __141__ATXServer_generateNewAppPredictionsForConsumerSubType_intent_candidateBundleIdentifiers_candidateIntentTypeIdentifiers_featureCache_reply___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v3 = [v2 getFullCachePathWithBaseCachePath:*(*(a1 + 32) + 8) consumerSubType:*(a1 + 88)];

  v4 = *(*(a1 + 32) + 48);
  LODWORD(v2) = [*(a1 + 40) predictAndWriteCacheFileWithLimit:0x7FFFFFFFLL consumerSubType:*(a1 + 88) intent:*(a1 + 48) candidateBundleIdentifiers:*(a1 + 56) candidateActiontypes:*(a1 + 64) scoreLogger:0 path:v3 cacheFileDescriptors:v4 featureCache:*(a1 + 72)];
  v5 = __atxlog_handle_default();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 88)];
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      v8 = "Updating App Predictions: Finished app prediction refresh for %@ and writing cache to %@.";
LABEL_6:
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    }
  }

  else if (v6)
  {
    v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 88)];
    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    v8 = "Updating App Predictions: App prediction refresh for %@ encountered issues writing cache to %@.";
    goto LABEL_6;
  }

  (*(*(a1 + 80) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateBlendingLayerForAllConsumerSubTypes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [&unk_283A589D0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_283A589D0);
        }

        +[ATXAppBlendingUpdater updateBlendingLayerForConsumerSubType:](ATXAppBlendingUpdater, "updateBlendingLayerForConsumerSubType:", [*(*(&v7 + 1) + 8 * v5++) unsignedIntValue]);
      }

      while (v3 != v5);
      v3 = [&unk_283A589D0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)consumerSubTypesToUpdateWithRefreshRate:(double)rate disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes
{
  typesCopy = types;
  consumerSubTypesToUpdate = [objc_opt_class() consumerSubTypesToUpdate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __131__ATXServer_consumerSubTypesToUpdateWithRefreshRate_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke;
  v13[3] = &unk_27859FD38;
  rateCopy = rate;
  subTypesCopy = subTypes;
  v14 = typesCopy;
  selfCopy = self;
  v10 = typesCopy;
  v11 = [consumerSubTypesToUpdate _pas_filteredArrayWithTest:v13];

  return v11;
}

BOOL __131__ATXServer_consumerSubTypesToUpdateWithRefreshRate_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = +[_ATXGlobals sharedInstance];
      [v7 cacheRefreshIntervalForDisabledAppConsumerSubType];
      v4 = v8;
    }
  }

  v9 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
  v10 = [v9 getFullCachePathWithBaseCachePath:*(*(a1 + 40) + 8) consumerSubType:v3];

  v11 = [ATXFileUtil shouldUpdateCache:v10 withRefreshRate:v4];
  return v11;
}

- (BOOL)updateAppPredictionsWithConsumerSubTypes:(id)types featureCache:(id)cache
{
  v25 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  cacheCopy = cache;
  sel_getName(a2);
  v9 = os_transaction_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = typesCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v14 &= -[ATXServer syncGenerateNewAppPredictionsForConsumerSubType:intent:candidateBundleIdentifiers:candidateIntentTypeIdentifiers:featureCache:](self, "syncGenerateNewAppPredictionsForConsumerSubType:intent:candidateBundleIdentifiers:candidateIntentTypeIdentifiers:featureCache:", [v16 unsignedIntegerValue], 0, 0, 0, cacheCopy);
        objc_autoreleasePoolPop(v17);
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)consumerSubTypesToUpdate
{
  if (consumerSubTypesToUpdate_onceToken != -1)
  {
    +[ATXServer consumerSubTypesToUpdate];
  }

  v3 = consumerSubTypesToUpdate_consumerSubTypesToUpdate;

  return v3;
}

void __37__ATXServer_consumerSubTypesToUpdate__block_invoke()
{
  v18 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_283A589E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(&unk_283A589E8);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
        v8 = [v7 getAssetFileAndSubscoreForConsumerSubType:{objc_msgSend(v6, "intValue")}];

        if (([v0 containsObject:v8] & 1) == 0)
        {
          [v1 addObject:v6];
          [v0 addObject:v8];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [&unk_283A589E8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v9 = [v1 copy];
  v10 = consumerSubTypesToUpdate_consumerSubTypesToUpdate;
  consumerSubTypesToUpdate_consumerSubTypesToUpdate = v9;

  objc_autoreleasePoolPop(context);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendFeedbackForConsumerType:(unint64_t)type consumerSubType:(unsigned __int8)subType atxResponse:(id)response engagementType:(unint64_t)engagementType engagedBundleId:(id)id bundleIdsShown:(id)shown explicitlyRejectedBundleIds:(id)ids reply:(id)self0
{
  responseCopy = response;
  idCopy = id;
  shownCopy = shown;
  idsCopy = ids;
  replyCopy = reply;
  if (__atx_xpc_private_queue_get_onceToken != -1)
  {
    [ATXServer sendFeedbackForConsumerType:consumerSubType:atxResponse:engagementType:engagedBundleId:bundleIdsShown:explicitlyRejectedBundleIds:reply:];
  }

  v21 = __atx_xpc_private_queue_get_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __149__ATXServer_sendFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_reply___block_invoke;
  block[3] = &unk_27859FD60;
  subTypeCopy = subType;
  v28 = shownCopy;
  v29 = responseCopy;
  typeCopy = type;
  engagementTypeCopy = engagementType;
  v30 = idCopy;
  selfCopy = self;
  v32 = idsCopy;
  v33 = replyCopy;
  v22 = idsCopy;
  v23 = replyCopy;
  v24 = idCopy;
  v25 = responseCopy;
  v26 = shownCopy;
  dispatch_async(v21, block);
}

void __149__ATXServer_sendFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_reply___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_xpc();
  v3 = os_signpost_id_generate(v2);

  v4 = __atxlog_handle_xpc();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "sendFeedbackForConsumerType", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = __atxlog_handle_default();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = objc_opt_new();
    if ([*(a1 + 32) count])
    {
      v9 = 0;
      do
      {
        if (v9)
        {
          [v8 appendString:{@", "}];
        }

        v10 = [*(a1 + 32) objectAtIndexedSubscript:v9];
        [v8 appendString:v10];

        ++v9;
      }

      while ([*(a1 + 32) count] > v9);
    }

    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __149__ATXServer_sendFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_reply___block_invoke_cold_1(a1, v8, v11);
    }
  }

  v12 = [*(*(a1 + 56) + 56) predictionContextForCurrentContext];
  if (v12)
  {
    v13 = +[_ATXAppPredictor sharedInstance];
    [v13 receiveFeedbackForConsumerType:*(a1 + 80) consumerSubType:*(a1 + 96) atxResponse:*(a1 + 40) engagementType:*(a1 + 88) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 32) explicitlyRejectedBundleIds:*(a1 + 64) context:v12];
  }

  else
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __149__ATXServer_sendFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_reply___block_invoke_cold_2(v13);
    }
  }

  (*(*(a1 + 72) + 16))();
  v14 = __atxlog_handle_xpc();
  v15 = v14;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_END, v3, "sendFeedbackForConsumerType", " enableTelemetry=YES ", v16, 2u);
  }
}

- (void)getAppPredictorAssetMappingDescriptionWithReply:(id)reply
{
  v4 = MEMORY[0x277CEB3A0];
  replyCopy = reply;
  sharedInstanceWithMobileAssets = [v4 sharedInstanceWithMobileAssets];
  getAtxToolDescription = [sharedInstanceWithMobileAssets getAtxToolDescription];
  (*(reply + 2))(replyCopy, getAtxToolDescription, 1);
}

- (void)sortAppsByLaunches:(id)launches reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  replyCopy = reply;
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    replyCopy[2](replyCopy, launchesCopy);
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v8 = [v21 histogramForLaunchType:0];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = launchesCopy;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = MEMORY[0x277CCABB0];
          v29 = *(*(&v25 + 1) + 8 * i);
          v13 = v29;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          [v8 totalLaunchesForBundleIds:v15];
          v16 = [v14 numberWithDouble:?];
          [dictionary setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    allKeys = [dictionary allKeys];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__ATXServer_sortAppsByLaunches_reply___block_invoke;
    v23[3] = &unk_278598110;
    v24 = dictionary;
    v18 = dictionary;
    v19 = [allKeys sortedArrayUsingComparator:v23];

    replyCopy[2](replyCopy, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __38__ATXServer_sortAppsByLaunches_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];

  [v10 doubleValue];
  if (v9 <= v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)approvedSiriKitIntentsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = +[_ATXGlobals sharedInstance];
  approvedSiriKitIntents = [v6 approvedSiriKitIntents];
  (*(reply + 2))(replyCopy, approvedSiriKitIntents, 0);
}

- (void)shouldPredictAppBundleId:(id)id reply:(id)reply
{
  replyCopy = reply;
  idCopy = id;
  v10 = +[ATXAppPredictionBlacklist sharedInstance];
  disabledBundleIds = [v10 disabledBundleIds];
  v9 = [disabledBundleIds containsObject:idCopy];

  (*(reply + 2))(replyCopy, v9 ^ 1u, 0);
}

- (void)getWebsitePredictionsForContextType:(id)type limit:(unint64_t)limit reply:(id)reply
{
  replyCopy = reply;
  typeCopy = type;
  v9 = objc_opt_new();
  v10 = [v9 websitePredictionsForContextType:typeCopy limit:limit];

  replyCopy[2](replyCopy, v10);
}

- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type
{
  typeCopy = type;
  stringCopy = string;
  v7 = objc_opt_new();
  [v7 overwriteWebsitePredictionsCacheWithWebsiteString:stringCopy contextType:typeCopy];
}

- (void)recentURLsWithLimit:(unint64_t)limit typeIdentifiersForScope:(id)scope withCompletion:(id)completion
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v8 = [v5 errorWithDomain:v6 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v8);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = *MEMORY[0x277CEB9D0];
  v7 = [connectionCopy valueForEntitlement:*MEMORY[0x277CEB9D0]];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = ATXAppPredictionXPCInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_81_0];
    [connectionCopy setInvalidationHandler:&__block_literal_global_84_0];
    [connectionCopy resume];
    v9 = 1;
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationDigestRankerServer *)connectionCopy listener:v6 shouldAcceptNewConnection:v10];
    }

    v9 = 0;
  }

  return v9;
}

void __48__ATXServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __48__ATXServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __48__ATXServer_listener_shouldAcceptNewConnection___block_invoke_82()
{
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __48__ATXServer_listener_shouldAcceptNewConnection___block_invoke_82_cold_1(v0);
  }
}

- (void)notifySpotlightInvoked:(BOOL)invoked
{
  prewarmingQueue = self->_prewarmingQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__ATXServer_notifySpotlightInvoked___block_invoke;
  v4[3] = &unk_27859AB70;
  v4[4] = self;
  invokedCopy = invoked;
  dispatch_sync(prewarmingQueue, v4);
}

- (void)fetchPreWarmedContextualActionSuggestionsWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v6 = [v3 errorWithDomain:v4 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)fetchMenuItemsForCurrentAppInFocusWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v6 = [v3 errorWithDomain:v4 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)fetchToolKitBasedFallbackActionIdsWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v6 = [v3 errorWithDomain:v4 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)fetchSemanticallySimilarDocumentsWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CEB260];
  completionCopy = completion;
  v6 = [v3 errorWithDomain:v4 code:4 userInfo:0];
  completionCopy[2](completionCopy, 0, v6);
}

- (void)fetchLastExecutedActionsWithCompletion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v3 = objc_alloc_init(MEMORY[0x277CEB408]);
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v4 dateByAddingTimeInterval:-300.0];
  v23 = v3;
  v6 = [v3 getSortedCombinedIntentEventsForTestingActionsBetweenStartDate:v5 endDate:v4];

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        action = [v14 action];
        actionType = [action actionType];

        if (actionType == 7)
        {
          v17 = v7;
        }

        else
        {
          v17 = v8;
        }

        [v17 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v18 = MEMORY[0x277CEB8D8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__ATXServer_fetchLastExecutedActionsWithCompletion___block_invoke;
  v24[3] = &unk_27859FDA8;
  v25 = v8;
  v26 = completionCopy;
  v19 = completionCopy;
  v20 = v8;
  [v18 sanitizeTitleForToolKitIntents:v7 withCompletion:v24];

  v21 = *MEMORY[0x277D85DE8];
}

void __52__ATXServer_fetchLastExecutedActionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObjectsFromArray:a2];
  }

  v3 = [*(a1 + 32) _pas_mappedArrayWithTransform:&__block_literal_global_90_2];
  (*(*(a1 + 40) + 16))();
}

id __52__ATXServer_fetchLastExecutedActionsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 action];
    v5 = [v4 actionTitle];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Sending action back to ZKW: %@", &v9, 0xCu);
  }

  v6 = [v2 action];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __149__ATXServer_sendFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_reply___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CEBCF0] stringForConsumerType:*(a1 + 80)];
  v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 96)];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CEBCF0] stringForEngagementType:*(a1 + 88)];
  v10 = *(a1 + 48);
  v12 = 138413570;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v10;
  v22 = 2112;
  v23 = a2;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "Feedback received:\n  consumerType: %@\n  consumerSubType: %@\n  atxResponse: %@\n  engagementType: %@\n  engagedBundleId: %@\n  itemsShown: %@\n", &v12, 0x3Eu);

  v11 = *MEMORY[0x277D85DE8];
}

@end