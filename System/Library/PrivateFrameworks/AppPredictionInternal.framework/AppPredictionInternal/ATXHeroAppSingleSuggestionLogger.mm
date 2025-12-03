@interface ATXHeroAppSingleSuggestionLogger
- (ATXHeroAppSingleSuggestionLogger)initWithTracker:(id)tracker;
- (void)_logHeroAppEngagementMetric:(id)metric;
- (void)flushEventBuffers;
- (void)handleSingleSuggestion:(id)suggestion;
@end

@implementation ATXHeroAppSingleSuggestionLogger

- (ATXHeroAppSingleSuggestionLogger)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v13.receiver = self;
  v13.super_class = ATXHeroAppSingleSuggestionLogger;
  v6 = [(ATXHeroAppSingleSuggestionLogger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
    v8 = objc_opt_new();
    positiveEventBuffer = v7->_positiveEventBuffer;
    v7->_positiveEventBuffer = v8;

    v10 = objc_opt_new();
    negativeEventBuffer = v7->_negativeEventBuffer;
    v7->_negativeEventBuffer = v10;
  }

  return v7;
}

- (void)_logHeroAppEngagementMetric:(id)metric
{
  metricCopy = metric;
  [(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:metricCopy];
  v5 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)self _logHeroAppEngagementMetric:metricCopy, v5];
  }
}

- (void)handleSingleSuggestion:(id)suggestion
{
  v47 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  suggestion = [suggestionCopy suggestion];
  bundleIdExecutableObject = [suggestion bundleIdExecutableObject];

  if (bundleIdExecutableObject && ([suggestionCopy feedbackMetadata], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_opt_class();
    feedbackMetadata = [suggestionCopy feedbackMetadata];
    v42 = 0;
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:feedbackMetadata error:&v42];
    v13 = v42;

    objc_autoreleasePoolPop(v8);
    if (v13 || !v12)
    {
      v21 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138412802;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = suggestionCopy;
        *&buf[22] = 2112;
        v44 = v13;
        _os_log_error_impl(&dword_2263AA000, v21, OS_LOG_TYPE_ERROR, "%@ - not logging because could not retrieve location from completed session: %@. Unarchive error: %@", buf, 0x20u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v44 = __Block_byref_object_copy__28;
      v45 = __Block_byref_object_dispose__28;
      v46 = MEMORY[0x277CBEC28];
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__28;
      v40 = __Block_byref_object_dispose__28;
      v41 = MEMORY[0x277CBEC28];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke;
      v26[3] = &unk_278599B08;
      v30 = buf;
      v31 = &v32;
      v29 = &v36;
      v26[4] = self;
      v14 = bundleIdExecutableObject;
      v27 = v14;
      v28 = v12;
      [suggestionCopy enumerateShownAndEngagedSessionStatusesAndConsumerSubTypesWithBlock:v26];
      if ([v37[5] isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        v15 = [(ATXHeroAppSingleSuggestionLogger *)self _heroAppEngagementMetricWithBundleId:v14 interactionType:*(v33 + 6) consumerSubType:@"SingleSuggestionAnyConsumerSubType"];
        [(ATXHeroAppSingleSuggestionLogger *)self _logHeroAppEngagementMetric:v15];
      }

      v16 = +[_ATXAppPredictor sharedInstance];
      cdnDownloaderTriggerManager = [v16 cdnDownloaderTriggerManager];
      heroAppManager = [cdnDownloaderTriggerManager heroAppManager];
      heroFeedback = [heroAppManager heroFeedback];

      if ([*(*&buf[8] + 40) isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        LODWORD(v20) = 1.0;
        [heroFeedback addConfirmForHeroAppPredictionWithBundleId:v14 weight:v20];
      }

      else if ([v37[5] isEqualToNumber:MEMORY[0x277CBEC38]])
      {
        LODWORD(v22) = 1.0;
        [heroFeedback addRejectForHeroAppPredictionWithBundleId:v14 weight:v22];
      }

      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v13 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeroAppSingleSuggestionLogger *)self handleSingleSuggestion:suggestionCopy, v13];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 3);
  }

  if (a3)
  {
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    v9 = MEMORY[0x277CBEC38];
    *(v7 + 40) = MEMORY[0x277CBEC38];

    if (a3 == 2)
    {
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(*(a1 + 72) + 8);
    if (v3 > *(v12 + 24))
    {
      *(v12 + 24) = v3;
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a2];
    v16 = [v13 _heroAppEngagementMetricWithBundleId:v14 interactionType:v3 consumerSubType:v15];

    [*(a1 + 32) _logHeroAppEngagementMetric:v16];
    if (a2 <= 0x28)
    {
      if (((1 << a2) & 0x1B000000000) != 0)
      {
        v17 = 3;
LABEL_12:
        v18 = [ATXAppOrClipLaunch alloc];
        v19 = *(a1 + 40);
        [*(a1 + 48) coordinate];
        v21 = v20;
        [*(a1 + 48) coordinate];
        v22 = [(ATXAppOrClipLaunch *)v18 initAppLaunchWithBundleId:v19 launchReason:v17 latitude:v21 longitude:?];
        v23 = [[ATXHeroAndClipSessionLogSampledEvent alloc] initFromLaunch:v22];
        v24 = __atxlog_handle_hero();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(v23, v24);
        }

        v25 = 24;
        if (a3 == 2)
        {
          v25 = 16;
        }

        [*(*(a1 + 32) + v25) addObject:v23];

LABEL_17:
        goto LABEL_20;
      }

      if (a2 == 9)
      {
        v17 = 2;
        goto LABEL_12;
      }
    }

    v22 = __atxlog_handle_hero();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(a2, v22);
    }

    goto LABEL_17;
  }

  v16 = __atxlog_handle_hero();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_3(v16);
  }

LABEL_20:
}

- (void)flushEventBuffers
{
  v3 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = __atxlog_handle_hero();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)v4 flushEventBuffers];
  }

  -[ATXHeroAppSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_positiveEventBuffer, [v3 heroAppSessionLogPositiveSamplesPerDay], 0);
  v5 = __atxlog_handle_hero();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHeroAppSingleSuggestionLogger *)v5 flushEventBuffers];
  }

  -[ATXHeroAppSingleSuggestionLogger _flushEventBuffer:numEventsToSample:isNegative:](self, "_flushEventBuffer:numEventsToSample:isNegative:", self->_negativeEventBuffer, [v3 heroAppSessionLogNegativeSamplesPerDay], 1);
  v6 = __atxlog_handle_hero();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Flushed hero app session log event buffers", v7, 2u);
  }
}

- (void)_logHeroAppEngagementMetric:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 bundleId];
  v8 = [a2 consumerSubType];
  v9 = [a2 interactionType];
  if (v9 > 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v9];
  }

  else
  {
    v10 = off_278599B28[v9];
  }

  *buf = 138413058;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v10;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBHeroAppEngagementTracker with bundleId: %@ consumerSubType: %@ interactionType: %@", buf, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSingleSuggestion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - not logging because invalid bundleId or invalid feedbackMetadata from completed session: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Adding event %@ to the hero app session log buffer", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __59__ATXHeroAppSingleSuggestionLogger_handleSingleSuggestion___block_invoke_cold_2(unsigned __int8 a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unknown consumer subtype for Hero app received: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end