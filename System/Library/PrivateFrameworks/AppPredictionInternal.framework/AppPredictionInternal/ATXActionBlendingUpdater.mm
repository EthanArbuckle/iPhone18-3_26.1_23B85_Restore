@interface ATXActionBlendingUpdater
+ (double)generateScoreForFallbackActionKey:(id)key fallbackAction:(id)action penalizedFallbackActions:(id)actions;
+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type;
+ (void)updateBlendingLayerWithFallbackActions;
+ (void)updateBlendingLayerWithHeuristicPredictions:(id)predictions;
+ (void)updateBlendingLayerWithLockscreenActions:(id)actions feedbackMetadata:(id)metadata;
+ (void)updateBlendingLayerWithRecentShortcuts:(id)shortcuts;
@end

@implementation ATXActionBlendingUpdater

+ (id)clientModelIdForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v6 = 0;
  if (type > 37)
  {
    switch(type)
    {
      case '1':
        v7 = 49;
        break;
      case '.':
        v7 = 48;
        break;
      case '&':
        v7 = 7;
        break;
      default:
        goto LABEL_4;
    }
  }

  else
  {
    v7 = 6;
    if ((typeCopy - 18) >= 4 && typeCopy != 16)
    {
LABEL_4:

      return v6;
    }
  }

  v6 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:{v7, v3}];

  return v6;
}

+ (void)updateBlendingLayerWithRecentShortcuts:(id)shortcuts
{
  shortcutsCopy = shortcuts;
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:11];
  v4 = objc_alloc(MEMORY[0x277D42070]);
  v5 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v5 blendingLayerServer];
  v7 = [v4 initWithClientModelId:v3 blendingLayerServer:blendingLayerServer];

  [v7 updateSuggestions:shortcutsCopy];
}

void __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Successfully updated blending for %@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 32)];
      __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke_cold_1(v8, v5, &v10, v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)updateBlendingLayerWithHeuristicPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v3 = +[_ATXGlobals sharedInstance];
  v4 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:3];
  heuristicPredictionBlendingModelVersion = [v3 heuristicPredictionBlendingModelVersion];
  v6 = objc_alloc(MEMORY[0x277D42070]);
  v7 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v7 blendingLayerServer];
  v9 = [v6 initWithClientModelId:v4 blendingLayerServer:blendingLayerServer];

  v10 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v4 clientModelVersion:heuristicPredictionBlendingModelVersion engagementResetPolicy:1];
  v11 = [ATXProactiveSuggestionBuilder proactiveSuggestionsFromHeuristicActionResults:predictionsCopy clientModelSpec:v10];
  [v9 updateSuggestions:v11];
}

+ (void)updateBlendingLayerWithFallbackActions
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = +[_ATXGlobals sharedInstance];
  v26 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:10];
  v2 = objc_alloc(MEMORY[0x277D42070]);
  v3 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v3 blendingLayerServer];
  v23 = [v2 initWithClientModelId:v26 blendingLayerServer:blendingLayerServer];

  actionFallbacksBlendingModelVersion = [v27 actionFallbacksBlendingModelVersion];
  v25 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v26 clientModelVersion:actionFallbacksBlendingModelVersion engagementResetPolicy:0];
  v5 = [objc_alloc(MEMORY[0x277CEB540]) initWithClientModelSpec:v25];
  v6 = MEMORY[0x277CBEB98];
  penalizedFallbackActions = [v27 penalizedFallbackActions];
  v29 = [v6 setWithArray:penalizedFallbackActions];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = objc_opt_new();
  enabledFallbackActions = [v27 enabledFallbackActions];
  v9 = [enabledFallbackActions countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(enabledFallbackActions);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v5 suggestionforSpecifiedFallbackActionType:{objc_msgSend(MEMORY[0x277CEB540], "fallbackActionTypeForString:", v12, v23)}];
        v14 = v13;
        if (v13)
        {
          executableSpecification = [v13 executableSpecification];
          executableObject = [executableSpecification executableObject];

          actionKey = [executableObject actionKey];
          [self generateScoreForFallbackActionKey:actionKey fallbackAction:v12 penalizedFallbackActions:v29];
          v19 = v18;
          scoreSpecification = [v14 scoreSpecification];
          [scoreSpecification setRawScore:v19];

          [v30 addObject:v14];
        }
      }

      v9 = [enabledFallbackActions countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  [v30 sortUsingComparator:&__block_literal_global_257];
  v21 = [v30 copy];
  [v23 updateSuggestions:v21];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __66__ATXActionBlendingUpdater_updateBlendingLayerWithFallbackActions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x277CCABB0];
  v6 = [a3 scoreSpecification];
  [v6 rawScore];
  v7 = [v5 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 scoreSpecification];
  [v9 rawScore];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

+ (double)generateScoreForFallbackActionKey:(id)key fallbackAction:(id)action penalizedFallbackActions:(id)actions
{
  v28[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  actionCopy = action;
  actionsCopy = actions;
  v10 = +[_ATXGlobals sharedInstance];
  v11 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v12 = [v11 histogramForLaunchType:90];
  v13 = [v11 histogramForLaunchType:91];
  v28[0] = keyCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v12 totalLaunchesForBundleIds:v14];
  v16 = v15;

  v27 = keyCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v13 totalLaunchesForBundleIds:v17];
  v19 = v18;

  [v12 totalLaunches];
  v21 = v20;
  [v13 totalLaunches];
  +[_ATXActionUtils computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:](_ATXActionUtils, "computeNormalizedBetaDistEngagementScoreWithPriorAlpha:priorBeta:confirms:rejects:totalConfirms:totalRejects:", [v10 fallbackActionsEngagementPriorAlpha], objc_msgSend(v10, "fallbackActionsEngagementPriorBeta"), v16, v19, v21, v22);
  v24 = v23;
  if ([actionsCopy containsObject:actionCopy])
  {
    v24 = v24 + -10000.0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (void)updateBlendingLayerWithLockscreenActions:(id)actions feedbackMetadata:(id)metadata
{
  v21 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  metadataCopy = metadata;
  v7 = +[_ATXGlobals sharedInstance];
  v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:9];
  v9 = objc_alloc(MEMORY[0x277D42070]);
  v10 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v10 blendingLayerServer];
  v12 = [v9 initWithClientModelId:v8 blendingLayerServer:blendingLayerServer];

  actionPredictionBlendingModelVersion = [v7 actionPredictionBlendingModelVersion];
  v14 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v8 clientModelVersion:actionPredictionBlendingModelVersion engagementResetPolicy:0];
  v15 = __atxlog_handle_blending();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = actionsCopy;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "lockscreen: converting actions to proactive suggestions: %@", &v19, 0xCu);
  }

  v16 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForLockscreenActions:actionsCopy clientModelSpec:v14];
  v17 = __atxlog_handle_blending();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "lockscreen: Sending suggestions to blending: %@", &v19, 0xCu);
  }

  [v12 updateSuggestions:v16 feedbackMetadata:metadataCopy completionHandler:&__block_literal_global_35_7];
  v18 = *MEMORY[0x277D85DE8];
}

void __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "lockscreen: successfully updated blending for lockscreen action predictions", v6, 2u);
    }
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke_cold_1(v4, v5);
    }
  }
}

void __106__ATXActionBlendingUpdater_updateBlendingLayerWithBehavioralPredictions_feedbackMetadata_consumerSubType___block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Error updating blending for %@ with error: %@", buf, 0x16u);
}

void __86__ATXActionBlendingUpdater_updateBlendingLayerWithLockscreenActions_feedbackMetadata___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "lockscreen: error updating blending with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end