@interface ATXHomeScreenLogEngagementKeyTracker
+ (id)keyTrackerForStackEngagementStatus:(unint64_t)a3;
- (ATXHomeScreenLogEngagementKeyTracker)initWithRotationAggregationKey:(id)a3 rotationBooleanKey:(id)a4 rotationFinalOutcomeKey:(id)a5;
@end

@implementation ATXHomeScreenLogEngagementKeyTracker

- (ATXHomeScreenLogEngagementKeyTracker)initWithRotationAggregationKey:(id)a3 rotationBooleanKey:(id)a4 rotationFinalOutcomeKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXHomeScreenLogEngagementKeyTracker;
  v12 = [(ATXHomeScreenLogEngagementKeyTracker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rotationAggregationKey, a3);
    objc_storeStrong(&v13->_rotationBooleanKey, a4);
    objc_storeStrong(&v13->_rotationFinalOutcomeKey, a5);
  }

  return v13;
}

+ (id)keyTrackerForStackEngagementStatus:(unint64_t)a3
{
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_5;
        v10[3] = &__block_descriptor_40_e5_v8__0l;
        v10[4] = a1;
        if (keyTrackerForStackEngagementStatus___pasOnceToken11 != -1)
        {
          dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken11, v10);
        }

        v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_128;
      }

      else
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_7;
        v8[3] = &__block_descriptor_40_e5_v8__0l;
        v8[4] = a1;
        if (keyTrackerForStackEngagementStatus___pasOnceToken13 != -1)
        {
          dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken13, v8);
        }

        v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_130;
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_8;
      v7[3] = &__block_descriptor_40_e5_v8__0l;
      v7[4] = a1;
      if (keyTrackerForStackEngagementStatus___pasOnceToken14 != -1)
      {
        dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken14, v7);
      }

      v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_131;
      goto LABEL_34;
    }

    if (a3 == 7)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_6;
      v9[3] = &__block_descriptor_40_e5_v8__0l;
      v9[4] = a1;
      if (keyTrackerForStackEngagementStatus___pasOnceToken12 != -1)
      {
        dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken12, v9);
      }

      v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_129;
      goto LABEL_34;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_3;
        v12[3] = &__block_descriptor_40_e5_v8__0l;
        v12[4] = a1;
        if (keyTrackerForStackEngagementStatus___pasOnceToken9 != -1)
        {
          dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken9, v12);
        }

        v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_126;
      }

      else
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_4;
        v11[3] = &__block_descriptor_40_e5_v8__0l;
        v11[4] = a1;
        if (keyTrackerForStackEngagementStatus___pasOnceToken10 != -1)
        {
          dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken10, v11);
        }

        v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_127;
      }

      goto LABEL_34;
    }

    if (!a3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      if (keyTrackerForStackEngagementStatus___pasOnceToken7 != -1)
      {
        dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken7, block);
      }

      v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult;
      goto LABEL_34;
    }

    if (a3 == 1)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_2;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = a1;
      if (keyTrackerForStackEngagementStatus___pasOnceToken8 != -1)
      {
        dispatch_once(&keyTrackerForStackEngagementStatus___pasOnceToken8, v13);
      }

      v3 = keyTrackerForStackEngagementStatus___pasExprOnceResult_125;
LABEL_34:
      v4 = v3;
      goto LABEL_35;
    }
  }

  v6 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [ATXHomeScreenLogEngagementKeyTracker keyTrackerForStackEngagementStatus:v6];
  }

  v4 = 0;
LABEL_35:

  return v4;
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:0 rotationBooleanKey:0 rotationFinalOutcomeKey:@"numFinalOutcomeNotSeen"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult;
  keyTrackerForStackEngagementStatus___pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:@"views" rotationBooleanKey:@"viewedRotations" rotationFinalOutcomeKey:@"numFinalOutcomeSeen"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_125;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_125 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:@"pseudoDismisses" rotationBooleanKey:0 rotationFinalOutcomeKey:@"numFinalOutcomePseudoDismiss"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_126;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_126 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:@"pseudotaps" rotationBooleanKey:@"pseudoTappedRotations" rotationFinalOutcomeKey:@"numFinalOutcomePseudoTap"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_127;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_127 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_5(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:@"taps" rotationBooleanKey:@"tappedRotations" rotationFinalOutcomeKey:@"numFinalOutcomeTap"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_128;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_128 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:0 rotationBooleanKey:0 rotationFinalOutcomeKey:@"timesAddedToStack"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_129;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_129 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_7(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:0 rotationBooleanKey:0 rotationFinalOutcomeKey:@"dismissOnces"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_130;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_130 = v3;

  objc_autoreleasePoolPop(v2);
}

void __75__ATXHomeScreenLogEngagementKeyTracker_keyTrackerForStackEngagementStatus___block_invoke_8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) initWithRotationAggregationKey:0 rotationBooleanKey:0 rotationFinalOutcomeKey:@"neverShows"];
  v4 = keyTrackerForStackEngagementStatus___pasExprOnceResult_131;
  keyTrackerForStackEngagementStatus___pasExprOnceResult_131 = v3;

  objc_autoreleasePoolPop(v2);
}

@end