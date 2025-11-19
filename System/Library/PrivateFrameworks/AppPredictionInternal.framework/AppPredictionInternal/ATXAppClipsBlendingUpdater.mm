@interface ATXAppClipsBlendingUpdater
+ (id)appClipsClientModelSpecification;
+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3;
@end

@implementation ATXAppClipsBlendingUpdater

+ (id)appClipsClientModelSpecification
{
  v2 = +[ATXHeroAndClipConstants sharedInstance];
  v3 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:13];
  v4 = objc_alloc(MEMORY[0x277D42078]);
  v5 = [v2 appClipsModelVersion];
  v6 = [v4 initWithClientModelId:v3 clientModelVersion:v5 engagementResetPolicy:0];

  return v6;
}

+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3
{
  v3 = a3;
  v14 = +[ATXHeroAndClipConstants sharedInstance];
  v4 = [objc_opt_class() appClipsClientModelSpecification];
  [v14 appClipsMediumConfidenceScoreThreshold];
  v6 = v5;
  [v14 appClipsHighConfidenceScoreThreshold];
  v8 = [ATXProactiveSuggestionBuilder proactiveSuggestionForAppClipsFromHeroAppPredictions:v3 clientModelSpec:v4 mediumThreshold:v6 highThreshold:v7];

  v9 = objc_alloc(MEMORY[0x277D42070]);
  v10 = [v4 clientModelId];
  v11 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v12 = [v11 blendingLayerServer];
  v13 = [v9 initWithClientModelId:v10 blendingLayerServer:v12];

  [v13 updateSuggestions:v8];
}

@end