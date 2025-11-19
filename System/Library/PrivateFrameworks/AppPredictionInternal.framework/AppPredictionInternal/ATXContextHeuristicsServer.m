@interface ATXContextHeuristicsServer
+ (id)sharedInstance;
- (ATXContextHeuristicsServer)initWithHeuristics:(id)a3;
- (id)_cachedContextsFromSuggestions:(id)a3;
- (id)_contextHeuristicsClientModel;
- (id)_retrieveOldContextHeuristicsSuggestions;
- (void)_updateBlendingLayerWithSuggestionsFromContextHeuristics:(id)a3;
- (void)_updateBlendingLayerWithSuggestionsFromSpotlightRecents:(id)a3;
- (void)_updateContextHeuristicsBiomeStreamWithNewSuggestions:(id)a3 oldSuggestions:(id)a4;
- (void)contextHeuristics:(id)a3 didUpdateSpotlightRecents:(id)a4;
- (void)contextHeuristics:(id)a3 didUpdateSuggestions:(id)a4;
@end

@implementation ATXContextHeuristicsServer

+ (id)sharedInstance
{
  v2 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: sharedInstance", v5, 2u);
  }

  if (sharedInstance__pasOnceToken8_0 != -1)
  {
    +[ATXContextHeuristicsServer sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_51;

  return v3;
}

void __44__ATXContextHeuristicsServer_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [ATXContextHeuristicsServer alloc];
  v2 = objc_alloc(MEMORY[0x277CE8988]);
  v3 = [MEMORY[0x277D41BF8] sharedInstance];
  v4 = [v2 initWithLocationManager:v3];
  v5 = [(ATXContextHeuristicsServer *)v1 initWithHeuristics:v4];
  v6 = sharedInstance__pasExprOnceResult_51;
  sharedInstance__pasExprOnceResult_51 = v5;

  objc_autoreleasePoolPop(v0);
}

- (ATXContextHeuristicsServer)initWithHeuristics:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ATXContextHeuristicsServer;
  v6 = [(ATXContextHeuristicsServer *)&v17 init];
  p_isa = &v6->super.isa;
  if (!v6)
  {
LABEL_13:
    v11 = p_isa;
    goto LABEL_14;
  }

  objc_storeStrong(&v6->_heuristics, a3);
  [p_isa[1] setDelegate:p_isa];
  v8 = [[ATXContextHeuristicsScheduler alloc] initWithContextHeuristics:p_isa[1]];
  v9 = p_isa[2];
  p_isa[2] = v8;

  if (![MEMORY[0x277D42598] isClassCLocked])
  {
    [p_isa[1] refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:&__block_literal_global_17_1];
    v12 = [MEMORY[0x277CEBC58] isSportsEnabled];
    v13 = __atxlog_handle_context_heuristic();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: starting sports scheduler.", v16, 2u);
      }

      [p_isa[2] start];
    }

    else
    {
      if (v14)
      {
        *v16 = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: sports feature flag disabled, not starting.", v16, 2u);
      }
    }

    goto LABEL_13;
  }

  v10 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [ATXContextHeuristicsServer initWithHeuristics:v10];
  }

  v11 = 0;
LABEL_14:

  return v11;
}

void __49__ATXContextHeuristicsServer_initWithHeuristics___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __49__ATXContextHeuristicsServer_initWithHeuristics___block_invoke_cold_1(v2);
    }
  }
}

- (void)_updateBlendingLayerWithSuggestionsFromContextHeuristics:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXContextHeuristicsServer *)self _contextHeuristicsClientModel];
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v4 count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer context heuristics total: %lu", &v8, 0xCu);
  }

  [v5 updateSuggestions:v4 completionHandler:&__block_literal_global_21_6];
  v7 = *MEMORY[0x277D85DE8];
}

void __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)_updateBlendingLayerWithSuggestionsFromSpotlightRecents:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:46];
  v5 = objc_alloc(MEMORY[0x277D42070]);
  v6 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v7 = [v6 blendingLayerServer];
  v8 = [v5 initWithClientModelId:v4 blendingLayerServer:v7];

  v9 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v3 count];
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer spotlight recents total: %lu", &v11, 0xCu);
  }

  [v8 updateSuggestions:v3 completionHandler:&__block_literal_global_25_9];
  v10 = *MEMORY[0x277D85DE8];
}

void __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke_cold_1(v4, v5);
    }
  }
}

- (void)contextHeuristics:(id)a3 didUpdateSuggestions:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer Context heuristics %@", &v9, 0xCu);
  }

  v7 = [(ATXContextHeuristicsServer *)self _retrieveOldContextHeuristicsSuggestions];
  [(ATXContextHeuristicsServer *)self _updateBlendingLayerWithSuggestionsFromContextHeuristics:v5];
  [(ATXContextHeuristicsServer *)self _updateContextHeuristicsBiomeStreamWithNewSuggestions:v5 oldSuggestions:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)contextHeuristics:(id)a3 didUpdateSpotlightRecents:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristicsServer: updateBlendingLayer Spotlight recents %@", &v8, 0xCu);
  }

  [(ATXContextHeuristicsServer *)self _updateBlendingLayerWithSuggestionsFromSpotlightRecents:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveOldContextHeuristicsSuggestions
{
  v2 = [(ATXContextHeuristicsServer *)self _contextHeuristicsClientModel];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__104;
  v17 = __Block_byref_object_dispose__104;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __70__ATXContextHeuristicsServer__retrieveOldContextHeuristicsSuggestions__block_invoke;
  v10 = &unk_278597EC0;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [v2 retrieveCurrentSuggestionsWithReply:&v7];
  [MEMORY[0x277D425A0] waitForSemaphore:v4 timeoutSeconds:{1.0, v7, v8, v9, v10}];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __70__ATXContextHeuristicsServer__retrieveOldContextHeuristicsSuggestions__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_updateContextHeuristicsBiomeStreamWithNewSuggestions:(id)a3 oldSuggestions:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ATXContextHeuristicsServer *)self _cachedContextsFromSuggestions:a4];
  v27 = v6;
  v8 = [(ATXContextHeuristicsServer *)self _cachedContextsFromSuggestions:v6];
  v9 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          v16 = [[ATXContextHeuristicsEvent alloc] initWithContextName:&stru_2839A6058 contextType:v15 isStart:0];
          v17 = [v9 source];
          [v17 sendEvent:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * j);
        if (([v10 containsObject:v23] & 1) == 0)
        {
          v24 = [[ATXContextHeuristicsEvent alloc] initWithContextName:&stru_2839A6058 contextType:v23 isStart:1];
          v25 = [v9 source];
          [v25 sendEvent:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_contextHeuristicsClientModel
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:44];
  v3 = objc_alloc(MEMORY[0x277D42070]);
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v5 = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:v5];

  return v6;
}

- (id)_cachedContextsFromSuggestions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy__104;
        v20 = __Block_byref_object_dispose__104;
        v21 = objc_opt_new();
        v9 = [v8 uiSpecification];
        v10 = [v9 predictionReasons];

        if (v10)
        {
          v11 = [v8 uiSpecification];
          [v11 predictionReasons];
          ATXSuggestionPredictionReasonEnumerateReasonCodes();
        }

        [v4 addObject:v17[5]];
        _Block_object_dispose(&v16, 8);
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __61__ATXContextHeuristicsServer__cachedContextsFromSuggestions___block_invoke(uint64_t a1)
{
  v2 = stringForATXSuggestionPredictionReasonCode();
  [*(*(*(a1 + 32) + 8) + 40) appendString:v2];
}

void __87__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromContextHeuristics___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXContextHeuristicsServer: Blending update context heuristics failed due to error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __86__ATXContextHeuristicsServer__updateBlendingLayerWithSuggestionsFromSpotlightRecents___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXContextHeuristicsServer: Blending update spotlight recents failed due to error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end