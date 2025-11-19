@interface ATXHeroSpotlightPOIBlendingUpdater
+ (id)clientModelForHeroSpotlightPOIPredictions;
+ (id)clientModelSpecForHeroSpotlightPOIPredictions;
+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3;
@end

@implementation ATXHeroSpotlightPOIBlendingUpdater

+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3
{
  v4 = a3;
  v7 = [a1 clientModelSpecForHeroSpotlightPOIPredictions];
  v5 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForSpotlightPOIWithHeroAppPredictions:v4 clientModelSpec:v7];

  v6 = [a1 clientModelForHeroSpotlightPOIPredictions];
  [v6 updateSuggestions:v5];
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
  v5 = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:v5];

  return v6;
}

@end