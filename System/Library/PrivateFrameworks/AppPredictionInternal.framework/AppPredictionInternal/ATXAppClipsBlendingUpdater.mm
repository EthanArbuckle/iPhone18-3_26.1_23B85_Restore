@interface ATXAppClipsBlendingUpdater
+ (id)appClipsClientModelSpecification;
+ (void)updateBlendingLayerWithHeroAppPredictions:(id)predictions;
@end

@implementation ATXAppClipsBlendingUpdater

+ (id)appClipsClientModelSpecification
{
  v2 = +[ATXHeroAndClipConstants sharedInstance];
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:13];
  v4 = objc_alloc(MEMORY[0x277D42078]);
  appClipsModelVersion = [v2 appClipsModelVersion];
  v6 = [v4 initWithClientModelId:v3 clientModelVersion:appClipsModelVersion engagementResetPolicy:0];

  return v6;
}

+ (void)updateBlendingLayerWithHeroAppPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v14 = +[ATXHeroAndClipConstants sharedInstance];
  appClipsClientModelSpecification = [objc_opt_class() appClipsClientModelSpecification];
  [v14 appClipsMediumConfidenceScoreThreshold];
  v6 = v5;
  [v14 appClipsHighConfidenceScoreThreshold];
  v8 = [ATXProactiveSuggestionBuilder proactiveSuggestionForAppClipsFromHeroAppPredictions:predictionsCopy clientModelSpec:appClipsClientModelSpecification mediumThreshold:v6 highThreshold:v7];

  v9 = objc_alloc(MEMORY[0x277D42070]);
  clientModelId = [appClipsClientModelSpecification clientModelId];
  v11 = +[ATXClientModelSuggestionReceiver sharedInstance];
  blendingLayerServer = [v11 blendingLayerServer];
  v13 = [v9 initWithClientModelId:clientModelId blendingLayerServer:blendingLayerServer];

  [v13 updateSuggestions:v8];
}

@end