@interface ATXMLActionProducer
+ (id)consumerSubTypesToUpdate;
+ (id)predictionChunksForActionResults:(id)results;
- (ATXMLActionProducer)init;
- (id)consumerSubTypesToInvalidateForTTL:(double)l disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes;
- (id)lockscreenActionsFromPredictions:(id)predictions;
- (id)produceActions;
- (void)invalidateCacheForConsumerSubTypes:(id)types featureCache:(id)cache;
- (void)updateBlendingLayerForAllConsumerSubTypes;
- (void)updateBlendingLayerForConsumerSubType:(unsigned __int8)type;
- (void)updateBlendingLayerForHomeScreen;
@end

@implementation ATXMLActionProducer

- (void)updateBlendingLayerForAllConsumerSubTypes
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_283A57D40 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(&unk_283A57D40);
        }

        -[ATXMLActionProducer updateBlendingLayerForConsumerSubType:](self, "updateBlendingLayerForConsumerSubType:", [*(*(&v7 + 1) + 8 * v5++) intValue]);
      }

      while (v3 != v5);
      v3 = [&unk_283A57D40 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (ATXMLActionProducer)init
{
  v7.receiver = self;
  v7.super_class = ATXMLActionProducer;
  v2 = [(ATXMLActionProducer *)&v7 init];
  if (v2)
  {
    appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
    v4 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
    cacheBasePath = v2->_cacheBasePath;
    v2->_cacheBasePath = v4;
  }

  return v2;
}

- (id)produceActions
{
  v3 = objc_opt_new();
  v4 = [objc_alloc(MEMORY[0x277CEB3F8]) initWithCacheBasePath:self->_cacheBasePath];
  v5 = [(ATXMLActionProducer *)self writeCacheIfNotExistsForConsumerSubType:21];
  v6 = [(ATXMLActionProducer *)self _cachePathForConsumerSubtype:21];
  v7 = [v4 readCacheFileForCachePath:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXMLActionProducer *)v9 produceActions];
    }
  }

  if (v5)
  {
    v10 = [(ATXMLActionProducer *)self _getActionsFromCacheForConsumerSubType:21 cacheFileData:v7];

    v3 = v10;
  }

  return v3;
}

void __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [ATXActionResult alloc];
  v6 = [v9 predictedItem];
  v7 = [v6 actionKey];
  v8 = [(ATXActionResult *)v5 initWithScoredAction:v9 predictionItem:a3 actionKey:v7];

  [*(a1 + 32) addObject:v8];
}

void __76__ATXMLActionProducer__getActionsFromCacheForConsumerSubType_cacheFileData___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [[ATXActionResult alloc] initWithScoredAction:0 predictionItem:a2 actionKey:@"predictionItem"];
  [*(a1 + 32) addObject:?];
}

- (id)consumerSubTypesToInvalidateForTTL:(double)l disabledConsumerSubTypes:(id)types shouldOverrideRefreshRateForDisabledConsumerSubTypes:(BOOL)subTypes
{
  typesCopy = types;
  consumerSubTypesToUpdate = [objc_opt_class() consumerSubTypesToUpdate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __136__ATXMLActionProducer_consumerSubTypesToInvalidateForTTL_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke;
  v13[3] = &unk_278598BF8;
  lCopy = l;
  subTypesCopy = subTypes;
  v10 = typesCopy;
  v14 = v10;
  selfCopy = self;
  v11 = [consumerSubTypesToUpdate _pas_filteredArrayWithTest:v13];

  return v11;
}

BOOL __136__ATXMLActionProducer_consumerSubTypesToInvalidateForTTL_disabledConsumerSubTypes_shouldOverrideRefreshRateForDisabledConsumerSubTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  v4 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v3];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v7 = +[_ATXGlobals sharedInstance];
      [v7 cacheRefreshIntervalForDisabledActionConsumerSubType];
      v4 = v8;
    }
  }

  v9 = [*(a1 + 40) _cachePathForConsumerSubtype:v3];
  v10 = [ATXFileUtil shouldUpdateCache:v9 withRefreshRate:v4];

  return v10;
}

+ (id)consumerSubTypesToUpdate
{
  if (+[ATXMLActionProducer consumerSubTypesToUpdate]::onceToken != -1)
  {
    +[ATXMLActionProducer consumerSubTypesToUpdate];
  }

  v3 = +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate;

  return v3;
}

void __47__ATXMLActionProducer_consumerSubTypesToUpdate__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = objc_opt_new();
  v1 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [&unk_283A57D28 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      v4 = 0;
      do
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(&unk_283A57D28);
        }

        v5 = *(*(&v12 + 1) + 8 * v4);
        v6 = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
        v7 = [v6 getAssetFileAndSubscoreForConsumerSubType:{objc_msgSend(v5, "intValue")}];

        if (([v0 containsObject:v7] & 1) == 0)
        {
          [v1 addObject:v5];
          [v0 addObject:v7];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_283A57D28 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }

  v8 = [v1 copy];
  v9 = +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate;
  +[ATXMLActionProducer consumerSubTypesToUpdate]::consumerSubTypesToUpdate = v8;

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)invalidateCacheForConsumerSubTypes:(id)types featureCache:(id)cache
{
  v24 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v7 = [ATXActionPredictions _actionPredictionCandidatesForCandidateBundleIdentifiers:0 candidateActiontypes:0 firstStageScoreLogger:0 secondStageScoreLogger:0 multiStageScoreLogger:0 featureCache:cache remainingPredictionItems:&v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        unsignedIntegerValue = [*(*(&v15 + 1) + 8 * v11) unsignedIntegerValue];
        memset(v14, 0, sizeof(v14));
        std::vector<ATXPredictionItem>::__init_with_size[abi:ne200100]<ATXPredictionItem*,ATXPredictionItem*>(v14, v19, v20, 0x13A524387AC82261 * ((v20 - v19) >> 3));
        [(ATXMLActionProducer *)self invalidateCacheForConsumerSubType:unsignedIntegerValue actionPredictionCandidates:v7 remainingPredictionItems:v14];
        v22 = v14;
        std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v22);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }

  v22 = &v19;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v22);

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)predictionChunksForActionResults:(id)results
{
  v22 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        scoredAction = [v9 scoredAction];
        v11 = scoredAction == 0;

        if (!v11)
        {
          scoredAction2 = [v9 scoredAction];
          [v4 addObject:scoredAction2];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:v4];
  v14 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:v5 lockscreenPredictionIndices:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)updateBlendingLayerForConsumerSubType:(unsigned __int8)type
{
  if (type <= 37)
  {
    if (type == 21)
    {
      [(ATXMLActionProducer *)self updateBlendingLayerForSpotlight];
    }

    else if (type == 22)
    {
      [(ATXMLActionProducer *)self updateBlendingLayerForLockscreen];
    }
  }

  else
  {
    switch(type)
    {
      case '1':
        [(ATXMLActionProducer *)self updateBlendingLayerForWatchAppSettings];
        break;
      case '.':
        [(ATXMLActionProducer *)self updateBlendingLayerForSettings];
        break;
      case '&':
        [(ATXMLActionProducer *)self updateBlendingLayerForHomeScreen];
        break;
    }
  }
}

- (void)updateBlendingLayerForHomeScreen
{
  if ([MEMORY[0x277CEB2F8] shouldDisplayRecentActionsOnHomeScreen])
  {
    v5 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:11];
    v3 = [MEMORY[0x277CEB2F8] actionResponseForDeveloperModeWithClientId:? shouldShowRecentDonations:?];
    proactiveSuggestions = [v3 proactiveSuggestions];
    [ATXActionBlendingUpdater updateBlendingLayerWithRecentShortcuts:proactiveSuggestions];
  }

  else
  {
    v6 = objc_opt_new();
    [ATXActionBlendingUpdater updateBlendingLayerWithRecentShortcuts:?];

    +[ATXActionBlendingUpdater updateBlendingLayerWithFallbackActions];

    [(ATXMLActionProducer *)self readCacheAndSendFilteredResultsToBlendingForConsumerSubType:38];
  }
}

- (id)lockscreenActionsFromPredictions:(id)predictions
{
  v33 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__18;
  v28 = __Block_byref_object_dispose__18;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__18;
  v22[4] = __Block_byref_object_dispose__18;
  v23 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke;
  aBlock[3] = &unk_278598C20;
  aBlock[4] = v22;
  aBlock[5] = &v24;
  v4 = _Block_copy(aBlock);
  atx_actionsFromActionResults = [predictionsCopy atx_actionsFromActionResults];
  v6 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:atx_actionsFromActionResults criteria:v4];
  v7 = [atx_actionsFromActionResults objectsAtIndexes:v6];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    predictedItem = [firstObject predictedItem];
    if ([predictedItem isTVWhiteListedLongFormMedia])
    {
      predictedRouteInfo = [v25[5] predictedRouteInfo];
      v11 = predictedRouteInfo == 0;

      if (v11)
      {
LABEL_6:
        v16 = __atxlog_handle_blending();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          predictedItem2 = [firstObject predictedItem];
          *buf = 138412290;
          v32 = predictedItem2;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "lockscreen: Sending prediction to lockscreen: %@", buf, 0xCu);
        }

        v30 = firstObject;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        goto LABEL_12;
      }

      predictedItem3 = [firstObject predictedItem];
      predictedRouteInfo2 = [v25[5] predictedRouteInfo];
      predictedItem = [predictedItem3 actionWithRouteInfo:predictedRouteInfo2];

      v14 = objc_alloc(MEMORY[0x277CEB7F0]);
      [firstObject score];
      v15 = [v14 initWithPredictedItem:predictedItem score:?];

      firstObject = v15;
    }

    goto LABEL_6;
  }

  firstObject = __atxlog_handle_blending();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, firstObject, OS_LOG_TYPE_DEFAULT, "lockscreen: clearing suggestions because no suggestions received", buf, 2u);
  }

  v18 = MEMORY[0x277CBEBF8];
LABEL_12:

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predictedItem];
  if (![v3 isTVWhiteListedLongFormMedia])
  {
    if (![v3 isTVAction])
    {
      v16 = 1;
      goto LABEL_16;
    }

    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __56__ATXMLActionProducer_lockscreenActionsFromPredictions___block_invoke_cold_1(v17);
    }

    goto LABEL_12;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if ([*(*(*(a1 + 32) + 8) + 40) isTVExperienceAppNowPlaying])
    {
LABEL_12:
      v16 = 0;
      goto LABEL_16;
    }
  }

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEB2C0]);
    v9 = +[_ATXGlobals sharedInstance];
    [v9 predictedRouteAcceptThreshold];
    *&v10 = v10;
    v11 = [v8 initWithAcceptThreshold:0 avRoutingSessionManager:v10];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v7 = *(*(*(a1 + 40) + 8) + 40);
  }

  v14 = [v7 predictedRouteInfo];
  if (v14)
  {
    v15 = [*(*(*(a1 + 40) + 8) + 40) predictedRouteInfo];
    v16 = [v15 isExternalRoute];
  }

  else
  {
    v16 = 0;
  }

LABEL_16:
  return v16;
}

- (void)_writeIntermediateCacheForConsumerSubType:(void *)a1 actionPredictionCandidates:(uint8_t *)buf remainingPredictionItems:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Failed to write intermediate cache for consumerSubType: %@", buf, 0xCu);
}

- (void)readCacheAndSendFilteredResultsToBlendingForConsumerSubType:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "While updating predictions for blending, failed to read cache file data for %@, although the cache is supposed to exist.", buf, 0xCu);
}

@end