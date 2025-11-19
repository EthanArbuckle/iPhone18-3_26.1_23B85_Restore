@interface ATXCandidateRelevanceModelGlobals
+ (id)sharedInstance;
- (ATXCandidateRelevanceModelGlobals)init;
- (BOOL)isPipelineEnabled;
- (int)maxCategoricalFeaturesCount;
@end

@implementation ATXCandidateRelevanceModelGlobals

- (ATXCandidateRelevanceModelGlobals)init
{
  v8.receiver = self;
  v8.super_class = ATXCandidateRelevanceModelGlobals;
  v2 = [(ATXCandidateRelevanceModelGlobals *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    v4 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v3];
    v5 = [v4 abGroupContents];
    parameters = v2->_parameters;
    v2->_parameters = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_30 != -1)
  {
    +[ATXCandidateRelevanceModelGlobals sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_37;

  return v3;
}

void __51__ATXCandidateRelevanceModelGlobals_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_37;
  sharedInstance__pasExprOnceResult_37 = v1;

  objc_autoreleasePoolPop(v0);
}

- (BOOL)isPipelineEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IsPipelineEnabled"];
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

- (int)maxCategoricalFeaturesCount
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxCategoricalFeaturesCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

@end