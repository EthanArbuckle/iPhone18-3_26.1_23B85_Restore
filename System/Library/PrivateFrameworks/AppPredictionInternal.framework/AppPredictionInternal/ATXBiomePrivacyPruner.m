@interface ATXBiomePrivacyPruner
- (void)pruneActivitySuggestionFeedbackStreamWithActivity:(id)a3;
- (void)pruneAllStreamsWithActivity:(id)a3;
- (void)pruneAppLaunchInferredModeStreamWithActivity:(id)a3;
- (void)pruneBlendingStreamsWithActivity:(id)a3;
- (void)pruneContextHeuristicsStreamWithActivity:(id)a3;
- (void)pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:(id)a3;
- (void)pruneDigestOnboardingLoggingStreamWithActivity:(id)a3;
- (void)pruneDigestOnboardingSuggestionLoggingStreamWithActivity:(id)a3;
- (void)pruneERMStreamWithActivity:(id)a3;
- (void)pruneFaceGalleryStreamWithActivity:(id)a3;
- (void)pruneLightweightClientModelCacheUpdatesStreamWithActivity:(id)a3;
- (void)pruneLocationStreamWithActivity:(id)a3;
- (void)pruneMissedNotificationRankingStreamWithActivity:(id)a3;
- (void)pruneModeConfigurationUIFlowLoggingStreamWithActivity:(id)a3;
- (void)pruneNotificationDigestStreamWithActivity:(id)a3;
- (void)pruneNotificationEventStreamWithActivity:(id)a3;
- (void)pruneNotificationGroupEventStreamWithActivity:(id)a3;
- (void)pruneNotificationSuggestionInteractionStreamWithActivity:(id)a3;
- (void)pruneNotificationSuggestionStreamWithActivity:(id)a3;
- (void)prunePredictionContextStreamWithActivity:(id)a3;
- (void)prunePrivateStreamWithStreamIdentifier:(id)a3 activity:(id)a4;
- (void)pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:(id)a3;
- (void)pruneSpotlightUIStreamWithActivity:(id)a3;
- (void)pruneWithStreamIdentifier:(id)a3 activity:(id)a4 config:(id)a5 endTime:(double)a6;
@end

@implementation ATXBiomePrivacyPruner

- (void)pruneAllStreamsWithActivity:(id)a3
{
  v4 = a3;
  [(ATXBiomePrivacyPruner *)self pruneBlendingStreamsWithActivity:v4];
  if (([v4 didDefer] & 1) == 0)
  {
    [(ATXBiomePrivacyPruner *)self prunePredictionContextStreamWithActivity:v4];
    if (([v4 didDefer] & 1) == 0)
    {
      [(ATXBiomePrivacyPruner *)self pruneContextHeuristicsStreamWithActivity:v4];
      if (([v4 didDefer] & 1) == 0)
      {
        [(ATXBiomePrivacyPruner *)self pruneSpotlightUIStreamWithActivity:v4];
        if (([v4 didDefer] & 1) == 0)
        {
          [(ATXBiomePrivacyPruner *)self pruneLocationStreamWithActivity:v4];
          if (([v4 didDefer] & 1) == 0)
          {
            [(ATXBiomePrivacyPruner *)self pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:v4];
            if (([v4 didDefer] & 1) == 0)
            {
              [(ATXBiomePrivacyPruner *)self pruneLightweightClientModelCacheUpdatesStreamWithActivity:v4];
              if (([v4 didDefer] & 1) == 0)
              {
                [(ATXBiomePrivacyPruner *)self pruneActivitySuggestionFeedbackStreamWithActivity:v4];
                if (([v4 didDefer] & 1) == 0)
                {
                  [(ATXBiomePrivacyPruner *)self pruneERMStreamWithActivity:v4];
                  if (([v4 didDefer] & 1) == 0)
                  {
                    [(ATXBiomePrivacyPruner *)self pruneNotificationDigestStreamWithActivity:v4];
                    if (([v4 didDefer] & 1) == 0)
                    {
                      [(ATXBiomePrivacyPruner *)self pruneMissedNotificationRankingStreamWithActivity:v4];
                      if (([v4 didDefer] & 1) == 0)
                      {
                        [(ATXBiomePrivacyPruner *)self pruneNotificationEventStreamWithActivity:v4];
                        if (([v4 didDefer] & 1) == 0)
                        {
                          [(ATXBiomePrivacyPruner *)self pruneNotificationGroupEventStreamWithActivity:v4];
                          if (([v4 didDefer] & 1) == 0)
                          {
                            [(ATXBiomePrivacyPruner *)self pruneNotificationSuggestionStreamWithActivity:v4];
                            if (([v4 didDefer] & 1) == 0)
                            {
                              [(ATXBiomePrivacyPruner *)self pruneNotificationSuggestionInteractionStreamWithActivity:v4];
                              if (([v4 didDefer] & 1) == 0)
                              {
                                [(ATXBiomePrivacyPruner *)self pruneModeConfigurationUIFlowLoggingStreamWithActivity:v4];
                                if (([v4 didDefer] & 1) == 0)
                                {
                                  [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingSuggestionLoggingStreamWithActivity:v4];
                                  if (([v4 didDefer] & 1) == 0)
                                  {
                                    [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingLoggingStreamWithActivity:v4];
                                    if (([v4 didDefer] & 1) == 0)
                                    {
                                      [(ATXBiomePrivacyPruner *)self pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:v4];
                                      if (([v4 didDefer] & 1) == 0)
                                      {
                                        [(ATXBiomePrivacyPruner *)self pruneAppLaunchInferredModeStreamWithActivity:v4];
                                        if (([v4 didDefer] & 1) == 0)
                                        {
                                          [(ATXBiomePrivacyPruner *)self pruneFaceGalleryStreamWithActivity:v4];
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

- (void)pruneBlendingStreamsWithActivity:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = objc_opt_new();
  v6 = [v5 streamIdentifiers];

  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [MEMORY[0x277CF17F8] atx_storeConfig];
        [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:v11 activity:v4 config:v13 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CF17F8] atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"homeScreen" activity:v4 config:v14 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = objc_opt_new();
  v16 = [v15 streamIdentifiers];

  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:v21 activity:v4];
        objc_autoreleasePoolPop(v22);
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:@"blending" activity:v4];
  [(ATXBiomePrivacyPruner *)self prunePrivateStreamWithStreamIdentifier:@"clientModel" activity:v4];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)prunePredictionContextStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"predictionContext" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneContextHeuristicsStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"contextHeuristics" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneSpotlightUIStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"spotlightUI" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneLocationStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"location" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -172800.0];
}

- (void)pruneProactiveSuggestionUIFeedbackResultStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"proactiveSuggestionUIFeedbackResultStreamWriterBookmarkURL" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneLightweightClientModelCacheUpdatesStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"lightweightClientModelCacheUpdates" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneActivitySuggestionFeedbackStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"ActivitySuggestionFeedback" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneERMStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"ERM" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationDigestStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationDigestLoggingEvents" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -1209600.0];
}

- (void)pruneMissedNotificationRankingStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"missedNotificationRankingLoggingEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -1209600.0];
}

- (void)pruneNotificationEventStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"userNotificationEvents" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationGroupEventStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationGroupEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationSuggestionStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationSuggestion" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneNotificationSuggestionInteractionStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"notificationSuggestionInteraction" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneAppLaunchInferredModeStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"appLaunchInferredMode" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneModeConfigurationUIFlowLoggingStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"modeConfigurationUIFlowLoggingEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingSuggestionLoggingStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingSuggestionLoggingEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingLoggingStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingLoggingEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneDigestOnboardingAppSelectionLoggingStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"digestOnboardingAppSelectionLoggingEvent" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)pruneFaceGalleryStreamWithActivity:(id)a3
{
  v4 = MEMORY[0x277CF17F8];
  v5 = a3;
  v6 = [v4 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:@"faceGallery" activity:v5 config:v6 endTime:CFAbsoluteTimeGetCurrent() + -2419200.0];
}

- (void)prunePrivateStreamWithStreamIdentifier:(id)a3 activity:(id)a4
{
  v6 = MEMORY[0x277CF17F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 atx_storeConfig];
  [(ATXBiomePrivacyPruner *)self pruneWithStreamIdentifier:v8 activity:v7 config:v9 endTime:CFAbsoluteTimeGetCurrent() + -172800.0];
}

- (void)pruneWithStreamIdentifier:(id)a3 activity:(id)a4 config:(id)a5 endTime:(double)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Pruning stream identifier: %@ based on max size", buf, 0xCu);
  }

  v13 = [objc_alloc(MEMORY[0x277CF1808]) initWithStream:v9 permission:2 config:v11];
  [v13 pruneStreamToMaxStreamSizeInBytes:*MEMORY[0x277CEBDA0]];
  v14 = __atxlog_handle_default();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a6;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Pruning stream identifier: %@ based on endTime: %f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v35 = 0;
  v15 = [objc_alloc(MEMORY[0x277CF1810]) initWithStream:v9 config:v11];
  v16 = objc_autoreleasePoolPush();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke;
  v29[3] = &unk_278599B48;
  v31 = buf;
  v17 = v10;
  v30 = v17;
  [v15 removeEventsFrom:1 to:v29 reason:0.0 usingBlock:a6];

  objc_autoreleasePoolPop(v16);
  *(*&buf[8] + 24) = 0;
  v18 = __atxlog_handle_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 138412546;
    *v33 = v9;
    *&v33[8] = 2048;
    *&v33[10] = a6;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Pruning tombstones for stream identifier: %@ based on endTime: %f", v32, 0x16u);
  }

  v19 = [v11 copy];
  [v19 setStoreLocationOption:2];
  v20 = [objc_alloc(MEMORY[0x277CF1810]) initWithStream:v9 config:v19];
  v21 = objc_autoreleasePoolPush();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__ATXBiomePrivacyPruner_pruneWithStreamIdentifier_activity_config_endTime___block_invoke_90;
  v26[3] = &unk_278599B48;
  v28 = buf;
  v22 = v17;
  v27 = v22;
  [v20 removeEventsFrom:1 to:v26 reason:0.0 usingBlock:a6];

  objc_autoreleasePoolPop(v21);
  v23 = __atxlog_handle_default();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*&buf[8] + 24);
    *v32 = 67109378;
    *v33 = v24;
    *&v33[4] = 2112;
    *&v33[6] = v9;
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