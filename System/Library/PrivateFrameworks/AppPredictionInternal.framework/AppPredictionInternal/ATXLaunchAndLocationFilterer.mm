@interface ATXLaunchAndLocationFilterer
+ (BOOL)appBundleIdIsBlacklisted:(id)a3 blacklist:(id)a4;
+ (BOOL)genreIdIsBlacklistedGivenAppBundleId:(id)a3 blacklist:(id)a4;
+ (BOOL)locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4;
+ (BOOL)shouldSampleWithCounterKey:(id)a3 date:(id)a4 samplingRate:(double)a5 maxSamples:(unint64_t)a6;
+ (id)_formattedStringForDate:(id)a3;
+ (void)incrementOnDeviceDailySamplesWithCounterKey:(id)a3 date:(id)a4;
@end

@implementation ATXLaunchAndLocationFilterer

+ (BOOL)locationIsStaleOrNotAccurateEnough:(id)a3 now:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 timestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v9 <= 100.0)
  {
    [v5 horizontalAccuracy];
    if (v12 <= 100.0)
    {
      v14 = 0;
      goto LABEL_10;
    }

    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v5 horizontalAccuracy];
      v17 = 134217984;
      v18 = v13;
      v11 = ": Location uncertainty too large, horizontalAccuracy, %f. Ignoring.";
      goto LABEL_7;
    }
  }

  else
  {
    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v9;
      v11 = ": Location is stale. Age: %f. Ignoring.";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)appBundleIdIsBlacklisted:(id)a3 blacklist:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 containsObject:v5];
  if (v6)
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, ": Bundle Id is blacklisted. Bundle Id: %@. Ignoring.", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)genreIdIsBlacklistedGivenAppBundleId:(id)a3 blacklist:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[_ATXAppInfoManager sharedInstance];
  v8 = [v7 genreIdForBundleId:v5];

  v9 = __atxlog_handle_hero();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "GenreId: %@, BundleId: %@.", &v14, 0x16u);
  }

  if (v8 && ![v6 containsObject:v8])
  {
    v11 = 0;
  }

  else
  {
    v10 = __atxlog_handle_hero();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, ": Genre Id is blacklisted. Genre Id: %@. Ignoring.", &v14, 0xCu);
    }

    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)shouldSampleWithCounterKey:(id)a3 date:(id)a4 samplingRate:(double)a5 maxSamples:(unint64_t)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = MEMORY[0x277CBEBD0];
  v12 = a3;
  v13 = [v11 alloc];
  v14 = [v13 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v15 = [v12 stringByAppendingString:@".date"];
  v16 = [v12 stringByAppendingString:@".dailySamplesCount"];

  v17 = [v14 integerForKey:v16];
  v18 = [v14 stringForKey:v15];
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17 == 0;
  }

  if (v19)
  {
    v20 = [a1 _formattedStringForDate:v10];
    v21 = v20;
    if (v18)
    {
      v22 = [v20 isEqualToString:v18];
      v23 = [_ATXAggregateLogger yesWithProbability:a5];
      if (v22)
      {
        v24 = v17 >= a6;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v25 = __atxlog_handle_hero();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 134217984;
          v33 = *&v17;
          v26 = ": Already reached per device max daily samples: %lu. Ignoring.";
          goto LABEL_21;
        }

LABEL_22:

        v29 = 0;
        goto LABEL_23;
      }

      if (!v23)
      {
LABEL_12:
        v25 = __atxlog_handle_hero();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 134217984;
          v33 = a5;
          v26 = ": Did not pass sampling. Sampling rate: %f. Ignoring.";
LABEL_21:
          _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, v26, &v32, 0xCu);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else if (![_ATXAggregateLogger yesWithProbability:a5])
    {
      goto LABEL_12;
    }

    v29 = 1;
LABEL_23:

    goto LABEL_24;
  }

  v27 = __atxlog_handle_default();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [ATXLaunchAndLocationFilterer shouldSampleWithCounterKey:v27 date:? samplingRate:? maxSamples:?];
  }

  [v14 setInteger:0 forKey:v16];
  v29 = 0;
LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (void)incrementOnDeviceDailySamplesWithCounterKey:(id)a3 date:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v11 = [v8 stringByAppendingString:@".date"];
  v12 = [v8 stringByAppendingString:@".dailySamplesCount"];

  v13 = [v10 stringForKey:v11];
  v14 = [a1 _formattedStringForDate:v7];

  if (v13 && [v14 isEqualToString:v13])
  {
    v15 = [v10 integerForKey:v12] + 1;
    [v10 setInteger:v15 forKey:v12];
    v16 = __atxlog_handle_hero();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = v15;
      v17 = ": Increased daily sample count to: %lu";
      v18 = v16;
      v19 = 12;
LABEL_7:
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
    }
  }

  else
  {
    [v10 setInteger:1 forKey:v12];
    [v10 setObject:v14 forKey:v11];
    v16 = __atxlog_handle_hero();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      v17 = ": Received first sample of the day. Set daily sample count to 1.";
      v18 = v16;
      v19 = 2;
      goto LABEL_7;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)_formattedStringForDate:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd"];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

@end