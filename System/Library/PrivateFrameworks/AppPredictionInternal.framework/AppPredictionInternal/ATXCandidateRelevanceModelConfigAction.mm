@interface ATXCandidateRelevanceModelConfigAction
- (ATXCandidateRelevanceModelConfigAction)init;
- (BOOL)candidateIsStillValidToSuggest:(id)suggest;
- (id)datasetGenerator;
- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction;
@end

@implementation ATXCandidateRelevanceModelConfigAction

- (ATXCandidateRelevanceModelConfigAction)init
{
  v15.receiver = self;
  v15.super_class = ATXCandidateRelevanceModelConfigAction;
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
    [(ATXCandidateRelevanceModelConfigAction *)v2 setActionBlacklist:v12];

    v13 = +[ATXDigitalHealthBlacklist sharedInstance];
    [(ATXCandidateRelevanceModelConfigAction *)v2 setAppDigitalHealthBlacklist:v13];
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
  v6 = MEMORY[0x277D42078];
  candidateCopy = candidate;
  v8 = [v6 alloc];
  clientModel = [(ATXCandidateRelevanceModelConfig *)self clientModel];
  clientModelId = [clientModel clientModelId];
  v11 = [v8 initWithClientModelId:clientModelId clientModelVersion:@"1.0" engagementResetPolicy:0];

  biomeStoreData = [candidateCopy biomeStoreData];

  if (!biomeStoreData)
  {
    goto LABEL_5;
  }

  actionKey = [biomeStoreData actionKey];
  v14 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
  v15 = [v14 isEqualToString:@"INPlayMediaIntent"];

  if (!v15 || ([ATXMediaActionPrediction updatedPlayMediaAction:biomeStoreData], v16 = objc_claimAutoreleasedReturnValue(), biomeStoreData, (biomeStoreData = v16) != 0))
  {
    v17 = objc_alloc(MEMORY[0x277CEB7F0]);
    *&v18 = prediction;
    v19 = [v17 initWithPredictedItem:biomeStoreData score:v18];
    v20 = [ATXProactiveSuggestionBuilder _executableSpecForScoredAction:v19];
    v21 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:2 suggestedConfidenceCategory:prediction];
    v22 = objc_opt_new();
    actionBehavioralReason = [v22 actionBehavioralReason];
    v24 = [ATXProactiveSuggestionBuilder _uiSpecForScoredAction:v19 scoreSpec:v21 clientModelSpec:v11 predictionReason:actionBehavioralReason];

    v25 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v11 executableSpecification:v20 uiSpecification:v24 scoreSpecification:v21];
  }

  else
  {
LABEL_5:
    v25 = 0;
  }

  return v25;
}

- (BOOL)candidateIsStillValidToSuggest:(id)suggest
{
  biomeStoreData = [suggest biomeStoreData];
  actionKey = [biomeStoreData actionKey];
  v6 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];

  if (v6)
  {
    installedAppsKnownToSpringBoard = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
    bundleId = [biomeStoreData bundleId];
    v9 = [installedAppsKnownToSpringBoard containsObject:bundleId];

    actionBlacklist = [(ATXCandidateRelevanceModelConfigAction *)self actionBlacklist];
    bundleId2 = [biomeStoreData bundleId];
    v12 = [actionBlacklist shouldPredictBundleId:bundleId2 action:v6];

    appDigitalHealthBlacklist = [(ATXCandidateRelevanceModelConfigAction *)self appDigitalHealthBlacklist];
    blacklistedBundleIds = [appDigitalHealthBlacklist blacklistedBundleIds];
    bundleId3 = [biomeStoreData bundleId];
    v16 = [blacklistedBundleIds containsObject:bundleId3];

    if (v9)
    {
      v17 = v12 & (v16 ^ 1);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end