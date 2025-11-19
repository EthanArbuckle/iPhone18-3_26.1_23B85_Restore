@interface ATXHeroDataServerHelper
+ (BOOL)canPredictClipsGivenRecentMotion;
+ (BOOL)isPredictionInRadius:(id)a3 currentLocation:(id)a4;
+ (id)bundleIdForPrediction:(id)a3;
+ (id)heroAppPredictionsSortedByDistance:(id)a3 currentLocation:(id)a4;
+ (id)inRadiusPredictionsFrom:(id)a3 currentLocation:(id)a4;
@end

@implementation ATXHeroDataServerHelper

+ (id)bundleIdForPrediction:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 bundleId];
  v5 = *MEMORY[0x277D131F8];
  v6 = [v4 isEqualToString:*MEMORY[0x277D131F8]];

  if ((v6 & 1) == 0)
  {
    v8 = [v3 bundleId];
    goto LABEL_5;
  }

  v7 = [v3 adamId];
  if (v7 == *MEMORY[0x277D131F0])
  {
    v8 = v5;
LABEL_5:
    v9 = v8;
    goto LABEL_15;
  }

  v10 = [MEMORY[0x277CEB3B8] bundleIdForAdamIdIfInstalled:{objc_msgSend(v3, "adamId")}];
  if (!v10)
  {
    v13 = __atxlog_handle_hero();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "adamId")}];
      v18 = 138412290;
      v19 = v14;
      v15 = "Adam id: %@ is not installed or is restricted.";
      goto LABEL_12;
    }

LABEL_13:

    v12 = v5;
    goto LABEL_14;
  }

  v11 = [MEMORY[0x277CEB3B8] isAppClipForBundleId:v10];
  v12 = v10;
  if (v11)
  {
    v13 = __atxlog_handle_hero();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 bundleId];
      v18 = 138412290;
      v19 = v14;
      v15 = "App clip predicted as a Hero App. Ignoring. BundleId: %@";
LABEL_12:
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, v15, &v18, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = v12;

LABEL_15:
  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)inRadiusPredictionsFrom:(id)a3 currentLocation:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__ATXHeroDataServerHelper_inRadiusPredictionsFrom_currentLocation___block_invoke;
  v10[3] = &unk_2785A21A0;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a3 _pas_filteredArrayWithTest:v10];

  return v8;
}

+ (BOOL)isPredictionInRadius:(id)a3 currentLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[ATXHeroAndClipConstants sharedInstance];
  [v5 latitude];
  v8 = *MEMORY[0x277D131D0];
  if (v9 == *MEMORY[0x277D131D0] && ([v5 longitude], v10 == v8))
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    [v5 latitude];
    v14 = v13;
    [v5 longitude];
    v16 = [v12 initWithLatitude:v14 longitude:v15];
    [v6 distanceFromLocation:v16];
    v18 = v17;

    [v6 horizontalAccuracy];
    if (v19 < 0.0 || (v20 = v19, [v7 heroAppWorstCaseLocationAccuracy], v20 > v21))
    {
      [v7 heroAppWorstCaseLocationAccuracy];
      v20 = v22;
    }

    v11 = v18 <= v20 + [v5 radiusInMeters];
  }

  return v11;
}

+ (BOOL)canPredictClipsGivenRecentMotion
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXGlobals sharedInstance];
  v3 = [v2 disableLocationQualityChecksForHeroApp];

  if (v3)
  {
    v4 = __atxlog_handle_hero();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2263AA000, &v4->super, OS_LOG_TYPE_DEFAULT, "Not filtering by motion because testing mode is enabled", &v13, 2u);
    }

    LOBYTE(v5) = 1;
  }

  else
  {
    v4 = objc_alloc_init(ATXPredictionContextBuilder);
    v6 = [(ATXPredictionContextBuilder *)v4 predictionContextForCurrentContext];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 locationMotionContext];
      v5 = [v8 canPredictClipsGivenRecentMotion];

      v9 = __atxlog_handle_hero();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v5)
        {
          v10 = @"YES";
        }

        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Are clips eligible according to motion: %@", &v13, 0xCu);
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)heroAppPredictionsSortedByDistance:(id)a3 currentLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_hero();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Sorting predictions based on distance.", buf, 2u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__ATXHeroDataServerHelper_heroAppPredictionsSortedByDistance_currentLocation___block_invoke;
    v11[3] = &unk_2785A21C8;
    v12 = v6;
    v9 = [v5 sortedArrayUsingComparator:v11];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Cant sort predictions with nil location. Returning as is", buf, 2u);
    }

    v9 = v5;
  }

  return v9;
}

uint64_t __78__ATXHeroDataServerHelper_heroAppPredictionsSortedByDistance_currentLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CE41F8];
  v7 = a3;
  v8 = a2;
  v9 = [v6 alloc];
  [v8 latitude];
  v11 = v10;
  [v8 longitude];
  v13 = v12;

  v14 = [v9 initWithLatitude:v11 longitude:v13];
  [v5 distanceFromLocation:v14];
  v16 = v15;

  v17 = *(a1 + 32);
  v18 = objc_alloc(MEMORY[0x277CE41F8]);
  [v7 latitude];
  v20 = v19;
  [v7 longitude];
  v22 = v21;

  v23 = [v18 initWithLatitude:v20 longitude:v22];
  [v17 distanceFromLocation:v23];
  v25 = v24;

  if (v16 < v25)
  {
    return -1;
  }

  else
  {
    return v16 > v25;
  }
}

@end