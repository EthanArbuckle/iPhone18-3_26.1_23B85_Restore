@interface ATXGlobalAppScorePredictor
+ (id)sharedInstance;
- (ATXGlobalAppScorePredictor)init;
- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)a3 context:(id)a4;
@end

@implementation ATXGlobalAppScorePredictor

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_37 != -1)
  {
    +[ATXGlobalAppScorePredictor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_45;

  return v3;
}

void __44__ATXGlobalAppScorePredictor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_45;
  sharedInstance__pasExprOnceResult_45 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXGlobalAppScorePredictor)init
{
  v8.receiver = self;
  v8.super_class = ATXGlobalAppScorePredictor;
  v2 = [(ATXGlobalAppScorePredictor *)&v8 init];
  if (v2)
  {
    v3 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsIndex"];
    index = v2->_index;
    v2->_index = v3;

    v5 = [ATXGlobalAppScoresUtil initializeTrieAtPath:@"ATXGlobalAppSignalsHistogram"];
    signalsTrie = v2->_signalsTrie;
    v2->_signalsTrie = v5;
  }

  return v2;
}

- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 locationMotionContext];
  v9 = [v8 currentLOI];

  if (v9)
  {
    v10 = [v9 type];
  }

  else
  {
    v10 = -1;
  }

  v11 = [v6 timeContext];
  v12 = [v11 date];

  v13 = [(ATXGlobalAppScorePredictor *)self globalPopularitiesForBundleIds:v7 atTimeOfDayIndex:[ATXGlobalAppScoresUtil timeOfDayIndexFromDate:?], [ATXGlobalAppScoresUtil dayOfWeekIndexFromDate:v12], [ATXGlobalAppScoresUtil locationTypeIndexFromRTLocationOfInterestType:v10]];

  return v13;
}

@end