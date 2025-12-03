@interface ATXBiomePrivacyPruner
- (void)pruneActivitySuggestionFeedbackStreamWithActivity:(id)activity;
- (void)pruneAllStreamsWithActivity:(id)activity;
- (void)pruneAppLaunchInferredModeStreamWithActivity:(id)activity;
- (void)pruneBlendingStreamsWithActivity:(id)activity;
- (void)pruneContextHeuristicsStreamWithActivity:(id)activity;
- (void)pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:(id)activity;
- (void)pruneDigestOnboardingLoggingStreamWithActivity:(id)activity;
- (void)pruneDigestOnboardingSuggestionLoggingStreamWithActivity:(id)activity;
- (void)pruneERMStreamWithActivity:(id)activity;
- (void)pruneFaceGalleryStreamWithActivity:(id)activity;
- (void)pruneLightweightClientModelCacheUpdatesStreamWithActivity:(id)activity;
- (void)pruneLocationStreamWithActivity:(id)activity;
- (void)pruneMissedNotificationRankingStreamWithActivity:(id)activity;
- (void)pruneModeConfigurationUIFlowLoggingStreamWithActivity:(id)activity;
- (void)pruneNotificationDigestStreamWithActivity:(id)activity;
- (void)pruneNotificationEventStreamWithActivity:(id)activity;
- (void)pruneNotificationGroupEventStreamWithActivity:(id)activity;
- (void)pruneNotificationSuggestionInteractionStreamWithActivity:(id)activity;
- (void)pruneNotificationSuggestionStreamWithActivity:(id)activity;
- (void)prunePredictionContextStreamWithActivity:(id)activity;
- (void)prunePrivateStreamWithStreamIdentifier:(id)identifier activity:(id)activity;
- (void)pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:(id)activity;
- (void)pruneSpotlightUIStreamWithActivity:(id)activity;
- (void)pruneWithStreamIdentifier:(id)identifier activity:(id)activity config:(id)config endTime:(double)time;
@end

@implementation ATXBiomePrivacyPruner

- (void)pruneAllStreamsWithActivity:(id)activity
{
  activityCopy = activity;
  [(ATXBiomePrivacyPruner *)self pruneBlendingStreamsWithActivity:activityCopy];
  if (([activityCopy didDefer] & 1) == 0)
  {
    [(ATXBiomePrivacyPruner *)self prunePredictionContextStreamWithActivity:activityCopy];
    if (([activityCopy didDefer] & 1) == 0)
    {
      [(ATXBiomePrivacyPruner *)self pruneContextHeuristicsStreamWithActivity:activityCopy];
      if (([activityCopy didDefer] & 1) == 0)
      {
        [(ATXBiomePrivacyPruner *)self pruneSpotlightUIStreamWithActivity:activityCopy];
        if (([activityCopy didDefer] & 1) == 0)
        {
          [(ATXBiomePrivacyPruner *)self pruneLocationStreamWithActivity:activityCopy];
          if (([activityCopy didDefer] & 1) == 0)
          {
            [(ATXBiomePrivacyPruner *)self pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:activityCopy];
            if (([activityCopy didDefer] & 1) == 0)
            {
              [(ATXBiomePrivacyPruner *)self pruneLightweightClientModelCacheUpdatesStreamWithActivity:activityCopy];
              if (([activityCopy didDefer] & 1) == 0)
              {
                [(ATXBiomePrivacyPruner *)self pruneActivitySuggestionFeedbackStreamWithActivity:activityCopy];
                if (([activityCopy didDefer] & 1) == 0)
                {
                  [(ATXBiomePrivacyPruner *)self pruneERMStreamWithActivity:activityCopy];
                  if (([activityCopy didDefer] & 1) == 0)
                  {
                    [(ATXBiomePrivacyPruner *)self pruneNotificationDigestStreamWithActivity:activityCopy];
                    if (([activityCopy didDefer] & 1) == 0)
                    {
                      [(ATXBiomePrivacyPruner *)self pruneMissedNotificationRankingStreamWithActivity:activityCopy];
                      if (([activityCopy didDefer] & 1) == 0)
                      {
                        [(ATXBiomePrivacyPruner *)self pruneNotificationEventStreamWithActivity:activityCopy];
                        if (([activityCopy didDefer] & 1) == 0)
                        {
                          [(ATXBiomePrivacyPruner *)self pruneNotificationGroupEventStreamWithActivity:activityCopy];
                          if (([activityCopy didDefer] & 1) == 0)
                          {
                            [(ATXBiomePrivacyPruner *)self pruneNotificationSuggestionStreamWithActivity:activityCopy];
                            if (([activityCopy didDefer] & 1) == 0)
                            {
                              [(ATXBiomePrivacyPruner *)self pruneNotificationSuggestionInteractionStreamWithActivity:activityCopy];
                              if (([activityCopy didDefer] & 1) == 0)
                              {
                                [(ATXBiomePrivacyPruner *)self pruneModeConfigurationUIFlowLoggingStreamWithActivity:activityCopy];
                                if (([activityCopy didDefer] & 1) == 0)
                                {
                                  [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingSuggestionLoggingStreamWithActivity:activityCopy];
                                  if (([activityCopy didDefer] & 1) == 0)
                                  {
                                    [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingLoggingStreamWithActivity:activityCopy];
                                    if (([activityCopy didDefer] & 1) == 0)
                                    {
                                      [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:activityCopy];
                                      if (([activityCopy didDefer] & 1) == 0)
                                      {
                                        [(ATXBiomePrivacyPruner *)self pruneAppLaunchInferredModeStreamWithActivity:activityCopy];
                                        if (([activityCopy didDefer] & 1) == 0)
                                        {
                                          [(ATXBiomePrivacyPruner *)self pruneFaceGalleryStreamWithActivity:activityCopy];
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)pruneBlendingStreamsWithActivity:(id)activity
{
  v34 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = objc_opt_new();
  streamIdentifiers = [v5 streamIdentifiers];

  v7 = [streamIdentifiers countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(streamIdentifiers);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        atx_storeConfig = [MEMORY[0x277CF17F8] atx_storeConfig];
        [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:v11 activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [streamIdentifiers countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  atx_storeConfig2 = [MEMORY[0x277CF17F8] atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"homeScreen" activity:activityCopy config:atx_storeConfig2 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = objc_opt_new();
  streamIdentifiers2 = [v15 streamIdentifiers];

  v17 = [streamIdentifiers2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(streamIdentifiers2);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:v21 activity:activityCopy];
        objc_autoreleasePoolPop(v22);
        ++v20;
      }

      while (v18 != v20);
      v18 = [streamIdentifiers2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:@"blending" activity:activityCopy];
  [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:@"clientModel" activity:activityCopy];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)prunePredictionContextStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"predictionContext" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneContextHeuristicsStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"contextHeuristics" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneSpotlightUIStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"spotlightUI" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneLocationStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"location" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -172800.0];
}

- (void)pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"proactiveSuggestionUIFeedbackResultStreamWriterBookmarkURL" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneLightweightClientModelCacheUpdatesStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"lightweightClientModelCacheUpdates" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneActivitySuggestionFeedbackStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"ActivitySuggestionFeedback" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneERMStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"ERM" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationDigestStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationDigestLoggingEvents" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -1209600.0];
}

- (void)pruneMissedNotificationRankingStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"missedNotificationRankingLoggingEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -1209600.0];
}

- (void)pruneNotificationEventStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"userNotificationEvents" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationGroupEventStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationGroupEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationSuggestionStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationSuggestion" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationSuggestionInteractionStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationSuggestionInteraction" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneAppLaunchInferredModeStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"appLaunchInferredMode" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneModeConfigurationUIFlowLoggingStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"modeConfigurationUIFlowLoggingEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingSuggestionLoggingStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingSuggestionLoggingEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingLoggingStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingLoggingEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingAppSelectionLoggingEvent" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneFaceGalleryStreamWithActivity:(id)activity
{
  v4 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  atx_storeConfig = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"faceGallery" activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)prunePrivateStreamWithStreamIdentifier:(id)identifier activity:(id)activity
{
  v6 = MEMORY[0x277CF17F8];
  activityCopy = activity;
  identifierCopy = identifier;
  atx_storeConfig = [v6 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:identifierCopy activity:activityCopy config:atx_storeConfig endTime:CFAbsoluteTimeGetCurrent() + -172800.0];
}

- (void)pruneWithStreamIdentifier:(id)identifier activity:(id)activity config:(id)config endTime:(double)time
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  activityCopy = activity;
  configCopy = config;
  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = identifierCopy;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Pruning stream identifier: %@ based on max size", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:identifierCopy permission:2 config:configCopy];
  [v13 pruneStreamToMaxStreamSizeInBytes:*MEMORY[0x277CEBDA0]];
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = time;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Pruning stream identifier: %@ based on endTime: %f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v35 = 0;
  v15 = [objc_alloc(MEMORY[0x277CF1810]) initWithStream:identifierCopy config:configCopy];
  v16 = objc_autoreleasePoolPush();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke;
  v29[3] = &unk_278599B48;
  v31 = buf;
  v17 = activityCopy;
  v30 = v17;
  [v15 removeEventsFrom:1 to:v29 reason:0.0 usingBlock:time];

  objc_autoreleasePoolPop(v16);
  *(*&buf[8] + 24) = 0;
  v18 = __atxlog_handle_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 138412546;
    *v33 = identifierCopy;
    *&v33[8] = 2048;
    *&v33[10] = time;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Pruning tombstones for stream identifier: %@ based on endTime: %f", v32, 0x16u);
  }

  v19 = [configCopy copy];
  [v19 setStoreLocationOption:2];
  v20 = [objc_alloc(MEMORY[0x277CF1810]) initWithStream:identifierCopy config:v19];
  v21 = objc_autoreleasePoolPush();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke_90;
  v26[3] = &unk_278599B48;
  v28 = buf;
  v22 = v17;
  v27 = v22;
  [v20 removeEventsFrom:1 to:v26 reason:0.0 usingBlock:time];

  objc_autoreleasePoolPop(v21);
  v23 = __atxlog_handle_default();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*&buf[8] + 24);
    *v32 = 67109378;
    *v33 = v24;
    *&v33[4] = 2112;
    *&v33[6] = identifierCopy;
    _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Removed %d tombstone events for stream identifier: %@", v32, 0x12u);
  }

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  HIDWORD(v4) = -1030792151 * v3;
  LODWORD(v4) = -1030792151 * v3;
  if ((v4 >> 2) <= 0x28F5C28)
  {
    result = [*(result + 32) didDefer];
    if (result)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke_90(uint64_t result, _BYTE *a2)
{
  v2 = *(*(result + 40) + 8);
  v3 = *(v2 + 24) + 1;
  *(v2 + 24) = v3;
  HIDWORD(v4) = -1030792151 * v3;
  LODWORD(v4) = -1030792151 * v3;
  if ((v4 >> 2) <= 0x28F5C28)
  {
    result = [*(result + 32) didDefer];
    if (result)
    {
      *a2 = 1;
    }
  }

  return result;
}

@end