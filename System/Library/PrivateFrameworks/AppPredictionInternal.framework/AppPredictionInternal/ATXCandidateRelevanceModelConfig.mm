@interface ATXCandidateRelevanceModelConfig
- (ATXCandidateRelevanceModelConfig)init;
- (ATXCandidateRelevanceModelConfig)initWithAppIconState:(id)a3;
- (BOOL)candidateIsStillValidToSuggest:(id)a3;
- (BOOL)isEnabled;
- (BOOL)shouldTrainModelWithCandidateDatasetMetadata:(id)a3;
- (BOOL)shouldTrainModelWithOverallDatasetMetadata:(id)a3;
- (BOOL)shouldTrainModelWithPositiveCandidateDatasetMetadata:(id)a3;
- (float)dataHarvestingSamplingRate;
- (id)featurizersFromConfigPlist;
- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4;
- (id)modelTrainingPlanParameters;
- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4;
- (int)maximumNumberOfTrainedCandidates;
- (int)minimumNumberOfDaysWithPositiveSamplesForCandidate;
- (int)minimumNumberOfDaysWithPositiveSamplesOverall;
- (int)minimumNumberOfDaysWithSamplesForCandidate;
- (int)minimumNumberOfPositiveSamplesForCandidate;
- (int)minimumNumberOfPositiveSamplesOverall;
- (int)minimumNumberOfSamplesForCandidate;
@end

@implementation ATXCandidateRelevanceModelConfig

- (ATXCandidateRelevanceModelConfig)init
{
  v3 = +[_ATXAppIconState sharedInstance];
  v4 = [(ATXCandidateRelevanceModelConfig *)self initWithAppIconState:v3];

  return v4;
}

- (ATXCandidateRelevanceModelConfig)initWithAppIconState:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ATXCandidateRelevanceModelConfig;
  v5 = [(ATXCandidateRelevanceModelConfig *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEB3C8]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [MEMORY[0x277CEB2B8] abGroupOverride];
    v10 = [v6 initWithAssetsForResource:v8 ofType:@"plist" specifiedABGroup:v9];

    v11 = [v10 abGroupContents];
    parameters = v5->_parameters;
    v5->_parameters = v11;

    v13 = [v10 groupIdentifier];
    abGroupIdentifier = v5->_abGroupIdentifier;
    v5->_abGroupIdentifier = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = [v4 allInstalledAppsKnownToSpringBoard];
    v17 = [v15 setWithArray:v16];
    installedAppsKnownToSpringBoard = v5->_installedAppsKnownToSpringBoard;
    v5->_installedAppsKnownToSpringBoard = v17;

    v19 = [(ATXCandidateRelevanceModelConfig *)v5 featurizersFromConfigPlist];
    featurizers = v5->_featurizers;
    v5->_featurizers = v19;
  }

  return v5;
}

- (BOOL)shouldTrainModelWithPositiveCandidateDatasetMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 numberOfPositiveSamples];
  if (v5 >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfPositiveSamplesForCandidate])
  {
    v7 = [v4 numberOfDaysWithPositiveSamples];
    v6 = v7 >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithPositiveSamplesForCandidate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldTrainModelWithCandidateDatasetMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 numberOfPositiveSamples];
  if (v5 >= -[ATXCandidateRelevanceModelConfig minimumNumberOfPositiveSamplesForCandidate](self, "minimumNumberOfPositiveSamplesForCandidate") && (v6 = [v4 numberOfSamples], v6 >= -[ATXCandidateRelevanceModelConfig minimumNumberOfSamplesForCandidate](self, "minimumNumberOfSamplesForCandidate")) && (v7 = objc_msgSend(v4, "numberOfDaysWithPositiveSamples"), v7 >= -[ATXCandidateRelevanceModelConfig minimumNumberOfDaysWithPositiveSamplesForCandidate](self, "minimumNumberOfDaysWithPositiveSamplesForCandidate")))
  {
    v10 = [v4 numberOfDaysWithSamples];
    v8 = v10 >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithSamplesForCandidate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldTrainModelWithOverallDatasetMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 numberOfPositiveSamples];
  if (v5 >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfPositiveSamplesOverall])
  {
    v7 = [v4 numberOfDaysWithPositiveSamples];
    v6 = v7 >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithPositiveSamplesOverall];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4
{
  result = a3;
  __break(1u);
  return result;
}

- (BOOL)candidateIsStillValidToSuggest:(id)a3
{
  v3 = a3;
  __break(1u);
  return v3;
}

- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (BOOL)isEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IsEnabled"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)dataHarvestingSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DataHarvestingSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)maximumNumberOfTrainedCandidates
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumNumberOfTrainedCandidates"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)minimumNumberOfPositiveSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfPositiveSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (int)minimumNumberOfSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (int)minimumNumberOfDaysWithPositiveSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithPositiveSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (int)minimumNumberOfDaysWithSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (int)minimumNumberOfPositiveSamplesOverall
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfPositiveSamplesOverall"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (int)minimumNumberOfDaysWithPositiveSamplesOverall
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithPositiveSamplesOverall"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  return v4;
}

- (id)modelTrainingPlanParameters
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ModelTrainingPlanParameters"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

- (id)featurizersFromConfigPlist
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"Featurizers"];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke;
  v10[3] = &unk_278597910;
  v11 = v6;
  v7 = v6;
  v8 = [v5 _pas_mappedArrayWithTransform:v10];

  return v8;
}

id __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!NSClassFromString(v3))
  {
    v4 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke_cold_2(v3, v4);
    }

    goto LABEL_7;
  }

  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke_cold_1(v3, v4);
    }

LABEL_7:

    v5 = 0;
    goto LABEL_9;
  }

  [*(a1 + 32) addObject:v3];
  v5 = objc_opt_new();
LABEL_9:

  return v5;
}

void __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Duplicate featurizer defined: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__ATXCandidateRelevanceModelConfig_featurizersFromConfigPlist__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Error converting %@ to a class.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end