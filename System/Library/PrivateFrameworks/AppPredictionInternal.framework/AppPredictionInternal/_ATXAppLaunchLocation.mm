@interface _ATXAppLaunchLocation
+ (id)visitsWithLOI:(id)i startDate:(id)date;
+ (void)joinLaunchEvents:(id)events withVisits:(id)visits block:(id)block;
+ (void)writeModel:(id)model;
- (_ATXAppLaunchLocation)init;
- (_ATXAppLaunchLocation)initWithAppInFocusStream:(id)stream combinedIntentStream:(id)intentStream locationManager:(id)manager;
- (double)launchProbabilityAtLOI:(id)i appForAllIntentsBundleId:(id)id;
- (double)launchProbabilityAtLOI:(id)i appIntent:(id)intent;
- (double)launchProbabilityAtLOI:(id)i bundleId:(id)id;
- (id)locationManager;
- (int)launchCountAtLOI:(id)i bundleId:(id)id;
- (unint64_t)loadModel;
- (unint64_t)loadModelAtPath:(id)path;
- (void)_trainModelWithLOI:(id)i startDate:(id)date;
- (void)resetAppIntentLocationData;
- (void)trainWithCallback:(id)callback;
@end

@implementation _ATXAppLaunchLocation

- (_ATXAppLaunchLocation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(_ATXAppLaunchLocation *)self initWithAppInFocusStream:v3 combinedIntentStream:v4 locationManager:0];

  return v5;
}

- (_ATXAppLaunchLocation)initWithAppInFocusStream:(id)stream combinedIntentStream:(id)intentStream locationManager:(id)manager
{
  streamCopy = stream;
  intentStreamCopy = intentStream;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = _ATXAppLaunchLocation;
  v12 = [(_ATXAppLaunchLocation *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locationManager, manager);
    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    lock = v13->_lock;
    v13->_lock = v16;

    objc_storeStrong(&v13->_combinedIntentStream, intentStream);
    objc_storeStrong(&v13->_appInFocusStream, stream);
    [(_ATXAppLaunchLocation *)v13 loadModel];
  }

  return v13;
}

- (id)locationManager
{
  locationManager = self->_locationManager;
  if (!locationManager)
  {
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    v5 = self->_locationManager;
    self->_locationManager = mEMORY[0x277D41BF8];

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

- (double)launchProbabilityAtLOI:(id)i bundleId:(id)id
{
  iCopy = i;
  idCopy = id;
  v8 = idCopy;
  v9 = 0.0;
  if (iCopy && [idCopy length])
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
    v14 = iCopy;
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

- (int)launchCountAtLOI:(id)i bundleId:(id)id
{
  iCopy = i;
  idCopy = id;
  v8 = idCopy;
  if (iCopy && [idCopy length])
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
    v13 = iCopy;
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

- (double)launchProbabilityAtLOI:(id)i appIntent:(id)intent
{
  iCopy = i;
  intentCopy = intent;
  v8 = intentCopy;
  v9 = 0.0;
  if (iCopy && [intentCopy length])
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
    v14 = iCopy;
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

- (double)launchProbabilityAtLOI:(id)i appForAllIntentsBundleId:(id)id
{
  iCopy = i;
  idCopy = id;
  v8 = idCopy;
  v9 = 0.0;
  if (iCopy && [idCopy length])
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
    v14 = iCopy;
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

- (void)trainWithCallback:(id)callback
{
  v21 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
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

  locationManager = [(_ATXAppLaunchLocation *)self locationManager];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43___ATXAppLaunchLocation_trainWithCallback___block_invoke;
  v15[3] = &unk_27859B9A8;
  v17 = callbackCopy;
  v18 = v8;
  v15[4] = self;
  v16 = v6;
  v12 = v6;
  v13 = callbackCopy;
  [locationManager fetchAllLocationsOfInterest:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_trainModelWithLOI:(id)i startDate:(id)date
{
  iCopy = i;
  dateCopy = date;
  v9 = objc_opt_new();
  v33 = objc_opt_new();
  v32 = objc_opt_new();
  v31 = objc_opt_new();
  v10 = objc_opt_new();
  v30 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  date = [MEMORY[0x277CBEAA8] date];
  v12 = objc_opt_new();
  if (dateCopy && [dateCopy compare:date] == -1)
  {
    appInFocusStream = self->_appInFocusStream;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __54___ATXAppLaunchLocation__trainModelWithLOI_startDate___block_invoke;
    v54[3] = &unk_278596DC8;
    v55 = v12;
    [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:dateCopy endDate:date shouldReverse:0 bundleIDFilter:0 block:v54];
  }

  [_ATXAppLaunchLocation visitsWithLOI:iCopy startDate:dateCopy];
  v14 = v36 = dateCopy;
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
  v16 = v34 = iCopy;
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
  selfCopy = self;
  v23 = v21;
  v24 = v15;
  v25 = v20;
  v26 = v19;
  v27 = v17;
  v28 = v29;
  [(_PASLock *)lock runWithLockAcquired:v37];
}

+ (id)visitsWithLOI:(id)i startDate:(id)date
{
  v36 = *MEMORY[0x277D85DE8];
  iCopy = i;
  dateCopy = date;
  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = iCopy;
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
        visits = [v9 visits];
        v11 = [visits countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(visits);
              }

              v15 = *(*(&v26 + 1) + 8 * j);
              rangeValue = [v15 rangeValue];
              v18 = (rangeValue + v17);
              [dateCopy timeIntervalSinceReferenceDate];
              if (v19 <= v18)
              {
                uuid = [v9 uuid];
                [v7 setObject:uuid forKeyedSubscript:v15];
              }
            }

            v12 = [visits countByEnumeratingWithState:&v26 objects:v34 count:16];
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

+ (void)joinLaunchEvents:(id)events withVisits:(id)visits block:(id)block
{
  eventsCopy = events;
  visitsCopy = visits;
  blockCopy = block;
  allKeys = [visitsCopy allKeys];
  v10 = [_ATXAppLaunchLocation sortTimeIntervals:allKeys];

  v11 = [v10 count];
  v12 = eventsCopy;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v28 = (blockCopy + 2);
    while (1)
    {
      if (v14 >= [v12 count])
      {
        goto LABEL_10;
      }

      v15 = [eventsCopy objectAtIndexedSubscript:v14];
      v16 = [v10 objectAtIndexedSubscript:v13];
      rangeValue = [v16 rangeValue];
      v19 = v18;
      startDate = [v15 startDate];
      [startDate timeIntervalSinceReferenceDate];
      v22 = v21;

      if (v22 < rangeValue)
      {
        goto LABEL_8;
      }

      startDate2 = [v15 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v25 = v24;

      if (v25 <= (rangeValue + v19))
      {
        break;
      }

      ++v13;
LABEL_9:

      v27 = [v10 count];
      v12 = eventsCopy;
      if (v13 >= v27)
      {
        goto LABEL_10;
      }
    }

    v26 = [visitsCopy objectForKeyedSubscript:v16];
    blockCopy[2](blockCopy, v15, v26);

LABEL_8:
    ++v14;
    goto LABEL_9;
  }

LABEL_10:
}

+ (void)writeModel:(id)model
{
  v25[7] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v4 = modelCopy;
  if (modelCopy[2] && modelCopy[3] && modelCopy[4] && modelCopy[5] && modelCopy[6] && modelCopy[7])
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

- (unint64_t)loadModelAtPath:(id)path
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([MEMORY[0x277D42598] lockState] - 1 > 1)
  {
    v8 = objc_autoreleasePoolPush();
    v31 = 0;
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:0 error:&v31];
    v10 = v31;
    if (v9)
    {
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      defaultManager2 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
      v17 = objc_autoreleasePoolPush();
      v30 = v10;
      v18 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:defaultManager2 fromData:v9 error:&v30];
      v19 = v30;

      objc_autoreleasePoolPop(v17);
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = [v18 objectForKeyedSubscript:@"modelVersion"];
        integerValue = [v20 integerValue];

        if (integerValue == 2)
        {
          lock = self->_lock;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __41___ATXAppLaunchLocation_loadModelAtPath___block_invoke_99;
          v28[3] = &unk_27859B930;
          v29 = v18;
          [(_PASLock *)lock runWithLockAcquired:v28];
          v7 = 1;
          defaultManager = v29;
        }

        else
        {
          defaultManager = __atxlog_handle_default();
          if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
          {
            [(_ATXAppLaunchLocation *)integerValue loadModelAtPath:defaultManager];
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

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:pathCopy error:0];
        v7 = 2;
      }
    }

    else
    {
      v25 = __atxlog_handle_default();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = pathCopy;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Could not open model at %@: %@", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 removeItemAtPath:pathCopy error:0];
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
    v33 = pathCopy;
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