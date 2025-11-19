@interface ATXCandidateRelevanceModelConfigMinimalAction
- (ATXCandidateRelevanceModelConfigMinimalAction)init;
- (BOOL)candidateIsStillValidToSuggest:(id)a3;
- (id)datasetGenerator;
- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4;
@end

@implementation ATXCandidateRelevanceModelConfigMinimalAction

- (ATXCandidateRelevanceModelConfigMinimalAction)init
{
  v15.receiver = self;
  v15.super_class = ATXCandidateRelevanceModelConfigMinimalAction;
  v2 = [(ATXCandidateRelevanceModelConfig *)&v15 init];
  if (v2)
  {
    v3 = [ATXCandidateRelevanceLogisticRegressionModelTrainingPlan alloc];
    v4 = [(ATXCandidateRelevanceModelConfig *)v2 modelTrainingPlanParameters];
    v5 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)v3 initWithParameters:v4];
    [(ATXCandidateRelevanceModelConfig *)v2 setModelTrainingPlan:v5];

    v6 = objc_opt_new();
    [(ATXCandidateRelevanceModelConfig *)v2 setDatastore:v6];

    v7 = objc_alloc(MEMORY[0x277D42070]);
    v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:5];
    v9 = +[ATXClientModelSuggestionReceiver sharedInstance];
    v10 = [v9 blendingLayerServer];
    v11 = [v7 initWithClientModelId:v8 blendingLayerServer:v10];
    [(ATXCandidateRelevanceModelConfig *)v2 setClientModel:v11];

    v12 = +[ATXActionPredictionBlacklist sharedInstanceWithAppPredictionBlacklist];
    [(ATXCandidateRelevanceModelConfigMinimalAction *)v2 setActionBlacklist:v12];

    v13 = +[ATXDigitalHealthBlacklist sharedInstance];
    [(ATXCandidateRelevanceModelConfigMinimalAction *)v2 setAppDigitalHealthBlacklist:v13];
  }

  return v2;
}

- (id)datasetGenerator
{
  v2 = [ATXCandidateRelevanceModelDatasetGenerator alloc];
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceModelDatasetGenerator *)v2 initWithConfig:v3];

  return v4;
}

- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4
{
  v6 = [a3 biomeStoreData];
  v7 = [v6 actionFromDatastoreLookup];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v6 actionType];
  v10 = [v9 isEqualToString:@"INPlayMediaIntent"];

  if (!v10 || ([ATXMediaActionPrediction updatedPlayMediaAction:v8], v11 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v11) != 0))
  {
    v12 = objc_alloc(MEMORY[0x277D42078]);
    v13 = [(ATXCandidateRelevanceModelConfig *)self clientModel];
    v14 = [v13 clientModelId];
    v15 = [v12 initWithClientModelId:v14 clientModelVersion:@"1.0" engagementResetPolicy:0];

    v16 = objc_alloc(MEMORY[0x277CEB7F0]);
    *&v17 = a4;
    v18 = [v16 initWithPredictedItem:v8 score:v17];
    v19 = [ATXProactiveSuggestionBuilder _executableSpecForScoredAction:v18];
    v20 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:2 suggestedConfidenceCategory:a4];
    v21 = objc_opt_new();
    v22 = [v21 actionBehavioralReason];
    v23 = [ATXProactiveSuggestionBuilder _uiSpecForScoredAction:v18 scoreSpec:v20 clientModelSpec:v15 predictionReason:v22];

    v24 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v15 executableSpecification:v19 uiSpecification:v23 scoreSpecification:v20];
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24;
}

- (BOOL)candidateIsStillValidToSuggest:(id)a3
{
  v4 = [a3 biomeStoreData];
  v5 = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  v6 = [v4 bundleId];
  v7 = [v5 containsObject:v6];

  v8 = [(ATXCandidateRelevanceModelConfigMinimalAction *)self actionBlacklist];
  v9 = [v4 bundleId];
  v10 = [v4 actionType];
  v11 = [v8 shouldPredictBundleId:v9 action:v10];

  v12 = [(ATXCandidateRelevanceModelConfigMinimalAction *)self appDigitalHealthBlacklist];
  v13 = [v12 blacklistedBundleIds];
  v14 = [v4 bundleId];
  v15 = [v13 containsObject:v14];

  if (v7)
  {
    v16 = v11 & (v15 ^ 1);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end