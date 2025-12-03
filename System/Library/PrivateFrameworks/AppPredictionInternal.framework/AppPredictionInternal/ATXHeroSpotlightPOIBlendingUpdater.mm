@interface ATXHeroSpotlightPOIBlendingUpdater
+ (id)clientModelForHeroSpotlightPOIPredictions;
+ (id)clientModelSpecForHeroSpotlightPOIPredictions;
+ (void)updateBlendingLayerWithHeroAppPredictions:(id)predictions;
@end

@implementation ATXHeroSpotlightPOIBlendingUpdater

+ (void)updateBlendingLayerWithHeroAppPredictions:(id)predictions
{
  predictionsCopy = predictions;
  clientModelSpecForHeroSpotlightPOIPredictions = [self clientModelSpecForHeroSpotlightPOIPredictions];
  v5 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:predictionsCopy clientModelSpec:clientModelSpecForHeroSpotlightPOIPredictions];

  clientModelForHeroSpotlightPOIPredictions = [self clientModelForHeroSpotlightPOIPredictions];
  [clientModelForHeroSpotlightPOIPredictions updateSuggestions:v5];
}

+ (id)clientModelSpecForHeroSpotlightPOIPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:45];
  v3 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v2 clientModelVersion:@"1.0" engagementResetPolicy:0];

  return v3;
}

+ (id)clientModelForHeroSpotlightPOIPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:45];
  v3 = objc_alloc(MEMORY[0x277D42070]);
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:blendingLayerServer];

  return v6;
}

@end