@interface ATXDisplayCacheIntermediateFormat
+ (id)fromActions:(id)a3;
@end

@implementation ATXDisplayCacheIntermediateFormat

+ (id)fromActions:(id)a3
{
  v3 = a3;
  v4 = [v3 atx_actionsFromActionResults];
  v5 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:v4];
  v6 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:v3 lockscreenPredictionIndices:v5];
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = v4;
  v9 = v4;

  v10 = v7[2];
  v7[2] = v6;
  v11 = v6;

  v12 = v7[3];
  v7[3] = v5;

  return v7;
}

@end