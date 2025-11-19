@interface ATXCandidateRelevanceModelServer
+ (id)currentContextForConfig:(id)a3 contextOverride:(id)a4;
+ (id)mergeHeuristicSuggestions:(id)a3 withSuggestions:(id)a4;
+ (id)suggestionExecutableIdsFromSuggestions:(id)a3;
- (ATXCandidateRelevanceModelServer)initWithConfig:(id)a3;
- (id)sortedProactiveSuggestionsForContext:(id)a3;
- (void)sendSuggestionsToBlending;
- (void)sendSuggestionsToBlendingForContext:(id)a3;
@end

@implementation ATXCandidateRelevanceModelServer

- (ATXCandidateRelevanceModelServer)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelServer;
  v6 = [(ATXCandidateRelevanceModelServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (void)sendSuggestionsToBlending
{
  v29 = *MEMORY[0x277D85DE8];
  if (-[ATXCandidateRelevanceModelConfig isEnabled](self->_config, "isEnabled") && (+[ATXCandidateRelevanceModelGlobals sharedInstance](ATXCandidateRelevanceModelGlobals, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isPipelineEnabled], v3, (v4 & 1) != 0))
  {
    v5 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
    v6 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    v7 = [v6 clientModelId];
    v8 = [v5 mostRecentVerifiedTrainDateForClientModelName:v7];

    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = v9;
    if (v8 && ([v9 timeIntervalSinceDate:v8], v11 <= 604800.0))
    {
      v23 = [objc_opt_class() currentContextForConfig:self->_config contextOverride:MEMORY[0x277CBEC10]];
      [(ATXCandidateRelevanceModelServer *)self sendSuggestionsToBlendingForContext:v23];
    }

    else
    {
      v12 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
        v16 = [v15 clientModelId];
        v25 = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%@ - There doesn't exist a trained model in the last week to use for config with client model %@. Sending empty suggestions to blending.", &v25, 0x16u);
      }

      v17 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      [v17 updateSuggestions:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v18 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
      v22 = [v21 clientModelId];
      v25 = 138412546;
      v26 = v20;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "%@ - Config for client model %@ is not enabled or the pipeline is not enabled. Sending empty suggestions to blending.", &v25, 0x16u);
    }

    v8 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
    [v8 updateSuggestions:MEMORY[0x277CBEBF8]];
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)currentContextForConfig:(id)a3 contextOverride:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ATXPredictionContextBuilder sharedInstance];
  v8 = [v6 candidatePublisherFromStartTime:-259200.0];

  v9 = [v7 predictionContextForCurrentContextAndCandidatePublisher:v8 contextOverride:v5];

  return v9;
}

- (void)sendSuggestionsToBlendingForContext:(id)a3
{
  v4 = [(ATXCandidateRelevanceModelServer *)self sortedProactiveSuggestionsForContext:a3];
  v5 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke;
  v7[3] = &unk_278596C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 updateSuggestions:v6 completionHandler:v7];
}

void __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_relevance_model();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [*(a1 + 40) count];
      v12 = [*(*(a1 + 32) + 8) clientModel];
      v13 = [v12 clientModelId];
      v15 = 138412802;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Successfully sent %lu predictions to blending layer for client model: %@", &v15, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke_cold_1();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)sortedProactiveSuggestionsForContext:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXCandidateRelevanceModelConfig *)self->_config clientModel];
  v6 = [v5 clientModelId];

  v7 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%@ - Beginning model serving for config with client model: %@.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v60 = objc_opt_new();
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = objc_opt_new();
  v10 = [(ATXCandidateRelevanceModelConfig *)self->_config datastore];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke;
  v43[3] = &unk_278596CB0;
  v43[4] = self;
  v45 = buf;
  v11 = v4;
  v44 = v11;
  v46 = &v47;
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29;
  v38 = &unk_278596CD8;
  v39 = self;
  v12 = v6;
  v40 = v12;
  v41 = buf;
  v42 = &v47;
  [v10 receiveMostRecentVerifiedTrainedModelTrainingResults:v43 clientModelName:v12 completion:&v35];

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = 0;
  *&v16 = 138412546;
  v34 = v16;
  while ([*(*&buf[8] + 40) count] > v15)
  {
    v17 = [*(*&buf[8] + 40) objectAtIndexedSubscript:v15];
    v18 = [v48[5] objectAtIndexedSubscript:v15];
    [v18 floatValue];
    v20 = v19;

    LODWORD(v21) = v20;
    v22 = [(ATXCandidateRelevanceModelConfig *)self->_config proactiveSuggestionForCandidate:v17 prediction:v21];
    v23 = v22;
    if (v22)
    {
      v24 = [v22 executableSpecification];
      v25 = [v24 executableIdentifier];
      [v14 addObject:v25];

      [v13 addObject:v23];
    }

    else
    {
      v26 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *v53 = v34;
        v54 = v28;
        v55 = 2112;
        v56 = v17;
        _os_log_error_impl(&dword_2263AA000, v26, OS_LOG_TYPE_ERROR, "%@ - Could not create suggestion for candidate: %@.", v53, 0x16u);
      }
    }

    ++v15;
  }

  v29 = [(ATXCandidateRelevanceModelConfig *)self->_config heuristicSuggestionsForContext:v11 currentSuggestionExecutableIds:v14];
  v30 = [objc_opt_class() mergeHeuristicSuggestions:v29 withSuggestions:v13];
  v31 = [v30 sortedArrayUsingComparator:&__block_literal_global_5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(buf, 8);

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 candidate];
  if ([*(a1[4] + 8) candidateIsStillValidToSuggest:v4])
  {
    [*(*(a1[6] + 8) + 40) addObject:v4];
    v5 = [v3 model];
    v6 = a1[5];
    v7 = [v3 featurizationManager];
    [v5 predictForContext:v6 candidate:v4 featurizationManager:v7];
    v9 = v8;

    v10 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v3 modelUUID];
      v15 = [v14 UUIDString];
      [v4 identifier];
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v34 = 138413058;
      v35 = v13;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      v40 = 2048;
      v41 = v9;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - Model %@ scored candidate with identifier %@ and score %f.", &v34, 0x2Au);
    }

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v18 = [v3 model];
      v19 = a1[5];
      v20 = [v3 featurizationManager];
      [v18 featureContributionsDuringInferenceDescriptionForContext:v19 candidate:v4 featurizationManager:v20];
      v21 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

      v22 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a1[4];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v4 identifier];
        v34 = 138413058;
        v35 = v25;
        v36 = 2112;
        v37 = v26;
        v38 = 2048;
        v39 = v9;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%@ - Features contributing to scored candidate with identifier %@ and score %f:\n%@\n", &v34, 0x2Au);
      }
    }

    v27 = *(*(a1[7] + 8) + 40);
    *&v17 = v9;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v27 addObject:v28];
  }

  else
  {
    v28 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = a1[4];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v4 identifier];
      v34 = 138412546;
      v35 = v31;
      v36 = 2112;
      v37 = v32;
      _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "%@ - Skipping candidate because it should not be predicted: %@", &v34, 0x16u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = __atxlog_handle_relevance_model();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = a1[5];
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Successfully generated predictions for client model: %@", &v16, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29_cold_1(a1, v5);
    }

    v10 = objc_opt_new();
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = objc_opt_new();
    v14 = *(a1[7] + 8);
    v5 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [a3 scoreSpecification];
  [v6 rawScore];
  v7 = [v4 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 scoreSpecification];

  [v9 rawScore];
  v10 = [v8 numberWithDouble:?];
  v11 = [v7 compare:v10];

  return v11;
}

+ (id)mergeHeuristicSuggestions:(id)a3 withSuggestions:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 mutableCopy];
    v21 = v5;
    v8 = [objc_opt_class() suggestionExecutableIdsFromSuggestions:v5];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 executableSpecification];
          v16 = [v15 executableIdentifier];
          v17 = [v8 containsObject:v16];

          if ((v17 & 1) == 0)
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v6 = v20;
    v5 = v21;
  }

  else
  {
    v7 = v6;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)suggestionExecutableIdsFromSuggestions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) executableSpecification];
        v11 = [v10 executableIdentifier];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

void __72__ATXCandidateRelevanceModelServer_sendSuggestionsToBlendingForContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [*(*(v3 + 32) + 8) clientModel];
  v8 = [v7 clientModelId];
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%@ - Failed to send predictions to blending layer for client model: %@. Error: %@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __73__ATXCandidateRelevanceModelServer_sortedProactiveSuggestionsForContext___block_invoke_29_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 40);
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Could not complete generating predictions for client model: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end