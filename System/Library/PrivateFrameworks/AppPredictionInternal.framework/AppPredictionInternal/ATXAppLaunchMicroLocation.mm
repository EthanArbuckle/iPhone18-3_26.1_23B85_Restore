@interface ATXAppLaunchMicroLocation
- (ATXAppLaunchMicroLocation)init;
- (ATXAppLaunchMicroLocation)initWithMicroLocationStream:(id)stream appInFocusStream:(id)focusStream combinedIntentStream:(id)intentStream directory:(id)directory forTesting:(BOOL)testing;
- (BOOL)_loadCorrelationMatrices;
- (double)popularityAtCurrentMicroLocationForActionKey:(id)key;
- (double)popularityAtCurrentMicroLocationForApp:(id)app;
- (id)_getActionKeyCorrelationMatrix;
- (id)_getAppLaunchCorrelationMatrix;
- (id)_getHistoricalData;
- (void)_loadCorrelationMatrices;
- (void)_receivedNotificationOfNewMicroLocation:(id)location;
- (void)_subscribeToMicroLocationEvents;
- (void)_writeAppLaunchCorrelationMatrix:(id)matrix actionKeyCorrelationMatrix:(id)correlationMatrix;
- (void)dealloc;
- (void)train;
- (void)tryLoadCorrelationMatricesImmediately;
@end

@implementation ATXAppLaunchMicroLocation

- (ATXAppLaunchMicroLocation)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v7 = [(ATXAppLaunchMicroLocation *)self initWithMicroLocationStream:v3 appInFocusStream:v4 combinedIntentStream:v5 directory:appPredictionDirectory forTesting:0];

  return v7;
}

- (ATXAppLaunchMicroLocation)initWithMicroLocationStream:(id)stream appInFocusStream:(id)focusStream combinedIntentStream:(id)intentStream directory:(id)directory forTesting:(BOOL)testing
{
  streamCopy = stream;
  focusStreamCopy = focusStream;
  intentStreamCopy = intentStream;
  directoryCopy = directory;
  v27.receiver = self;
  v27.super_class = ATXAppLaunchMicroLocation;
  v17 = [(ATXAppLaunchMicroLocation *)&v27 init];
  if (v17)
  {
    v18 = [directoryCopy stringByAppendingPathComponent:@"ATXAppPredictionMicroLocation"];
    path = v17->_path;
    v17->_path = v18;

    objc_storeStrong(&v17->_microLocationStream, stream);
    objc_storeStrong(&v17->_combinedIntentStream, intentStream);
    objc_storeStrong(&v17->_appInFocusStream, focusStream);
    v20 = [ATXAppLaunchMicroLocationGuardedData alloc];
    v21 = [(ATXMicroLocationVisitStream *)v17->_microLocationStream mostRecentMicroLocationWithinSeconds:600];
    v22 = microLocationEventFromATXMicroLocationVisitEvent(v21);
    v23 = [(ATXAppLaunchMicroLocationGuardedData *)v20 initWithCurrentMicroLocation:v22];

    v24 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v23];
    lock = v17->_lock;
    v17->_lock = v24;

    if (!testing)
    {
      [(ATXAppLaunchMicroLocation *)v17 _subscribeToMicroLocationEvents];
    }

    [(ATXAppLaunchMicroLocation *)v17 tryLoadCorrelationMatricesImmediately];
  }

  return v17;
}

- (void)_subscribeToMicroLocationEvents
{
  objc_initWeak(&location, self);
  mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ATXAppLaunchMicroLocation__subscribeToMicroLocationEvents__block_invoke;
  v6[3] = &unk_278596D20;
  objc_copyWeak(&v7, &location);
  v4 = [mEMORY[0x277CEBC98] subscribeWithCallback:v6];
  microLocationSchedulerToken = self->_microLocationSchedulerToken;
  self->_microLocationSchedulerToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__ATXAppLaunchMicroLocation__subscribeToMicroLocationEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _receivedNotificationOfNewMicroLocation:v5];
  }
}

- (void)_receivedNotificationOfNewMicroLocation:(id)location
{
  locationCopy = location;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ATXAppLaunchMicroLocation__receivedNotificationOfNewMicroLocation___block_invoke;
  v7[3] = &unk_2785A18A0;
  v8 = locationCopy;
  v6 = locationCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __69__ATXAppLaunchMicroLocation__receivedNotificationOfNewMicroLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = microLocationEventFromATXMicroLocationVisitEvent(v2);
  [v3 setCurrentMicroLocation:v4];
}

- (double)popularityAtCurrentMicroLocationForApp:(id)app
{
  appCopy = app;
  v5 = appCopy;
  if (appCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForApp___block_invoke;
    v9[3] = &unk_2785A18C8;
    v11 = &v12;
    v10 = appCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __68__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForApp___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 getCurrentMicroLocation];
  if (v3)
  {
    [v5[4] launchProbabilityForEvent:*(a1 + 32) atLocationsWithProbabilities:v3];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (double)popularityAtCurrentMicroLocationForActionKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    lock = self->_lock;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForActionKey___block_invoke;
    v9[3] = &unk_2785A18C8;
    v11 = &v12;
    v10 = keyCopy;
    [(_PASLock *)lock runWithLockAcquired:v9];
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __74__ATXAppLaunchMicroLocation_popularityAtCurrentMicroLocationForActionKey___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 getCurrentMicroLocation];
  if (v3)
  {
    [v5[5] launchProbabilityForEvent:*(a1 + 32) atLocationsWithProbabilities:v3];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)train
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412290;
    v46 = v5;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "%@ - starting training of micro locations", buf, 0xCu);
  }

  v6 = __atxlog_handle_default();
  v7 = os_signpost_id_generate(v6);

  v8 = __atxlog_handle_default();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 136446210;
    v46 = "ATXAppLaunchMicroLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  _getHistoricalData = [(ATXAppLaunchMicroLocation *)self _getHistoricalData];
  v11 = _getHistoricalData;
  v12 = MEMORY[0x277CBEBF8];
  if (_getHistoricalData)
  {
    v12 = _getHistoricalData;
  }

  v13 = v12;

  v14 = objc_opt_new();
  v15 = objc_autoreleasePoolPush();
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [date dateByAddingTimeInterval:-2419200.0];
  v18 = objc_opt_new();
  appInFocusStream = self->_appInFocusStream;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke;
  v43[3] = &unk_278596DC8;
  v44 = v18;
  v20 = v18;
  [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v17 endDate:date shouldReverse:0 bundleIDFilter:0 block:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_2;
  v41[3] = &unk_2785A18F0;
  v21 = v14;
  v42 = v21;
  [ATXEvent joinLaunchEvents:v20 withVisits:v13 block:v41];

  objc_autoreleasePoolPop(v15);
  v22 = objc_opt_new();
  v23 = objc_autoreleasePoolPush();
  getCombinedIntentEventsFromLastMonth = [(ATXCombinedIntentStream *)self->_combinedIntentStream getCombinedIntentEventsFromLastMonth];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_3;
  v38[3] = &unk_2785A1918;
  v40 = a2;
  v38[4] = self;
  v25 = v22;
  v39 = v25;
  [ATXEvent joinLaunchEvents:getCombinedIntentEventsFromLastMonth withVisits:v13 block:v38];

  objc_autoreleasePoolPop(v23);
  lock = self->_lock;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __34__ATXAppLaunchMicroLocation_train__block_invoke_4;
  v34[3] = &unk_2785A1940;
  v35 = v21;
  v36 = v25;
  selfCopy = self;
  v27 = v25;
  v28 = v21;
  [(_PASLock *)lock runWithLockAcquired:v34];

  objc_autoreleasePoolPop(context);
  v29 = __atxlog_handle_default();
  v30 = v29;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 136446210;
    v46 = "ATXAppLaunchMicroLocation";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v30, OS_SIGNPOST_INTERVAL_END, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 bundleId];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 event];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [v5 event];
        v14 = [v13 objectForKeyedSubscript:v12];
        [v14 doubleValue];
        v16 = v15;

        [*(a1 + 32) addVisitForLocation:v12 event:v6 value:v16];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __34__ATXAppLaunchMicroLocation_train__block_invoke_3_cold_1(a1);
  }

  v7 = [v5 action];
  v8 = [v7 actionKey];

  if (v8)
  {
    v20 = v5;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v6 event];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [v6 event];
          v16 = [v15 objectForKeyedSubscript:v14];
          [v16 doubleValue];
          v18 = v17;

          [*(a1 + 40) addVisitForLocation:v14 event:v8 value:v18];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v5 = v20;
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __34__ATXAppLaunchMicroLocation_train__block_invoke_4(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 4, *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 5, *(a1 + 40));

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v5 _writeAppLaunchCorrelationMatrix:v7 actionKeyCorrelationMatrix:v6];
}

- (void)_writeAppLaunchCorrelationMatrix:(id)matrix actionKeyCorrelationMatrix:(id)correlationMatrix
{
  v20[3] = *MEMORY[0x277D85DE8];
  matrixCopy = matrix;
  correlationMatrixCopy = correlationMatrix;
  v8 = objc_autoreleasePoolPush();
  v19[0] = @"appLaunchMatrix";
  v19[1] = @"actionKeyMatrix";
  v20[0] = matrixCopy;
  v20[1] = correlationMatrixCopy;
  v19[2] = @"modelVersion";
  v20[2] = &unk_283A57C20;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_path];
    v17 = v11;
    v13 = [v10 writeToURL:v12 options:805306369 error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      v15 = __atxlog_handle_default();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ATXAppLaunchMicroLocation _writeAppLaunchCorrelationMatrix:actionKeyCorrelationMatrix:];
      }
    }
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXAppLaunchMicroLocation _writeAppLaunchCorrelationMatrix:actionKeyCorrelationMatrix:];
    }

    v14 = v11;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)tryLoadCorrelationMatricesImmediately
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D42598] lockState] - 3;
  v4 = __atxlog_handle_default();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 > 0xFFFFFFFD)
  {
    if (v5)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - loading correlation matrices, detected that device is Class B Locked", buf, 0xCu);
    }

    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke;
    v13[3] = &unk_2785A18A0;
    v13[4] = self;
    [(_PASLock *)lock runWithLockAcquired:v13];
  }

  else
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - loading correlation matrices, device is NOT Class B Locked", buf, 0xCu);
    }

    v8 = objc_autoreleasePoolPush();
    [(ATXAppLaunchMicroLocation *)self _loadCorrelationMatrices];
    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3[1])
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - skipping second registration for unlock notification token", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = MEMORY[0x277D42598];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_77;
    v16[3] = &unk_27859BA88;
    objc_copyWeak(&v17, &location);
    v16[4] = *(a1 + 32);
    v9 = [v8 registerForLockStateChangeNotifications:v16];
    v10 = v3[1];
    v3[1] = v9;

    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412290;
      v20 = v14;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%@ - started listening for lock state changed notifications", buf, 0xCu);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_77(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_2;
    v6[3] = &unk_2785A18A0;
    v6[4] = *(a1 + 32);
    [v4 runWithLockAcquired:v6];
    v5 = objc_autoreleasePoolPush();
    [v3 _loadCorrelationMatrices];
    objc_autoreleasePoolPop(v5);
  }
}

void __66__ATXAppLaunchMicroLocation_tryLoadCorrelationMatricesImmediately__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D42598];
  v5 = a2[1];
  v6 = a2;
  [v4 unregisterForLockStateChangeNotifications:v5];
  v7 = a2[1];
  a2[1] = 0;

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%@ - stopped listening for lock state changed notifications", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadCorrelationMatrices
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  path = self->_path;
  v36 = 0;
  v5 = [v3 initWithContentsOfFile:path options:0 error:&v36];
  v6 = v36;
  if (v5)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    defaultManager2 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v12 = objc_autoreleasePoolPush();
    v35 = v6;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:defaultManager2 fromData:v5 error:&v35];
    v14 = v35;

    objc_autoreleasePoolPop(v12);
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v13 objectForKeyedSubscript:@"modelVersion"];
      integerValue = [v15 integerValue];

      if (integerValue == 1)
      {
        lock = self->_lock;
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __53__ATXAppLaunchMicroLocation__loadCorrelationMatrices__block_invoke;
        v33[3] = &unk_2785A18A0;
        v34 = v13;
        [(_PASLock *)lock runWithLockAcquired:v33];
        v18 = __atxlog_handle_default();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138412290;
          v38 = v20;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "%@ - successfully loaded correlation matrices", buf, 0xCu);
        }

        v21 = 1;
        defaultManager = v34;
        goto LABEL_12;
      }

      defaultManager = __atxlog_handle_default();
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
      {
        [ATXAppLaunchMicroLocation _loadCorrelationMatrices];
      }
    }

    else
    {
      v23 = __atxlog_handle_default();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = self->_path;
        *buf = 138412802;
        v38 = v31;
        v39 = 2112;
        v40 = v32;
        v41 = 2112;
        v42 = v14;
        _os_log_error_impl(&dword_2263AA000, v23, OS_LOG_TYPE_ERROR, "%@ - Error unarchiving model at %@: %@", buf, 0x20u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtPath:self->_path error:0];
    }

    v21 = 0;
LABEL_12:

    goto LABEL_16;
  }

  v24 = __atxlog_handle_default();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = self->_path;
    *buf = 138412802;
    v38 = v26;
    v39 = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%@ - Could not open model at %@: %@", buf, 0x20u);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager2 removeItemAtPath:self->_path error:0];
  v21 = 0;
  v14 = v6;
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

void __53__ATXAppLaunchMicroLocation__loadCorrelationMatrices__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:@"appLaunchMatrix"];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"actionKeyMatrix"];
  v8 = v4[5];
  v4[5] = v7;
}

- (id)_getHistoricalData
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-2419200.0];
  v5 = objc_opt_new();
  microLocationStream = self->_microLocationStream;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__ATXAppLaunchMicroLocation__getHistoricalData__block_invoke;
  v9[3] = &unk_27859E388;
  v7 = v5;
  v10 = v7;
  [(ATXMicroLocationVisitStream *)microLocationStream enumerateMicroLocationVisitEventsFromStartDate:v4 endDate:date filterBlock:0 limit:1000000 ascending:1 block:v9];

  return v7;
}

uint64_t __47__ATXAppLaunchMicroLocation__getHistoricalData__block_invoke(uint64_t a1, void *a2)
{
  v3 = microLocationEventFromATXMicroLocationVisitEvent(a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

- (id)_getAppLaunchCorrelationMatrix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__101;
  v10 = __Block_byref_object_dispose__101;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ATXAppLaunchMicroLocation__getAppLaunchCorrelationMatrix__block_invoke;
  v5[3] = &unk_2785A1968;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__ATXAppLaunchMicroLocation__getAppLaunchCorrelationMatrix__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)_getActionKeyCorrelationMatrix
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__101;
  v10 = __Block_byref_object_dispose__101;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ATXAppLaunchMicroLocation__getActionKeyCorrelationMatrix__block_invoke;
  v5[3] = &unk_2785A1968;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __59__ATXAppLaunchMicroLocation__getActionKeyCorrelationMatrix__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 40) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)dealloc
{
  if (self->_microLocationSchedulerToken)
  {
    mEMORY[0x277CEBC98] = [MEMORY[0x277CEBC98] sharedInstance];
    [mEMORY[0x277CEBC98] unSubscribeWithToken:self->_microLocationSchedulerToken];

    microLocationSchedulerToken = self->_microLocationSchedulerToken;
    self->_microLocationSchedulerToken = 0;
  }

  v5.receiver = self;
  v5.super_class = ATXAppLaunchMicroLocation;
  [(ATXAppLaunchMicroLocation *)&v5 dealloc];
}

void __34__ATXAppLaunchMicroLocation_train__block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"ATXAppLaunchMicroLocation.m" lineNumber:186 description:@"Expected ATXIntentEvent class"];
}

- (void)_writeAppLaunchCorrelationMatrix:actionKeyCorrelationMatrix:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_writeAppLaunchCorrelationMatrix:actionKeyCorrelationMatrix:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_loadCorrelationMatrices
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);

  v6 = *MEMORY[0x277D85DE8];
}

@end