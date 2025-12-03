@interface ATXInformationEngine
- (ATXInformationEngine)init;
- (ATXInformationEngine)initWithFilter:(id)filter featurizer:(id)featurizer ranker:(id)ranker infoStore:(id)store confidenceMapper:(id)mapper abuseControlConfig:(id)config featureWeights:(id)weights;
- (BOOL)_currentActivePredictionsContainSuggestionFromSourceId:(id)id guardedData:(id)data;
- (BOOL)_shouldSkipRefreshForOldSuggestions:(id)suggestions newSuggestions:(id)newSuggestions;
- (BOOL)shouldSkipUpdatingPredictionRefreshDateForPreviouslyScheduledDate:(id)date newDate:(id)newDate;
- (id)_clearSuggestionsForInfoSourceIdentifier:(id)identifier;
- (id)_insertSuggestions:(id)suggestions forInfoSourceIdentifier:(id)identifier;
- (id)_proactiveSuggestionFromScoredInfoSuggestion:(id)suggestion clientModelId:(id)id clientModelVersion:(id)version;
- (id)allInfoSuggestions;
- (id)allInfoSuggestionsForSourceId:(id)id;
- (id)allRelevantInfoSuggestions;
- (id)currentPredictions;
- (id)forceUpdateAndReturnPredictions;
- (id)scheduledPredictionRefreshDate;
- (int64_t)_clientModelTypeForInfoSuggestion:(id)suggestion;
- (void)_pushPredictionsToBlendingLayer:(id)layer forClientModel:(id)model withClientModelVersion:(id)version;
- (void)_pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:(id)update forClientModel:(id)model withClientModelVersion:(id)version cachedSuggestions:(id)suggestions;
- (void)_pushSuggestionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:(id)update cachedSuggestions:(id)suggestions;
- (void)_schedulePredictionUpdateNoLaterThanDate:(id)date guardedData:(id)data;
- (void)_storeCachedSuggestionsWithoutIntents:(id)intents withGuardedData:(id)data;
- (void)_updateClientModelWithClientModelId:(id)id withSuggestions:(id)suggestions;
- (void)_updatePredictionRefreshDateIfNecessaryForSuggestions:(id)suggestions;
- (void)_updatePredictionsWithGuardedData:(id)data;
- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply;
- (void)handleProactiveStackRotationForInfoSuggestion:(id)suggestion isStalenessRotation:(BOOL)rotation;
- (void)insertSuggestions:(id)suggestions forInfoSourceIdentifier:(id)identifier completionHandler:(id)handler;
- (void)resetSuggestionsTo:(id)to forInfoSourceIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation ATXInformationEngine

- (ATXInformationEngine)init
{
  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  v4 = objc_opt_new();
  v5 = [[ATXInformationFilter alloc] initWithStore:mEMORY[0x277CEB5C8] abuseControlConfig:v4];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(ATXInformationEngine *)self initWithFilter:v5 featurizer:v6 ranker:v7 infoStore:mEMORY[0x277CEB5C8] confidenceMapper:v8 abuseControlConfig:v4 featureWeights:v9];

  return v10;
}

- (ATXInformationEngine)initWithFilter:(id)filter featurizer:(id)featurizer ranker:(id)ranker infoStore:(id)store confidenceMapper:(id)mapper abuseControlConfig:(id)config featureWeights:(id)weights
{
  filterCopy = filter;
  featurizerCopy = featurizer;
  rankerCopy = ranker;
  storeCopy = store;
  mapperCopy = mapper;
  configCopy = config;
  weightsCopy = weights;
  v48.receiver = self;
  v48.super_class = ATXInformationEngine;
  v18 = [(ATXInformationEngine *)&v48 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_confidenceMapper, mapper);
    objc_storeStrong(&v19->_store, store);
    objc_storeStrong(&v19->_filter, filter);
    objc_storeStrong(&v19->_featurizer, featurizer);
    objc_storeStrong(&v19->_ranker, ranker);
    objc_storeStrong(&v19->_abuseControlConfig, config);
    objc_storeStrong(&v19->_featureWeights, weights);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.proactive.ATXInformationEngine.internal", v20);
    queue = v19->_queue;
    v19->_queue = v21;

    v23 = objc_opt_new();
    v24 = objc_autoreleasePoolPush();
    readCachedSuggestions = [(ATXInformationStore *)v19->_store readCachedSuggestions];
    v26 = readCachedSuggestions;
    if (readCachedSuggestions)
    {
      v27 = readCachedSuggestions;
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
    }

    [(ATXInformationEngine *)v19 _storeCachedSuggestionsWithoutIntents:v27 withGuardedData:v23];

    objc_autoreleasePoolPop(v24);
    v28 = objc_alloc(MEMORY[0x277D42610]);
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.proactive.ATXInformationEngine.lock", v29);
    v31 = [v28 initWithGuardedData:v23 serialQueue:v30];
    lock = v19->_lock;
    v19->_lock = v31;

    objc_initWeak(&location, v19);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __118__ATXInformationEngine_initWithFilter_featurizer_ranker_infoStore_confidenceMapper_abuseControlConfig_featureWeights___block_invoke;
    aBlock[3] = &unk_2785977B0;
    objc_copyWeak(&v46, &location);
    v33 = _Block_copy(aBlock);
    v34 = [objc_alloc(MEMORY[0x277D42628]) initWithQueue:v19->_queue operation:v33];
    coalescedPredictionUpdateOperation = v19->_coalescedPredictionUpdateOperation;
    v19->_coalescedPredictionUpdateOperation = v34;

    [(_PASSimpleCoalescingTimer *)v19->_coalescedPredictionUpdateOperation runAfterDelaySeconds:0 coalescingBehavior:1.0];
    v36 = __atxlog_handle_gi();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine initialized", buf, 2u);
    }

    v37 = v19;
    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __118__ATXInformationEngine_initWithFilter_featurizer_ranker_infoStore_confidenceMapper_abuseControlConfig_featureWeights___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __118__ATXInformationEngine_initWithFilter_featurizer_ranker_infoStore_confidenceMapper_abuseControlConfig_featureWeights___block_invoke_39;
    v5[3] = &unk_27859E5F8;
    v6 = WeakRetained;
    [v3 runAsyncWithLockAcquired:v5];
    v4 = v6;
  }

  else
  {
    v4 = __atxlog_handle_gi();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __118__ATXInformationEngine_initWithFilter_featurizer_ranker_infoStore_confidenceMapper_abuseControlConfig_featureWeights___block_invoke_cold_1(v4);
    }
  }
}

- (void)_updatePredictionsWithGuardedData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  context = objc_autoreleasePoolPush();
  v5 = os_transaction_create();
  v6 = __atxlog_handle_gi();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[ATXInformationEngine _updatePredictionsWithGuardedData:]";
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: %s", buf, 0xCu);
  }

  deleteExpiredSuggestions = [(ATXInformationStore *)self->_store deleteExpiredSuggestions];
  [(ATXInformationStore *)self->_store addAbuseControlOutcomes:deleteExpiredSuggestions];
  readCurrentlyRelevantSuggestions = [(ATXInformationStore *)self->_store readCurrentlyRelevantSuggestions];
  v9 = [(ATXInformationFilter *)self->_filter filterInfoSuggestions:readCurrentlyRelevantSuggestions];
  if ([(ATXInformationEngine *)self _shouldSkipRefreshForOldSuggestions:dataCopy[1] newSuggestions:v9])
  {
    v10 = __atxlog_handle_gi();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: short-circuiting prediction update, as suggestions have not changed", buf, 2u);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(ATXInformationFeaturizerProtocol *)self->_featurizer featurizeInfoSuggestions:v9];
    v13 = [(ATXInformationRankerProtocol *)self->_ranker sortFeaturizedSuggestions:v12 withFeatureWeights:self->_featureWeights];
    v14 = __atxlog_handle_gi();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 count];
      *buf = 67109120;
      LODWORD(v26) = v15;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "ATXInformationEngine: number of relevant suggestion(s): %d", buf, 8u);
    }

    [(ATXInformationEngine *)self _pushSuggestionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:v13 cachedSuggestions:dataCopy[1]];
    v16 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global_142];
    if ([(ATXInformationStore *)self->_store writeCacheWithNewSuggestions:v16])
    {
      [(ATXInformationEngine *)self _storeCachedSuggestionsWithoutIntents:v16 withGuardedData:dataCopy];
    }

    objc_autoreleasePoolPop(v11);
  }

  earliestFutureSuggestionChangeDate = [(ATXInformationStore *)self->_store earliestFutureSuggestionChangeDate];
  nextImportantDateAmongTimelineInducedProactiveStackRotationRecords = [(ATXInformationStore *)self->_store nextImportantDateAmongTimelineInducedProactiveStackRotationRecords];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = distantFuture;
  if (earliestFutureSuggestionChangeDate)
  {
    v21 = [distantFuture earlierDate:earliestFutureSuggestionChangeDate];

    v20 = v21;
  }

  if (nextImportantDateAmongTimelineInducedProactiveStackRotationRecords)
  {
    v22 = [v20 earlierDate:nextImportantDateAmongTimelineInducedProactiveStackRotationRecords];

    v20 = v22;
  }

  [(ATXInformationEngine *)self _schedulePredictionUpdateNoLaterThanDate:v20 guardedData:dataCopy];

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_storeCachedSuggestionsWithoutIntents:(id)intents withGuardedData:(id)data
{
  dataCopy = data;
  v6 = [intents _pas_mappedArrayWithTransform:&__block_literal_global_48_1];
  v7 = dataCopy[1];
  dataCopy[1] = v6;
}

id __78__ATXInformationEngine__storeCachedSuggestionsWithoutIntents_withGuardedData___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyByReplacingIntentWithIndexingHash];

  return v2;
}

- (BOOL)_shouldSkipRefreshForOldSuggestions:(id)suggestions newSuggestions:(id)newSuggestions
{
  suggestionsCopy = suggestions;
  newSuggestionsCopy = newSuggestions;
  if ([suggestionsCopy count] || objc_msgSend(newSuggestionsCopy, "count"))
  {
    if ([suggestionsCopy count] && objc_msgSend(newSuggestionsCopy, "count"))
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:suggestionsCopy];
      v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:newSuggestionsCopy];
      if ([v8 isEqualToSet:v9])
      {
        v10 = 1;
      }

      else
      {
        v11 = [v8 mutableCopy];
        [v11 minusSet:v9];
        v12 = [v9 mutableCopy];
        [v12 minusSet:v8];
        v13 = [v12 count];
        if (v13 == [v11 count])
        {
          v14 = [(ATXInformationEngine *)self _widgetIdentitiesFromInfoSuggestions:v12];
          v15 = [(ATXInformationEngine *)self _widgetIdentitiesFromInfoSuggestions:v11];
          v10 = [v14 isEqualToSet:v15];
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id __61__ATXInformationEngine__widgetIdentitiesFromInfoSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [v2 appBundleIdentifier];
  v5 = [v2 widgetBundleIdentifier];
  v6 = [v2 widgetKind];
  v7 = [v2 intentIndexingHash];
  if (v7)
  {
    v8 = [v2 intentIndexingHash];
  }

  else
  {
    v14 = [v2 intent];
    v8 = [v14 atx_indexingHash];
  }

  v9 = [v2 layouts];
  v10 = [v2 confidenceLevel];
  v11 = [v2 suggestionIdentifier];
  v12 = [v3 initWithFormat:@"%@-%@-%@-%lld-%ld-%ld-%@", v4, v5, v6, v8, v9, v10, v11];

  if (!v7)
  {
  }

  return v12;
}

- (void)_pushSuggestionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:(id)update cachedSuggestions:(id)suggestions
{
  v6 = MEMORY[0x277D42070];
  suggestionsCopy = suggestions;
  updateCopy = update;
  v9 = [v6 clientModelIdFromClientModelType:18];
  [(ATXInformationEngine *)self _pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:updateCopy forClientModel:v9 withClientModelVersion:@"0.1.1" cachedSuggestions:suggestionsCopy];

  v11 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
  timelineRelevanceABGroup = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig timelineRelevanceABGroup];
  [(ATXInformationEngine *)self _pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:updateCopy forClientModel:v11 withClientModelVersion:timelineRelevanceABGroup cachedSuggestions:suggestionsCopy];
}

- (void)_pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate:(id)update forClientModel:(id)model withClientModelVersion:(id)version cachedSuggestions:(id)suggestions
{
  v29 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  modelCopy = model;
  versionCopy = version;
  suggestionsCopy = suggestions;
  context = objc_autoreleasePoolPush();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __145__ATXInformationEngine__pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate_forClientModel_withClientModelVersion_cachedSuggestions___block_invoke;
  v25[3] = &unk_27859E680;
  v14 = modelCopy;
  v26 = v14;
  v15 = [updateCopy _pas_filteredArrayWithTest:v25];
  v16 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_60_2];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __145__ATXInformationEngine__pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate_forClientModel_withClientModelVersion_cachedSuggestions___block_invoke_3;
  v23[3] = &unk_27859E6A8;
  v17 = v14;
  v24 = v17;
  v18 = [suggestionsCopy _pas_filteredArrayWithTest:v23];
  LODWORD(model) = [(ATXInformationEngine *)self _shouldSkipRefreshForOldSuggestions:v18 newSuggestions:v16];
  v19 = __atxlog_handle_gi();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (model)
  {
    if (v20)
    {
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: predictions have NOT changed for the %@ client model. Not pushing update to blending layer", buf, 0xCu);
    }
  }

  else
  {
    if (v20)
    {
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: predictions have changed for the %@ client model. Pushing update to blending layer", buf, 0xCu);
    }

    [(ATXInformationEngine *)self _pushPredictionsToBlendingLayer:v15 forClientModel:v17 withClientModelVersion:versionCopy];
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __145__ATXInformationEngine__pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate_forClientModel_withClientModelVersion_cachedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 suggestion];
  v4 = [v3 clientModelId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __145__ATXInformationEngine__pushPredictionsToBlendingLayerIfDifferentFromTheLastCacheUpdate_forClientModel_withClientModelVersion_cachedSuggestions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 clientModelId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_pushPredictionsToBlendingLayer:(id)layer forClientModel:(id)model withClientModelVersion:(id)version
{
  v52 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  modelCopy = model;
  versionCopy = version;
  v33 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = layerCopy;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v34)
  {
    v11 = *v36;
    v32 = modelCopy;
    v26 = *v36;
    v27 = versionCopy;
    selfCopy = self;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(ATXInformationEngine *)self _proactiveSuggestionFromScoredInfoSuggestion:v13 clientModelId:modelCopy clientModelVersion:versionCopy];
        if (v15)
        {
          [v33 addObject:v15];
          v16 = __atxlog_handle_gi();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            suggestion = [v13 suggestion];
            suggestionIdentifier = [suggestion suggestionIdentifier];
            suggestion2 = [v13 suggestion];
            widgetBundleIdentifier = [suggestion2 widgetBundleIdentifier];
            suggestion3 = [v13 suggestion];
            startDate = [suggestion3 startDate];
            suggestion4 = [v13 suggestion];
            endDate = [suggestion4 endDate];
            scoreSpecification = [v15 scoreSpecification];
            suggestedConfidenceCategory = [scoreSpecification suggestedConfidenceCategory];
            *buf = 138413570;
            v40 = v32;
            v41 = 2114;
            v42 = suggestionIdentifier;
            v43 = 2112;
            v44 = widgetBundleIdentifier;
            v45 = 2112;
            v46 = startDate;
            v47 = 2112;
            v48 = endDate;
            v49 = 2048;
            v50 = suggestedConfidenceCategory;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: (%@) pushing suggestion (ID %{public}@) to blending for widget %@, startDate: %@, endDate: %@, blending confidence: %ld", buf, 0x3Eu);

            self = selfCopy;
            versionCopy = v27;

            v11 = v26;
            modelCopy = v32;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v34);
  }

  [(ATXInformationEngine *)self _updateClientModelWithClientModelId:modelCopy withSuggestions:v33];
  v24 = *MEMORY[0x277D85DE8];
}

- (id)_proactiveSuggestionFromScoredInfoSuggestion:(id)suggestion clientModelId:(id)id clientModelVersion:(id)version
{
  versionCopy = version;
  idCopy = id;
  suggestionCopy = suggestion;
  suggestion = [suggestionCopy suggestion];
  v12 = -[ATXInfoToBlendingConfidenceMapper blendingConfidenceCategoryForInfoConfidenceLevel:](self->_confidenceMapper, "blendingConfidenceCategoryForInfoConfidenceLevel:", [suggestion confidenceLevel]);
  v13 = MEMORY[0x277D42040];
  [suggestionCopy score];
  v15 = v14;

  v16 = [v13 proactiveSuggestionForInfoSuggestion:suggestion withClientModelId:idCopy clientModelVersion:versionCopy rawScore:v12 confidenceCategory:v15];

  if (!v16)
  {
    v17 = __atxlog_handle_gi();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationEngine _proactiveSuggestionFromScoredInfoSuggestion:suggestion clientModelId:v17 clientModelVersion:?];
    }
  }

  return v16;
}

- (int64_t)_clientModelTypeForInfoSuggestion:(id)suggestion
{
  v3 = MEMORY[0x277D42070];
  suggestionCopy = suggestion;
  v5 = [v3 clientModelIdFromClientModelType:19];
  clientModelId = [suggestionCopy clientModelId];

  LODWORD(suggestionCopy) = [clientModelId isEqualToString:v5];
  if (suggestionCopy)
  {
    v7 = 19;
  }

  else
  {
    v7 = 18;
  }

  return v7;
}

- (void)_updateClientModelWithClientModelId:(id)id withSuggestions:(id)suggestions
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  suggestionsCopy = suggestions;
  v7 = objc_alloc(MEMORY[0x277D42070]);
  v8 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v8 blendingLayerServer];
  v10 = [v7 initWithClientModelId:idCopy blendingLayerServer:blendingLayerServer];

  [v10 updateSuggestions:suggestionsCopy];
  v11 = __atxlog_handle_gi();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = [suggestionsCopy count];
    v14 = 2114;
    v15 = idCopy;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: InformationClientModel update Blending Layer with %d suggestion(s) for client model: %{public}@", v13, 0x12u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSkipUpdatingPredictionRefreshDateForPreviouslyScheduledDate:(id)date newDate:(id)newDate
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  newDateCopy = newDate;
  if (dateCopy && ([dateCopy timeIntervalSinceNow], v7 > -1.0) && objc_msgSend(newDateCopy, "atx_isOnOrAfterDate:", dateCopy))
  {
    v8 = __atxlog_handle_gi();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = dateCopy;
      v14 = 2112;
      v15 = newDateCopy;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: skip updating prediction refreshDate since the date of previously scheduled XPC activity (%@) is the same or earlier than the new refresh date: %@", &v12, 0x16u);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_schedulePredictionUpdateNoLaterThanDate:(id)date guardedData:(id)data
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dataCopy = data;
  [dateCopy timeIntervalSinceNow];
  if (v8 < 0.0)
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = *&dateCopy;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: _schedulePredictionUpdateNoLaterThanDate - using current date since the desired refesh date was in the past: %@.", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CBEAA8] now];

    dateCopy = v10;
  }

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:arc4random_uniform(0x258u) + 1500.0];
  v12 = [dateCopy earlierDate:v11];

  if (![(ATXInformationEngine *)self shouldSkipUpdatingPredictionRefreshDateForPreviouslyScheduledDate:dataCopy[2] newDate:v12])
  {
    v13 = __atxlog_handle_gi();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = dataCopy[2];
      *buf = 138412546;
      v23 = *&v14;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: Updating XPC activity com.apple.duetexpertd.info-pred-update. Previously scheduled prediction refresh date: %@; New prediction refresh date: %@", buf, 0x16u);
    }

    objc_storeStrong(dataCopy + 2, v12);
    [v12 timeIntervalSinceNow];
    if (v15 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    if (v16 > 0.0 || ([MEMORY[0x277D42598] isClassCLocked] & 1) != 0)
    {
      v17 = __atxlog_handle_gi();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v23 = v16;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: Using XPC delay of %f for scheduled XPC update", buf, 0xCu);
      }

      v18 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v18, *MEMORY[0x277D86250], v16);
      xpc_dictionary_set_int64(v18, *MEMORY[0x277D86270], 15);
      xpc_dictionary_set_BOOL(v18, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_BOOL(v18, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_BOOL(v18, *MEMORY[0x277D86360], 0);
      xpc_dictionary_set_string(v18, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __77__ATXInformationEngine__schedulePredictionUpdateNoLaterThanDate_guardedData___block_invoke;
      handler[3] = &unk_278598500;
      handler[4] = self;
      xpc_activity_register("com.apple.duetexpertd.info-pred-update", v18, handler);
    }

    else
    {
      v19 = __atxlog_handle_gi();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: Bypassing XPC activity and scheduling update now", buf, 2u);
      }

      xpc_activity_unregister("com.apple.duetexpertd.info-pred-update");
      [(_PASSimpleCoalescingTimer *)self->_coalescedPredictionUpdateOperation runAfterDelaySeconds:0 coalescingBehavior:1.0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__ATXInformationEngine__schedulePredictionUpdateNoLaterThanDate_guardedData___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if ([MEMORY[0x277D42598] isClassCLocked])
    {
      v5 = __atxlog_handle_gi();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __77__ATXInformationEngine__schedulePredictionUpdateNoLaterThanDate_guardedData___block_invoke_cold_1(v5);
      }
    }

    else
    {
      v5 = xpc_activity_copy_criteria(v3);
      v7 = __atxlog_handle_gi();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        string = xpc_dictionary_get_string(v5, *MEMORY[0x277D86340]);
        v10 = 136446210;
        v11 = string;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: XPC activity com.apple.duetexpertd.info-pred-update is running with priority: %{public}s", &v10, 0xCu);
      }

      [*(*(a1 + 32) + 32) runAfterDelaySeconds:0 coalescingBehavior:1.0];
    }
  }

  else
  {
    v6 = state;
    v5 = __atxlog_handle_gi();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: XPC activity com.apple.duetexpertd.info-pred-update updated state: %ld", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertSuggestions:(id)suggestions forInfoSourceIdentifier:(id)identifier completionHandler:(id)handler
{
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([suggestionsCopy count])
  {
    lock = self->_lock;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__ATXInformationEngine_insertSuggestions_forInfoSourceIdentifier_completionHandler___block_invoke;
    v12[3] = &unk_27859E6D0;
    v12[4] = self;
    v13 = suggestionsCopy;
    v14 = identifierCopy;
    v15 = handlerCopy;
    [(_PASQueueLock *)lock runAsyncWithLockAcquired:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __84__ATXInformationEngine_insertSuggestions_forInfoSourceIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _insertSuggestions:*(a1 + 40) forInfoSourceIdentifier:*(a1 + 48)];
  v5 = __atxlog_handle_gi();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__ATXInformationEngine_insertSuggestions_forInfoSourceIdentifier_completionHandler___block_invoke_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) count];
      v14 = *(a1 + 48);
      *buf = 134218242;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: accepts %lu suggestion(s) from %@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) _currentActivePredictionsContainSuggestionFromSourceId:*(a1 + 48) guardedData:v3];
    v16 = *(a1 + 32);
    if (v15)
    {
      [v16[4] runAfterDelaySeconds:0 coalescingBehavior:1.0];
    }

    else
    {
      [v16 _updatePredictionRefreshDateIfNecessaryForSuggestions:*(a1 + 40)];
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(*(a1 + 32) + 8);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__ATXInformationEngine_insertSuggestions_forInfoSourceIdentifier_completionHandler___block_invoke_67;
    v20[3] = &unk_278596F88;
    v22 = v17;
    v21 = v4;
    dispatch_async(v18, v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_insertSuggestions:(id)suggestions forInfoSourceIdentifier:(id)identifier
{
  v17[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  identifierCopy = identifier;
  if ([suggestionsCopy count] && (-[ATXInformationStore writeInfoSuggestions:](self->_store, "writeInfoSuggestions:", suggestionsCopy) & 1) == 0)
  {
    identifierCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to write suggestions with source id %@ to store", identifierCopy];
    v10 = MEMORY[0x277CCA9B8];
    v11 = identifierCopy;
    v12 = [v10 alloc];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v8 = [v12 initWithDomain:@"ATXInformationEngineErrorDomain" code:-1 userInfo:v13];
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_updatePredictionRefreshDateIfNecessaryForSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    lock = self->_lock;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__ATXInformationEngine__updatePredictionRefreshDateIfNecessaryForSuggestions___block_invoke;
    v7[3] = &unk_27859E720;
    v8 = suggestionsCopy;
    selfCopy = self;
    [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
    v6 = v8;
  }

  else
  {
    v6 = __atxlog_handle_gi();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ATXInformationEngine _updatePredictionRefreshDateIfNecessaryForSuggestions:v6];
    }
  }
}

void __78__ATXInformationEngine__updatePredictionRefreshDateIfNecessaryForSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__ATXInformationEngine__updatePredictionRefreshDateIfNecessaryForSuggestions___block_invoke_71;
  v5[3] = &unk_27859E6F8;
  v5[4] = &v6;
  [v4 enumerateObjectsUsingBlock:v5];
  [*(a1 + 40) _schedulePredictionUpdateNoLaterThanDate:v7[5] guardedData:v3];
  _Block_object_dispose(&v6, 8);
}

void __78__ATXInformationEngine__updatePredictionRefreshDateIfNecessaryForSuggestions___block_invoke_71(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 endDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = [v10 startDate];
    v7 = [v6 earlierDate:*(*(*(a1 + 32) + 8) + 40)];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (void)resetSuggestionsTo:(id)to forInfoSourceIdentifier:(id)identifier completionHandler:(id)handler
{
  toCopy = to;
  identifierCopy = identifier;
  handlerCopy = handler;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__ATXInformationEngine_resetSuggestionsTo_forInfoSourceIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_27859E6D0;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = toCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = toCopy;
  v14 = identifierCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v15];
}

void __85__ATXInformationEngine_resetSuggestionsTo_forInfoSourceIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 40);
  v5 = [*(*(a1 + 32) + 48) readAllInfoSuggestionsWithSourceIdentifier:*(a1 + 40)];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  if (![*(a1 + 48) count] || !objc_msgSend(v5, "count"))
  {
    if ([*(a1 + 48) count])
    {
      v22 = *(a1 + 48);
      v23 = v7;
    }

    else
    {
      if (![v5 count])
      {
        goto LABEL_27;
      }

      v23 = v6;
      v22 = v5;
    }

    [v23 addObjectsFromArray:v22];
    goto LABEL_27;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:*(a1 + 48)];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v44 = v5;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [v6 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v11);
  }

  v45 = v3;

  v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v9];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v49 + 1) + 8 * j);
        if (([v15 containsObject:v21] & 1) == 0)
        {
          [v7 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v18);
  }

  v5 = v44;
  v3 = v45;
  v4 = (a1 + 40);
LABEL_27:
  if (![v6 count] && !objc_msgSend(v7, "count"))
  {
    goto LABEL_36;
  }

  if ([*(*(a1 + 32) + 48) atomicallyDeleteInfoSuggestions:v6 insertInfoSuggestions:v7])
  {
    v24 = [*(a1 + 32) _currentActivePredictionsContainSuggestionFromSourceId:*(a1 + 40) guardedData:v3];
    v25 = *(a1 + 32);
    if (v24)
    {
      [v25[4] runAfterDelaySeconds:0 coalescingBehavior:1.0];
    }

    else
    {
      [v25 _updatePredictionRefreshDateIfNecessaryForSuggestions:*(a1 + 48)];
    }

    goto LABEL_36;
  }

  v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to reset suggestions with source ID %@ due to database failure.", *v4];
  v27 = MEMORY[0x277CCA9B8];
  v28 = v26;
  v29 = [v27 alloc];
  v62[0] = *MEMORY[0x277CCA450];
  *buf = v28;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];

  v31 = [v29 initWithDomain:@"ATXInformationEngineErrorDomain" code:-1 userInfo:v30];
  if (!v31)
  {
LABEL_36:
    v32 = __atxlog_handle_gi();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(a1 + 40);
      v40 = [*(a1 + 48) count];
      *buf = 138412546;
      *&buf[4] = v39;
      v58 = 2048;
      v59 = v40;
      _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: source %@ sets %lu suggestion(s)", buf, 0x16u);
    }

    v31 = 0;
    goto LABEL_39;
  }

  v32 = __atxlog_handle_gi();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    __85__ATXInformationEngine_resetSuggestionsTo_forInfoSourceIdentifier_completionHandler___block_invoke_cold_1(v4, v32, v33, v34, v35, v36, v37, v38);
  }

LABEL_39:

  v41 = *(a1 + 56);
  if (v41)
  {
    v42 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__ATXInformationEngine_resetSuggestionsTo_forInfoSourceIdentifier_completionHandler___block_invoke_77;
    block[3] = &unk_278596F88;
    v48 = v41;
    v47 = v31;
    dispatch_async(v42, block);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)_currentActivePredictionsContainSuggestionFromSourceId:(id)id guardedData:(id)data
{
  idCopy = id;
  dataCopy = data;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = dataCopy[1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__ATXInformationEngine__currentActivePredictionsContainSuggestionFromSourceId_guardedData___block_invoke;
  v10[3] = &unk_27859E748;
  v8 = idCopy;
  v11 = v8;
  v12 = &v13;
  [v7 enumerateObjectsUsingBlock:v10];
  LOBYTE(v7) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __91__ATXInformationEngine__currentActivePredictionsContainSuggestionFromSourceId_guardedData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 sourceIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)getSuggestionsForInfoSourceIdentifier:(id)identifier withReply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__ATXInformationEngine_getSuggestionsForInfoSourceIdentifier_withReply___block_invoke;
  v11[3] = &unk_27859E770;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identifierCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __72__ATXInformationEngine_getSuggestionsForInfoSourceIdentifier_withReply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 48) readAllInfoSuggestionsWithSourceIdentifier:*(a1 + 40)];
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 count];
    v5 = *(a1 + 40);
    *buf = 67109378;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%d suggestion(s) to be returned to source: %@", buf, 0x12u);
  }

  v6 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ATXInformationEngine_getSuggestionsForInfoSourceIdentifier_withReply___block_invoke_78;
  v10[3] = &unk_278596F88;
  v7 = *(a1 + 48);
  v11 = v2;
  v12 = v7;
  v8 = v2;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearSuggestionsForInfoSourceIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__ATXInformationEngine_clearSuggestionsForInfoSourceIdentifier_completionHandler___block_invoke;
  v11[3] = &unk_27859E770;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v11];
}

void __82__ATXInformationEngine_clearSuggestionsForInfoSourceIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _clearSuggestionsForInfoSourceIdentifier:*(a1 + 40)];
  v5 = __atxlog_handle_gi();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__ATXInformationEngine_clearSuggestionsForInfoSourceIdentifier_completionHandler___block_invoke_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXInformationEngine: all suggestions from %@ removed", buf, 0xCu);
    }

    if ([*(a1 + 32) _currentActivePredictionsContainSuggestionFromSourceId:*(a1 + 40) guardedData:v3])
    {
      [*(*(a1 + 32) + 32) runAfterDelaySeconds:0 coalescingBehavior:1.0];
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v15 = *(*(a1 + 32) + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__ATXInformationEngine_clearSuggestionsForInfoSourceIdentifier_completionHandler___block_invoke_79;
    v17[3] = &unk_278596F88;
    v19 = v14;
    v18 = v4;
    dispatch_async(v15, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_clearSuggestionsForInfoSourceIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  store = self->_store;
  v16 = 0;
  v6 = [(ATXInformationStore *)store deleteAllInfoSuggestionsWithSourceIdentifier:identifierCopy error:&v16];
  v7 = v16;
  v8 = 0;
  if ((v6 & 1) == 0)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to delete all suggestions with source id %@ from store with error: %@", identifierCopy, v7];
    v10 = MEMORY[0x277CCA9B8];
    v11 = v9;
    v12 = [v10 alloc];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v8 = [v12 initWithDomain:@"ATXInformationEngineErrorDomain" code:-2 userInfo:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

void __81__ATXInformationEngine_handleSuggestionDismissal_isDismissalLongTerm_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__ATXInformationEngine_handleSuggestionDismissal_isDismissalLongTerm_completion___block_invoke_2;
    v8[3] = &unk_27859E798;
    v8[4] = v6;
    v9 = v5;
    [v7 runAsyncWithLockAcquired:v8];
  }
}

void __81__ATXInformationEngine_handleSuggestionDismissal_isDismissalLongTerm_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updatePredictionsWithGuardedData:a2];
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ATXInformationEngine_handleSuggestionDismissal_isDismissalLongTerm_completion___block_invoke_3;
  block[3] = &unk_2785969B8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

- (void)handleProactiveStackRotationForInfoSuggestion:(id)suggestion isStalenessRotation:(BOOL)rotation
{
  suggestionCopy = suggestion;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__ATXInformationEngine_handleProactiveStackRotationForInfoSuggestion_isStalenessRotation___block_invoke;
  v9[3] = &unk_27859E7E8;
  v9[4] = self;
  v10 = suggestionCopy;
  rotationCopy = rotation;
  v8 = suggestionCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v9];
}

void __90__ATXInformationEngine_handleProactiveStackRotationForInfoSuggestion_isStalenessRotation___block_invoke(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = *(*(a1 + 32) + 48);
  v4 = [*(a1 + 40) suggestionIdentifier];
  LOBYTE(v3) = [v3 rotationExistsForSuggestionWithId:v4 considerStalenessRotation:0];

  if ((v3 & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 80);
    v6 = [*(a1 + 40) widgetBundleIdentifier];
    v7 = [*(a1 + 40) widgetKind];
    [v5 durationLimitForWidgetWithIdentifier:v6 kind:v7];
    v9 = v8;

    v10 = *(*(a1 + 32) + 80);
    v11 = [*(a1 + 40) widgetBundleIdentifier];
    v12 = [*(a1 + 40) widgetKind];
    [v10 coolDownIntervalForWidgetWithIdentifier:v11 kind:v12];
    v14 = v13;

    v15 = objc_alloc(MEMORY[0x277CEB8A0]);
    v16 = [*(a1 + 40) suggestionIdentifier];
    v17 = [*(a1 + 40) clientModelId];
    v18 = [*(a1 + 40) criterion];
    v19 = [*(a1 + 40) widgetBundleIdentifier];
    v20 = [*(a1 + 40) widgetKind];
    v21 = [*(a1 + 40) intent];
    v22 = *(a1 + 48);
    v23 = [MEMORY[0x277CBEAA8] now];
    LOBYTE(v34) = v22;
    v24 = [v15 initWithInfoSuggestionId:v16 clientModelId:v17 criterion:v18 widget:v19 kind:v20 intent:v21 isStalenessRotation:v9 rotationDate:v14 durationLimit:v34 coolDownInterval:v23];

    v25 = [*(*(a1 + 32) + 48) insertOrIgnoreProactiveStackRotationRecord:v24];
    v26 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:19];
    v27 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:20];
    v28 = [*(a1 + 40) clientModelId];
    if ([v28 isEqualToString:v26])
    {
      v29 = 0;
    }

    else
    {
      v30 = [*(a1 + 40) clientModelId];
      v31 = [v30 isEqualToString:v27];

      v29 = v31 ^ 1;
    }

    if (v25 && ((*(a1 + 48) | v29) & 1) == 0)
    {
      v32 = *(a1 + 32);
      v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9];
      [v32 _schedulePredictionUpdateNoLaterThanDate:v33 guardedData:v35];
    }
  }
}

- (id)scheduledPredictionRefreshDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ATXInformationEngine_scheduledPredictionRefreshDate__block_invoke;
  v5[3] = &unk_27859E810;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__ATXInformationEngine_scheduledPredictionRefreshDate__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)allRelevantInfoSuggestions
{
  readCurrentlyRelevantSuggestions = [(ATXInformationStore *)self->_store readCurrentlyRelevantSuggestions];
  if (readCurrentlyRelevantSuggestions)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:readCurrentlyRelevantSuggestions copyItems:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)allInfoSuggestions
{
  readAllInfoSuggestions = [(ATXInformationStore *)self->_store readAllInfoSuggestions];
  if (readAllInfoSuggestions)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:readAllInfoSuggestions copyItems:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (id)allInfoSuggestionsForSourceId:(id)id
{
  v3 = [(ATXInformationStore *)self->_store readAllInfoSuggestionsWithSourceIdentifier:id];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)currentPredictions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ATXInformationEngine_currentPredictions__block_invoke;
  v5[3] = &unk_27859E810;
  v5[4] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __42__ATXInformationEngine_currentPredictions__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = v4[1];

  v7 = [v5 initWithArray:v6 copyItems:1];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8](v7, v9);
}

- (id)forceUpdateAndReturnPredictions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ATXInformationEngine_forceUpdateAndReturnPredictions__block_invoke;
  v5[3] = &unk_27859E838;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASQueueLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __55__ATXInformationEngine_forceUpdateAndReturnPredictions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updatePredictionsWithGuardedData:v4];
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = v4[1];

  v7 = [v5 initWithArray:v6 copyItems:1];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2821F96F8](v7, v9);
}

- (void)_proactiveSuggestionFromScoredInfoSuggestion:(void *)a1 clientModelId:(NSObject *)a2 clientModelVersion:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXInformationEngine: failed to convert ATXInfoSuggestion to ATXProactiveSuggestion: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __84__ATXInformationEngine_insertSuggestions_forInfoSourceIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXInformationEngine: aborting insertSuggestions due to %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__ATXInformationEngine_resetSuggestionsTo_forInfoSourceIdentifier_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXInformationEngine: Failed to reset suggestions with source ID %@ due to database failure.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __82__ATXInformationEngine_clearSuggestionsForInfoSourceIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXInformationEngine: aborting clearSuggestions due to %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end