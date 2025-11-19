@interface ATXRSWidgetSuggestionProducer
+ (id)replacementContainerBundleIdForDonationBundleId:(id)a3;
- (ATXRSWidgetSuggestionProducer)init;
- (ATXRSWidgetSuggestionProducer)initWithDescriptorCache:(id)a3 relevanceMonitor:(id)a4 filter:(id)a5 abuseGuard:(id)a6 featurizer:(id)a7 featureWeights:(id)a8 ranker:(id)a9 confidenceMapper:(id)a10 suggestionReceiver:(id)a11 metadataProvider:(id)a12 widgetRelevanceService:(id)a13;
- (BOOL)_areInfoSuggestions:(id)a3 equalToProactiveSuggestions:(id)a4;
- (id)_candidatesFromBundleIdToRelevantIntentsDict:(id)a3;
- (id)_candidatesFromRelevantShortcutsFromStartDate:(id)a3;
- (id)_infoSuggestionFromCandidate:(id)a3 suggestionIdentifier:(id)a4;
- (id)_proactiveSuggestionsFromScoredInfoSuggestions:(id)a3;
- (id)relevantShortcutCandidateFromLNRelevantIntent:(id)a3 donationBundleId:(id)a4;
- (void)_coalescedRefreshRelevantShortcuts:(id)a3;
- (void)_pushSuggestionsToBlendingIfNecessary:(id)a3;
- (void)_refreshRelevantShortcuts;
- (void)relevanceMonitorDidUpdateCurrentlyRelevantCandidates:(id)a3 relevantContexts:(id)a4;
- (void)widgetRelevancesDidChangeForRelevanceService:(id)a3;
@end

@implementation ATXRSWidgetSuggestionProducer

- (ATXRSWidgetSuggestionProducer)init
{
  v13 = [MEMORY[0x277CEB998] sharedInstance];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[ATXWidgetSuggestionAbuseGuard sharedInstance];
  v15 = objc_opt_new();
  v14 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x277CFA420]) initWithOptions:1];
  v12 = [(ATXRSWidgetSuggestionProducer *)self initWithDescriptorCache:v13 relevanceMonitor:v3 filter:v4 abuseGuard:v5 featurizer:v15 featureWeights:v14 ranker:v6 confidenceMapper:v7 suggestionReceiver:v8 metadataProvider:v9 widgetRelevanceService:v10];

  return v12;
}

- (ATXRSWidgetSuggestionProducer)initWithDescriptorCache:(id)a3 relevanceMonitor:(id)a4 filter:(id)a5 abuseGuard:(id)a6 featurizer:(id)a7 featureWeights:(id)a8 ranker:(id)a9 confidenceMapper:(id)a10 suggestionReceiver:(id)a11 metadataProvider:(id)a12 widgetRelevanceService:(id)a13
{
  v65 = a3;
  v68 = a4;
  v54 = a5;
  v64 = a5;
  v63 = a6;
  v62 = a7;
  v61 = a8;
  v60 = a9;
  v59 = a10;
  v58 = a11;
  v57 = a12;
  v56 = a13;
  v79.receiver = self;
  v79.super_class = ATXRSWidgetSuggestionProducer;
  v18 = [(ATXRSWidgetSuggestionProducer *)&v79 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_descriptorCache, a3);
    objc_storeStrong(&v19->_relevanceMonitor, a4);
    [v68 setDelegate:v19];
    objc_storeStrong(&v19->_filter, v54);
    objc_storeStrong(&v19->_abuseGuard, a6);
    objc_storeStrong(&v19->_featurizer, a7);
    objc_storeStrong(&v19->_featureWeights, a8);
    objc_storeStrong(&v19->_ranker, a9);
    objc_storeStrong(&v19->_confidenceMapper, a10);
    objc_storeStrong(&v19->_suggestionReceiver, a11);
    objc_storeStrong(&v19->_metadataProvider, a12);
    objc_storeStrong(&v19->_widgetRelevanceService, a13);
    [(CHSWidgetRelevanceService *)v19->_widgetRelevanceService registerObserver:v19];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_BACKGROUND, 0);

    v55 = v21;
    v22 = dispatch_queue_create("ATXRSWidgetSuggestionProducer", v21);
    queue = v19->_queue;
    v19->_queue = v22;

    objc_initWeak(&location, v19);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke;
    aBlock[3] = &unk_2785977B0;
    objc_copyWeak(&v77, &location);
    v24 = _Block_copy(aBlock);
    v25 = [objc_alloc(MEMORY[0x277D42628]) initWithQueue:v19->_queue operation:v24];
    coalescedRefreshRelevantShortcutsOperation = v19->_coalescedRefreshRelevantShortcutsOperation;
    v19->_coalescedRefreshRelevantShortcutsOperation = v25;

    contexta = objc_autoreleasePoolPush();
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create("com.apple.duetexpertd.RelevantShortcutsObserver", v27);
    targetQueueForBiome = v19->_targetQueueForBiome;
    v19->_targetQueueForBiome = v28;

    v30 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"App.RelevantShortcuts.Tombstone" targetQueue:v19->_targetQueueForBiome];
    relevantShortcutsTombstoneScheduler = v19->_relevantShortcutsTombstoneScheduler;
    v19->_relevantShortcutsTombstoneScheduler = v30;

    v32 = BiomeLibrary();
    v33 = [v32 App];
    v34 = [v33 RelevantShortcuts];
    v35 = [v34 tombstoneDSLPublisherWithUseCase:*MEMORY[0x277CEBB48]];
    v36 = [v35 subscribeOn:v19->_relevantShortcutsTombstoneScheduler];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_42;
    v74[3] = &unk_2785977D8;
    objc_copyWeak(&v75, &location);
    v37 = [v36 sinkWithCompletion:&__block_literal_global_13 receiveInput:v74];
    relevantShortcutsTombstoneSink = v19->_relevantShortcutsTombstoneSink;
    v19->_relevantShortcutsTombstoneSink = v37;

    v39 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"App.RelevantShortcuts" targetQueue:v19->_targetQueueForBiome];
    relevantShortcutsStreamScheduler = v19->_relevantShortcutsStreamScheduler;
    v19->_relevantShortcutsStreamScheduler = v39;

    v41 = BiomeLibrary();
    v42 = [v41 App];
    v43 = [v42 RelevantShortcuts];
    v44 = [v43 atx_DSLPublisher];
    v45 = [v44 subscribeOn:v19->_relevantShortcutsStreamScheduler];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_50;
    v72[3] = &unk_2785977D8;
    objc_copyWeak(&v73, &location);
    v46 = [v45 sinkWithCompletion:&__block_literal_global_49 receiveInput:v72];
    relevantShortcutsStreamSink = v19->_relevantShortcutsStreamSink;
    v19->_relevantShortcutsStreamSink = v46;

    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    [v48 addObserver:v19 selector:sel__coalescedRefreshRelevantShortcuts_ name:*MEMORY[0x277CEBAF0] object:v19->_descriptorCache];
    [v48 addObserver:v19 selector:sel__coalescedRefreshRelevantShortcuts_ name:@"ATXWidgetSuggestionAbuseGuardRefresh" object:v19->_abuseGuard];

    objc_destroyWeak(&v73);
    objc_destroyWeak(&v75);
    objc_autoreleasePoolPop(contexta);
    v49 = *MEMORY[0x277D23AA0];
    v50 = v19->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_54;
    handler[3] = &unk_278597800;
    v71 = v19;
    notify_register_dispatch(v49, &v19->_relevantShortcutRefreshToken, v50, handler);
    v51 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v51, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Initialized", buf, 2u);
    }

    objc_destroyWeak(&v77);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _refreshRelevantShortcuts];
  }

  else
  {
    v3 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_cold_1();
    }
  }
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_40_cold_1(v2);
    }
  }
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_42(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = __atxlog_handle_relevant_shortcut();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Triggering coalesced refresh due to Tombstone event : %@", &v8, 0xCu);
    }

    [WeakRetained _coalescedRefreshRelevantShortcuts];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_42_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_47(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_47_cold_1(v2);
    }
  }
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_50(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = __atxlog_handle_relevant_shortcut();
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Triggering coalesced refresh due to BMAppRelevantShortcuts event : %@", &v8, 0xCu);
    }

    [WeakRetained _coalescedRefreshRelevantShortcuts];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_54(uint64_t a1)
{
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Triggering coalesced refresh by LNRelevantIntentsChangedNotification", v4, 2u);
  }

  return [*(a1 + 32) _coalescedRefreshRelevantShortcuts];
}

- (void)widgetRelevancesDidChangeForRelevanceService:(id)a3
{
  v4 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Triggering coalesced refresh because CHSWidgetRelevanceService.widgetRelevancesDidChangeForRelevanceService", v5, 2u);
  }

  [(ATXRSWidgetSuggestionProducer *)self _coalescedRefreshRelevantShortcuts];
}

- (void)relevanceMonitorDidUpdateCurrentlyRelevantCandidates:(id)a3 relevantContexts:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__ATXRSWidgetSuggestionProducer_relevanceMonitorDidUpdateCurrentlyRelevantCandidates_relevantContexts___block_invoke;
  block[3] = &unk_278597828;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __103__ATXRSWidgetSuggestionProducer_relevanceMonitorDidUpdateCurrentlyRelevantCandidates_relevantContexts___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v16 = os_transaction_create();
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] count];
    *buf = 134217984;
    v28 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Refreshing suggestions for %lu currently relevant candidates...", buf, 0xCu);
  }

  v4 = [*(a1[5] + 3) filterCandidatesBySuggestionRequirements:a1[4]];
  v19 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v18 = *v23;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [a1[6] objectForKeyedSubscript:v6];
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v8 = [v6 widgetDescriptor];
        v9 = [v8 extensionBundleIdentifier];
        v10 = [v6 widgetDescriptor];
        v11 = [v10 kind];
        v12 = [v6 intent];
        v13 = [v21 initWithFormat:@"%@:%@:%lld:%lu", v9, v11, objc_msgSend(v12, "atx_indexingHash"), objc_msgSend(v7, "hash"), v16];

        v14 = [a1[5] _infoSuggestionFromCandidate:v6 suggestionIdentifier:v13];
        [v19 addObject:v14];
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }

  [a1[5] _pushSuggestionsToBlendingIfNecessary:v19];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_coalescedRefreshRelevantShortcuts:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Triggering coalesced refresh by notification %{public}@", &v8, 0xCu);
  }

  [(ATXRSWidgetSuggestionProducer *)self _coalescedRefreshRelevantShortcuts];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_refreshRelevantShortcuts
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "ATXRSWidgetSuggestionProducer: INAppIntent didn't have a link action.", buf, 2u);
}

void __58__ATXRSWidgetSuggestionProducer__refreshRelevantShortcuts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ATXRSWidgetSuggestionProducer__refreshRelevantShortcuts__block_invoke_cold_1();
    }
  }

  v8 = [*(a1 + 32) _candidatesFromBundleIdToRelevantIntentsDict:v5];
  v9 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = [v8 count];
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: fetched %lu valid relevant intents from link", &v13, 0xCu);
  }

  [*(a1 + 40) addObjectsFromArray:v8];
  v10 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) count];
    v13 = 134217984;
    v14 = v11;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: fetched %lu relevantShortcutCandidates in total", &v13, 0xCu);
  }

  [*(*(a1 + 32) + 16) resetToMonitorForRelevantShortcutCandidates:*(a1 + 40)];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_candidatesFromBundleIdToRelevantIntentsDict:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v20 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v20)
  {
    v19 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [obj objectForKeyedSubscript:v6];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              v14 = objc_autoreleasePoolPush();
              v15 = [(ATXRSWidgetSuggestionProducer *)self relevantShortcutCandidateFromLNRelevantIntent:v13 donationBundleId:v6];
              if (v15)
              {
                [v24 addObject:v15];
                v16 = __atxlog_handle_relevant_shortcut();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v34 = v13;
                  _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: successfully produced candidate from relevant intent: %@", buf, 0xCu);
                }
              }

              objc_autoreleasePoolPop(v14);
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v5 = v23 + 1;
      }

      while (v23 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v20);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)relevantShortcutCandidateFromLNRelevantIntent:(id)a3 donationBundleId:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  metadataProvider = self->_metadataProvider;
  v9 = [v6 action];
  v10 = [v9 identifier];
  v23 = 0;
  v11 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:v7 andActionIdentifier:v10 error:&v23];
  v12 = v23;

  if (v12 || !v11)
  {
    v15 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ATXRSWidgetSuggestionProducer relevantShortcutCandidateFromLNRelevantIntent:donationBundleId:];
    }

    v20 = 0;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CD3A70]);
    v14 = [v6 action];
    v15 = [v13 initWithAppBundleIdentifier:v7 linkAction:v14 linkActionMetadata:v11];

    v16 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:v15];
    if (v16)
    {
      v17 = [v6 rkContext];
      v18 = [ATXRelevantContextConverter contextFromRelevantContext:v17];

      if (v18)
      {
        v24[0] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      else
      {
        v19 = MEMORY[0x277CBEBF8];
      }

      v20 = [[ATXRelevantShortcutCandidate alloc] initWithWidgetDescriptor:v16 donationBundleIdentifier:v7 intent:v15 relevantContexts:v19];
    }

    else
    {
      v18 = __atxlog_handle_relevant_shortcut();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXRSWidgetSuggestionProducer relevantShortcutCandidateFromLNRelevantIntent:donationBundleId:];
      }

      v20 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_candidatesFromRelevantShortcutsFromStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CBEAA8] now];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ATXRSWidgetSuggestionProducer__candidatesFromRelevantShortcutsFromStartDate___block_invoke;
  v12[3] = &unk_278597898;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v6 enumerateEventsFromStartDate:v4 endDate:v7 limit:1000 block:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __79__ATXRSWidgetSuggestionProducer__candidatesFromRelevantShortcutsFromStartDate___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 relevantShortcut];
  v6 = [v4 bundleID];

  v7 = [v5 widgetKind];

  if (v7)
  {
    v8 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;

    v12 = *(*(a1 + 32) + 8);
    v13 = [v5 widgetKind];
    v14 = [v12 homeScreenDescriptorForContainerBundleId:v11 widgetKind:v13];

    if (!v14)
    {
      v16 = __atxlog_handle_relevant_shortcut();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __79__ATXRSWidgetSuggestionProducer__candidatesFromRelevantShortcutsFromStartDate___block_invoke_cold_1(v11, v5);
      }

      goto LABEL_24;
    }

    v15 = [v5 shortcut];
    v16 = [v15 intent];

    if ([v16 _type]== 3 || ![v16 _type])
    {

      v16 = 0;
    }

    v28 = v11;
    v17 = [v14 intentType];
    if (v17)
    {
      v11 = [v16 _className];
      v2 = [v14 intentType];
      if ([v11 isEqualToString:v2])
      {

LABEL_23:
        v21 = [v5 relevanceProviders];
        v22 = [v21 _pas_mappedArrayWithTransform:&__block_literal_global_77];

        v23 = [[ATXRelevantShortcutCandidate alloc] initWithWidgetDescriptor:v14 donationBundleIdentifier:v6 intent:v16 relevantContexts:v22];
        [*(a1 + 40) addObject:v23];

        v11 = v28;
LABEL_24:

        goto LABEL_25;
      }
    }

    v18 = [v16 _className];
    if (v18)
    {

      if (v17)
      {
      }
    }

    else
    {
      v19 = [v14 intentType];

      if (v17)
      {
      }

      if (!v19)
      {
        goto LABEL_23;
      }
    }

    v20 = __atxlog_handle_relevant_shortcut();
    v11 = v28;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = [v16 _className];
      v27 = [v14 intentType];
      *buf = 138412802;
      v30 = v26;
      v31 = 2112;
      v32 = v27;
      v33 = 2112;
      v34 = v28;
      _os_log_error_impl(&dword_2263AA000, v20, OS_LOG_TYPE_ERROR, "ATXRSWidgetSuggestionProducer: donated intent (%@) and matching descriptor intent (%@) do not match for containerBundleId %@", buf, 0x20u);
    }

    goto LABEL_24;
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_infoSuggestionFromCandidate:(id)a3 suggestionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 donationBundleIdentifier];
  v8 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v5 donationBundleIdentifier];
  }

  v27 = v10;

  v11 = objc_alloc(MEMORY[0x277D42040]);
  v12 = [v5 widgetDescriptor];
  v13 = [v12 extensionBundleIdentifier];
  v14 = [v5 widgetDescriptor];
  v15 = [v14 kind];
  v16 = [v5 widgetDescriptor];
  v17 = [v16 atx_layoutOptions];
  v18 = [v5 intent];
  v19 = [v11 initWithAppBundleIdentifier:v27 widgetBundleIdentifier:v13 widgetKind:v15 criterion:&stru_2839A6058 applicableLayouts:v17 suggestionIdentifier:v6 startDate:0 endDate:0 intent:v18 metadata:0 relevanceScore:0];

  abuseGuard = self->_abuseGuard;
  v21 = [v19 widgetBundleIdentifier];
  v22 = [v19 widgetKind];
  v23 = [v19 intent];
  LODWORD(abuseGuard) = [(ATXWidgetSuggestionAbuseGuard *)abuseGuard shouldDemoteSuggestionsForWidget:v21 kind:v22 intent:v23];

  if (abuseGuard)
  {
    v24 = 2;
  }

  else
  {
    v24 = 3;
  }

  [v19 setConfidenceLevel:{-[ATXInfoToBlendingConfidenceMapper minInfoConfidenceLevelForBlendingConfidenceCategory:](self->_confidenceMapper, "minInfoConfidenceLevelForBlendingConfidenceCategory:", v24)}];

  return v19;
}

- (void)_pushSuggestionsToBlendingIfNecessary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D42070]);
  v6 = [objc_opt_class() _clientModelIdentifier];
  v7 = [(ATXClientModelSuggestionReceiver *)self->_suggestionReceiver blendingLayerServer];
  v8 = [v5 initWithClientModelId:v6 blendingLayerServer:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke;
  v11[3] = &unk_2785978E8;
  v11[4] = self;
  v12 = v4;
  v13 = v8;
  v9 = v8;
  v10 = v4;
  [v9 retrieveCurrentSuggestionsWithReply:v11];
}

void __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 136);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke_2;
  v8[3] = &unk_2785978C0;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _areInfoSuggestions:*(a1 + 40) equalToProactiveSuggestions:*(a1 + 48)])
  {
    v2 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Short-circuiting Blending update, since set of suggestions has not changed.", buf, 2u);
    }
  }

  else
  {
    v5 = [*(*(a1 + 32) + 40) featurizeInfoSuggestions:*(a1 + 40)];
    v3 = [*(*(a1 + 32) + 56) sortFeaturizedSuggestions:v5 withFeatureWeights:*(*(a1 + 32) + 48)];
    v4 = [*(a1 + 32) _proactiveSuggestionsFromScoredInfoSuggestions:v3];
    [*(a1 + 56) updateSuggestions:v4 completionHandler:&__block_literal_global_87];
  }
}

void __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke_84(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke_84_cold_1();
    }
  }
}

- (BOOL)_areInfoSuggestions:(id)a3 equalToProactiveSuggestions:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = [v6 count];
    if (v8 == [v7 count])
    {
      v33 = v7;
      v9 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = v6;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v39;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v38 + 1) + 8 * i);
            v16 = [v15 suggestionIdentifier];
            [v9 setObject:v15 forKeyedSubscript:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v12);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = v33;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v34 + 1) + 8 * j);
            v23 = [v22 executableSpecification];
            v24 = [v23 executableIdentifier];
            v25 = [v9 objectForKeyedSubscript:v24];

            if (v25)
            {
              v26 = -[ATXInfoToBlendingConfidenceMapper blendingConfidenceCategoryForInfoConfidenceLevel:](self->_confidenceMapper, "blendingConfidenceCategoryForInfoConfidenceLevel:", [v25 confidenceLevel]);
              v27 = [v22 scoreSpecification];
              v28 = [v27 suggestedConfidenceCategory];

              if (v26 == v28)
              {
                continue;
              }
            }

            v29 = 0;
            goto LABEL_24;
          }

          v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
          v29 = 1;
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v29 = 1;
      }

LABEL_24:

      v6 = v32;
      v7 = v33;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_proactiveSuggestionsFromScoredInfoSuggestions:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v30)
  {
    v6 = *v32;
    v7 = 0x277D42000uLL;
    v8 = @"0.1";
    *&v5 = 138412546;
    v26 = v5;
    v27 = self;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 suggestion];
        v12 = -[ATXInfoToBlendingConfidenceMapper blendingConfidenceCategoryForInfoConfidenceLevel:](self->_confidenceMapper, "blendingConfidenceCategoryForInfoConfidenceLevel:", [v11 confidenceLevel]);
        v13 = *(v7 + 64);
        v14 = [objc_opt_class() _clientModelIdentifier];
        [v10 score];
        v15 = [v13 proactiveSuggestionForInfoSuggestion:v11 withClientModelId:v14 clientModelVersion:v8 rawScore:v12 confidenceCategory:?];

        v16 = __atxlog_handle_relevant_shortcut();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v11 suggestionIdentifier];
            v19 = [v11 intent];
            [v19 intentDescription];
            v20 = v8;
            v21 = v6;
            v23 = v22 = v7;
            *buf = v26;
            v36 = v18;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXRSWidgetSuggestionProducer: Pushing suggestion to Blending: Suggestion ID = %@, intent description %@", buf, 0x16u);

            v7 = v22;
            v6 = v21;
            v8 = v20;
            self = v27;
          }

          [v29 addObject:v15];
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(ATXRSWidgetSuggestionProducer *)v39 _proactiveSuggestionsFromScoredInfoSuggestions:v11];
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v30);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)replacementContainerBundleIdForDonationBundleId:(id)a3
{
  v3 = replacementContainerBundleIdForDonationBundleId___pasOnceToken40;
  v4 = a3;
  if (v3 != -1)
  {
    +[ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:];
  }

  v5 = [replacementContainerBundleIdForDonationBundleId___pasExprOnceResult objectForKeyedSubscript:v4];

  return v5;
}

void __81__ATXRSWidgetSuggestionProducer_replacementContainerBundleIdForDonationBundleId___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = replacementContainerBundleIdForDonationBundleId___pasExprOnceResult;
  replacementContainerBundleIdForDonationBundleId___pasExprOnceResult = &unk_283A58DA8;

  objc_autoreleasePoolPop(v0);
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_40_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __201__ATXRSWidgetSuggestionProducer_initWithDescriptorCache_relevanceMonitor_filter_abuseGuard_featurizer_featureWeights_ranker_confidenceMapper_suggestionReceiver_metadataProvider_widgetRelevanceService___block_invoke_47_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __58__ATXRSWidgetSuggestionProducer__refreshRelevantShortcuts__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)relevantShortcutCandidateFromLNRelevantIntent:donationBundleId:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "ATXRSWidgetSuggestionProducer: error fetching metadata for relevant intent link action: %@, %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)relevantShortcutCandidateFromLNRelevantIntent:donationBundleId:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __79__ATXRSWidgetSuggestionProducer__candidatesFromRelevantShortcutsFromStartDate___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 widgetKind];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __71__ATXRSWidgetSuggestionProducer__pushSuggestionsToBlendingIfNecessary___block_invoke_84_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_proactiveSuggestionsFromScoredInfoSuggestions:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_error_impl(&dword_2263AA000, v2, OS_LOG_TYPE_ERROR, "ATXRSWidgetSuggestionProducer: failed to convert ATXInfoSuggestion to ATXProactiveSuggestion: %@", v4, 0xCu);
}

@end