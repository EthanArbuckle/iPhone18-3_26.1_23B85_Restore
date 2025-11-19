@interface ATXHomeScreenFocusSuggestionLogger
- (ATXHomeScreenFocusSuggestionLogger)init;
- (id)generateSuggestedHomePageStreamBookmark;
- (id)generateSuggestedHomePageStreamBookmarkURLPath;
- (void)logHomeScreenFocusSuggestionMetrics;
- (void)writeBookmarkToFile:(id)a3;
@end

@implementation ATXHomeScreenFocusSuggestionLogger

- (ATXHomeScreenFocusSuggestionLogger)init
{
  v6.receiver = self;
  v6.super_class = ATXHomeScreenFocusSuggestionLogger;
  v2 = [(ATXHomeScreenFocusSuggestionLogger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    stream = v2->_stream;
    v2->_stream = v3;
  }

  return v2;
}

- (id)generateSuggestedHomePageStreamBookmarkURLPath
{
  suggestedHomePageStreamBookmarkURLPath = self->_suggestedHomePageStreamBookmarkURLPath;
  if (suggestedHomePageStreamBookmarkURLPath)
  {
    v3 = suggestedHomePageStreamBookmarkURLPath;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [MEMORY[0x277CEBCB0] metricsRootDirectory];
    v7 = objc_alloc(MEMORY[0x277CBEBC0]);
    v8 = [v6 stringByAppendingPathComponent:v5];
    v3 = [v7 initFileURLWithPath:v8];
  }

  return v3;
}

- (id)generateSuggestedHomePageStreamBookmark
{
  v3 = MEMORY[0x277CEBBF8];
  v4 = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmarkURLPath];
  v5 = [v3 bookmarkFromURLPath:v4 maxFileSize:3000000 versionNumber:&unk_283A57680];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEBBF8]);
    v7 = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmarkURLPath];
    v5 = [v6 initWithURLPath:v7 versionNumber:&unk_283A57680 bookmark:0 metadata:0];
  }

  return v5;
}

- (void)writeBookmarkToFile:(id)a3
{
  v6 = 0;
  [a3 saveBookmarkWithError:&v6];
  v4 = v6;
  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXModeSetupExperienceMetricsLogger *)self writeBookmarkToFile:v4, v5];
    }
  }
}

- (void)logHomeScreenFocusSuggestionMetrics
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ATXHomeScreenFocusSuggestionLogger *)self generateSuggestedHomePageStreamBookmark];
  v5 = [(ATXHomeScreenFocusSuggestionLogger *)self stream];
  v6 = [v5 publisherFromStartTime:0.0];
  v7 = [v4 bookmark];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke;
  v51[3] = &unk_27859EB48;
  v38 = v4;
  v52 = v38;
  v53 = self;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_16;
  v49[3] = &unk_278596F60;
  v8 = v3;
  v50 = v8;
  v9 = [v6 sinkWithBookmark:v7 completion:v51 receiveInput:v49];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v8;
  obj = [v8 allKeys];
  v42 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v42)
  {
    v40 = *v46;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_opt_new();
        v14 = [v41 objectForKeyedSubscript:v11];
        v15 = [v14 count];
        v16 = v15 - 1;
        if (v15 < 1)
        {
          v20 = 0;
        }

        else
        {
          do
          {
            v17 = [v14 objectAtIndexedSubscript:--v15];
            v18 = [v17 eventBody];
            v19 = [v18 action];

            v20 = v19 != 2;
            if (v19 != 2)
            {
              v16 = v15;
              goto LABEL_12;
            }
          }

          while (v15 >= 1);
          v16 = -1;
        }

LABEL_12:
        v21 = +[ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:](ATXSuggestedPagesUtils, "semanticTypeForSuggestedPageType:", [v11 integerValue]);
        [v21 integerValue];
        v22 = DNDModeSemanticTypeToString();
        [v13 setModeSemanticType:v22];

        if (v20 && ([v14 objectAtIndexedSubscript:v16], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "eventBody"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "action"), v24, v23, v25 == 1))
        {
          v26 = [v14 objectAtIndexedSubscript:v16];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_2;
          v43[3] = &unk_27859A798;
          v27 = v26;
          v44 = v27;
          v28 = [v14 _pas_filteredArrayWithTest:v43];
          v29 = [v28 firstObject];

          v33 = 0;
          if (v29)
          {
            [v29 timestamp];
            v31 = v30;
            [v27 timestamp];
            if (v31 - v32 < 86400.0)
            {
              v33 = 1;
            }
          }

          [v13 setOutcome:v33];
        }

        else
        {
          v34 = [v14 _pas_filteredArrayWithTest:&__block_literal_global_233];
          v35 = [v34 count];

          if (v35)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          [v13 setOutcome:v36];
        }

        [v13 logToCoreAnalytics];

        objc_autoreleasePoolPop(v12);
      }

      v42 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v42);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  if (v7)
  {
  }

  else if (![v5 state])
  {
    goto LABEL_7;
  }

  v8 = __atxlog_handle_modes();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeSetupExperienceMetricsLogger_logMetrics__block_invoke_2_cold_1(v5, v8);
  }

LABEL_7:
  [*(a1 + 32) setBookmark:v6];
  [*(a1 + 40) writeBookmarkToFile:*(a1 + 32)];
}

void __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_16(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 eventBody];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "pageType")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 addObject:v9];
  }

  else
  {
    v6 = objc_opt_new();
    [v6 addObject:v9];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "pageType")}];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

BOOL __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) eventBody];
  v7 = [v6 identifier];
  if ([v5 isEqualToString:v7])
  {
    v8 = [v3 eventBody];
    v9 = [v8 action] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __73__ATXHomeScreenFocusSuggestionLogger_logHomeScreenFocusSuggestionMetrics__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 action] == 2;

  return v3;
}

@end