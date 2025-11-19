@interface ATXModeConfigurationUIFlowMetricLogger
- (ATXModeConfigurationUIFlowMetricLogger)initWithContactStore:(id)a3;
- (ATXModeConfigurationUIFlowMetricLogger)initWithFocusModeSignalsLogger:(id)a3 contactStore:(id)a4;
- (ATXModeConfigurationUIFlowMetricLogger)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)a3 focusModeSignalsLogger:(id)a4 contactStore:(id)a5;
- (id)modeConfigurationUIFlowBookmark;
- (unint64_t)numEntitiesAdded:(id)a3;
- (unint64_t)numEntitiesRemoved:(id)a3;
- (unint64_t)numSuggestedEntitiesAdded:(id)a3;
- (unint64_t)numSuggestedEntitiesRemoved:(id)a3;
- (void)logCompletion:(id)a3;
- (void)logModeConfigurationUIFlowMetricWithXPCActivity:(id)a3;
- (void)writeBookmarkToFile:(id)a3;
@end

@implementation ATXModeConfigurationUIFlowMetricLogger

- (ATXModeConfigurationUIFlowMetricLogger)initWithContactStore:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXModeConfigurationUIFlowMetricLogger *)self initWithModeConfigurationUIFlowLoggingBiomeStream:v5 focusModeSignalsLogger:v6 contactStore:v4];

  return v7;
}

- (ATXModeConfigurationUIFlowMetricLogger)initWithFocusModeSignalsLogger:(id)a3 contactStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(ATXModeConfigurationUIFlowMetricLogger *)self initWithModeConfigurationUIFlowLoggingBiomeStream:v8 focusModeSignalsLogger:v7 contactStore:v6];

  return v9;
}

- (ATXModeConfigurationUIFlowMetricLogger)initWithModeConfigurationUIFlowLoggingBiomeStream:(id)a3 focusModeSignalsLogger:(id)a4 contactStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ATXModeConfigurationUIFlowMetricLogger;
  v12 = [(ATXModeConfigurationUIFlowMetricLogger *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modeConfigurationUIFlowLoggingBiomeStream, a3);
    objc_storeStrong(&v13->_focusModeSignalsLogger, a4);
    v14 = [[ATXFocusModeContactsMetricLogger alloc] initWithContactStore:v11];
    focusModeContactsLogger = v13->_focusModeContactsLogger;
    v13->_focusModeContactsLogger = v14;
  }

  return v13;
}

- (id)modeConfigurationUIFlowBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"modeConfigurationUIFlowBookmark"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:&unk_283A572F0];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v5 = [v6 initWithURLPath:v4 versionNumber:v7 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)logCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 state];
  v5 = __atxlog_handle_hero();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [v3 error];
      v8 = [v7 description];
      v10 = 136315138;
      v11 = [v8 UTF8String];
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Error in receiving events from modeConfigurationUIFlowLogging stream: %s\n", &v10, 0xCu);
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Received all events from modeConfigurationUIFlowLogging stream\n", &v10, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logModeConfigurationUIFlowMetricWithXPCActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXModeConfigurationUIFlowMetricLogger *)self modeConfigurationUIFlowBookmark];
  modeConfigurationUIFlowLoggingBiomeStream = self->_modeConfigurationUIFlowLoggingBiomeStream;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = [(ATXModeConfigurationUIFlowLoggingBiomeStream *)modeConfigurationUIFlowLoggingBiomeStream publisherFromStartTime:v7 + -1209600.0];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v9 = [v5 bookmark];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__ATXModeConfigurationUIFlowMetricLogger_logModeConfigurationUIFlowMetricWithXPCActivity___block_invoke;
  v16[3] = &unk_2785A0308;
  v16[4] = self;
  v18 = v19;
  v10 = v5;
  v17 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ATXModeConfigurationUIFlowMetricLogger_logModeConfigurationUIFlowMetricWithXPCActivity___block_invoke_28;
  v13[3] = &unk_278597C90;
  v13[4] = self;
  v11 = v4;
  v14 = v11;
  v15 = v19;
  v12 = [v8 drivableSinkWithBookmark:v9 completion:v16 shouldContinue:v13];

  _Block_object_dispose(v19, 8);
}

void __90__ATXModeConfigurationUIFlowMetricLogger_logModeConfigurationUIFlowMetricWithXPCActivity___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) logCompletion:a2];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - XPC Activity deferred, terminating.", &v11, 0xCu);
    }
  }

  [*(a1 + 40) setBookmark:v5];
  [*(a1 + 32) writeBookmarkToFile:*(a1 + 40)];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __90__ATXModeConfigurationUIFlowMetricLogger_logModeConfigurationUIFlowMetricWithXPCActivity___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = objc_opt_new();
  v5 = [v3 dndModeUUID];
  v6 = [v5 UUIDString];
  [v4 setModeUUID:v6];

  v7 = [MEMORY[0x277CEB440] sharedInstance];
  v8 = [v3 dndModeUUID];
  [v7 atxModeForDNDMode:v8];
  v9 = ATXModeToString();
  [v4 setModeSemanticType:v9];

  [v3 modeConfigurationUI];
  v10 = ATXModeConfigurationUIToString();
  [v4 setModeConfigurationUI:v10];

  if ([v3 modeConfigurationEntityType])
  {
    if ([v3 modeConfigurationEntityType] == 1)
    {
      [v4 setNumContactsAdded:{objc_msgSend(*(a1 + 32), "numEntitiesAdded:", v3)}];
      [v4 setNumContactsRemoved:{objc_msgSend(*(a1 + 32), "numEntitiesRemoved:", v3)}];
      v11 = [v3 suggestedEntityIdentifiers];
      [v4 setNumContactsSuggested:{objc_msgSend(v11, "count")}];

      v12 = [v3 currentEntityIdentifiers];
      [v4 setNumExistingAllowedContacts:{objc_msgSend(v12, "count")}];

      [v4 setNumSuggestedContactsAdded:{objc_msgSend(*(a1 + 32), "numSuggestedEntitiesAdded:", v3)}];
      [v4 setNumSuggestedContactsRemoved:{objc_msgSend(*(a1 + 32), "numSuggestedEntitiesRemoved:", v3)}];
    }
  }

  else
  {
    [v4 setNumAppsAdded:{objc_msgSend(*(a1 + 32), "numEntitiesAdded:", v3)}];
    [v4 setNumAppsRemoved:{objc_msgSend(*(a1 + 32), "numEntitiesRemoved:", v3)}];
    v13 = [v3 suggestedEntityIdentifiers];
    [v4 setNumAppsSuggested:{objc_msgSend(v13, "count")}];

    v14 = [v3 currentEntityIdentifiers];
    [v4 setNumExistingAllowedApps:{objc_msgSend(v14, "count")}];

    [v4 setNumSuggestedAppsAdded:{objc_msgSend(*(a1 + 32), "numSuggestedEntitiesAdded:", v3)}];
    [v4 setNumSuggestedAppsRemoved:{objc_msgSend(*(a1 + 32), "numSuggestedEntitiesRemoved:", v3)}];
  }

  [v4 logToCoreAnalytics];
  [*(*(a1 + 32) + 16) logFocusModeAppSignalsWithModeConfigurationUIFlowLoggingEvent:v3 xpcActivity:*(a1 + 40)];
  [*(*(a1 + 32) + 24) logFocusModeContactSignalsWithModeConfigurationUIFlowLoggingEvent:v3 xpcActivity:*(a1 + 40)];
  v15 = [*(a1 + 40) didDefer];
  if (v15)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v15 ^ 1u;
}

- (void)writeBookmarkToFile:(id)a3
{
  v6 = 0;
  [a3 saveBookmarkWithError:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXDigestOnboardingAppSelectionMetricsLogger *)self writeBookmarkToFile:v4, v5];
    }
  }
}

- (unint64_t)numEntitiesAdded:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 previousEntityIdentifiers];
  v6 = [v4 initWithArray:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v3 currentEntityIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 += [v6 containsObject:*(*(&v15 + 1) + 8 * i)] ^ 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)numEntitiesRemoved:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 currentEntityIdentifiers];
  v6 = [v4 initWithArray:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v3 previousEntityIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 += [v6 containsObject:*(*(&v15 + 1) + 8 * i)] ^ 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)numSuggestedEntitiesAdded:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 suggestedEntityIdentifiers];
  v6 = [v4 initWithArray:v5];

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [v3 previousEntityIdentifiers];
  v9 = [v7 initWithArray:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v3 currentEntityIdentifiers];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (([v9 containsObject:v16] & 1) == 0)
        {
          v13 += [v6 containsObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (unint64_t)numSuggestedEntitiesRemoved:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CEB440] sharedInstance];
  v7 = [v3 dndModeUUID];
  v8 = [v6 atxModeForDNDMode:v7];

  if ([v3 modeConfigurationEntityType])
  {
    if ([v3 modeConfigurationEntityType] != 1)
    {
      goto LABEL_19;
    }

    v9 = +[ATXModeEntityScorerServer sharedInstance];
    v10 = [v9 rankedContactsForMode:v8 options:0];
    v11 = [v4 recommendedAllowedContactsForContactScores:v10];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v39 + 1) + 8 * i) identifier];
          [v5 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = [v4 recommendedAllowedAppsForMode:v8];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v12);
          }

          v22 = [*(*(&v43 + 1) + 8 * j) identifier];
          [v5 addObject:v22];
        }

        v19 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v19);
    }
  }

LABEL_19:
  v23 = objc_alloc(MEMORY[0x277CBEB98]);
  v24 = [v3 currentEntityIdentifiers];
  v25 = [v23 initWithArray:v24];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = [v3 previousEntityIdentifiers];
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v36;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v35 + 1) + 8 * k);
        if (([v25 containsObject:v32] & 1) == 0)
        {
          v29 += [v5 containsObject:v32];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

@end