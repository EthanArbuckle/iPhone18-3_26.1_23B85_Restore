@interface ATXIntentGlobals
+ (id)sharedInstance;
- (ATXIntentGlobals)init;
- (BOOL)onlyAcceptBecomeCurrentNSUAs;
- (BOOL)onlyUseEligibleForPrediction;
- (id)approvedSiriKitIntents;
@end

@implementation ATXIntentGlobals

- (ATXIntentGlobals)init
{
  v9.receiver = self;
  v9.super_class = ATXIntentGlobals;
  v2 = [(ATXIntentGlobals *)&v9 init];
  if (v2)
  {
    v3 = [ATXAssetsABHelper alloc];
    v4 = +[ATXABHelper abGroupOverride];
    v5 = [(ATXAssetsABHelper *)v3 initWithAssetsForResource:@"_ATXGlobals" ofType:@"plplist" specifiedABGroup:v4];

    v6 = [(ATXAssetsABHelper *)v5 abGroupContents];
    parameters = v2->_parameters;
    v2->_parameters = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_8 != -1)
  {
    +[ATXIntentGlobals sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_9;

  return v3;
}

void __34__ATXIntentGlobals_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_9;
  sharedInstance__pasExprOnceResult_9 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)approvedSiriKitIntents
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ApprovedSiriKitIntents"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (BOOL)onlyAcceptBecomeCurrentNSUAs
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"OnlyAcceptBecomeCurrentNSUAs"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)onlyUseEligibleForPrediction
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"OnlyUseEligibleForPrediction"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end