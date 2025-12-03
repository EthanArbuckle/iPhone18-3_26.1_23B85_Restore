@interface ATXGlobalAppScorePredictor
+ (id)sharedInstance;
- (ATXGlobalAppScorePredictor)init;
- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)location context:(id)context;
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

- (id)globalPopularityForBundleIdsGivenTimeDayAndLocation:(id)location context:(id)context
{
  contextCopy = context;
  locationCopy = location;
  locationMotionContext = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext currentLOI];

  if (currentLOI)
  {
    type = [currentLOI type];
  }

  else
  {
    type = -1;
  }

  timeContext = [contextCopy timeContext];
  date = [timeContext date];

  v13 = [(ATXGlobalAppScorePredictor *)self globalPopularitiesForBundleIds:locationCopy atTimeOfDayIndex:[ATXGlobalAppScoresUtil timeOfDayIndexFromDate:?], [ATXGlobalAppScoresUtil dayOfWeekIndexFromDate:date], [ATXGlobalAppScoresUtil locationTypeIndexFromRTLocationOfInterestType:type]];

  return v13;
}

@end