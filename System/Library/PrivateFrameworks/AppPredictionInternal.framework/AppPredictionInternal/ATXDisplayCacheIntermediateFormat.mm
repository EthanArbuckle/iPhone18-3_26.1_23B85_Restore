@interface ATXDisplayCacheIntermediateFormat
+ (id)fromActions:(id)actions;
@end

@implementation ATXDisplayCacheIntermediateFormat

+ (id)fromActions:(id)actions
{
  actionsCopy = actions;
  atx_actionsFromActionResults = [actionsCopy atx_actionsFromActionResults];
  v5 = [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:atx_actionsFromActionResults];
  v6 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:actionsCopy lockscreenPredictionIndices:v5];
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = atx_actionsFromActionResults;
  v9 = atx_actionsFromActionResults;

  v10 = v7[2];
  v7[2] = v6;
  v11 = v6;

  v12 = v7[3];
  v7[3] = v5;

  return v7;
}

@end