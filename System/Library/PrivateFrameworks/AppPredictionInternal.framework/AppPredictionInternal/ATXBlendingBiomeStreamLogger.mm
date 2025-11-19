@interface ATXBlendingBiomeStreamLogger
+ (id)biomeStreamLoggerWithPath:(id)a3 dataStoreWrapper:(id)a4;
+ (id)biomeStreamLoggerWithPath:(id)a3 tracker:(id)a4 dataStoreWrapper:(id)a5;
+ (id)defaultBiomeStreamLogger;
- (ATXBlendingBiomeStreamLogger)initWithBookmark:(id)a3 tracker:(id)a4 dataStoreWrapper:(id)a5;
- (NSString)abGroup;
- (id)_blendingModelPublisher;
- (id)_clientModelPublisher;
- (id)_loggerContextPublisherWithPublisher:(id)a3;
- (id)_uiPublisher;
- (id)mergedSessionEventWithContextPublisher;
- (unsigned)_ensureWidgetsInStackBetweenZeroAndTen:(unint64_t)a3;
- (void)_logCacheAgeMetricEventWithCacheAge:(double)a3 clientModelId:(id)a4;
- (void)_logClientModelsIncludedInHomeScreenLayoutWithSuggestionLayout:(id)a3 consumerSubType:(unsigned __int8)a4;
- (void)_logUnaggregatedAnchorModelEngagementMetric:(id)a3;
- (void)handleBlendingModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4;
- (void)handleClientModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4;
- (void)handleUIEvent:(id)a3 loggerContext:(id)a4;
- (void)logAnchorModelEngagementMetricsWithCompletedSession:(id)a3;
- (void)logBlendingLayerRefreshMetricWithBlendingModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4;
- (void)logBlendingMetricsFromBiomeStream;
- (void)logClientModelsIncludedInHomeScreenLayoutsMetricWithBlendingModelCacheUpdateEvent:(id)a3;
- (void)logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent:(id)a3;
- (void)logScreenUnlockSessionsIfPossibleWithLoggerContext:(id)a3;
- (void)logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent:(id)a3;
- (void)logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:(id)a3;
- (void)persistContext;
- (void)tryLogSingleSuggestionSessionMetricsWithLoggerContext:(id)a3;
@end

@implementation ATXBlendingBiomeStreamLogger

+ (id)defaultBiomeStreamLogger
{
  v3 = objc_opt_new();
  v4 = [a1 biomeStreamLoggerWithPath:@"biomeStreamMetricsLogger" dataStoreWrapper:v3];

  return v4;
}

+ (id)biomeStreamLoggerWithPath:(id)a3 dataStoreWrapper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [a1 biomeStreamLoggerWithPath:v7 tracker:v8 dataStoreWrapper:v6];

  return v9;
}

+ (id)biomeStreamLoggerWithPath:(id)a3 tracker:(id)a4 dataStoreWrapper:(id)a5
{
  v7 = MEMORY[0x277CEBCB0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 metricsRootDirectory];
  v12 = [v11 stringByAppendingPathComponent:v10];

  v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v12];
  v14 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v13 maxFileSize:1000000 versionNumber:&unk_283A56AF8];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x277CEBBF8]) initWithURLPath:v13 versionNumber:&unk_283A56AF8 bookmark:0 metadata:0];
  }

  v15 = [objc_alloc(objc_opt_class()) initWithBookmark:v14 tracker:v9 dataStoreWrapper:v8];

  return v15;
}

- (ATXBlendingBiomeStreamLogger)initWithBookmark:(id)a3 tracker:(id)a4 dataStoreWrapper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ATXBlendingBiomeStreamLogger;
  v12 = [(ATXBlendingBiomeStreamLogger *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmark, a3);
    objc_storeStrong(&v13->_tracker, a4);
    objc_storeStrong(&v13->_dataStoreWrapper, a5);
    v14 = [[ATXHeroAppSingleSuggestionLogger alloc] initWithTracker:v10];
    heroLogger = v13->_heroLogger;
    v13->_heroLogger = v14;

    v16 = [[ATXAppClipSingleSuggestionLogger alloc] initWithTracker:v10];
    appClipLogger = v13->_appClipLogger;
    v13->_appClipLogger = v16;
  }

  return v13;
}

- (NSString)abGroup
{
  currentABGroup = self->_currentABGroup;
  if (!currentABGroup)
  {
    v4 = [MEMORY[0x277D41B98] sharedInstance];
    v5 = [v4 abGroup];
    v6 = self->_currentABGroup;
    self->_currentABGroup = v5;

    currentABGroup = self->_currentABGroup;
  }

  return currentABGroup;
}

- (void)logBlendingMetricsFromBiomeStream
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(ATXBlendingBiomeStreamLogger *)self mergedSessionEventWithContextPublisher];
  sel_getName(a2);
  v5 = os_transaction_create();
  v6 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  objc_initWeak(&location, self);
  v7 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    bookmark = self->_bookmark;
    *buf = 138412546;
    v38 = v9;
    v39 = 2112;
    v40 = bookmark;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - starting with bookmark %@", buf, 0x16u);
  }

  v11 = [(ATXBMBookmark *)self->_bookmark bookmark];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__ATXBlendingBiomeStreamLogger_logBlendingMetricsFromBiomeStream__block_invoke;
  v28[3] = &unk_27859EA00;
  objc_copyWeak(&v31, &location);
  v30 = &v33;
  v12 = v6;
  v29 = v12;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __65__ATXBlendingBiomeStreamLogger_logBlendingMetricsFromBiomeStream__block_invoke_31;
  v25 = &unk_27859EA28;
  objc_copyWeak(&v27, &location);
  v26 = &v33;
  v13 = [v4 sinkWithBookmark:v11 completion:v28 receiveInput:&v22];

  if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:{2.0, v22, v23, v24, v25}] == 1)
  {
    v14 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412290;
      v38 = v16;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "%@ - event processing timeout", buf, 0xCu);
    }
  }

  else
  {
    v17 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = v34[3];
      *buf = 138412546;
      v38 = v19;
      v39 = 2048;
      v40 = v20;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "%@ - processed %ld events", buf, 0x16u);
    }

    if (v34[3] >= 1)
    {
      [(ATXBlendingBiomeStreamLogger *)self persistContext];
    }
  }

  objc_destroyWeak(&v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v33, 8);

  v21 = *MEMORY[0x277D85DE8];
}

void __65__ATXBlendingBiomeStreamLogger_logBlendingMetricsFromBiomeStream__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(*(a1 + 40) + 8) + 24) >= 1)
    {
      [WeakRetained[8] flushEventBuffers];
      [v6[9] flushEventBuffers];
      v7 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - obtained new bookmark", &v15, 0xCu);
      }

      v10 = objc_alloc(MEMORY[0x277CEBBF8]);
      v11 = [v6[3] urlPath];
      v12 = [v10 initWithURLPath:v11 versionNumber:&unk_283A56AF8 bookmark:v4 metadata:0];
      v13 = v6[3];
      v6[3] = v12;
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __65__ATXBlendingBiomeStreamLogger_logBlendingMetricsFromBiomeStream__block_invoke_31(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [v8 event];
    v6 = [v5 eventBody];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 loggerContext];
      [WeakRetained handleClientModelCacheUpdateEvent:v6 loggerContext:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v8 loggerContext];
        [WeakRetained handleBlendingModelCacheUpdateEvent:v6 loggerContext:v7];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_9:
          ++*(*(*(a1 + 32) + 8) + 24);

          objc_autoreleasePoolPop(v4);
          goto LABEL_10;
        }

        v7 = [v8 loggerContext];
        [WeakRetained handleUIEvent:v6 loggerContext:v7];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)persistContext
{
  v17 = *MEMORY[0x277D85DE8];
  bookmark = self->_bookmark;
  v10 = 0;
  [(ATXBMBookmark *)bookmark saveBookmarkWithError:&v10];
  v4 = v10;
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(ATXBMBookmark *)self->_bookmark urlPath];
    *buf = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - persisted bookmark to path %@ with error: %@", buf, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)mergedSessionEventWithContextPublisher
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(ATXBlendingBiomeStreamLogger *)self _clientModelPublisher];
  v4 = [(ATXBlendingBiomeStreamLogger *)self _blendingModelPublisher];
  v5 = [(ATXBlendingBiomeStreamLogger *)self _uiPublisher];
  v11[0] = v4;
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7 = [(ATXBlendingBiomeStreamLogger *)self _timeBasedMergePublisher:v3 withOtherPublishers:v6];

  v8 = [(ATXBlendingBiomeStreamLogger *)self _loggerContextPublisherWithPublisher:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_clientModelPublisher
{
  clientModelPublisher = self->_clientModelPublisher;
  if (!clientModelPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_clientModelPublisher;
    self->_clientModelPublisher = v6;

    clientModelPublisher = self->_clientModelPublisher;
  }

  return clientModelPublisher;
}

- (id)_blendingModelPublisher
{
  blendingModelPublisher = self->_blendingModelPublisher;
  if (!blendingModelPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 publisherFromStartTime:?];
    v7 = self->_blendingModelPublisher;
    self->_blendingModelPublisher = v6;

    blendingModelPublisher = self->_blendingModelPublisher;
  }

  return blendingModelPublisher;
}

- (id)_uiPublisher
{
  uiPublisher = self->_uiPublisher;
  if (!uiPublisher)
  {
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 genericEventPublisherFromStartTime:?];
    v7 = self->_uiPublisher;
    self->_uiPublisher = v6;

    uiPublisher = self->_uiPublisher;
  }

  return uiPublisher;
}

uint64_t __77__ATXBlendingBiomeStreamLogger__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (id)_loggerContextPublisherWithPublisher:(id)a3
{
  v3 = a3;
  v4 = [ATXBlendingBiomeStreamLoggerContextWrapper alloc];
  v5 = objc_opt_new();
  v6 = [(ATXBlendingBiomeStreamLoggerContextWrapper *)v4 initWithEvent:0 loggerContext:v5];

  v7 = [v3 scanWithInitial:v6 nextPartialResult:&__block_literal_global_47_1];

  return v7;
}

ATXBlendingBiomeStreamLoggerContextWrapper *__69__ATXBlendingBiomeStreamLogger__loggerContextPublisherWithPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 eventBody];
  if (v7)
  {
    v8 = [v4 loggerContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 updateWithClientModelCacheUpdate:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 updateWithBlendingUICacheUpdate:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 updateWithUIEvent:v7];
        }
      }
    }

    v10 = [[ATXBlendingBiomeStreamLoggerContextWrapper alloc] initWithEvent:v5 loggerContext:v8];
  }

  else
  {
    v9 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__ATXBlendingBiomeStreamLogger__loggerContextPublisherWithPublisher___block_invoke_cold_1(v9);
    }

    v10 = v4;
  }

  objc_autoreleasePoolPop(v6);

  return v10;
}

- (void)handleClientModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4
{
  v6 = a4;
  v9 = [a3 clientModelId];
  v7 = [v6 cacheUpdateContext];

  v8 = [v7 cacheAgeForPreviousClientModelCacheWithClientModelId:v9];

  if (v8 && v9)
  {
    [v8 doubleValue];
    [(ATXBlendingBiomeStreamLogger *)self _logCacheAgeMetricEventWithCacheAge:v9 clientModelId:?];
  }
}

- (void)handleBlendingModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(ATXBlendingBiomeStreamLogger *)self logBlendingLayerRefreshMetricWithBlendingModelCacheUpdateEvent:v6 loggerContext:v7];
  [(ATXBlendingBiomeStreamLogger *)self logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent:v6];
  [(ATXBlendingBiomeStreamLogger *)self logClientModelsIncludedInHomeScreenLayoutsMetricWithBlendingModelCacheUpdateEvent:v6];
  [(ATXBlendingBiomeStreamLogger *)self logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent:v6];

  [(ATXBlendingBiomeStreamLogger *)self tryLogSingleSuggestionSessionMetricsWithLoggerContext:v7];
}

- (void)handleUIEvent:(id)a3 loggerContext:(id)a4
{
  v5 = a4;
  [(ATXBlendingBiomeStreamLogger *)self tryLogSingleSuggestionSessionMetricsWithLoggerContext:v5];
  [(ATXBlendingBiomeStreamLogger *)self logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:v5];
  [(ATXBlendingBiomeStreamLogger *)self logScreenUnlockSessionsIfPossibleWithLoggerContext:v5];
}

- (void)tryLogSingleSuggestionSessionMetricsWithLoggerContext:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sessionTrackingContext];
  v6 = [v5 completedSessions];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_19;
  }

  v23 = v4;
  v8 = [v4 sessionTrackingContext];
  v9 = [v8 removeStoredCompletedSessionsAndReturnCompletedSessionsCopy];

  v10 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:1];
  v25 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
  v24 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:13];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = *v27;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v26 + 1) + 8 * i);
      v17 = [v16 suggestion];
      v18 = [v17 clientModelSpecification];
      v19 = [v18 clientModelId];

      if ([v19 isEqualToString:v10])
      {
        [(ATXBlendingBiomeStreamLogger *)self logAnchorModelEngagementMetricsWithCompletedSession:v16];
        goto LABEL_14;
      }

      if ([v19 isEqualToString:v25])
      {
        heroLogger = self->_heroLogger;
      }

      else
      {
        if (![v19 isEqualToString:v24])
        {
          goto LABEL_14;
        }

        heroLogger = self->_appClipLogger;
      }

      [heroLogger handleSingleSuggestion:v16];
LABEL_14:
    }

    v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v13);
LABEL_16:

  v21 = __atxlog_handle_metrics();
  v4 = v23;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ATXBlendingBiomeStreamLogger tryLogSingleSuggestionSessionMetricsWithLoggerContext:v23];
  }

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)logScreenUnlockSessionsIfPossibleWithLoggerContext:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = [a3 screenLogUnlockSessionContext];
  v5 = [v4 unlockSessionManager];
  v6 = [v5 removeCompletedSessions];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v59;
    v12 = off_278593000;
    *&v9 = 138413826;
    v52 = v9;
    v54 = self;
    v55 = *v59;
    v56 = v7;
    do
    {
      v13 = 0;
      v57 = v10;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        v15 = [v14 sessionEndDate];
        v16 = [v14 sessionStartDate];
        [v15 timeIntervalSinceDate:v16];
        v18 = v17;

        v19 = fmax(v18, 0.0);
        if (v19 >= 0x64)
        {
          v19 = 100 * (v19 / 0x64);
        }

        v20 = v12[364];
        v21 = objc_opt_new();
        [v21 setSessionLengthInSeconds:v19];
        [v21 setSpotlightEnabled:{objc_msgSend(v14, "spotlightEnabled")}];
        [v21 setAppLibraryEnabled:{objc_msgSend(v14, "appLibraryEnabled")}];
        [v21 setSuggestionsWidgetEnabled:{objc_msgSend(v14, "hasSuggestionsWidget")}];
        [v21 setSuggestionsWidgetTodayPageEnabled:{objc_msgSend(v14, "hasSuggestionsWidgetInTodayPage")}];
        [v21 setAppPredictionPanelEnabled:{objc_msgSend(v14, "hasAppPredictionPanel")}];
        [v21 setAppPredictionPanelTodayPageEnabled:{objc_msgSend(v14, "hasAppPredictionPanelInTodayPage")}];
        [v21 setNumEngagementsInSpotlightApps:{objc_msgSend(v14, "numEngagementsInSpotlightApps")}];
        [v21 setNumEngagementsInSpotlightActions:{objc_msgSend(v14, "numEngagementsInSpotlightActions")}];
        [v21 setNumEngagementsInSuggestionsWidget:{objc_msgSend(v14, "numEngagementsInSuggestionsWidget")}];
        [v21 setNumEngagementsInSuggestionsWidgetTodayPage:{objc_msgSend(v14, "numEngagementsInSuggestionsWidgetTodayPage")}];
        [v21 setNumEngagementsInAppPredictionPanel:{objc_msgSend(v14, "numEngagementsInAppPredictionPanel")}];
        [v21 setNumEngagementsInAppPredictionPanelTodayPage:{objc_msgSend(v14, "numEngagementsInAppPredictionPanelTodayPage")}];
        [v21 setNumEngagementsInAppLibrary:{objc_msgSend(v14, "numEngagementsInAppLibrary")}];
        [v21 setSpotlightAppsViewed:{objc_msgSend(v14, "numViewsInSpotlightApps") != 0}];
        [v21 setSpotlightActionsViewed:{objc_msgSend(v14, "numViewsInSpotlightActions") != 0}];
        [v21 setSuggestionsWidgetViewed:{objc_msgSend(v14, "numViewsInSuggestionsWidget") != 0}];
        [v21 setAppPredictionPanelViewed:{objc_msgSend(v14, "numViewsInAppPredictionPanel") != 0}];
        [v21 setAppLibraryViewed:{objc_msgSend(v14, "numViewsInAppLibrary") != 0}];
        [v21 setAppPredictionPanelTodayPageViewed:{objc_msgSend(v14, "numViewsInAppPredictionPanelTodayPage") != 0}];
        [v21 setSuggestionsWidgetTodayPageViewed:{objc_msgSend(v14, "numViewsInSuggestionsWidgetTodayPage") != 0}];
        [(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v21];
        v22 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v53 = [v21 sessionLengthInSeconds];
          v27 = [v21 numEngagementsInSpotlightApps];
          v28 = [v21 numEngagementsInSpotlightActions];
          v29 = [v21 numEngagementsInSuggestionsWidget];
          v30 = [v21 numEngagementsInSuggestionsWidgetTodayPage];
          v31 = [v21 numEngagementsInAppPredictionPanel];
          v32 = [v21 numEngagementsInAppPredictionPanelTodayPage];
          v33 = [v21 numEngagementsInAppLibrary];
          *buf = 138414338;
          v63 = v26;
          v64 = 1024;
          v65 = v53;
          v66 = 2048;
          *v67 = v27;
          *&v67[8] = 2048;
          v68 = v28;
          v11 = v55;
          v7 = v56;
          *v69 = 2048;
          *&v69[2] = v29;
          v12 = off_278593000;
          v70 = 2048;
          v71 = v30;
          v72 = 2048;
          v73 = v31;
          self = v54;
          v74 = 2048;
          v75 = v32;
          v10 = v57;
          v76 = 2048;
          v77 = v33;
          _os_log_debug_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBScreenLogUnlockSessionTracker with sessionLengthInSeconds: %u, spotlightAppEngagements: %lu, spotlightActionEngagements: %lu, suggestionsWidgetEngagements: %lu, suggestionsWidgetTodayPageEngagements: %lu appPredictionPanelEngagements: %lu, appPredictionPanelTodayPageEngagements: %lu, appLibraryEngagements: %lu", buf, 0x58u);
        }

        v23 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [v21 spotlightAppsViewed];
          v37 = [v21 spotlightActionsViewed];
          v38 = [v21 suggestionsWidgetViewed];
          v39 = [v21 suggestionsWidgetTodayPageViewed];
          v40 = [v21 appPredictionPanelViewed];
          v41 = [v21 appPredictionPanelTodayPageViewed];
          v42 = [v21 appLibraryViewed];
          *buf = 138414082;
          v63 = v35;
          v64 = 1024;
          v65 = v36;
          v66 = 1024;
          *v67 = v37;
          *&v67[4] = 1024;
          *&v67[6] = v38;
          LOWORD(v68) = 1024;
          *(&v68 + 2) = v39;
          v12 = off_278593000;
          HIWORD(v68) = 1024;
          *v69 = v40;
          self = v54;
          v11 = v55;
          *&v69[4] = 1024;
          *&v69[6] = v41;
          v7 = v56;
          v10 = v57;
          v70 = 1024;
          LODWORD(v71) = v42;
          _os_log_debug_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBScreenLogUnlockSessionTracker (continued) with spotlightAppsViewed: %u, spotlightActionsViewed: %u, suggestionsWidgetViewed: %u, suggestionsWidgetTodayPageViewed: %u appPredictionPanelViewed: %u, appPredictionPanelTodayPageViewed: %u, appLibraryViewed: %u", buf, 0x36u);
        }

        v24 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = [v21 spotlightEnabled];
          v46 = [v21 appLibraryEnabled];
          v47 = [v21 suggestionsWidgetEnabled];
          v48 = [v21 suggestionsWidgetTodayPageEnabled];
          v49 = [v21 appPredictionPanelEnabled];
          v50 = [v21 appPredictionPanelTodayPageEnabled];
          *buf = v52;
          v63 = v44;
          v64 = 1024;
          v65 = v45;
          v66 = 1024;
          *v67 = v46;
          v11 = v55;
          v7 = v56;
          *&v67[4] = 1024;
          *&v67[6] = v47;
          v12 = off_278593000;
          LOWORD(v68) = 1024;
          *(&v68 + 2) = v48;
          v10 = v57;
          HIWORD(v68) = 1024;
          *v69 = v49;
          *&v69[4] = 1024;
          *&v69[6] = v50;
          _os_log_debug_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBScreenLogUnlockSessionTracker (continued) with spotlightEnabled: %d, appLibraryEnabled: %d, hasSuggestionsWidgetEnabled: %d, hasSuggestionsWidgetTodayPageEnabled: %d, hasAppPredictionPanelEnabled: %d, hasAppPredictionPanelTodayPageEnabled: %d", buf, 0x30u);
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v10);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = [a3 stackSuggestTrackingContext];
  v5 = [v4 removeAllAndReturnCompletedSystemSuggestSessions];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v5;
  v60 = [obj countByEnumeratingWithState:&v61 objects:v85 count:16];
  if (v60)
  {
    v59 = *v62;
    do
    {
      v6 = 0;
      do
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * v6);
        v8 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138412546;
          v66 = v37;
          v67 = 2112;
          v68 = v7;
          _os_log_debug_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEBUG, "%@ - handling completed session: %@", buf, 0x16u);
        }

        v9 = [v7 systemSuggestSuggestionLayout];
        if (!v9)
        {
          v10 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            [ATXBlendingBiomeStreamLogger logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:];
          }

          goto LABEL_41;
        }

        v10 = v9;
        v11 = [v9 allSuggestionsInLayout];
        v12 = [v11 firstObject];

        if (!v12)
        {
          v49 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [ATXBlendingBiomeStreamLogger logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:];
          }

LABEL_41:
          goto LABEL_42;
        }

        if ([v7 isNPlusOneRotation])
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        v14 = [v7 engagementStatus];
        if (v14 > 7)
        {
          v15 = 0;
        }

        else
        {
          v15 = dword_226872638[v14];
        }

        v16 = [v7 stackLocation];
        if (v16 - 1 >= 5)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        v18 = objc_opt_new();
        v19 = [MEMORY[0x277D420E8] stringFromUILayoutType:{-[NSObject layoutType](v10, "layoutType")}];
        [v18 setLayoutType:v19];

        [v18 setEngagementType:v15];
        v20 = [v12 clientModelSpecification];
        v21 = [v20 clientModelId];
        [v18 setClientModelId:v21];

        v22 = objc_alloc(MEMORY[0x277CCACA8]);
        v23 = [v7 widgetBundleId];
        v24 = [v7 widgetKind];
        v25 = [v22 initWithFormat:@"%@-%@", v23, v24];
        [v18 setWidgetIdentifier:v25];

        [v18 setSelectionType:v13];
        v26 = MEMORY[0x277D42090];
        v27 = [v12 scoreSpecification];
        v28 = [v26 stringForSuggestedConfidenceCategory:{objc_msgSend(v27, "suggestedConfidenceCategory")}];
        [v18 setHighestConfidenceCategory:v28];

        v29 = MEMORY[0x277D42080];
        v30 = [v12 executableSpecification];
        v31 = [v29 stringForExecutableType:{objc_msgSend(v30, "executableType")}];
        [v18 setExecutableType:v31];

        [v18 setStackLocation:v17];
        v32 = [(ATXBlendingBiomeStreamLogger *)self abGroup];
        [v18 setAbGroup:v32];

        v33 = [v12 clientModelSpecification];
        v34 = [v33 clientModelVersion];
        [v18 setClientModelABGroup:v34];

        [(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:v18];
        v35 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v57 = [v18 clientModelId];
          v40 = [v18 engagementType];
          if ((v40 - 1) >= 8)
          {
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v40];
          }

          else
          {
            v41 = off_27859EAB8[(v40 - 1)];
          }

          v56 = v41;
          v42 = [v18 widgetIdentifier];
          v43 = [v18 highestConfidenceCategory];
          v55 = [v18 executableType];
          v44 = [v18 stackLocation];
          if (v44 >= 6)
          {
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v44];
          }

          else
          {
            v45 = off_27859EAF8[v44];
          }

          v54 = v45;
          v53 = [v18 abGroup];
          v52 = [v18 clientModelABGroup];
          v46 = [v18 selectionType];
          if (v46 == 1)
          {
            v47 = @"NPlusOne";
          }

          else if (v46 == 2)
          {
            v47 = @"StackRotation";
          }

          else
          {
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v46];
          }

          v51 = v47;
          *buf = 138414594;
          v66 = v39;
          v67 = 2112;
          v68 = v57;
          v69 = 2112;
          v70 = v56;
          v71 = 2112;
          v72 = v42;
          v73 = 2112;
          v74 = v43;
          v75 = 2112;
          v76 = v55;
          v77 = 2112;
          v78 = v54;
          v79 = 2112;
          v80 = v53;
          v81 = 2112;
          v82 = v52;
          v83 = 2112;
          v84 = v47;
          _os_log_debug_impl(&dword_2263AA000, v35, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBBlendingWidgetRotationEngagementTracker with clientModelId: %@ and engagementType: %@ widgetIdentifier: %@ highestConfidenceCategory: %@ executableType: %@ stackLocation: %@ abGroup: %@ clientModelABGroup: %@ selectionType: %@", buf, 0x66u);
        }

        ++v6;
      }

      while (v60 != v6);
      v48 = [obj countByEnumeratingWithState:&v61 objects:v85 count:16];
      v60 = v48;
    }

    while (v48);
  }

LABEL_42:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_logUnaggregatedAnchorModelEngagementMetric:(id)a3
{
  v4 = a3;
  [(ATXPETEventTracker2Protocol *)self->_tracker logMessage:v4];
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXBlendingBiomeStreamLogger *)self _logUnaggregatedAnchorModelEngagementMetric:v4, v5];
  }
}

- (void)logAnchorModelEngagementMetricsWithCompletedSession:(id)a3
{
  v4 = a3;
  v5 = [v4 feedbackMetadata];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x277CCAAC8];
    v8 = objc_opt_class();
    v9 = [v4 feedbackMetadata];
    v44[0] = 0;
    v10 = [v7 unarchivedObjectOfClass:v8 fromData:v9 error:v44];
    v11 = v44[0];

    objc_autoreleasePoolPop(v6);
    if (v10 && !v11)
    {
      v12 = [v4 suggestion];
      v13 = [v10 anchorModelPredictionForProactiveSuggestion:v12];

      if (v13)
      {
        v40 = 0;
        v41 = &v40;
        v42 = 0x2020000000;
        v43 = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x2020000000;
        v39 = 2;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __84__ATXBlendingBiomeStreamLogger_logAnchorModelEngagementMetricsWithCompletedSession___block_invoke;
        v30[3] = &unk_27859EA70;
        v30[4] = self;
        v14 = v13;
        v31 = v14;
        v15 = v4;
        v32 = v15;
        v16 = v10;
        v33 = v16;
        v34 = &v40;
        v35 = &v36;
        [v15 enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:v30];
        v17 = *(v37 + 6);
        v26 = v15;
        v27 = v13;
        v25 = v16;
        if (v17 >= 3)
        {
          v29 = 0;
        }

        else
        {
          v29 = qword_226872658[v17];
        }

        dataStoreWrapper = self->_dataStoreWrapper;
        v18 = objc_opt_new();
        v19 = [v14 anchorType];
        v20 = [v14 anchorEvent];
        v21 = [v20 identifier];
        v22 = [v14 candidateId];
        [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper insertAnchorSuggestionOutcome:v29 date:v18 anchorType:v19 anchorEventIdentifier:v21 candidateId:v22];

        v13 = v27;
        if (*(v41 + 24) == 1)
        {
          v23 = [v26 suggestion];
          v24 = [(ATXBlendingBiomeStreamLogger *)self _anchorModelEngagementMetricFromAnchorPrediction:v14 proactiveSuggestion:v23 feedbackMetadata:v25 engagementType:*(v37 + 6) consumerSubType:@"SingleSuggestionAnyConsumerSubType" completedSession:v26];

          [(ATXBlendingBiomeStreamLogger *)self _logUnaggregatedAnchorModelEngagementMetric:v24];
        }

        _Block_object_dispose(&v36, 8);
        _Block_object_dispose(&v40, 8);
      }
    }
  }
}

void __84__ATXBlendingBiomeStreamLogger_logAnchorModelEngagementMetricsWithCompletedSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (a3 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) suggestion];
  v10 = *(a1 + 56);
  v11 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
  v13 = [v7 _anchorModelEngagementMetricFromAnchorPrediction:v8 proactiveSuggestion:v9 feedbackMetadata:v10 engagementType:v6 consumerSubType:v11 completedSession:*(a1 + 48)];

  [*(a1 + 32) _logUnaggregatedAnchorModelEngagementMetric:v13];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v12 = *(*(a1 + 72) + 8);
  if (v6 < *(v12 + 24))
  {
    *(v12 + 24) = v6;
  }
}

- (void)logBlendingLayerRefreshMetricWithBlendingModelCacheUpdateEvent:(id)a3 loggerContext:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CEBCF0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 stringForConsumerSubtype:{objc_msgSend(v8, "consumerSubType")}];
  v10 = [v7 cacheUpdateContext];

  v11 = [v8 consumerSubType];
  v12 = [v10 cacheAgeForPreviousBlendingUICacheUpdateForConsumerSubType:v11];

  [v12 doubleValue];
  if (v12)
  {
    v14 = v13;
    if (v13 >= 0.0)
    {
      v15 = objc_opt_new();
      [v15 setConsumerSubType:v9];
      v16 = [(ATXBlendingBiomeStreamLogger *)self abGroup];
      [v15 setAbGroup:v16];

      [(ATXPETEventTracker2Protocol *)self->_tracker trackDistributionForMessage:v15 value:v14];
      v17 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v15 abGroup];
        v22 = 138413058;
        v23 = v20;
        v24 = 2112;
        v25 = v9;
        v26 = 2048;
        v27 = v14;
        v28 = 2112;
        v29 = v21;
        _os_log_debug_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBBlendingLayerRefreshTracker with consumerSubType: %@ interarrivalTime: %f abGroup: %@", &v22, 0x2Au);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 uiCache];

  if (v5)
  {
    v6 = [v4 uiCache];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = [v4 uiCache];
    if (isKindOfClass)
    {
      -[ATXBlendingBiomeStreamLogger _logLayoutSelectedWithSuggestionLayout:consumerSubType:](self, "_logLayoutSelectedWithSuggestionLayout:consumerSubType:", v8, [v4 consumerSubType]);
    }

    else
    {
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      v10 = [v4 uiCache];
      v8 = v10;
      if (v9)
      {
        v11 = [v10 cachedSuggestionWidgetLayouts];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __89__ATXBlendingBiomeStreamLogger_logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent___block_invoke;
        v15[3] = &unk_27859EA98;
        v15[4] = self;
        [v11 enumerateKeysAndObjectsUsingBlock:v15];

        v12 = [v8 cachedAppPredictionPanelLayouts];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __89__ATXBlendingBiomeStreamLogger_logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent___block_invoke_2;
        v14[3] = &unk_27859EA98;
        v14[4] = self;
        [v12 enumerateKeysAndObjectsUsingBlock:v14];
      }

      else
      {
        objc_opt_class();
        v13 = objc_opt_isKindOfClass();

        if (v13)
        {
          v8 = [v4 uiCache];
          -[ATXBlendingBiomeStreamLogger _logLayoutSelectedWithSpotlightSuggestionLayout:consumerSubType:](self, "_logLayoutSelectedWithSpotlightSuggestionLayout:consumerSubType:", v8, [v4 consumerSubType]);
        }

        else
        {
          v8 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            [(ATXBlendingBiomeStreamLogger *)self logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent:v4, v8];
          }
        }
      }
    }
  }
}

- (void)logClientModelsIncludedInHomeScreenLayoutsMetricWithBlendingModelCacheUpdateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 uiCache];
    v8 = [v7 cachedSuggestionWidgetLayouts];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __114__ATXBlendingBiomeStreamLogger_logClientModelsIncludedInHomeScreenLayoutsMetricWithBlendingModelCacheUpdateEvent___block_invoke;
    v11[3] = &unk_27859EA98;
    v11[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];

    v9 = [v7 cachedAppPredictionPanelLayouts];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __114__ATXBlendingBiomeStreamLogger_logClientModelsIncludedInHomeScreenLayoutsMetricWithBlendingModelCacheUpdateEvent___block_invoke_2;
    v10[3] = &unk_27859EA98;
    v10[4] = self;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

- (void)_logClientModelsIncludedInHomeScreenLayoutWithSuggestionLayout:(id)a3 consumerSubType:(unsigned __int8)a4
{
  v4 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uuidOfHighestConfidenceSuggestion];
  v8 = [v6 suggestionWithUUID:v7];

  v9 = [v8 clientModelSpecification];
  v10 = [v9 clientModelId];

  if (v8)
  {
    v29 = self;
    v30 = v8;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v6 minSuggestionListInLayout];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v28 = v4;
    if (v12)
    {
      v13 = v12;
      LODWORD(v14) = 0;
      v15 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v31 + 1) + 8 * i) clientModelSpecification];
          v18 = [v17 clientModelId];
          v19 = [v18 isEqualToString:v10];

          v14 = (v14 + v19);
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v20 = objc_opt_new();
    v21 = [MEMORY[0x277D420E8] stringFromUILayoutType:{objc_msgSend(v6, "layoutType")}];
    [v20 setLayoutType:v21];

    [v20 setClientModelId:v10];
    [v20 setNumSuggestionsForClientModelInLayout:v14];
    v22 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v28];
    [v20 setConsumerSubType:v22];

    v23 = [(ATXBlendingBiomeStreamLogger *)v29 abGroup];
    [v20 setAbGroup:v23];

    v8 = v30;
    v24 = [v30 clientModelSpecification];
    v25 = [v24 clientModelVersion];
    [v20 setClientModelABGroup:v25];

    [(ATXPETEventTracker2Protocol *)v29->_tracker trackScalarForMessage:v20];
    v26 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [(ATXBlendingBiomeStreamLogger *)v29 _logClientModelsIncludedInHomeScreenLayoutWithSuggestionLayout:v20 consumerSubType:v26];
    }
  }

  else
  {
    v20 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXBlendingBiomeStreamLogger _logLayoutSelectedWithSpotlightSuggestionLayout:consumerSubType:];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 uiCache];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 uiCache];
    v8 = [v7 cachedTopOfStackLayouts];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__ATXBlendingBiomeStreamLogger_logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent___block_invoke;
    v9[3] = &unk_27859EA98;
    v9[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __95__ATXBlendingBiomeStreamLogger_logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 uuidOfHighestConfidenceSuggestion];
  v6 = [v4 suggestionWithUUID:v5];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277D420E8] stringFromUILayoutType:{objc_msgSend(v4, "layoutType")}];
    [v7 setLayoutType:v8];

    if ([v4 isNPlusOne])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [v7 setSelectionType:v9];
    v10 = [v6 clientModelSpecification];
    v11 = [v10 clientModelId];
    [v7 setClientModelIdOfHighestRankingSuggestion:v11];

    v12 = MEMORY[0x277D42090];
    v13 = [v6 scoreSpecification];
    v14 = [v12 stringForSuggestedConfidenceCategory:{objc_msgSend(v13, "suggestedConfidenceCategory")}];
    [v7 setHighestConfidenceCategory:v14];

    v15 = MEMORY[0x277D42080];
    v16 = [v6 executableSpecification];
    v17 = [v15 stringForExecutableType:{objc_msgSend(v16, "executableType")}];
    [v7 setExecuableTypeOfHighestRankingSuggestion:v17];

    v19 = *(a1 + 32);
    v18 = (a1 + 32);
    v20 = [v19 abGroup];
    [v7 setAbGroup:v20];

    v21 = [v6 clientModelSpecification];
    v22 = [v21 clientModelVersion];
    [v7 setClientModelABGroup:v22];

    [v7 setWidgetsInStack:{objc_msgSend(*v18, "_ensureWidgetsInStackBetweenZeroAndTen:", objc_msgSend(v4, "numWidgetsInStack"))}];
    [*(*v18 + 7) trackScalarForMessage:v7];
    v23 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __95__ATXBlendingBiomeStreamLogger_logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent___block_invoke_cold_1(v18, v7, v23);
    }
  }
}

- (unsigned)_ensureWidgetsInStackBetweenZeroAndTen:(unint64_t)a3
{
  if (a3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return a3;
  }
}

- (void)_logCacheAgeMetricEventWithCacheAge:(double)a3 clientModelId:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setCacheName:v6];

  [(ATXPETEventTracker2Protocol *)self->_tracker trackDistributionForMessage:v7 value:a3];
  v8 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v7 cacheName];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = a3;
    _os_log_debug_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMCacheAgeAtCacheRefreshTracker with cacheName: %@ and cacheAge: %f", &v13, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tryLogSingleSuggestionSessionMetricsWithLoggerContext:(void *)a1 .cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 sessionTrackingContext];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a1 sessionTrackingContext];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v6, v7, "%@ - finished logging sessions, state is: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - did not find suggestion inside suggestion layout: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logWidgetRotationEngagementMetricsIfPossibleWithLoggerContext:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_5(&dword_2263AA000, v2, v3, "%@ - did not find suggestion layout: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logUnaggregatedAnchorModelEngagementMetric:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 consumerSubType];
  v8 = [a2 engagementType];
  if (v8 > 2)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_27859EB28[v8];
  }

  v10 = [a2 anchorType];
  [a2 score];
  v12 = v11;
  v13 = [a2 candidateType];
  v14 = [a2 secondsAfterAnchor];
  v15 = [a2 numPredictionsforAnchor];
  v16 = [a2 abGroup];
  v17 = [a2 executableObject];
  OUTLINED_FUNCTION_6_1();
  v22 = v7;
  v23 = v18;
  v24 = v9;
  v25 = v18;
  v26 = v10;
  v27 = 2048;
  v28 = v12;
  v29 = v18;
  v30 = v13;
  v31 = 1024;
  v32 = v14;
  v33 = 1024;
  v34 = v15;
  v35 = v18;
  v36 = v16;
  v37 = v18;
  v38 = v19;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAnchorModelEngagementTracker with consumerSubType: %@ engagementType: %@ anchorType: %@ score: %f candidateType: %@ secondsAfterAnchor: %u numPredictionsforAnchor: %u abGroup: %@ executableObject: %@", buf, 0x5Eu);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logLayoutSelectedMetricWithBlendingModelCacheUpdateEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 uiCache];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:{objc_msgSend(a2, "consumerSubType")}];
  v14 = 138412802;
  v15 = v6;
  OUTLINED_FUNCTION_2_8();
  v16 = v9;
  v17 = v11;
  v18 = v12;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "%@ - got blending cache update with unsupported class: %@ for consumerSubType: %@", &v14, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_logLayoutSelectedWithSpotlightSuggestionLayout:(uint64_t)a1 consumerSubType:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 layoutType];
  v6 = [a2 consumerSubType];
  v7 = [a2 highestConfidenceCategory];
  v8 = [a2 highestRankingClientModelId];
  v9 = [a2 execuableTypeOfHighestRankingSuggestion];
  v10 = [a2 abGroup];
  v11 = [a2 highestRankingClientModelABGroup];
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_7_0(&dword_2263AA000, v12, v13, "LOGGED: %@ - ATXMPBBlendingLayoutSelectionTracker with layoutType: %@ consumerSubType: %@ highestConfidenceCategory: %@ highestRankingClientModelId: %@ execuableTypeOfHighestRankingSuggestion: %@ abGroup: %@ highestRankingClientModelABGroup: %@", v14, v15, v16, v17, v19);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_logLayoutSelectedWithSpotlightSuggestionLayout:consumerSubType:.cold.2()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "%@ - could not determine highest confidence suggestion from suggestion layout", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logClientModelsIncludedInHomeScreenLayoutWithSuggestionLayout:(NSObject *)a3 consumerSubType:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 layoutType];
  v8 = [a2 clientModelId];
  v9 = [a2 numSuggestionsForClientModelInLayout];
  v10 = [a2 consumerSubType];
  v11 = [a2 abGroup];
  v12 = [a2 clientModelABGroup];
  OUTLINED_FUNCTION_0_26();
  v17 = v8;
  v18 = 1024;
  v19 = v9;
  v20 = v13;
  v21 = v10;
  v22 = v13;
  v23 = v11;
  v24 = v13;
  v25 = v14;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBBlendingClientModelHomeScreenLayoutTracker with layoutType: %@ clientModelId: %@ numSuggestionsForClientModelInLayout: %u consumerSubType: %@ abGroup: %@ clientModelABGroup: %@", v16, 0x44u);

  v15 = *MEMORY[0x277D85DE8];
}

void __95__ATXBlendingBiomeStreamLogger_logTopOfStackPredictionMetricWithBlendingModelCacheUpdateEvent___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 layoutType];
  v9 = [a2 selectionType];
  if (v9 == 1)
  {
    v10 = @"NPlusOne";
  }

  else if (v9 == 2)
  {
    v10 = @"StackRotation";
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  v11 = [a2 widgetsInStack];
  v12 = [a2 clientModelIdOfHighestRankingSuggestion];
  v13 = [a2 highestConfidenceCategory];
  v14 = [a2 execuableTypeOfHighestRankingSuggestion];
  v15 = [a2 abGroup];
  v16 = [a2 clientModelABGroup];
  OUTLINED_FUNCTION_6_1();
  v21 = v8;
  v22 = v17;
  v23 = v10;
  v24 = 1024;
  v25 = v11;
  v26 = v17;
  v27 = v12;
  v28 = v17;
  v29 = v13;
  v30 = v17;
  v31 = v14;
  v32 = v17;
  v33 = v15;
  v34 = v17;
  v35 = v18;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBBlendingHomeScreenWidgetTopOfStackSelectionTracker with layoutType: %@, selectionType: %@, widgetsInStack: %u clientModelIdOfHighestRankingSuggestion: %@ highestConfidenceCategory: %@ execuableTypeOfHighestRankingSuggestion: %@ abGroup: %@ clientModelABGroup: %@", buf, 0x58u);

  v19 = *MEMORY[0x277D85DE8];
}

@end