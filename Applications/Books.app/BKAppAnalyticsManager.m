@interface BKAppAnalyticsManager
+ (id)resolver;
- (BKAppAnalyticsManager)init;
- (BKAppAnalyticsManagerDelegate)delegate;
- (BOOL)analyticsSessionDataIsMainWindow;
- (BOOL)analyticsSessionDataIsPriceDropNotificationEnabled;
- (NSArray)additionalEventProcessors;
- (id)analyticsControllerConfigurationForKey:(id)a3;
- (id)analyticsSessionDataForKey:(id)a3;
- (id)mainLibrary;
- (id)sceneManager;
- (void)_mq_analyticsEndSession;
- (void)analyticsController:(id)a3 resetSessionWithCompletion:(id)a4;
- (void)analyticsControllerDidEndSession:(id)a3;
- (void)analyticsControllerDidStartSession:(id)a3;
- (void)analyticsControllerWillEndSession:(id)a3;
- (void)analyticsControllerWillStartSession:(id)a3;
- (void)analyticsEndSession;
- (void)analyticsSetReferralURL:(id)a3 app:(id)a4;
- (void)analyticsSetupTracking;
- (void)analyticsStartSession;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setEvaluateAfterSessionStart:(id)a3;
- (void)setupSessionChangeNotifications;
- (void)startInitialAppStateQueryWithSessionStartTime:(id)a3 analyticsController:(id)a4 libraryAssetProvider:(id)a5 analyticsSessionAssertion:(id)a6;
- (void)updateTreatmentData;
- (void)windowOcclusionStateDidChange:(id)a3;
@end

@implementation BKAppAnalyticsManager

- (BKAppAnalyticsManager)init
{
  kdebug_trace();
  v15.receiver = self;
  v15.super_class = BKAppAnalyticsManager;
  v3 = [(BKAppAnalyticsManager *)&v15 init];
  v4 = v3;
  if (v3)
  {
    v3->_analyticsLock._os_unfair_lock_opaque = 0;
    v5 = +[NSMutableSet set];
    analyticsAccumulatedReadIDs = v4->_analyticsAccumulatedReadIDs;
    v4->_analyticsAccumulatedReadIDs = v5;

    v7 = +[NSMutableSet set];
    analyticsAccumulatedListenIDs = v4->_analyticsAccumulatedListenIDs;
    v4->_analyticsAccumulatedListenIDs = v7;

    v4->_analyticsBackgroundTaskIdentifier = UIBackgroundTaskInvalid;
    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 addObserver:v4 forKeyPath:kBAResetAnalyticsUserID options:1 context:off_100ACCEC0];

    v10 = [objc_opt_class() resolver];
    v11 = [v10 resolveClass:objc_opt_class()];

    v12 = [[BKPersonalizationEventProcessor alloc] initWithDonor:v11];
    personalizationEventProcessor = v4->_personalizationEventProcessor;
    v4->_personalizationEventProcessor = v12;

    v4->_coldLaunched = 1;
  }

  kdebug_trace();
  return v4;
}

+ (id)resolver
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 containerHost];
  v4 = [v3 bridgedResolver];

  return v4;
}

- (void)analyticsSetupTracking
{
  v3 = objc_alloc_init(BAAnalyticsController);
  [(BKAppAnalyticsManager *)self setAnalyticsController:v3];

  v4 = [(BKAppAnalyticsManager *)self analyticsController];
  [v4 setDelegate:self];

  v5 = [(BKAppAnalyticsManager *)self analyticsController];
  [v5 setConfigurationProvider:self];

  v6 = [(BKAppAnalyticsManager *)self analyticsController];
  [v6 start];

  [(BKAppAnalyticsManager *)self updateTreatmentData];
  v7 = +[BRCConfigurationManager sharedInstance];
  v8 = [(BKAppAnalyticsManager *)self analyticsController];
  [v8 setUserConfiguration:v7];

  [(BKAppAnalyticsManager *)self setupSessionChangeNotifications];
  [(BKAppAnalyticsManager *)self setupWindowNotification];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"onTreatmentDataChange:" name:@"kBABookTreatmentDataDidChange" object:0];

  v10 = dispatch_get_global_queue(25, 0);
  dispatch_async(v10, &stru_100A059B0);

  v11 = [(BKAppAnalyticsManager *)self delegate];
  v12 = [v11 appLaunchCoordinator:self];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009BD00;
  v15[3] = &unk_100A038D0;
  v15[4] = self;
  [v12 appLaunchCoordinatorOnConditionMask:1024 blockID:@"analyticsSetupTracking" performBlock:v15];
  v13 = +[TUIDragController sharedInstance];
  v14 = +[BKDragAndDropMonitor sharedInstance];
  [v13 addObserver:v14];
}

- (NSArray)additionalEventProcessors
{
  v2 = [(BKAppAnalyticsManager *)self personalizationEventProcessor];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)updateTreatmentData
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001ACD0;
  v3[3] = &unk_100A035D0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setupSessionChangeNotifications
{
  v3 = [(BKAppAnalyticsManager *)self analyticsController];
  v4 = [v3 applicationTracker];

  v5 = [(BKAppAnalyticsManager *)self analyticsController];
  v6 = [v5 applicationTracker];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025AB4;
  v8[3] = &unk_100A059D8;
  v9 = v4;
  v7 = v4;
  [v6 onSessionChangeWithBlock:v8];
}

- (BKAppAnalyticsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)analyticsSessionDataIsPriceDropNotificationEnabled
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[BKPriceTrackingKeys priceTrackingNotificationsEnabled];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000240CC;
  v6[3] = &unk_100A05AA0;
  v8 = &v9;
  v4 = v2;
  v7 = v4;
  [BCCloudGlobalMetadataManager fetchMetadataBoolForKey:v3 completion:v6];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v3;
}

- (void)analyticsStartSession
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = kBAResetAnalyticsUserID;
  v5 = [v3 BOOLForKey:kBAResetAnalyticsUserID];

  if (v5)
  {
    v6 = [(BKAppAnalyticsManager *)self delegate];
    [v6 analyticsManagerForceEndSession:self];

    v7 = [(BKAppAnalyticsManager *)self analyticsController];
    v8 = [v7 waitForSessionEnd:0.001];

    if (v8)
    {
      v9 = [(BKAppAnalyticsManager *)self analyticsController];
      [v9 resetPrivateData:0];

      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:0 forKey:v4];
    }

    else
    {
      v11 = BALog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10078BC98();
      }
    }
  }

  v12 = [(BKAppAnalyticsManager *)self analyticsController];
  v13 = [v12 newSessionAssertion];
  [(BKAppAnalyticsManager *)self setAnalyticsSessionAssertion:v13];

  v14 = +[BCRCDataContainer defaultContainer];
  [v14 deployStagedDataIfNeeded];
}

- (BOOL)analyticsSessionDataIsMainWindow
{
  v3 = [(BKAppAnalyticsManager *)self delegate];
  v4 = [v3 analyticsManagerSceneController:self];

  if (v4)
  {
    v5 = [v4 sceneType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[BAEventReporter sharedReporter];
  v4 = +[JSAStore sharedInstance];
  [v4 removeObserver:v3];

  v5 = +[JSAAccountController sharedController];
  [v5 removeObserver:v3];

  v6 = +[TUIDragController sharedInstance];
  v7 = +[BKDragAndDropMonitor sharedInstance];
  [v6 removeObserver:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self];
  [v8 removeObserver:self->_applicationDidBecomeActiveObserver name:UIApplicationDidBecomeActiveNotification object:0];
  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 removeObserver:self forKeyPath:kBAResetAnalyticsUserID];

  v10.receiver = self;
  v10.super_class = BKAppAnalyticsManager;
  [(BKAppAnalyticsManager *)&v10 dealloc];
}

- (id)mainLibrary
{
  v3 = [(BKAppAnalyticsManager *)self delegate];
  v4 = [v3 analyticsManagerLibrary:self];

  return v4;
}

- (id)sceneManager
{
  v3 = [(BKAppAnalyticsManager *)self delegate];
  v4 = [v3 analyticsManagerSceneManager:self];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_100ACCEC0 == a6)
  {
    v11 = a5;
    objc_opt_class();
    v12 = [v11 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    v14 = BUDynamicCast();

    if ([v14 BOOLValue])
    {
      v13 = [(BKAppAnalyticsManager *)self delegate];
      [v13 analyticsManagerForceEndSession:self];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKAppAnalyticsManager;
    v10 = a5;
    [(BKAppAnalyticsManager *)&v15 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (void)windowOcclusionStateDidChange:(id)a3
{
  v3 = [(BKAppAnalyticsManager *)self analyticsController];
  [v3 refreshSessionDataIfActive];
}

- (void)analyticsEndSession
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009BE00;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)analyticsSetReferralURL:(id)a3 app:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKAppAnalyticsManager *)self analyticsController];
  [v8 setReferralURL:v7 app:v6];
}

- (void)setEvaluateAfterSessionStart:(id)a3
{
  v4 = a3;
  v5 = [(BKAppAnalyticsManager *)self isSessionActive];
  v7 = objc_retainBlock(v4);

  if (v5)
  {
    evaluateAfterSessionStart = v7;
    if (v7)
    {
      v7[2](v7);
      evaluateAfterSessionStart = v7;
    }
  }

  else
  {
    evaluateAfterSessionStart = self->_evaluateAfterSessionStart;
    self->_evaluateAfterSessionStart = v7;
  }
}

- (id)analyticsControllerConfigurationForKey:(id)a3
{
  v16[0] = kBAJitterTimestampEnabled;
  v16[1] = kBAJitterTimestampLowerBound;
  v17[0] = BRCBooksDefaultsKeyAnalyticsJitterTimestampEnabled2;
  v17[1] = BRCBooksDefaultsKeyAnalyticsJitterTimestampLowerBound;
  v16[2] = kBAJitterTimestampUpperBound;
  v17[2] = BRCBooksDefaultsKeyAnalyticsJitterTimestampUpperBound;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = +[BCRCDataContainer defaultContainer];
    v7 = [v6 configurationLoaded];

    if (v7)
    {
      v8 = +[BCRCDataContainer defaultContainer];
      v9 = [v8 configs];
      v10 = [v9 count];

      if (v10)
      {
        v11 = +[BCRCDataContainer defaultContainer];
        v12 = [v11 configs];
        v13 = [v12 valueForKeyPath:v5];

        if (v13)
        {
          goto LABEL_13;
        }

        v14 = BALog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10078BD5C();
        }
      }

      else
      {
        v14 = BALog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10078BDD0();
        }
      }
    }

    else
    {
      v14 = BALog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10078BD20();
      }
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)analyticsControllerWillStartSession:(id)a3
{
  v4 = BALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "analyticsControllerWillStartSession: start", v8, 2u);
  }

  if (![(BKAppAnalyticsManager *)self didStartFirstSession])
  {
    v5 = +[BCRCDataContainer defaultContainer];
    v6 = [v5 waitForConfiguration:1.0];

    if ((v6 & 1) == 0)
    {
      v7 = BALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10078BE0C();
      }
    }
  }
}

- (void)analyticsControllerDidStartSession:(id)a3
{
  v4 = a3;
  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "analyticsControllerDidStartSession: start", buf, 2u);
  }

  [(BKAppAnalyticsManager *)self setDidStartFirstSession:1];
  [(BKAppAnalyticsManager *)self setIsSessionActive:1];
  v6 = [(BKAppAnalyticsManager *)self analyticsController];
  v7 = [v6 applicationTracker];

  [v7 popOrientationData];
  if ([v7 optedIn])
  {
    [v7 pushOrientationDataFromFile:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:325];
  }

  [v7 submitAppSessionStartEvent];
  [v7 timeAppSessionEndEvent];
  objc_initWeak(buf, self);
  v8 = [(BKAppAnalyticsManager *)self analyticsController];
  v9 = [v8 sessionStartTime];

  v10 = [(BKAppAnalyticsManager *)self delegate];
  v11 = [v10 appLaunchCoordinator:self];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009C538;
  v22[3] = &unk_100A05A00;
  objc_copyWeak(&v24, buf);
  v12 = v9;
  v23 = v12;
  [v11 appLaunchCoordinatorOnConditionMask:4097 blockID:@"analyticsControllerDidStartSession" performBlock:v22];
  v13 = +[NSNotificationCenter defaultCenter];
  v14 = +[NSOperationQueue mainQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009C5E0;
  v20[3] = &unk_100A04C78;
  objc_copyWeak(&v21, buf);
  v15 = [v13 addObserverForName:UIDeviceOrientationDidChangeNotification object:0 queue:v14 usingBlock:v20];
  [(BKAppAnalyticsManager *)self setDeviceOrentationDidChangeObserver:v15];

  v16 = [(BKAppAnalyticsManager *)self evaluateAfterSessionStart];
  evaluateAfterSessionStart = self->_evaluateAfterSessionStart;
  self->_evaluateAfterSessionStart = 0;

  v18 = objc_retainBlock(v16);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)analyticsControllerWillEndSession:(id)a3
{
  v4 = a3;
  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "analyticsControllerWillEndSession: start", buf, 2u);
  }

  os_unfair_lock_lock(&self->_analyticsLock);
  *buf = 0;
  v33 = buf;
  v34 = 0x2020000000;
  v35 = [(BKAppAnalyticsManager *)self analyticsBackgroundTaskIdentifier];
  if (*(v33 + 3) == UIBackgroundTaskInvalid)
  {
    objc_initWeak(&location, self);
    v6 = +[UIApplication sharedApplication];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10009CAE0;
    v29[3] = &unk_100A05A28;
    objc_copyWeak(&v30, &location);
    v29[4] = buf;
    v7 = [v6 beginBackgroundTaskWithName:@"BKAppAnalyticsManager" expirationHandler:v29];
    *(v33 + 3) = v7;

    [(BKAppAnalyticsManager *)self setAnalyticsBackgroundTaskIdentifier:*(v33 + 3)];
    v8 = BALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v33 + 3);
      *v36 = 134217984;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Background Task: %ld (BKAppAnalyticsManager) created.", v36, 0xCu);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_analyticsLock);
  v10 = [(BKAppAnalyticsManager *)self analyticsController];
  v11 = [v10 applicationTracker];

  v12 = [BASessionReadingData alloc];
  [(BKAppAnalyticsManager *)self analyticsAccumulatedReadTime];
  v14 = v13;
  v15 = [(BKAppAnalyticsManager *)self analyticsAccumulatedReadIDs];
  [v15 count];
  v16 = [v12 initWithTimeSpentReading:v14 uniqueBooksRead:BARoundIntegerToSignificantFigures()];

  [(BKAppAnalyticsManager *)self setAnalyticsAccumulatedReadTime:0.0];
  v17 = [(BKAppAnalyticsManager *)self analyticsAccumulatedReadIDs];
  [v17 removeAllObjects];

  [v11 popSessionReadingData];
  [v11 pushSessionReadingData:v16 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:402];
  v18 = [BASessionListeningData alloc];
  [(BKAppAnalyticsManager *)self analyticsAccumulatedListenTime];
  v20 = v19;
  v21 = [(BKAppAnalyticsManager *)self analyticsAccumulatedListenIDs];
  [v21 count];
  v22 = [v18 initWithTimeSpentListening:v20 uniqueAudiobooksListened:BARoundIntegerToSignificantFigures()];

  [(BKAppAnalyticsManager *)self setAnalyticsAccumulatedListenTime:0.0];
  v23 = [(BKAppAnalyticsManager *)self analyticsAccumulatedListenIDs];
  [v23 removeAllObjects];

  [v11 popSessionListeningData];
  [v11 pushSessionListeningData:v22 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:408];
  v24 = +[BKAppDelegate delegate];
  v25 = [v24 engagementManager];
  v26 = [v25 analyticsHelper];
  [v26 collectLocalSignalsAnalyticsWithTracker:v11];

  v27 = +[NSNotificationCenter defaultCenter];
  v28 = [(BKAppAnalyticsManager *)self deviceOrentationDidChangeObserver];
  [v27 removeObserver:v28 name:UIDeviceOrientationDidChangeNotification object:0];

  [(BKAppAnalyticsManager *)self setIsSessionActive:0];
  _Block_object_dispose(buf, 8);
}

- (void)analyticsControllerDidEndSession:(id)a3
{
  v4 = a3;
  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "analyticsControllerDidEndSession: start", &v10, 2u);
  }

  [v4 unsetLaunchedFromShortcutItem];
  if ([(BKAppAnalyticsManager *)self isColdLaunched])
  {
    [(BKAppAnalyticsManager *)self setColdLaunched:0];
  }

  os_unfair_lock_lock(&self->_analyticsLock);
  v6 = [(BKAppAnalyticsManager *)self analyticsBackgroundTaskIdentifier];
  if (v6 != UIBackgroundTaskInvalid)
  {
    v7 = v6;
    v8 = BALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Background Task: %ld (BKAppAnalyticsManager) no longer need, ending it with -endBackgroundTask:.", &v10, 0xCu);
    }

    v9 = +[UIApplication sharedApplication];
    [v9 endBackgroundTask:v7];

    [(BKAppAnalyticsManager *)self setAnalyticsBackgroundTaskIdentifier:UIBackgroundTaskInvalid];
  }

  os_unfair_lock_unlock(&self->_analyticsLock);
}

- (void)analyticsController:(id)a3 resetSessionWithCompletion:(id)a4
{
  v5 = a4;
  v6 = BALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "resetSessionWithCompletion: start", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CEA4;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = buf;
  dispatch_async(&_dispatch_main_q, block);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009CF1C;
  v9[3] = &unk_100A05A78;
  v10 = v5;
  v11 = buf;
  v9[4] = self;
  v8 = v5;
  dispatch_async(v7, v9);

  _Block_object_dispose(buf, 8);
}

- (id)analyticsSessionDataForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:BASessionDataKeyJSVersion])
  {
    v5 = +[JSABridge sharedInstance];
    v6 = [v5 environment];
    v7 = [v6 appVersion];

LABEL_13:
    goto LABEL_14;
  }

  if ([v4 isEqualToString:BASessionDataKeyStoreFrontID])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    v8 = [v5 currentStorefront];
LABEL_12:
    v7 = v8;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:BASessionDataKeyiCloudLoggedIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    v9 = [v5 isUserSignedInToiCloud];
LABEL_11:
    v8 = [NSNumber numberWithBool:v9];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:BASessionDataKeyiTunesLoggedIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    v9 = [v5 isUserSignedInToiTunes];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:BASessionDataKeyiCloudDriveOptIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    v9 = [v5 isGlobalICloudDriveSyncOptedIn];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:BASessionDataKeyLaunchType])
  {
    if ([(BKAppAnalyticsManager *)self isColdLaunched])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = [NSNumber numberWithInteger:v11];
    goto LABEL_24;
  }

  if ([v4 isEqualToString:BASessionDataKeyHasWidgets])
  {
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[BKWidgetService hasWidgetConfigurations]);
LABEL_24:
    v7 = v12;
    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (void)_mq_analyticsEndSession
{
  v3 = [(BKAppAnalyticsManager *)self analyticsSessionAssertion];
  [v3 invalidate];

  [(BKAppAnalyticsManager *)self setAnalyticsSessionAssertion:0];
}

- (void)startInitialAppStateQueryWithSessionStartTime:(id)a3 analyticsController:(id)a4 libraryAssetProvider:(id)a5 analyticsSessionAssertion:(id)a6
{
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796B64();
  v14 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = self;
  sub_1004681B0(v13, v14, a5, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v13, v10);
}

@end