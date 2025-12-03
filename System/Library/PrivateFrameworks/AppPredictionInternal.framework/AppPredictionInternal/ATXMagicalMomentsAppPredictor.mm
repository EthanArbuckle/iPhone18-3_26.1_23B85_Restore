@interface ATXMagicalMomentsAppPredictor
+ (id)sharedInstance;
- (ATXMagicalMomentsAppPredictor)init;
- (id)addNowPlayingEventsToAppLaunches:(id)launches;
- (id)fetchAppLaunchEventsForTraining;
- (id)generateAppLaunchCountedSetFromAppLaunches:(id)launches;
- (void)fetchAppLaunchEventsForTraining;
- (void)trainWithTask:(id)task;
@end

@implementation ATXMagicalMomentsAppPredictor

+ (id)sharedInstance
{
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[(ATXMagicalMomentsAppPredictor *)v2];
  }

  if (sharedInstance__pasOnceToken8_2 != -1)
  {
    +[ATXMagicalMomentsAppPredictor sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_53;

  return v3;
}

void __47__ATXMagicalMomentsAppPredictor_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_53;
  sharedInstance__pasExprOnceResult_53 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXMagicalMomentsAppPredictor)init
{
  v17.receiver = self;
  v17.super_class = ATXMagicalMomentsAppPredictor;
  v2 = [(ATXMagicalMomentsAppPredictor *)&v17 init];
  if (v2)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXMM: Initializing experts.", v16, 2u);
    }

    v4 = objc_opt_new();
    contextHelper = v2->_contextHelper;
    v2->_contextHelper = v4;

    v6 = [[ATXTimeBucketedRateLimiter alloc] initWithMaxCount:5 perPeriod:600.0];
    rateLimiter = v2->_rateLimiter;
    v2->_rateLimiter = v6;

    context = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXBTConnectedMMExpert setupEventListenerForInferenceWithContext:context rateLimiter:v2->_rateLimiter];

    context2 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXBTDisconnectedMMExpert setupEventListenerForInferenceWithContext:context2 rateLimiter:v2->_rateLimiter];

    context3 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXCarPlayConnectedMMExpert setupEventListenerForInferenceWithContext:context3 rateLimiter:v2->_rateLimiter];

    context4 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXCarPlayDisconnectedMMExpert setupEventListenerForInferenceWithContext:context4 rateLimiter:v2->_rateLimiter];

    context5 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXAudioConnectedMMExpert setupEventListenerForInferenceWithContext:context5 rateLimiter:v2->_rateLimiter];

    context6 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXAudioDisconnectedMMExpert setupEventListenerForInferenceWithContext:context6 rateLimiter:v2->_rateLimiter];

    context7 = [(ATXCoreDuetContextHelper *)v2->_contextHelper context];
    [(ATXMMAppPredictionExpert *)ATXIdleTimeEndMMExpert setupEventListenerForInferenceWithContext:context7 rateLimiter:v2->_rateLimiter];
  }

  return v2;
}

- (id)addNowPlayingEventsToAppLaunches:(id)launches
{
  v18 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v6 = objc_opt_new();
  v7 = [v4 playbackEventsAfterSecondsOfInactivity:v5 betweenStartDate:v6 endDate:300.0];

  v8 = [v4 convertNowPlayingEventsToAppLaunchEvents:v7];
  [launchesCopy addObjectsFromArray:v8];
  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = [v8 count];
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXMM: Added %lu Now Playing Events as App Launch Events.", buf, 0xCu);
  }

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v15 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [launchesCopy sortedArrayUsingDescriptors:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)fetchAppLaunchEventsForTraining
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CEBBE0]);
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2592000.0];
  date = [MEMORY[0x277CBEAA8] date];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ATXMagicalMomentsAppPredictor_fetchAppLaunchEventsForTraining__block_invoke;
  v14[3] = &unk_278596DC8;
  v7 = v4;
  v15 = v7;
  [v3 enumerateAppLaunchSessionsBetweenStartDate:v5 endDate:date limit:1000000 shouldReverse:0 bundleIDFilter:0 block:v14];

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 count];
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_INFO, "ATXMM: Retrieved %lu App Launch Events.", buf, 0xCu);
  }

  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(ATXMagicalMomentsAppPredictor *)v7 fetchAppLaunchEventsForTraining];
  }

  v11 = [(ATXMagicalMomentsAppPredictor *)self addNowPlayingEventsToAppLaunches:v7];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __64__ATXMagicalMomentsAppPredictor_fetchAppLaunchEventsForTraining__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXAppLaunchDuetEvent alloc] initWithATXEvent:v3];

  if (v4)
  {
    v5 = [(ATXAppLaunchDuetEvent *)v4 bundleId];
    v6 = [v5 isEqualToString:@"com.apple.Preferences"];

    if ((v6 & 1) == 0)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return 1;
}

- (id)generateAppLaunchCountedSetFromAppLaunches:(id)launches
{
  v20 = *MEMORY[0x277D85DE8];
  launchesCopy = launches;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = launchesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        identifier = [v10 identifier];
        [v4 addObject:identifier];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)trainWithTask:(id)task
{
  taskCopy = task;
  v5 = os_transaction_create();
  [taskCopy setProgressUnits:5];
  v6 = objc_autoreleasePoolPush();
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXMM: Starting training of MagicalMoments App Predictor.", v28, 2u);
  }

  fetchAppLaunchEventsForTraining = [(ATXMagicalMomentsAppPredictor *)self fetchAppLaunchEventsForTraining];
  v9 = [(ATXMagicalMomentsAppPredictor *)self generateAppLaunchCountedSetFromAppLaunches:fetchAppLaunchEventsForTraining];
  if (fetchAppLaunchEventsForTraining && [fetchAppLaunchEventsForTraining count] && v9 && objc_msgSend(v9, "count"))
  {
    if ([taskCopy didDefer])
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
LABEL_50:
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v11, v28, 2u);
      }
    }

    else
    {
      [taskCopy setProgressUnits:20];
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "ATXMM: Starting training of MagicalMoments experts.", v28, 2u);
      }

      v14 = __atxlog_handle_default();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training BT Connected MagicalMoments Expert. ** \n", v28, 2u);
      }

      v15 = objc_autoreleasePoolPush();
      [(ATXMMAppPredictionExpert *)ATXBTConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
      objc_autoreleasePoolPop(v15);
      if ([taskCopy didDefer])
      {
        v10 = __atxlog_handle_default();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
          goto LABEL_50;
        }
      }

      else
      {
        [taskCopy setProgressUnits:30];
        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training BT Disconnected MagicalMoments Expert. ** \n", v28, 2u);
        }

        v17 = objc_autoreleasePoolPush();
        [(ATXMMAppPredictionExpert *)ATXBTDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
        objc_autoreleasePoolPop(v17);
        if ([taskCopy didDefer])
        {
          v10 = __atxlog_handle_default();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
            goto LABEL_50;
          }
        }

        else
        {
          [taskCopy setProgressUnits:40];
          v18 = __atxlog_handle_default();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v28 = 0;
            _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training CarPlay Connected MagicalMoments Expert. ** \n", v28, 2u);
          }

          v19 = objc_autoreleasePoolPush();
          [(ATXMMAppPredictionExpert *)ATXCarPlayConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
          objc_autoreleasePoolPop(v19);
          if ([taskCopy didDefer])
          {
            v10 = __atxlog_handle_default();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *v28 = 0;
              v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
              goto LABEL_50;
            }
          }

          else
          {
            [taskCopy setProgressUnits:50];
            v20 = __atxlog_handle_default();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *v28 = 0;
              _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training CarPlay Disconnected MagicalMoments Expert. ** \n", v28, 2u);
            }

            v21 = objc_autoreleasePoolPush();
            [(ATXMMAppPredictionExpert *)ATXCarPlayDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
            objc_autoreleasePoolPop(v21);
            if ([taskCopy didDefer])
            {
              v10 = __atxlog_handle_default();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                *v28 = 0;
                v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                goto LABEL_50;
              }
            }

            else
            {
              [taskCopy setProgressUnits:60];
              v22 = __atxlog_handle_default();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v28 = 0;
                _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Audio Connected MagicalMoments Expert. ** \n", v28, 2u);
              }

              v23 = objc_autoreleasePoolPush();
              [(ATXMMAppPredictionExpert *)ATXAudioConnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
              objc_autoreleasePoolPop(v23);
              if ([taskCopy didDefer])
              {
                v10 = __atxlog_handle_default();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                {
                  *v28 = 0;
                  v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                  goto LABEL_50;
                }
              }

              else
              {
                [taskCopy setProgressUnits:70];
                v24 = __atxlog_handle_default();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *v28 = 0;
                  _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Audio Disconnected MagicalMoments Expert. ** \n", v28, 2u);
                }

                v25 = objc_autoreleasePoolPush();
                [(ATXMMAppPredictionExpert *)ATXAudioDisconnectedMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
                objc_autoreleasePoolPop(v25);
                if (![taskCopy didDefer])
                {
                  [taskCopy setProgressUnits:80];
                  v26 = __atxlog_handle_default();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *v28 = 0;
                    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "\n\nATXMM: ** Training Idle Time End MagicalMoments Expert. ** \n", v28, 2u);
                  }

                  v27 = objc_autoreleasePoolPush();
                  [(ATXMMAppPredictionExpert *)ATXIdleTimeEndMMExpert trainExpertWithAppLaunchEvents:fetchAppLaunchEventsForTraining appLaunchCountedSet:v9];
                  objc_autoreleasePoolPop(v27);
                  [taskCopy setDone];
                  v10 = __atxlog_handle_default();
                  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_51;
                  }

                  *v28 = 0;
                  v11 = "ATXMM: Done training MagicalMoments experts.";
                  goto LABEL_50;
                }

                v10 = __atxlog_handle_default();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                {
                  *v28 = 0;
                  v11 = "ATXMM: MagicalMoments App Predictor was asked to defer, exiting early...";
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

LABEL_51:

    goto LABEL_13;
  }

  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXMM: Didn't retrieve any app launches. Exiting training early.", v28, 2u);
  }

  [taskCopy setDone];
LABEL_13:

  objc_autoreleasePoolPop(v6);
}

- (void)fetchAppLaunchEventsForTraining
{
  v7 = *MEMORY[0x277D85DE8];
  lastObject = [self lastObject];
  v5 = 138412290;
  v6 = lastObject;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXMM: Last App Launch Event: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end