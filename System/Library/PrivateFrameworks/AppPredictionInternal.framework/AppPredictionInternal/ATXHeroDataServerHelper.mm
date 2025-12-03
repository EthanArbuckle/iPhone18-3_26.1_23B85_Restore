@interface ATXHeroDataServerHelper
+ (BOOL)canPredictClipsGivenRecentMotion;
+ (BOOL)isPredictionInRadius:(id)radius currentLocation:(id)location;
+ (id)bundleIdForPrediction:(id)prediction;
+ (id)heroAppPredictionsSortedByDistance:(id)distance currentLocation:(id)location;
+ (id)inRadiusPredictionsFrom:(id)from currentLocation:(id)location;
@end

@implementation ATXHeroDataServerHelper

+ (id)bundleIdForPrediction:(id)prediction
{
  v20 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  bundleId = [predictionCopy bundleId];
  v5 = *MEMORY[0x277D131F8];
  v6 = [bundleId isEqualToString:*MEMORY[0x277D131F8]];

  if ((v6 & 1) == 0)
  {
    bundleId2 = [predictionCopy bundleId];
    goto LABEL_5;
  }

  adamId = [predictionCopy adamId];
  if (adamId == *MEMORY[0x277D131F0])
  {
    bundleId2 = v5;
LABEL_5:
    v9 = bundleId2;
    goto LABEL_15;
  }

  v10 = [MEMORY[0x277CEB3B8] bundleIdForAdamIdIfInstalled:{objc_msgSend(predictionCopy, "adamId")}];
  if (!v10)
  {
    v13 = __atxlog_handle_hero();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      bundleId3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predictionCopy, "adamId")}];
      v18 = 138412290;
      v19 = bundleId3;
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
      bundleId3 = [predictionCopy bundleId];
      v18 = 138412290;
      v19 = bundleId3;
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

+ (id)inRadiusPredictionsFrom:(id)from currentLocation:(id)location
{
  locationCopy = location;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__ATXHeroDataServerHelper_inRadiusPredictionsFrom_currentLocation___block_invoke;
  v10[3] = &unk_2785A21A0;
  v11 = locationCopy;
  selfCopy = self;
  v7 = locationCopy;
  v8 = [from _pas_filteredArrayWithTest:v10];

  return v8;
}

+ (BOOL)isPredictionInRadius:(id)radius currentLocation:(id)location
{
  radiusCopy = radius;
  locationCopy = location;
  v7 = +[ATXHeroAndClipConstants sharedInstance];
  [radiusCopy latitude];
  v8 = *MEMORY[0x277D131D0];
  if (v9 == *MEMORY[0x277D131D0] && ([radiusCopy longitude], v10 == v8))
  {
    v11 = 1;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    [radiusCopy latitude];
    v14 = v13;
    [radiusCopy longitude];
    v16 = [v12 initWithLatitude:v14 longitude:v15];
    [locationCopy distanceFromLocation:v16];
    v18 = v17;

    [locationCopy horizontalAccuracy];
    if (v19 < 0.0 || (v20 = v19, [v7 heroAppWorstCaseLocationAccuracy], v20 > v21))
    {
      [v7 heroAppWorstCaseLocationAccuracy];
      v20 = v22;
    }

    v11 = v18 <= v20 + [radiusCopy radiusInMeters];
  }

  return v11;
}

+ (BOOL)canPredictClipsGivenRecentMotion
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[_ATXGlobals sharedInstance];
  disableLocationQualityChecksForHeroApp = [v2 disableLocationQualityChecksForHeroApp];

  if (disableLocationQualityChecksForHeroApp)
  {
    v4 = __atxlog_handle_hero();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2263AA000, &v4->super, OS_LOG_TYPE_DEFAULT, "Not filtering by motion because testing mode is enabled", &v13, 2u);
    }

    LOBYTE(canPredictClipsGivenRecentMotion) = 1;
  }

  else
  {
    v4 = objc_alloc_init(ATXPredictionContextBuilder);
    predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)v4 predictionContextForCurrentContext];
    v7 = predictionContextForCurrentContext;
    if (predictionContextForCurrentContext)
    {
      locationMotionContext = [predictionContextForCurrentContext locationMotionContext];
      canPredictClipsGivenRecentMotion = [locationMotionContext canPredictClipsGivenRecentMotion];

      v9 = __atxlog_handle_hero();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (canPredictClipsGivenRecentMotion)
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
      LOBYTE(canPredictClipsGivenRecentMotion) = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return canPredictClipsGivenRecentMotion;
}

+ (id)heroAppPredictionsSortedByDistance:(id)distance currentLocation:(id)location
{
  distanceCopy = distance;
  locationCopy = location;
  v7 = __atxlog_handle_hero();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (locationCopy)
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
    v12 = locationCopy;
    v9 = [distanceCopy sortedArrayUsingComparator:v11];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Cant sort predictions with nil location. Returning as is", buf, 2u);
    }

    v9 = distanceCopy;
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