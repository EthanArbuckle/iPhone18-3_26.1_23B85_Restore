@interface ATXCandidateRelevanceModelConfigMinimalAction
- (ATXCandidateRelevanceModelConfigMinimalAction)init;
- (BOOL)candidateIsStillValidToSuggest:(id)suggest;
- (id)datasetGenerator;
- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction;
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
    modelTrainingPlanParameters = [(ATXCandidateRelevanceModelConfig *)v2 modelTrainingPlanParameters];
    v5 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)v3 initWithParameters:modelTrainingPlanParameters];
    [(ATXCandidateRelevanceModelConfig *)v2 setModelTrainingPlan:v5];

    v6 = objc_opt_new();
    [(ATXCandidateRelevanceModelConfig *)v2 setDatastore:v6];

    v7 = objc_alloc(MEMORY[0x277D42070]);
    v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:5];
    v9 = +[ATXClientModelSuggestionReceiver sharedInstance];
    blendingLayerServer = [v9 blendingLayerServer];
    v11 = [v7 initWithClientModelId:v8 blendingLayerServer:blendingLayerServer];
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

- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction
{
  biomeStoreData = [candidate biomeStoreData];
  actionFromDatastoreLookup = [biomeStoreData actionFromDatastoreLookup];
  if (!actionFromDatastoreLookup)
  {
    goto LABEL_5;
  }

  v8 = actionFromDatastoreLookup;
  actionType = [biomeStoreData actionType];
  v10 = [actionType isEqualToString:@"INPlayMediaIntent"];

  if (!v10 || ([ATXMediaActionPrediction updatedPlayMediaAction:v8], v11 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v11) != 0))
  {
    v12 = objc_alloc(MEMORY[0x277D42078]);
    clientModel = [(ATXCandidateRelevanceModelConfig *)self clientModel];
    clientModelId = [clientModel clientModelId];
    v15 = [v12 initWithClientModelId:clientModelId clientModelVersion:@"1.0" engagementResetPolicy:0];

    v16 = objc_alloc(MEMORY[0x277CEB7F0]);
    *&v17 = prediction;
    v18 = [v16 initWithPredictedItem:v8 score:v17];
    v19 = [ATXProactiveSuggestionBuilder _executableSpecForScoredAction:v18];
    v20 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:2 suggestedConfidenceCategory:prediction];
    v21 = objc_opt_new();
    actionBehavioralReason = [v21 actionBehavioralReason];
    v23 = [ATXProactiveSuggestionBuilder _uiSpecForScoredAction:v18 scoreSpec:v20 clientModelSpec:v15 predictionReason:actionBehavioralReason];

    v24 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v15 executableSpecification:v19 uiSpecification:v23 scoreSpecification:v20];
  }

  else
  {
LABEL_5:
    v24 = 0;
  }

  return v24;
}

- (BOOL)candidateIsStillValidToSuggest:(id)suggest
{
  biomeStoreData = [suggest biomeStoreData];
  installedAppsKnownToSpringBoard = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  bundleId = [biomeStoreData bundleId];
  v7 = [installedAppsKnownToSpringBoard containsObject:bundleId];

  actionBlacklist = [(ATXCandidateRelevanceModelConfigMinimalAction *)self actionBlacklist];
  bundleId2 = [biomeStoreData bundleId];
  actionType = [biomeStoreData actionType];
  v11 = [actionBlacklist shouldPredictBundleId:bundleId2 action:actionType];

  appDigitalHealthBlacklist = [(ATXCandidateRelevanceModelConfigMinimalAction *)self appDigitalHealthBlacklist];
  blacklistedBundleIds = [appDigitalHealthBlacklist blacklistedBundleIds];
  bundleId3 = [biomeStoreData bundleId];
  v15 = [blacklistedBundleIds containsObject:bundleId3];

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