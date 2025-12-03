@interface ATXAnchorModelPredictionForwarder
- (ATXAnchorModelPredictionForwarder)init;
- (ATXAnchorModelPredictionForwarder)initWithAnchorModelDataStoreWrapper:(id)wrapper anchorModelHyperParameters:(id)parameters;
- (id)actionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions;
- (id)appAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions;
- (id)clientModelSpec;
- (id)linkActionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions;
- (id)modeAnchorModelSuggestionsFromPredictions:(id)predictions;
- (void)forwardModePredictions:(id)predictions;
- (void)forwardNonModePredictions:(id)predictions;
- (void)forwardPredictionTuplesToBlendingLayer:(id)layer feedbackMetadata:(id)metadata;
- (void)forwardPredictions:(id)predictions;
@end

@implementation ATXAnchorModelPredictionForwarder

- (ATXAnchorModelPredictionForwarder)init
{
  v3 = objc_opt_new();
  v4 = +[ATXAnchorModelHyperParameters sharedInstance];
  v5 = [(ATXAnchorModelPredictionForwarder *)self initWithAnchorModelDataStoreWrapper:v3 anchorModelHyperParameters:v4];

  return v5;
}

- (ATXAnchorModelPredictionForwarder)initWithAnchorModelDataStoreWrapper:(id)wrapper anchorModelHyperParameters:(id)parameters
{
  wrapperCopy = wrapper;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = ATXAnchorModelPredictionForwarder;
  v9 = [(ATXAnchorModelPredictionForwarder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeWrapper, wrapper);
    objc_storeStrong(&v10->_hyperParameters, parameters);
  }

  return v10;
}

- (void)forwardPredictions:(id)predictions
{
  v21 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Forwarding the following predictions:", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v11;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  [(ATXAnchorModelPredictionForwarder *)self forwardNonModePredictions:v6];
  [(ATXAnchorModelPredictionForwarder *)self forwardModePredictions:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)forwardNonModePredictions:(id)predictions
{
  v19 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v5 = [(ATXAnchorModelPredictionForwarder *)self actionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:predictionsCopy];
  v6 = [(ATXAnchorModelPredictionForwarder *)self appAnchorModelPredictionTuplesForBlendingLayerFromPredictions:predictionsCopy];
  v7 = [(ATXAnchorModelPredictionForwarder *)self linkActionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:predictionsCopy];

  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = [v5 count];
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Forwarding %lu actions", &v17, 0xCu);
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 count];
    v17 = 134217984;
    v18 = v10;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Forwarding %lu apps", &v17, 0xCu);
  }

  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 count];
    v17 = 134217984;
    v18 = v12;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Forwarding %lu Link actions", &v17, 0xCu);
  }

  v13 = [v5 arrayByAddingObjectsFromArray:v6];
  v14 = [v13 arrayByAddingObjectsFromArray:v7];

  v15 = [[ATXAnchorModelFeedbackMetadata alloc] initWithAnchorSuggestionTuples:v14];
  [(ATXAnchorModelPredictionForwarder *)self forwardPredictionTuplesToBlendingLayer:v14 feedbackMetadata:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)forwardModePredictions:(id)predictions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(ATXAnchorModelPredictionForwarder *)self modeAnchorModelSuggestionsFromPredictions:predictions];
  if ([v4 count])
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = [v4 count];
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Forwarding %lu mode suggestions", &v10, 0xCu);
    }

    modeSuggestionClient = self->_modeSuggestionClient;
    if (!modeSuggestionClient)
    {
      v7 = +[ATXModeAnchorModelSuggestionClient sharedInstance];
      v8 = self->_modeSuggestionClient;
      self->_modeSuggestionClient = v7;

      modeSuggestionClient = self->_modeSuggestionClient;
    }

    [(ATXModeAnchorModelSuggestionClient *)modeSuggestionClient anchorModelDidProvideModeSuggestions:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)forwardPredictionTuplesToBlendingLayer:(id)layer feedbackMetadata:(id)metadata
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v7 = [layer _pas_mappedArrayWithTransform:&__block_literal_global_70];
  anchorModelClientModel = self->_anchorModelClientModel;
  if (!anchorModelClientModel)
  {
    v9 = objc_alloc(MEMORY[0x277D42070]);
    clientModelId = [(ATXAnchorModelPredictionForwarder *)self clientModelId];
    v11 = +[ATXClientModelSuggestionReceiver sharedInstance];
    blendingLayerServer = [v11 blendingLayerServer];
    v13 = [v9 initWithClientModelId:clientModelId blendingLayerServer:blendingLayerServer];
    v14 = self->_anchorModelClientModel;
    self->_anchorModelClientModel = v13;

    anchorModelClientModel = self->_anchorModelClientModel;
  }

  v15 = [ATXAnchorModelFeedbackMetadata archivedDataForAnchorFeedbackMetadata:metadataCopy];
  [(ATXProactiveSuggestionClientModel *)anchorModelClientModel updateSuggestions:v7 feedbackMetadata:v15];

  v16 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = [v7 count];
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Done forwarding %lu predictions to the blending layer.", &v18, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)clientModelSpec
{
  clientModelId = [(ATXAnchorModelPredictionForwarder *)self clientModelId];
  abGroup = [(ATXAnchorModelHyperParameters *)self->_hyperParameters abGroup];
  v5 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:clientModelId clientModelVersion:abGroup engagementResetPolicy:1];

  return v5;
}

- (id)actionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions
{
  v4 = [ATXAnchorModelActionPredictionPostProcessor anchorPredictionScoredActionTuplesFromPredictions:predictions];
  anchorsDisabledForHomescreen = [(ATXAnchorModelHyperParameters *)self->_hyperParameters anchorsDisabledForHomescreen];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__ATXAnchorModelPredictionForwarder_actionAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke;
  v9[3] = &unk_27859A600;
  v9[4] = self;
  v10 = anchorsDisabledForHomescreen;
  v6 = anchorsDisabledForHomescreen;
  v7 = [v4 _pas_mappedArrayWithTransform:v9];

  return v7;
}

id __102__ATXAnchorModelPredictionForwarder_actionAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v3 mediumBlendingConfidenceScoreThreshold];
  v6 = v5;
  [*(*(a1 + 32) + 24) highBlendingConfidenceScoreThreshold];
  v8 = v7;
  v9 = [v4 first];
  v10 = [v4 second];

  v11 = [v9 anchorType];
  v12 = [ATXAnchor anchorTypeStringToClassName:v11];

  LODWORD(v11) = [*(a1 + 40) containsObject:v12];
  v13 = [ATXProactiveSuggestionBuilder predictionReasonsForAnchorModelPrediction:v9];
  v14 = [*(a1 + 32) clientModelSpec];
  v15 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForAnchorModelFromScoredActionWithReason:v10 clientModelSpec:v14 mediumThreshold:v11 ^ 1 highThreshold:v13 allowedOnHomescreen:v6 predictionReasons:v8];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v9 second:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)linkActionAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions
{
  hyperParameters = self->_hyperParameters;
  predictionsCopy = predictions;
  anchorsDisabledForHomescreen = [(ATXAnchorModelHyperParameters *)hyperParameters anchorsDisabledForHomescreen];
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __106__ATXAnchorModelPredictionForwarder_linkActionAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke;
  v12[3] = &unk_27859A628;
  v12[4] = self;
  v13 = anchorsDisabledForHomescreen;
  v14 = v7;
  v8 = v7;
  v9 = anchorsDisabledForHomescreen;
  v10 = [predictionsCopy _pas_mappedArrayWithTransform:v12];

  return v10;
}

id __106__ATXAnchorModelPredictionForwarder_linkActionAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [*(a1[4] + 3) mediumBlendingConfidenceScoreThreshold];
  v5 = v4;
  [*(a1[4] + 3) highBlendingConfidenceScoreThreshold];
  v7 = v6;
  v8 = [v3 candidateType];
  v9 = [v8 isEqualToString:@"linkaction"];

  if (v9)
  {
    v10 = *(a1[4] + 1);
    v11 = [v3 candidateId];
    v12 = [v3 dateIntervalForPrediction];
    v13 = [v12 startDate];
    v14 = [v10 linkActionBiomeEventFromCandidateId:v11 date:v13];

    if (v14)
    {
      v15 = [v3 anchorType];
      v16 = [ATXAnchor anchorTypeStringToClassName:v15];

      v32 = v16;
      v17 = [a1[5] containsObject:v16];
      v18 = [ATXProactiveSuggestionBuilder predictionReasonForAnchorModelPrediction:v3];
      v19 = objc_alloc(MEMORY[0x277CEB608]);
      v20 = [v14 eventBody];
      v21 = [v20 bundleIdentifier];
      v22 = [v14 eventBody];
      v23 = [v22 action];
      v24 = [v19 initWithBundleId:v21 action:v23];

      [v3 score];
      v26 = v25;
      v27 = [a1[4] clientModelSpec];
      v28 = [ATXProactiveSuggestionBuilder proactiveSuggestionForLinkActionPrediction:v24 score:v27 clientModelSpec:v18 mediumThreshold:v17 ^ 1u highThreshold:v26 predictionReason:v5 allowedOnHomescreen:v7];

      if (v28)
      {
        v29 = [a1[6] updatedLinkActionSuggestion:v28];
        if (v29)
        {
          v30 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v3 second:v29];
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)appAnchorModelPredictionTuplesForBlendingLayerFromPredictions:(id)predictions
{
  v4 = [predictions _pas_filteredArrayWithTest:&__block_literal_global_35_1];
  anchorsDisabledForHomescreen = [(ATXAnchorModelHyperParameters *)self->_hyperParameters anchorsDisabledForHomescreen];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__ATXAnchorModelPredictionForwarder_appAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke_2;
  v9[3] = &unk_27859A670;
  v9[4] = self;
  v10 = anchorsDisabledForHomescreen;
  v6 = anchorsDisabledForHomescreen;
  v7 = [v4 _pas_mappedArrayWithTransform:v9];

  return v7;
}

uint64_t __99__ATXAnchorModelPredictionForwarder_appAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXAnchorModelAppPredictionPostProcessor alloc] initWithAnchorModelPrediction:v2];

  v4 = [(ATXAnchorModelAppPredictionPostProcessor *)v3 shouldPredictAnchorModelAppPrediction];
  return v4;
}

id __99__ATXAnchorModelPredictionForwarder_appAnchorModelPredictionTuplesForBlendingLayerFromPredictions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 24) mediumBlendingConfidenceScoreThreshold];
  v5 = v4;
  [*(*(a1 + 32) + 24) highBlendingConfidenceScoreThreshold];
  v7 = v6;
  v8 = [v3 anchorType];
  v9 = [ATXAnchor anchorTypeStringToClassName:v8];

  LODWORD(v8) = [*(a1 + 40) containsObject:v9];
  v10 = [*(a1 + 32) clientModelSpec];
  v11 = [ATXProactiveSuggestionBuilder proactiveSuggestionForAppWithAnchorModelPrediction:v3 clientModelSpec:v10 mediumThreshold:v8 ^ 1 highThreshold:v5 allowedOnHomescreen:v7];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v3 second:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)modeAnchorModelSuggestionsFromPredictions:(id)predictions
{
  v37 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  v29 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = predictionsCopy;
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    v7 = 0x278592000uLL;
    do
    {
      v8 = 0;
      v30 = v5;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = [objc_alloc(*(v7 + 3840)) initWithAnchorModelPrediction:v9];
        if ([v10 shouldPredictAnchorModelModePrediction])
        {
          candidateId = [v9 candidateId];
          v12 = [ATXAnchorModelDataStoreWrapper modeDetailsFromModeCandidateId:candidateId];

          v13 = objc_alloc(MEMORY[0x277D41C28]);
          modeUUID = [v12 modeUUID];
          isStart = [v12 isStart];
          anchorType = [v9 anchorType];
          [v9 score];
          v18 = v17;
          v19 = v6;
          numUniqueOccurrencesAfterAnchor = [v9 numUniqueOccurrencesAfterAnchor];
          [v9 posteriorProbability];
          v22 = v21;
          [v9 classConditionalProbability];
          v24 = v23;
          serializedTriggers = [v10 serializedTriggers];
          v26 = [v13 initWithModeUUID:modeUUID isStart:isStart anchorType:anchorType score:numUniqueOccurrencesAfterAnchor numUniqueOccurrencesAfterAnchor:serializedTriggers posteriorProbability:v18 classConditionalProbability:v22 serializedTriggers:v24];

          [v29 addObject:v26];
          v6 = v19;
          v7 = 0x278592000;

          v5 = v30;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v29;
}

@end