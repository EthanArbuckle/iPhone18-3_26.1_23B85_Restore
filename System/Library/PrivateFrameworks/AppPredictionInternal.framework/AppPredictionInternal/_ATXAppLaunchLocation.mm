@interface _ATXAppLaunchLocation
+ (id)visitsWithLOI:(id)a3 startDate:(id)a4;
+ (void)joinLaunchEvents:(id)a3 withVisits:(id)a4 block:(id)a5;
+ (void)writeModel:(id)a3;
- (_ATXAppLaunchLocation)init;
- (_ATXAppLaunchLocation)initWithAppInFocusStream:(id)a3 combinedIntentStream:(id)a4 locationManager:(id)a5;
- (double)launchProbabilityAtLOI:(id)a3 appForAllIntentsBundleId:(id)a4;
- (double)launchProbabilityAtLOI:(id)a3 appIntent:(id)a4;
- (double)launchProbabilityAtLOI:(id)a3 bundleId:(id)a4;
- (id)locationManager;
- (int)launchCountAtLOI:(id)a3 bundleId:(id)a4;
- (unint64_t)loadModel;
- (unint64_t)loadModelAtPath:(id)a3;
- (void)_trainModelWithLOI:(id)a3 startDate:(id)a4;
- (void)resetAppIntentLocationData;
- (void)trainWithCallback:(id)a3;
@end

@implementation _ATXAppLaunchLocation

- (_ATXAppLaunchLocation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(_ATXAppLaunchLocation *)self initWithAppInFocusStream:v3 combinedIntentStream:v4 locationManager:0];

  return v5;
}

- (_ATXAppLaunchLocation)initWithAppInFocusStream:(id)a3 combinedIntentStream:(id)a4 locationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _ATXAppLaunchLocation;
  v12 = [(_ATXAppLaunchLocation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locationManager, a5);
    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    lock = v13->_lock;
    v13->_lock = v16;

    objc_storeStrong(&v13->_combinedIntentStream, a4);
    objc_storeStrong(&v13->_appInFocusStream, a3);
    [(_ATXAppLaunchLocation *)v13 loadModel];
  }

  return v13;
}

- (id)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    v4 = [MEMORY[0x277D41BF8] sharedInstance];
    v5 = self->_locationManager;
    self->_locationManager = v4;

    locationManager = self->_locationManager;
  }

  return locationManager;
}

- (void)resetAppIntentLocationData
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51___ATXAppLaunchLocation_resetAppIntentLocationData__block_invoke;
  v3[3] = &unk_27859B930;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (double)launchProbabilityAtLOI:(id)a3 bundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0.0;
  if (v6 && [v7 length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57___ATXAppLaunchLocation_launchProbabilityAtLOI_bundleId___block_invoke;
    v13[3] = &unk_27859B958;
    v16 = &v22;
    v14 = v6;
    v15 = v8;
    v17 = &v18;
    [(_PASLock *)lock runWithLockAcquired:v13];
    v11 = v19[3];
    if (v11 != 0.0)
    {
      v9 = v23[3] / v11;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v9;
}

- (int)launchCountAtLOI:(id)a3 bundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    lock = self->_lock;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51___ATXAppLaunchLocation_launchCountAtLOI_bundleId___block_invoke;
    v12[3] = &unk_27859B980;
    v15 = &v16;
    v13 = v6;
    v14 = v8;
    [(_PASLock *)lock runWithLockAcquired:v12];
    v10 = *(v17 + 6);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)launchProbabilityAtLOI:(id)a3 appIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0.0;
  if (v6 && [v7 length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58___ATXAppLaunchLocation_launchProbabilityAtLOI_appIntent___block_invoke;
    v13[3] = &unk_27859B958;
    v16 = &v22;
    v14 = v6;
    v15 = v8;
    v17 = &v18;
    [(_PASLock *)lock runWithLockAcquired:v13];
    v11 = v19[3];
    if (v11 != 0.0)
    {
      v9 = v23[3] / v11;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v9;
}

- (double)launchProbabilityAtLOI:(id)a3 appForAllIntentsBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0.0;
  if (v6 && [v7 length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73___ATXAppLaunchLocation_launchProbabilityAtLOI_appForAllIntentsBundleId___block_invoke;
    v13[3] = &unk_27859B958;
    v16 = &v22;
    v14 = v6;
    v15 = v8;
    v17 = &v18;
    [(_PASLock *)lock runWithLockAcquired:v13];
    v11 = v19[3];
    if (v11 != 0.0)
    {
      v9 = v23[3] / v11;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v9;
}

- (void)trainWithCallback:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  sel_getName(a2);
  v6 = os_transaction_create();
  v7 = __atxlog_handle_default();
  v8 = os_signpost_id_generate(v7);

  v9 = __atxlog_handle_default();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 136446210;
    v20 = "_ATXAppLaunchLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = [(_ATXAppLaunchLocation *)self locationManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43___ATXAppLaunchLocation_trainWithCallback___block_invoke;
  v15[3] = &unk_27859B9A8;
  v17 = v5;
  v18 = v8;
  v15[4] = self;
  v16 = v6;
  v12 = v6;
  v13 = v5;
  [v11 fetchAllLocationsOfInterest:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_trainModelWithLOI:(id)a3 startDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v31 = objc_opt_new();
  v10 = objc_opt_new();
  v30 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = objc_opt_new();
  if (v8 && [v8 compare:v11] == -1)
  {
    appInFocusStream = self->_appInFocusStream;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke;
    v54[3] = &unk_278596DC8;
    v55 = v12;
    [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v8 endDate:v11 shouldReverse:0 bundleIDFilter:0 block:v54];
  }

  [_ATXAppLaunchLocation visitsWithLOI:v7 startDate:v8];
  v14 = v36 = v8;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_2;
  v51[3] = &unk_27859B9D0;
  v29 = v9;
  v52 = v29;
  v15 = v10;
  v53 = v15;
  [_ATXAppLaunchLocation joinLaunchEvents:v12 withVisits:v14 block:v51];
  [(ATXCombinedIntentStream *)self->_combinedIntentStream getCombinedIntentEventsFromLastMonth];
  v16 = v34 = v7;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_3;
  v45[3] = &unk_27859B9F8;
  v50 = a2;
  v45[4] = self;
  v17 = v33;
  v46 = v17;
  v18 = v12;
  v19 = v32;
  v47 = v19;
  v20 = v31;
  v48 = v20;
  v21 = v30;
  v49 = v21;
  [_ATXAppLaunchLocation joinLaunchEvents:v16 withVisits:v14 block:v45];

  objc_autoreleasePoolPop(context);
  lock = self->_lock;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke_4;
  v37[3] = &unk_27859BA20;
  v38 = v29;
  v39 = v17;
  v40 = v19;
  v41 = v20;
  v42 = v15;
  v43 = v21;
  v44 = self;
  v23 = v21;
  v24 = v15;
  v25 = v20;
  v26 = v19;
  v27 = v17;
  v28 = v29;
  [(_PASLock *)lock runWithLockAcquired:v37];
}

+ (id)visitsWithLOI:(id)a3 startDate:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v24 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [v9 visits];
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              v16 = [v15 rangeValue];
              v18 = (v16 + v17);
              [v6 timeIntervalSinceReferenceDate];
              if (v19 <= v18)
              {
                v20 = [v9 uuid];
                [v7 setObject:v20 forKeyedSubscript:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v12);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)joinLaunchEvents:(id)a3 withVisits:(id)a4 block:(id)a5
{
  v29 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 allKeys];
  v10 = [_ATXAppLaunchLocation sortTimeIntervals:v9];

  v11 = [v10 count];
  v12 = v29;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v28 = (v8 + 2);
    while (1)
    {
      if (v14 >= [v12 count])
      {
        goto LABEL_10;
      }

      v15 = [v29 objectAtIndexedSubscript:v14];
      v16 = [v10 objectAtIndexedSubscript:v13];
      v17 = [v16 rangeValue];
      v19 = v18;
      v20 = [v15 startDate];
      [v20 timeIntervalSinceReferenceDate];
      v22 = v21;

      if (v22 < v17)
      {
        goto LABEL_8;
      }

      v23 = [v15 startDate];
      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;

      if (v25 <= (v17 + v19))
      {
        break;
      }

      ++v13;
LABEL_9:

      v27 = [v10 count];
      v12 = v29;
      if (v13 >= v27)
      {
        goto LABEL_10;
      }
    }

    v26 = [v7 objectForKeyedSubscript:v16];
    v8[2](v8, v15, v26);

LABEL_8:
    ++v14;
    goto LABEL_9;
  }

LABEL_10:
}

+ (void)writeModel:(id)a3
{
  v25[7] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3[2] && v3[3] && v3[4] && v3[5] && v3[6] && v3[7])
  {
    v5 = objc_autoreleasePoolPush();
    v24[0] = @"modelVersion";
    v24[1] = @"appLaunchCountMapKey";
    v6 = v4[2];
    v7 = v4[3];
    v25[0] = &unk_283A55FB8;
    v25[1] = v6;
    v24[2] = @"appIntentLaunchCountMapKey";
    v24[3] = @"intentLaunchCountMapKey";
    v8 = v4[4];
    v9 = v4[5];
    v25[2] = v7;
    v25[3] = v8;
    v24[4] = @"appForAllIntentsLaunchCountMapKey";
    v24[5] = @"totalLaunchCountMapKey";
    v10 = v4[6];
    v11 = v4[7];
    v25[4] = v9;
    v25[5] = v10;
    v24[6] = @"totalIntentLaunchCountMapKey";
    v25[6] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
    v23 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v23];
    v14 = v23;
    if (v13)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = +[_ATXAppLaunchLocation defaultPath];
      v17 = [v15 fileURLWithPath:v16];

      v22 = v14;
      v18 = [v13 writeToURL:v17 options:805306369 error:&v22];
      v19 = v22;

      if ((v18 & 1) == 0)
      {
        v20 = __atxlog_handle_default();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[_ATXAppLaunchLocation writeModel:];
        }
      }
    }

    else
    {
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[_ATXAppLaunchLocation writeModel:];
      }

      v19 = v14;
    }

    objc_autoreleasePoolPop(v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)loadModel
{
  v3 = +[_ATXAppLaunchLocation defaultPath];
  v4 = [(_ATXAppLaunchLocation *)self loadModelAtPath:v3];

  return v4;
}

- (unint64_t)loadModelAtPath:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D42598] lockState] - 1 > 1)
  {
    v8 = objc_autoreleasePoolPush();
    v31 = 0;
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v4 options:0 error:&v31];
    v10 = v31;
    if (v9)
    {
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
      v17 = objc_autoreleasePoolPush();
      v30 = v10;
      v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v16 fromData:v9 error:&v30];
      v19 = v30;

      objc_autoreleasePoolPop(v17);
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = [v18 objectForKeyedSubscript:@"modelVersion"];
        v21 = [v20 integerValue];

        if (v21 == 2)
        {
          lock = self->_lock;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_99;
          v28[3] = &unk_27859B930;
          v29 = v18;
          [(_PASLock *)lock runWithLockAcquired:v28];
          v7 = 1;
          v23 = v29;
        }

        else
        {
          v23 = __atxlog_handle_default();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(_ATXAppLaunchLocation *)v21 loadModelAtPath:v23];
          }

          v7 = 2;
        }
      }

      else
      {
        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_ATXAppLaunchLocation loadModelAtPath:];
        }

        v23 = [MEMORY[0x277CCAA00] defaultManager];
        [v23 removeItemAtPath:v4 error:0];
        v7 = 2;
      }
    }

    else
    {
      v25 = __atxlog_handle_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v4;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Could not open model at %@: %@", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CCAA00] defaultManager];
      [v16 removeItemAtPath:v4 error:0];
      v7 = 2;
      v19 = v10;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "Model data data was locked. Waiting...", buf, 2u);
    }

    v6 = self->_lock;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke;
    v32[3] = &unk_27859BAB0;
    v32[4] = self;
    v33 = v4;
    [(_PASLock *)v6 runWithLockAcquired:v32];

    v7 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)writeModel:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error writing location model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)writeModel:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error archiving location model: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadModelAtPath:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = 2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Expected model version %i, got %i", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadModelAtPath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Error unarchiving model at %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end