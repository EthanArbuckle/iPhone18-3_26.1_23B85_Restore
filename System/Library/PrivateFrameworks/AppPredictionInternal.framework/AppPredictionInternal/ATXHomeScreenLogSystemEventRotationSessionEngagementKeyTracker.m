@interface ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker
+ (id)keyTrackerForRotationSessionStackEngagementStatus:(unint64_t)a3;
- (ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker)initWithStatusAggregationKey:(id)a3 proactiveStatusAggregationKey:(id)a4 proactiveStatusBooleanKey:(id)a5 userScrollStatusBooleanKey:(id)a6 userScrollFinalOutcomeKey:(id)a7;
@end

@implementation ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker

- (ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker)initWithStatusAggregationKey:(id)a3 proactiveStatusAggregationKey:(id)a4 proactiveStatusBooleanKey:(id)a5 userScrollStatusBooleanKey:(id)a6 userScrollFinalOutcomeKey:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker;
  v17 = [(ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_statusAggregationKey, a3);
    objc_storeStrong(&v18->_proactiveStatusAggregationKey, a4);
    objc_storeStrong(&v18->_proactiveStatusBooleanKey, a5);
    objc_storeStrong(&v18->_userScrollStatusBooleanKey, a6);
    objc_storeStrong(&v18->_userScrollFinalOutcomeKey, a7);
  }

  return v18;
}

+ (id)keyTrackerForRotationSessionStackEngagementStatus:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      v9[4] = a1;
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
    switch(a3)
    {
      case 2uLL:
        goto LABEL_20;
      case 3uLL:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __116__ATXHomeScreenLogSystemEventRotationSessionEngagementKeyTracker_keyTrackerForRotationSessionStackEngagementStatus___block_invoke_2;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
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
        v7[4] = a1;
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