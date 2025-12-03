@interface BKAppAnalyticsManager
+ (id)resolver;
- (BKAppAnalyticsManager)init;
- (BKAppAnalyticsManagerDelegate)delegate;
- (BOOL)analyticsSessionDataIsMainWindow;
- (BOOL)analyticsSessionDataIsPriceDropNotificationEnabled;
- (NSArray)additionalEventProcessors;
- (id)analyticsControllerConfigurationForKey:(id)key;
- (id)analyticsSessionDataForKey:(id)key;
- (id)mainLibrary;
- (id)sceneManager;
- (void)_mq_analyticsEndSession;
- (void)analyticsController:(id)controller resetSessionWithCompletion:(id)completion;
- (void)analyticsControllerDidEndSession:(id)session;
- (void)analyticsControllerDidStartSession:(id)session;
- (void)analyticsControllerWillEndSession:(id)session;
- (void)analyticsControllerWillStartSession:(id)session;
- (void)analyticsEndSession;
- (void)analyticsSetReferralURL:(id)l app:(id)app;
- (void)analyticsSetupTracking;
- (void)analyticsStartSession;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setEvaluateAfterSessionStart:(id)start;
- (void)setupSessionChangeNotifications;
- (void)startInitialAppStateQueryWithSessionStartTime:(id)time analyticsController:(id)controller libraryAssetProvider:(id)provider analyticsSessionAssertion:(id)assertion;
- (void)updateTreatmentData;
- (void)windowOcclusionStateDidChange:(id)change;
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

    resolver = [objc_opt_class() resolver];
    v11 = [resolver resolveClass:objc_opt_class()];

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
  containerHost = [v2 containerHost];
  bridgedResolver = [containerHost bridgedResolver];

  return bridgedResolver;
}

- (void)analyticsSetupTracking
{
  v3 = objc_alloc_init(BAAnalyticsController);
  [(BKAppAnalyticsManager *)self setAnalyticsController:v3];

  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController setDelegate:self];

  analyticsController2 = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController2 setConfigurationProvider:self];

  analyticsController3 = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController3 start];

  [(BKAppAnalyticsManager *)self updateTreatmentData];
  v7 = +[BRCConfigurationManager sharedInstance];
  analyticsController4 = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController4 setUserConfiguration:v7];

  [(BKAppAnalyticsManager *)self setupSessionChangeNotifications];
  [(BKAppAnalyticsManager *)self setupWindowNotification];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"onTreatmentDataChange:" name:@"kBABookTreatmentDataDidChange" object:0];

  v10 = dispatch_get_global_queue(25, 0);
  dispatch_async(v10, &stru_100A059B0);

  delegate = [(BKAppAnalyticsManager *)self delegate];
  v12 = [delegate appLaunchCoordinator:self];

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
  personalizationEventProcessor = [(BKAppAnalyticsManager *)self personalizationEventProcessor];
  v5 = personalizationEventProcessor;
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
  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  applicationTracker = [analyticsController applicationTracker];

  analyticsController2 = [(BKAppAnalyticsManager *)self analyticsController];
  applicationTracker2 = [analyticsController2 applicationTracker];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025AB4;
  v8[3] = &unk_100A059D8;
  v9 = applicationTracker;
  v7 = applicationTracker;
  [applicationTracker2 onSessionChangeWithBlock:v8];
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
    delegate = [(BKAppAnalyticsManager *)self delegate];
    [delegate analyticsManagerForceEndSession:self];

    analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
    v8 = [analyticsController waitForSessionEnd:0.001];

    if (v8)
    {
      analyticsController2 = [(BKAppAnalyticsManager *)self analyticsController];
      [analyticsController2 resetPrivateData:0];

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

  analyticsController3 = [(BKAppAnalyticsManager *)self analyticsController];
  newSessionAssertion = [analyticsController3 newSessionAssertion];
  [(BKAppAnalyticsManager *)self setAnalyticsSessionAssertion:newSessionAssertion];

  v14 = +[BCRCDataContainer defaultContainer];
  [v14 deployStagedDataIfNeeded];
}

- (BOOL)analyticsSessionDataIsMainWindow
{
  delegate = [(BKAppAnalyticsManager *)self delegate];
  v4 = [delegate analyticsManagerSceneController:self];

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
  delegate = [(BKAppAnalyticsManager *)self delegate];
  v4 = [delegate analyticsManagerLibrary:self];

  return v4;
}

- (id)sceneManager
{
  delegate = [(BKAppAnalyticsManager *)self delegate];
  v4 = [delegate analyticsManagerSceneManager:self];

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100ACCEC0 == context)
  {
    changeCopy = change;
    objc_opt_class();
    v12 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

    v14 = BUDynamicCast();

    if ([v14 BOOLValue])
    {
      delegate = [(BKAppAnalyticsManager *)self delegate];
      [delegate analyticsManagerForceEndSession:self];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKAppAnalyticsManager;
    changeCopy2 = change;
    [(BKAppAnalyticsManager *)&v15 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (void)windowOcclusionStateDidChange:(id)change
{
  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController refreshSessionDataIfActive];
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

- (void)analyticsSetReferralURL:(id)l app:(id)app
{
  appCopy = app;
  lCopy = l;
  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  [analyticsController setReferralURL:lCopy app:appCopy];
}

- (void)setEvaluateAfterSessionStart:(id)start
{
  startCopy = start;
  isSessionActive = [(BKAppAnalyticsManager *)self isSessionActive];
  v7 = objc_retainBlock(startCopy);

  if (isSessionActive)
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

- (id)analyticsControllerConfigurationForKey:(id)key
{
  v16[0] = kBAJitterTimestampEnabled;
  v16[1] = kBAJitterTimestampLowerBound;
  v17[0] = BRCBooksDefaultsKeyAnalyticsJitterTimestampEnabled2;
  v17[1] = BRCBooksDefaultsKeyAnalyticsJitterTimestampLowerBound;
  v16[2] = kBAJitterTimestampUpperBound;
  v17[2] = BRCBooksDefaultsKeyAnalyticsJitterTimestampUpperBound;
  keyCopy = key;
  v4 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    v6 = +[BCRCDataContainer defaultContainer];
    configurationLoaded = [v6 configurationLoaded];

    if (configurationLoaded)
    {
      v8 = +[BCRCDataContainer defaultContainer];
      configs = [v8 configs];
      v10 = [configs count];

      if (v10)
      {
        v11 = +[BCRCDataContainer defaultContainer];
        configs2 = [v11 configs];
        v13 = [configs2 valueForKeyPath:v5];

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

- (void)analyticsControllerWillStartSession:(id)session
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

- (void)analyticsControllerDidStartSession:(id)session
{
  sessionCopy = session;
  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "analyticsControllerDidStartSession: start", buf, 2u);
  }

  [(BKAppAnalyticsManager *)self setDidStartFirstSession:1];
  [(BKAppAnalyticsManager *)self setIsSessionActive:1];
  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  applicationTracker = [analyticsController applicationTracker];

  [applicationTracker popOrientationData];
  if ([applicationTracker optedIn])
  {
    [applicationTracker pushOrientationDataFromFile:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:325];
  }

  [applicationTracker submitAppSessionStartEvent];
  [applicationTracker timeAppSessionEndEvent];
  objc_initWeak(buf, self);
  analyticsController2 = [(BKAppAnalyticsManager *)self analyticsController];
  sessionStartTime = [analyticsController2 sessionStartTime];

  delegate = [(BKAppAnalyticsManager *)self delegate];
  v11 = [delegate appLaunchCoordinator:self];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10009C538;
  v22[3] = &unk_100A05A00;
  objc_copyWeak(&v24, buf);
  v12 = sessionStartTime;
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

  evaluateAfterSessionStart = [(BKAppAnalyticsManager *)self evaluateAfterSessionStart];
  evaluateAfterSessionStart = self->_evaluateAfterSessionStart;
  self->_evaluateAfterSessionStart = 0;

  v18 = objc_retainBlock(evaluateAfterSessionStart);
  v19 = v18;
  if (v18)
  {
    (*(v18 + 2))(v18);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)analyticsControllerWillEndSession:(id)session
{
  sessionCopy = session;
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
  analyticsBackgroundTaskIdentifier = [(BKAppAnalyticsManager *)self analyticsBackgroundTaskIdentifier];
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
  analyticsController = [(BKAppAnalyticsManager *)self analyticsController];
  applicationTracker = [analyticsController applicationTracker];

  v12 = [BASessionReadingData alloc];
  [(BKAppAnalyticsManager *)self analyticsAccumulatedReadTime];
  v14 = v13;
  analyticsAccumulatedReadIDs = [(BKAppAnalyticsManager *)self analyticsAccumulatedReadIDs];
  [analyticsAccumulatedReadIDs count];
  v16 = [v12 initWithTimeSpentReading:v14 uniqueBooksRead:BARoundIntegerToSignificantFigures()];

  [(BKAppAnalyticsManager *)self setAnalyticsAccumulatedReadTime:0.0];
  analyticsAccumulatedReadIDs2 = [(BKAppAnalyticsManager *)self analyticsAccumulatedReadIDs];
  [analyticsAccumulatedReadIDs2 removeAllObjects];

  [applicationTracker popSessionReadingData];
  [applicationTracker pushSessionReadingData:v16 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:402];
  v18 = [BASessionListeningData alloc];
  [(BKAppAnalyticsManager *)self analyticsAccumulatedListenTime];
  v20 = v19;
  analyticsAccumulatedListenIDs = [(BKAppAnalyticsManager *)self analyticsAccumulatedListenIDs];
  [analyticsAccumulatedListenIDs count];
  v22 = [v18 initWithTimeSpentListening:v20 uniqueAudiobooksListened:BARoundIntegerToSignificantFigures()];

  [(BKAppAnalyticsManager *)self setAnalyticsAccumulatedListenTime:0.0];
  analyticsAccumulatedListenIDs2 = [(BKAppAnalyticsManager *)self analyticsAccumulatedListenIDs];
  [analyticsAccumulatedListenIDs2 removeAllObjects];

  [applicationTracker popSessionListeningData];
  [applicationTracker pushSessionListeningData:v22 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppAnalyticsManager.m" line:408];
  v24 = +[BKAppDelegate delegate];
  engagementManager = [v24 engagementManager];
  analyticsHelper = [engagementManager analyticsHelper];
  [analyticsHelper collectLocalSignalsAnalyticsWithTracker:applicationTracker];

  v27 = +[NSNotificationCenter defaultCenter];
  deviceOrentationDidChangeObserver = [(BKAppAnalyticsManager *)self deviceOrentationDidChangeObserver];
  [v27 removeObserver:deviceOrentationDidChangeObserver name:UIDeviceOrientationDidChangeNotification object:0];

  [(BKAppAnalyticsManager *)self setIsSessionActive:0];
  _Block_object_dispose(buf, 8);
}

- (void)analyticsControllerDidEndSession:(id)session
{
  sessionCopy = session;
  v5 = BALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "analyticsControllerDidEndSession: start", &v10, 2u);
  }

  [sessionCopy unsetLaunchedFromShortcutItem];
  if ([(BKAppAnalyticsManager *)self isColdLaunched])
  {
    [(BKAppAnalyticsManager *)self setColdLaunched:0];
  }

  os_unfair_lock_lock(&self->_analyticsLock);
  analyticsBackgroundTaskIdentifier = [(BKAppAnalyticsManager *)self analyticsBackgroundTaskIdentifier];
  if (analyticsBackgroundTaskIdentifier != UIBackgroundTaskInvalid)
  {
    v7 = analyticsBackgroundTaskIdentifier;
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

- (void)analyticsController:(id)controller resetSessionWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v10 = completionCopy;
  v11 = buf;
  v9[4] = self;
  v8 = completionCopy;
  dispatch_async(v7, v9);

  _Block_object_dispose(buf, 8);
}

- (id)analyticsSessionDataForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:BASessionDataKeyJSVersion])
  {
    v5 = +[JSABridge sharedInstance];
    environment = [v5 environment];
    appVersion = [environment appVersion];

LABEL_13:
    goto LABEL_14;
  }

  if ([keyCopy isEqualToString:BASessionDataKeyStoreFrontID])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    currentStorefront = [v5 currentStorefront];
LABEL_12:
    appVersion = currentStorefront;
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:BASessionDataKeyiCloudLoggedIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    isUserSignedInToiCloud = [v5 isUserSignedInToiCloud];
LABEL_11:
    currentStorefront = [NSNumber numberWithBool:isUserSignedInToiCloud];
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:BASessionDataKeyiTunesLoggedIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    isUserSignedInToiCloud = [v5 isUserSignedInToiTunes];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:BASessionDataKeyiCloudDriveOptIn])
  {
    v5 = +[BUAccountsProvider sharedProvider];
    isUserSignedInToiCloud = [v5 isGlobalICloudDriveSyncOptedIn];
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:BASessionDataKeyLaunchType])
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

  if ([keyCopy isEqualToString:BASessionDataKeyHasWidgets])
  {
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[BKWidgetService hasWidgetConfigurations]);
LABEL_24:
    appVersion = v12;
    goto LABEL_14;
  }

  appVersion = 0;
LABEL_14:

  return appVersion;
}

- (void)_mq_analyticsEndSession
{
  analyticsSessionAssertion = [(BKAppAnalyticsManager *)self analyticsSessionAssertion];
  [analyticsSessionAssertion invalidate];

  [(BKAppAnalyticsManager *)self setAnalyticsSessionAssertion:0];
}

- (void)startInitialAppStateQueryWithSessionStartTime:(id)time analyticsController:(id)controller libraryAssetProvider:(id)provider analyticsSessionAssertion:(id)assertion
{
  v10 = sub_100796BB4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796B64();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004681B0(v13, controllerCopy, provider, assertion);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v11 + 8))(v13, v10);
}

@end