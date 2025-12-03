@interface ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker
+ (id)keyTrackerForRotationSessionStackEngagementStatus:(unint64_t)status;
- (ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker)initWithStatusAggregationKey:(id)key proactiveStatusAggregationKey:(id)aggregationKey proactiveStatusBooleanKey:(id)booleanKey userScrollStatusBooleanKey:(id)statusBooleanKey userScrollFinalOutcomeKey:(id)outcomeKey;
@end

@implementation ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker

- (ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker)initWithStatusAggregationKey:(id)key proactiveStatusAggregationKey:(id)aggregationKey proactiveStatusBooleanKey:(id)booleanKey userScrollStatusBooleanKey:(id)statusBooleanKey userScrollFinalOutcomeKey:(id)outcomeKey
{
  keyCopy = key;
  aggregationKeyCopy = aggregationKey;
  booleanKeyCopy = booleanKey;
  statusBooleanKeyCopy = statusBooleanKey;
  outcomeKeyCopy = outcomeKey;
  v21.receiver = self;
  v21.super_class = ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker;
  v17 = [(ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_statusAggregationKey, key);
    objc_storeStrong(&v18->_proactiveStatusAggregationKey, aggregationKey);
    objc_storeStrong(&v18->_proactiveStatusBooleanKey, booleanKey);
    objc_storeStrong(&v18->_userScrollStatusBooleanKey, statusBooleanKey);
    objc_storeStrong(&v18->_userScrollFinalOutcomeKey, outcomeKey);
  }

  return v18;
}

+ (id)keyTrackerForRotationSessionStackEngagementStatus:(unint64_t)status
{
  v3 = 0;
  if (status <= 1)
  {
    if (!status)
    {
      goto LABEL_20;
    }

    if (status == 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      v9[4] = self;
      if (keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken7 != -1)
      {
        dispatch_once(&keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken7, v9);
      }

      v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult;
      goto LABEL_16;
    }
  }

  else
  {
    switch(status)
    {
      case 2uLL:
        goto LABEL_20;
      case 3uLL:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke_2;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = self;
        if (keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken8 != -1)
        {
          dispatch_once(&keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken8, block);
        }

        v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_179;
        goto LABEL_16;
      case 4uLL:
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke_3;
        v7[3] = &__block_descriptor_40_e5_v8__0l;
        v7[4] = self;
        if (keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken9 != -1)
        {
          dispatch_once(&keyTrackerForRotationSessionStackEngagementStatus___pasOnceToken9, v7);
        }

        v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_180;
LABEL_16:
        v3 = v4;
        goto LABEL_20;
    }
  }

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [ATXHomeScreenLogEngagementKeyTracker keyTrackerForStackEngagementStatus:v5];
  }

  v3 = 0;
LABEL_20:

  return v3;
}

void __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithStatusAggregationKey:@"NumberOfViewsForStackWidgetsOn" proactiveStatusAggregationKey:@"NumberOfProactiveViewsOn" proactiveStatusBooleanKey:@"NumberOfProactiveViewedRotationsOn" userScrollStatusBooleanKey:0 userScrollFinalOutcomeKey:0];
  v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult;
  keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithStatusAggregationKey:@"NumberOfPseudoTapsForStackWidgetsOn" proactiveStatusAggregationKey:@"NumberOfProactivePseudoTapsOn" proactiveStatusBooleanKey:@"NumberOfProactivePseudoTappedRotationsOn" userScrollStatusBooleanKey:@"NumberOfUserScrollPseudoTappedRotationsOn" userScrollFinalOutcomeKey:@"NumberOfUserScrollFinalOutcomePseudoTappedOn"];
  v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_179;
  keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_179 = v3;

  objc_autoreleasePoolPop(v2);
}

void __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithStatusAggregationKey:@"NumberOfTapsForStackWidgetsOn" proactiveStatusAggregationKey:@"NumberOfProactiveTapsByLocationOn" proactiveStatusBooleanKey:@"NumberOfProactiveTappedRotationsOn" userScrollStatusBooleanKey:@"NumberOfUserScrollPseudoTappedRotationsOn" userScrollFinalOutcomeKey:0];
  v4 = keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_180;
  keyTrackerForRotationSessionStackEngagementStatus___pasExprOnceResult_180 = v3;

  objc_autoreleasePoolPop(v2);
}

@end