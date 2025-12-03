@interface ATXCandidateRelevanceModelConfig
- (ATXCandidateRelevanceModelConfig)init;
- (ATXCandidateRelevanceModelConfig)initWithAppIconState:(id)state;
- (BOOL)candidateIsStillValidToSuggest:(id)suggest;
- (BOOL)isEnabled;
- (BOOL)shouldTrainModelWithCandidateDatasetMetadata:(id)metadata;
- (BOOL)shouldTrainModelWithOverallDatasetMetadata:(id)metadata;
- (BOOL)shouldTrainModelWithPositiveCandidateDatasetMetadata:(id)metadata;
- (float)dataHarvestingSamplingRate;
- (id)featurizersFromConfigPlist;
- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids;
- (id)modelTrainingPlanParameters;
- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction;
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

- (ATXCandidateRelevanceModelConfig)initWithAppIconState:(id)state
{
  stateCopy = state;
  v22.receiver = self;
  v22.super_class = ATXCandidateRelevanceModelConfig;
  v5 = [(ATXCandidateRelevanceModelConfig *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEB3C8]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    abGroupOverride = [MEMORY[0x277CEB2B8] abGroupOverride];
    v10 = [v6 initWithAssetsForResource:v8 ofType:@"plist" specifiedABGroup:abGroupOverride];

    abGroupContents = [v10 abGroupContents];
    parameters = v5->_parameters;
    v5->_parameters = abGroupContents;

    groupIdentifier = [v10 groupIdentifier];
    abGroupIdentifier = v5->_abGroupIdentifier;
    v5->_abGroupIdentifier = groupIdentifier;

    v15 = MEMORY[0x277CBEB98];
    allInstalledAppsKnownToSpringBoard = [stateCopy allInstalledAppsKnownToSpringBoard];
    v17 = [v15 setWithArray:allInstalledAppsKnownToSpringBoard];
    installedAppsKnownToSpringBoard = v5->_installedAppsKnownToSpringBoard;
    v5->_installedAppsKnownToSpringBoard = v17;

    featurizersFromConfigPlist = [(ATXCandidateRelevanceModelConfig *)v5 featurizersFromConfigPlist];
    featurizers = v5->_featurizers;
    v5->_featurizers = featurizersFromConfigPlist;
  }

  return v5;
}

- (BOOL)shouldTrainModelWithPositiveCandidateDatasetMetadata:(id)metadata
{
  metadataCopy = metadata;
  numberOfPositiveSamples = [metadataCopy numberOfPositiveSamples];
  if (numberOfPositiveSamples >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfPositiveSamplesForCandidate])
  {
    numberOfDaysWithPositiveSamples = [metadataCopy numberOfDaysWithPositiveSamples];
    v6 = numberOfDaysWithPositiveSamples >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithPositiveSamplesForCandidate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldTrainModelWithCandidateDatasetMetadata:(id)metadata
{
  metadataCopy = metadata;
  numberOfPositiveSamples = [metadataCopy numberOfPositiveSamples];
  if (numberOfPositiveSamples >= -[ATXCandidateRelevanceModelConfig minimumNumberOfPositiveSamplesForCandidate](self, "minimumNumberOfPositiveSamplesForCandidate") && (v6 = [metadataCopy numberOfSamples], v6 >= -[ATXCandidateRelevanceModelConfig minimumNumberOfSamplesForCandidate](self, "minimumNumberOfSamplesForCandidate")) && (v7 = objc_msgSend(metadataCopy, "numberOfDaysWithPositiveSamples"), v7 >= -[ATXCandidateRelevanceModelConfig minimumNumberOfDaysWithPositiveSamplesForCandidate](self, "minimumNumberOfDaysWithPositiveSamplesForCandidate")))
  {
    numberOfDaysWithSamples = [metadataCopy numberOfDaysWithSamples];
    v8 = numberOfDaysWithSamples >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithSamplesForCandidate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldTrainModelWithOverallDatasetMetadata:(id)metadata
{
  metadataCopy = metadata;
  numberOfPositiveSamples = [metadataCopy numberOfPositiveSamples];
  if (numberOfPositiveSamples >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfPositiveSamplesOverall])
  {
    numberOfDaysWithPositiveSamples = [metadataCopy numberOfDaysWithPositiveSamples];
    v6 = numberOfDaysWithPositiveSamples >= [(ATXCandidateRelevanceModelConfig *)self minimumNumberOfDaysWithPositiveSamplesOverall];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction
{
  result = candidate;
  __break(1u);
  return result;
}

- (BOOL)candidateIsStillValidToSuggest:(id)suggest
{
  suggestCopy = suggest;
  __break(1u);
  return suggestCopy;
}

- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids
{
  contextCopy = context;
  result = ids;
  __break(1u);
  return result;
}

- (BOOL)isEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IsEnabled"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)minimumNumberOfPositiveSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfPositiveSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
}

- (int)minimumNumberOfSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
}

- (int)minimumNumberOfDaysWithPositiveSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithPositiveSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
}

- (int)minimumNumberOfDaysWithSamplesForCandidate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithSamplesForCandidate"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
}

- (int)minimumNumberOfPositiveSamplesOverall
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfPositiveSamplesOverall"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
}

- (int)minimumNumberOfDaysWithPositiveSamplesOverall
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumNumberOfDaysWithPositiveSamplesOverall"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0x7FFFFFFF;
  }

  return intValue;
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