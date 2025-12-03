@interface ATXRecentAndSuggestedAppsLayoutSelector
- (ATXRecentAndSuggestedAppsLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters maxRecents:(unint64_t)recents recencyLookBackSeconds:(double)seconds;
- (ATXRecentAndSuggestedAppsLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters maxRecents:(unint64_t)recents recencyLookBackSeconds:(double)seconds appLaunchPublisher:(id)publisher;
- (id)_accumulateRecentAppLaunchBundleIds;
- (id)_getATXProactiveSuggestionForRecentAppLaunch:(id)launch;
- (void)_accumulateRecentAppLaunchBundleIds;
@end

@implementation ATXRecentAndSuggestedAppsLayoutSelector

- (ATXRecentAndSuggestedAppsLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters maxRecents:(unint64_t)recents recencyLookBackSeconds:(double)seconds
{
  parametersCopy = parameters;
  deduplicatorCopy = deduplicator;
  v12 = BiomeLibrary();
  v13 = [v12 App];
  inFocus = [v13 InFocus];
  v15 = [inFocus atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];

  v16 = [(ATXRecentAndSuggestedAppsLayoutSelector *)self initWithSuggestionDeduplicator:deduplicatorCopy hyperParameters:parametersCopy maxRecents:recents recencyLookBackSeconds:v15 appLaunchPublisher:seconds];
  return v16;
}

- (ATXRecentAndSuggestedAppsLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters maxRecents:(unint64_t)recents recencyLookBackSeconds:(double)seconds appLaunchPublisher:(id)publisher
{
  publisherCopy = publisher;
  v17.receiver = self;
  v17.super_class = ATXRecentAndSuggestedAppsLayoutSelector;
  v14 = [(ATXLayoutSelector *)&v17 initWithSuggestionDeduplicator:deduplicator hyperParameters:parameters];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_appLaunchPublisher, publisher);
    v15->_maxRecents = recents;
    v15->_recencyLookBackSeconds = seconds;
  }

  return v15;
}

uint64_t __92__ATXRecentAndSuggestedAppsLayoutSelector_validLayoutsForConsumerSubType_rankedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 hyperParameters];
  v6 = [v5 uiSupportsSuggestion:v4 consumerSubType:*(a1 + 40)];

  return v6;
}

- (id)_getATXProactiveSuggestionForRecentAppLaunch:(id)launch
{
  v3 = MEMORY[0x277D42078];
  launchCopy = launch;
  v5 = [[v3 alloc] initWithClientModelId:@"recent_app_heuristic" clientModelVersion:@"1.0"];
  v6 = [ATXProactiveSuggestionBuilder proactiveSuggestionForAppWithBundleId:launchCopy score:v5 clientModelSpec:0 mediumThreshold:1 highThreshold:1.0 predictionReason:0.0 allowedOnHomescreen:0.0];

  return v6;
}

- (id)_accumulateRecentAppLaunchBundleIds
{
  appIdentifiers = [MEMORY[0x277CEB378] appIdentifiers];
  v4 = objc_opt_new();
  v27 = 0;
  v28[0] = &v27;
  v28[1] = 0x3032000000;
  v28[2] = __Block_byref_object_copy__25;
  v28[3] = __Block_byref_object_dispose__25;
  v29 = 0;
  appLaunchPublisher = self->_appLaunchPublisher;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__ATXRecentAndSuggestedAppsLayoutSelector__accumulateRecentAppLaunchBundleIds__block_invoke;
  v26[3] = &unk_278597540;
  v26[4] = &v27;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __78__ATXRecentAndSuggestedAppsLayoutSelector__accumulateRecentAppLaunchBundleIds__block_invoke_2;
  v22 = &unk_2785999B0;
  selfCopy = self;
  v6 = appIdentifiers;
  v24 = v6;
  v7 = v4;
  v25 = v7;
  v8 = [(BPSPublisher *)appLaunchPublisher sinkWithCompletion:v26 shouldContinue:&v19];
  if (*(v28[0] + 40))
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXRecentAndSuggestedAppsLayoutSelector *)v28 _accumulateRecentAppLaunchBundleIds];
    }
  }

  v10 = MEMORY[0x277CBEB70];
  v11 = [v7 _pas_mappedArrayWithTransform:{&__block_literal_global_56, v19, v20, v21, v22, selfCopy}];
  v12 = [v10 orderedSetWithArray:v11];

  array = [v12 array];
  maxRecents = self->_maxRecents;
  v15 = [v12 count];
  if (maxRecents >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = maxRecents;
  }

  v17 = [array subarrayWithRange:{0, v16}];

  _Block_object_dispose(&v27, 8);

  return v17;
}

uint64_t __78__ATXRecentAndSuggestedAppsLayoutSelector__accumulateRecentAppLaunchBundleIds__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

BOOL __78__ATXRecentAndSuggestedAppsLayoutSelector__accumulateRecentAppLaunchBundleIds__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 absoluteTimestamp];
  v5 = [*(a1 + 32) recencyCutOffDate];
  v6 = [v4 compare:v5];

  if (v6 != -1)
  {
    v7 = *(a1 + 40);
    v8 = [v3 bundleID];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      if ([v3 starting])
      {
        v9 = objc_alloc(MEMORY[0x277CEBBD0]);
        v10 = [v3 bundleID];
        v11 = [v3 absoluteTimestamp];
        v12 = [v9 initWithBundleId:v10 type:1 parentBundleID:0 extensionHostID:0 starting:1 absoluteTimestamp:v11 launchReason:0];

        [*(a1 + 48) addObject:v12];
      }
    }
  }

  return v6 != -1;
}

- (void)_accumulateRecentAppLaunchBundleIds
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 136315394;
  v5 = "[ATXRecentAndSuggestedAppsLayoutSelector _accumulateRecentAppLaunchBundleIds]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading app launch stream: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end