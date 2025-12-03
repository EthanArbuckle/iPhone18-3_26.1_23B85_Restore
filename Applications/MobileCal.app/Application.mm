@interface Application
+ (double)_resumeToTodayTimeout;
+ (id)_setUpModel;
+ (id)createNewCalendarModel;
+ (void)_setModelDateForLaunch:(id)launch restoreLastViewedDateFromPreferenceIfNeeded:(BOOL)needed;
- (Application)init;
- (ApplicationTester)tester;
- (BOOL)_showingSplashScreen;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)optionKeyIsDown;
- (MainWindowRootViewController)rootViewController;
- (NSArray)allSceneManagers;
- (RootNavigationController)rootNavigationController;
- (id)_extendLaunchTest;
- (id)_findSomeCalendarModel;
- (id)_rootNavigationControllerForModel:(id)model;
- (id)_rootViewControllerForModel:(id)model;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)eventStore;
- (int64_t)_extractViewTypeFromUserInfo:(id)info withKey:(id)key;
- (void)_collapsedSectionIdentifiersSaveToPreferencesNotificationReceived:(id)received;
- (void)_displayedOccurrencesChangedForTheFirstTime:(id)time;
- (void)_extendedLaunchCompletedByView:(int64_t)view;
- (void)_mobilecalDidBecomeActive;
- (void)_mobilecalDidEnterBackground;
- (void)_mobilecalWillResignActive;
- (void)_persistActiveViewModeSettingToPreferences;
- (void)_refreshAccountListAndViewContentsIfNeededForModel:(id)model;
- (void)_sceneManagerDidDismissSplashScreen;
- (void)_selectedCalendarSaveToPreferencesNotificationReceived:(id)received;
- (void)_topMainViewControllerCompletedExtendedLaunch:(id)launch;
- (void)application:(id)application performFetchWithCompletionHandler:(id)handler;
- (void)applicationWillTerminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)registerAppIntentsDependencies;
- (void)registerForStateCapture;
- (void)requestLocationAuthorization;
- (void)requestNotificationAuthorization;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation Application

- (Application)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

  v5 = dispatch_queue_create("com.apple.mobilecal.init", v4);
  dispatch_async(v5, &stru_100212080);

  v12.receiver = self;
  v12.super_class = Application;
  v6 = [(Application *)&v12 init];
  if (v6)
  {
    CalUILogInitialize();
    EKUILogInitIfNeeded();
    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = +[NSProcessInfo processInfo];
      processName = [v9 processName];
      *buf = 138412290;
      v14 = processName;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Launching [%@]", buf, 0xCu);
    }

    [(Application *)v6 setDelegate:v6];
  }

  return v6;
}

- (void)registerForStateCapture
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.calendar.calendarmodel.stateCaptureQ", v3);

  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  CalAddStateCaptureBlock();
  CalAddStateCaptureBlock();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)registerAppIntentsDependencies
{
  selfCopy = self;
  Application.registerAppIntentsDependencies()();
}

+ (id)createNewCalendarModel
{
  v3 = objc_autoreleasePoolPush();
  _setUpModel = [self _setUpModel];
  objc_autoreleasePoolPop(v3);

  return _setUpModel;
}

+ (id)_setUpModel
{
  v2 = [CUIKCalendarModel alloc];
  v3 = sub_100002FE0();
  v4 = [v2 initWithEventStore:v3 pasteboardManager:0];

  [v4 setAutoStartNotificationMonitor:0];
  [v4 setAllowEventLocationPrediction:0];
  [v4 setMaxCachedDays:300];
  [objc_opt_class() _setModelDateForLaunch:v4 restoreLastViewedDateFromPreferenceIfNeeded:(byte_100251D78 & 1) == 0];
  byte_100251D78 = 1;

  return v4;
}

+ (double)_resumeToTodayTimeout
{
  v2 = +[CUIKPreferences sharedPreferences];
  isShortResumeToTodayTimeout = [v2 isShortResumeToTodayTimeout];

  result = 480.0;
  if (isShortResumeToTodayTimeout)
  {
    return 5.0;
  }

  return result;
}

- (NSArray)allSceneManagers
{
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [connectedScenes count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[UIApplication sharedApplication];
  connectedScenes2 = [v5 connectedScenes];

  v7 = [connectedScenes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(connectedScenes2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        delegate = [v11 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v11 delegate];
          [v4 addObject:delegate2];
        }
      }

      v8 = [connectedScenes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)_extendLaunchTest
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[UIApplication sharedApplication];
  connectedScenes = [v3 connectedScenes];

  v5 = [connectedScenes countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = _UIWindowSceneSessionRoleCarPlay;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(connectedScenes);
        }

        session = [*(*(&v18 + 1) + 8 * i) session];
        configuration = [session configuration];

        role = [configuration role];
        v13 = [role isEqualToString:v8];

        if (!v13)
        {

          tester = [(Application *)self tester];
          extendedLaunchTestName = [tester extendedLaunchTestName];

          v16 = kCalUILogTestHandle;
          if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = extendedLaunchTestName;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Extended launch test name: [%@]", buf, 0xCu);
          }

          goto LABEL_12;
        }
      }

      v6 = [connectedScenes countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  extendedLaunchTestName = 0;
LABEL_12:

  return extendedLaunchTestName;
}

- (ApplicationTester)tester
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013558;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251D80 != -1)
  {
    dispatch_once(&qword_100251D80, block);
  }

  return self->_tester;
}

- (id)_findSomeCalendarModel
{
  allSceneManagers = [(Application *)self allSceneManagers];
  firstObject = [allSceneManagers firstObject];
  model = [firstObject model];

  return model;
}

- (void)_mobilecalDidBecomeActive
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calendar did become active", buf, 2u);
  }

  if (![(Application *)self _showingSplashScreen])
  {
    [(Application *)self requestLocationAuthorization];
    v4 = dispatch_queue_create("com.apple.calendar.defer_contacts_initialization", 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100013EA8;
    block[3] = &unk_10020EB00;
    block[4] = self;
    dispatch_async(v4, block);
    [(Application *)self requestNotificationAuthorization];
  }

  if (self->_extendedLaunchCompleted && ([UIApp launchedToTest] & 1) == 0)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading widget timeline because MobileCal became active", buf, 2u);
    }

    +[CalWidgetUtils refreshEventWidgets];
    +[CalWidgetUtils refreshDateWidgets];
  }
}

- (void)requestNotificationAuthorization
{
  if (!self->_requestedNotificationAuthorization && !self->_notificationAuthorizationGranted)
  {
    self->_requestedNotificationAuthorization = 1;
    userNotificationCenter = [(Application *)self userNotificationCenter];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100013C24;
    v4[3] = &unk_100212060;
    v4[4] = self;
    [userNotificationCenter requestAuthorizationWithOptions:7 completionHandler:v4];
  }
}

- (void)requestLocationAuthorization
{
  v3 = objc_alloc_init(CLLocationManager);
  locationManager = self->_locationManager;
  self->_locationManager = v3;

  v5 = self->_locationManager;

  [(CLLocationManager *)v5 setDelegate:self];
}

- (BOOL)_showingSplashScreen
{
  [(Application *)self allSceneManagers];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) showingSplashScreen])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (RootNavigationController)rootNavigationController
{
  tester = [(Application *)self tester];
  model = [tester model];
  v5 = [(Application *)self _rootNavigationControllerForModel:model];

  return v5;
}

- (id)_rootNavigationControllerForModel:(id)model
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [UIApplication sharedApplication:model];
  connectedScenes = [v4 connectedScenes];

  v6 = [connectedScenes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        delegate = [v10 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v10 delegate];
          model = [delegate2 model];
          tester = [(Application *)self tester];
          model2 = [tester model];

          if (model == model2)
          {
            rootNavigationController = [delegate2 rootNavigationController];

            goto LABEL_13;
          }
        }
      }

      v7 = [connectedScenes countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  rootNavigationController = 0;
LABEL_13:

  return rootNavigationController;
}

- (MainWindowRootViewController)rootViewController
{
  tester = [(Application *)self tester];
  model = [tester model];
  v5 = [(Application *)self _rootViewControllerForModel:model];

  return v5;
}

- (id)_rootViewControllerForModel:(id)model
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [UIApplication sharedApplication:model];
  connectedScenes = [v4 connectedScenes];

  v6 = [connectedScenes countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        delegate = [v10 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v10 delegate];
          model = [delegate2 model];
          tester = [(Application *)self tester];
          model2 = [tester model];

          if (model == model2)
          {
            mobileCalWindow = [delegate2 mobileCalWindow];
            rootViewController = [mobileCalWindow rootViewController];

            goto LABEL_13;
          }
        }
      }

      v7 = [connectedScenes countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  rootViewController = 0;
LABEL_13:

  return rootViewController;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  [CalMCSignpost beginLaunch:0];
  v6 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Calendar Finished Launching [%@]", &v37, 0xCu);
  }

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v17 = v16;
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    v18 = NSStringFromCGRect(v39);
    v37 = 138412290;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Main screen bounds [%@]", &v37, 0xCu);
  }

  [UIWindow _setTransformLayerRotationsAreEnabled:1];
  v19 = +[NSUserDefaults standardUserDefaults];
  v20 = [v19 stringForKey:@"UITestingLastConfirmedSplashScreenVersionViewed"];
  v21 = v20;
  if (v20)
  {
    integerValue = [v20 integerValue];
    v23 = +[EKPreferences shared];
    [v23 setLastConfirmedSplashScreenVersion:integerValue];
  }

  v24 = [v19 stringForKey:@"UITestingShowListView"];
  v25 = v24;
  if (v24)
  {
    bOOLValue = [v24 BOOLValue];
    v27 = +[CUIKPreferences sharedPreferences];
    [v27 setShowListView:bOOLValue];
  }

  v28 = +[NSProcessInfo processInfo];
  environment = [v28 environment];
  v30 = [environment objectForKeyedSubscript:@"StartingViewOverride"];

  if (v30)
  {
    if ([v30 isEqual:@"day"])
    {
      v31 = &off_100219C28;
    }

    else if ([v30 isEqual:@"week"])
    {
      v31 = &off_100219C40;
    }

    else if ([v30 isEqual:@"month"])
    {
      v31 = &off_100219C58;
    }

    else if ([v30 isEqual:@"year"])
    {
      v31 = &off_100219C70;
    }

    else
    {
      if (![v30 isEqual:@"list"])
      {
        goto LABEL_21;
      }

      v31 = &off_100219C88;
    }

    v32 = +[CUIKPreferences sharedPreferences];
    [v32 setLastViewMode:v31];
  }

LABEL_21:
  v33 = +[UNUserNotificationCenter currentNotificationCenter];
  [(Application *)self setUserNotificationCenter:v33];

  userNotificationCenter = [(Application *)self userNotificationCenter];
  [userNotificationCenter setDelegate:self];

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 addObserver:self selector:"_mobilecalDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v35 addObserver:self selector:"_mobilecalWillResignActive" name:UIApplicationWillResignActiveNotification object:0];
  [v35 addObserver:self selector:"_mobilecalDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];
  [v35 addObserver:self selector:"_selectedCalendarSaveToPreferencesNotificationReceived:" name:CUIKCalendarModelVisibleCalendarPreferenceRequiresSavingNotification object:0];
  [v35 addObserver:self selector:"_collapsedSectionIdentifiersSaveToPreferencesNotificationReceived:" name:CUIKCalendarModelCollapsedSectionIdentifiersPreferenceRequiresSavingNotification object:0];
  [v35 addObserver:self selector:"_displayedOccurrencesChangedForTheFirstTime:" name:@"_CalendarSceneManagerDidChangeDisplayedOccurrencesForTheFirstTimeNotification" object:0];
  [v35 addObserver:self selector:"_topMainViewControllerCompletedExtendedLaunch:" name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
  if (+[EKFeatureSet mustDisplaySplashScreenToUser])
  {
    [v35 addObserver:self selector:"_sceneManagerDidDismissSplashScreen" name:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:0];
  }

  [CalendarSceneManager setApplicationLastActiveTimeProvider:self];
  [(Application *)self registerForStateCapture];
  [(Application *)self registerAppIntentsDependencies];

  return 1;
}

- (int64_t)_extractViewTypeFromUserInfo:(id)info withKey:(id)key
{
  v4 = [info objectForKey:key];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)_displayedOccurrencesChangedForTheFirstTime:(id)time
{
  userInfo = [time userInfo];
  v5 = [(Application *)self _extractViewTypeFromUserInfo:userInfo withKey:@"_CalendarSceneManagerDidChangeDisplayedOccurrencesForTheFirstTimeNotification_CalendarContentViewType_Key"];

  [(Application *)self _extendedLaunchCompletedByView:v5];
}

- (void)_topMainViewControllerCompletedExtendedLaunch:(id)launch
{
  userInfo = [launch userInfo];
  v5 = [(Application *)self _extractViewTypeFromUserInfo:userInfo withKey:@"_MainViewControllerExtendedLaunchDidCompleteNotification_CalendarContentViewType_Key"];

  [(Application *)self _extendedLaunchCompletedByView:v5];
}

- (void)_extendedLaunchCompletedByView:(int64_t)view
{
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calendar extended launch completed", buf, 2u);
  }

  if ([UIApp shouldRecordExtendedLaunchTime])
  {
    v6 = UIApp;
    _launchTestName = [UIApp _launchTestName];
    [v6 finishedTest:_launchTestName extraResults:0];
  }

  [CalMCSignpost endLaunchToView:view extended:1];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:@"_CalendarSceneManagerDidChangeDisplayedOccurrencesForTheFirstTimeNotification" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

  self->_extendedLaunchCompleted = 1;
  if (([UIApp launchedToTest] & 1) == 0)
  {
    v10 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Reloading widget timeline because MobileCal finished launching", v13, 2u);
    }

    +[CalWidgetUtils refreshEventWidgets];
    +[CalWidgetUtils refreshDateWidgets];
    _findSomeCalendarModel = [(Application *)self _findSomeCalendarModel];
    eventStore = [_findSomeCalendarModel eventStore];
    [EKUIDiscoverabilityUtilities scanEventsForDiscoveredConferencesIfNeeded:eventStore];
  }
}

- (void)_mobilecalDidEnterBackground
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calendar did enter background", &v10, 2u);
  }

  self->_requestedNotificationAuthorization = 0;
  if (EKUIShouldSaveStateInPreferences())
  {
    [(Application *)self _persistActiveViewModeSettingToPreferences];
  }

  v4 = CUIKNowDate();
  [v4 timeIntervalSinceReferenceDate];
  v6 = [[NSNumber alloc] initWithDouble:v5];
  v7 = +[CUIKPreferences sharedPreferences];
  [v7 setLastSuspendTime:v6];

  objc_storeStrong(&self->_applicationLastActiveTime, v4);
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    applicationLastActiveTime = self->_applicationLastActiveTime;
    v10 = 138412290;
    v11 = applicationLastActiveTime;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "35182919: didEnterBackground: lastActiveTime = %@", &v10, 0xCu);
  }
}

- (void)_mobilecalWillResignActive
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calendar will resign active", &v7, 2u);
  }

  v4 = CUIKNowDate();
  objc_storeStrong(&self->_applicationLastActiveTime, v4);
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    applicationLastActiveTime = self->_applicationLastActiveTime;
    v7 = 138412290;
    v8 = applicationLastActiveTime;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "35182919: willResignActive: lastActiveTime = %@", &v7, 0xCu);
  }
}

- (void)_persistActiveViewModeSettingToPreferences
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v4 = [connectedScenes countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v31 != v6)
      {
        objc_enumerationMutation(connectedScenes);
      }

      v8 = *(*(&v30 + 1) + 8 * v7);
      delegate = [v8 delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [connectedScenes countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    delegate2 = [v8 delegate];

    if (!delegate2)
    {
      return;
    }

    rootNavigationController = [delegate2 rootNavigationController];
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rootNavigationController currentViewType]);
    v14 = +[CUIKPreferences sharedPreferences];
    [v14 setLastViewMode:v13];

    v15 = [[NSTimeZone alloc] initWithName:@"GMT"];
    model = [rootNavigationController model];
    selectedDate = [model selectedDate];
    v18 = [selectedDate calendarDateInTimeZone:v15];

    [v18 absoluteTime];
    v20 = [[NSNumber alloc] initWithDouble:v19];
    v21 = +[CUIKPreferences sharedPreferences];
    [v21 setLastViewedDate:v20];

    if ([rootNavigationController shouldSaveSelectedEvent])
    {
      model2 = [delegate2 model];
      selectedOccurrence = [model2 selectedOccurrence];
    }

    else
    {
      selectedOccurrence = 0;
    }

    v24 = +[CUIKPreferences sharedPreferences];
    if (CalDraftUIEnabled())
    {
      [selectedOccurrence eventOccurrenceID];
    }

    else
    {
      [selectedOccurrence uniqueID];
    }
    v25 = ;
    [v24 setLastViewedOccurrenceUID:v25];

    v26 = +[CUIKPreferences sharedPreferences];
    startDate = [selectedOccurrence startDate];
    [v26 setLastViewedOccurrenceDate:startDate];

    if ([selectedOccurrence isNew])
    {
      if (CalDraftUIEnabled())
      {
        model3 = [delegate2 model];
        eventStore = [model3 eventStore];
        [eventStore saveDraftOfEvent:selectedOccurrence];
      }
    }
  }

  else
  {
LABEL_9:
    delegate2 = connectedScenes;
  }
}

- (void)applicationWillTerminate
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calendar will terminate", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v141.receiver = self;
  v141.super_class = Application;
  [(Application *)&v141 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem mainSystem];

  if (system == v6)
  {
    v130 = builderCopy;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Save Event" value:&stru_1002133B8 table:0];
    v9 = [UIKeyCommand commandWithTitle:v8 image:0 action:"handleSaveKeyCommand" input:@"s" modifierFlags:0x100000 propertyList:0];

    [v9 setAttributes:4];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"New Event or Reminder" value:&stru_1002133B8 table:0];
    v12 = [UIKeyCommand commandWithTitle:v11 image:0 action:"routeNewEventKeyCommand" input:@"n" modifierFlags:0x100000 propertyList:0];
    v148[0] = v12;
    v148[1] = v9;
    v118 = v9;
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"New Calendar Subscription…" value:&stru_1002133B8 table:0];
    v15 = [UIKeyCommand commandWithTitle:v14 image:0 action:"handleNewSubscribedCalendarCommand" input:@"s" modifierFlags:1572864 propertyList:0];
    v148[2] = v15;
    v16 = [NSArray arrayWithObjects:v148 count:3];
    v17 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v16];

    if (_UIEnhancedMainMenuEnabled())
    {
      v18 = UIMenuFile;
      v116 = v18;
    }

    else
    {
      v116 = UIMenuApplication;
      v18 = UIMenuFile;
    }

    v117 = v17;
    [v130 insertChildMenu:v17 atStartOfMenuForIdentifier:v18];
    v128 = [UIKeyCommand commandWithTitle:&stru_1002133B8 image:0 action:"handleCloseKeyCommand" input:UIKeyInputEscape modifierFlags:0 propertyList:0];
    [v128 setAttributes:4];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"Edit Event" value:&stru_1002133B8 table:0];
    v21 = [UIImage systemImageNamed:@"pencil.circle"];
    v126 = [UIKeyCommand commandWithTitle:v20 image:v21 action:"_performEditKeyCommand" input:@"e" modifierFlags:0x100000 propertyList:0];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"Delete - keyboard shortcut" value:@"Delete" table:0];
    v24 = [UIKeyCommand commandWithTitle:v23 image:0 action:"handleDeleteKeyCommand" input:UIKeyInputDelete modifierFlags:0 propertyList:0];

    if (_UIEnhancedMainMenuEnabled())
    {
      [v24 setAttributes:4];
    }

    v124 = v24;
    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"Duplicate - keyboard shortcut" value:@"Duplicate" table:0];
    v27 = [UIImage systemImageNamed:@"plus.square.on.square"];
    v122 = [UIKeyCommand commandWithTitle:v26 image:v27 action:"handleDuplicateKeyCommand" input:@"d" modifierFlags:0x100000 propertyList:0];

    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"Keyboard shortcut - search" value:@"Find" table:0];
    v30 = [UIImage systemImageNamed:@"magnifyingglass"];
    v31 = [UIKeyCommand commandWithTitle:v29 image:v30 action:"routeSearchKeyCommand" input:@"f" modifierFlags:0x100000 propertyList:0];

    [v130 removeMenuForIdentifier:UIMenuFormat];
    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"Move Occurrence Up - keyboard shortcut" value:@"Move Event Up" table:0];
    v34 = [UIKeyCommand commandWithTitle:"commandWithTitle:image:action:input:modifierFlags:propertyList:" image:v33 action:0 input:"handleMoveEventUpCommand" modifierFlags:? propertyList:?];

    [v34 setAttributes:4];
    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"Move Occurrence Down - keyboard shortcut" value:@"Move Event Down" table:0];
    v37 = [UIKeyCommand commandWithTitle:"commandWithTitle:image:action:input:modifierFlags:propertyList:" image:v36 action:0 input:"handleMoveEventDownCommand" modifierFlags:? propertyList:?];

    [v37 setAttributes:4];
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"Move Occurrence Left - keyboard shortcut" value:@"Move Event Left" table:0];
    v40 = [UIKeyCommand commandWithTitle:"commandWithTitle:image:action:input:modifierFlags:propertyList:" image:v39 action:0 input:"handleMoveEventLeftCommand" modifierFlags:? propertyList:?];

    [v40 setAttributes:4];
    v41 = [NSBundle bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"Move Occurrence Right - keyboard shortcut" value:@"Move Event Right" table:0];
    v43 = [UIKeyCommand commandWithTitle:"commandWithTitle:image:action:input:modifierFlags:propertyList:" image:v42 action:0 input:"handleMoveEventRightCommand" modifierFlags:? propertyList:?];

    [v43 setAttributes:4];
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_100134EB0;
    v131[3] = &unk_100211F48;
    v113 = v31;
    v132 = v113;
    v115 = v126;
    v133 = v115;
    v114 = v128;
    v134 = v114;
    v112 = v124;
    v135 = v112;
    v111 = v122;
    v136 = v111;
    v110 = v34;
    v137 = v110;
    v109 = v37;
    v138 = v109;
    v108 = v40;
    v139 = v108;
    v107 = v43;
    v140 = v107;
    [v130 replaceChildrenOfMenuForIdentifier:UIMenuEdit fromChildrenBlock:v131];
    v44 = [NSBundle bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"Select the Next Event" value:&stru_1002133B8 table:0];
    v129 = [UIKeyCommand commandWithTitle:v45 image:0 action:"handleSelectNextEventCommand" input:@"\t" modifierFlags:0x80000 propertyList:@"tab"];

    [v129 setAttributes:4];
    v46 = [NSBundle bundleForClass:objc_opt_class()];
    v47 = [v46 localizedStringForKey:@"Select the Previous Event" value:&stru_1002133B8 table:0];
    v127 = [UIKeyCommand commandWithTitle:v47 image:0 action:"handleSelectPreviousEventCommand" input:@"\t" modifierFlags:655360 propertyList:@"shift tab"];

    [v127 setAttributes:4];
    v48 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"Select the Next Event" value:&stru_1002133B8 table:0];
    v125 = [UIKeyCommand commandWithTitle:v49 image:0 action:"handleSelectNextEventCommand" input:UIKeyInputRightArrow modifierFlags:0x80000 propertyList:@"right arrow"];

    [v125 setAttributes:4];
    v50 = [NSBundle bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"Select the Previous Event" value:&stru_1002133B8 table:0];
    v123 = [UIKeyCommand commandWithTitle:v51 image:0 action:"handleSelectPreviousEventCommand" input:UIKeyInputLeftArrow modifierFlags:0x80000 propertyList:@"left arrow"];

    [v123 setAttributes:4];
    v52 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"Select the Next Event" value:&stru_1002133B8 table:0];
    v121 = [UIKeyCommand commandWithTitle:v53 image:0 action:"handleSelectNextEventCommand" input:UIKeyInputDownArrow modifierFlags:0x80000 propertyList:@"down arrow"];

    [v121 setAttributes:4];
    v54 = [NSBundle bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"Select the Previous Event" value:&stru_1002133B8 table:0];
    v56 = [UIKeyCommand commandWithTitle:v55 image:0 action:"handleSelectPreviousEventCommand" input:UIKeyInputUpArrow modifierFlags:0x80000 propertyList:@"up arrow"];

    [v56 setAttributes:4];
    v106 = [NSBundle bundleForClass:objc_opt_class()];
    v105 = [v106 localizedStringForKey:@"By Day" value:&stru_1002133B8 table:0];
    v104 = [UIKeyCommand commandWithTitle:v105 image:0 action:"handleDayKeyCommand" input:@"1" modifierFlags:0x100000 propertyList:0];
    v146[0] = v104;
    v103 = [NSBundle bundleForClass:objc_opt_class()];
    v102 = [v103 localizedStringForKey:@"By Week" value:&stru_1002133B8 table:0];
    v101 = [UIKeyCommand commandWithTitle:v102 image:0 action:"handleWeekKeyCommand" input:@"2" modifierFlags:0x100000 propertyList:0];
    v146[1] = v101;
    v100 = [NSBundle bundleForClass:objc_opt_class()];
    v99 = [v100 localizedStringForKey:@"By Month" value:&stru_1002133B8 table:0];
    v98 = [UIKeyCommand commandWithTitle:v99 image:0 action:"handleMonthKeyCommand" input:@"3" modifierFlags:0x100000 propertyList:0];
    v146[2] = v98;
    v97 = [NSBundle bundleForClass:objc_opt_class()];
    v96 = [v97 localizedStringForKey:@"By Year" value:&stru_1002133B8 table:0];
    v95 = [UIKeyCommand commandWithTitle:v96 image:0 action:"handleYearKeyCommand" input:@"4" modifierFlags:0x100000 propertyList:0];
    v146[3] = v95;
    v94 = [NSArray arrayWithObjects:v146 count:4];
    v93 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v94];
    v147[0] = v93;
    v92 = [NSBundle bundleForClass:objc_opt_class()];
    v91 = [v92 localizedStringForKey:@"Next" value:&stru_1002133B8 table:0];
    v119 = [UIKeyCommand commandWithTitle:v91 image:0 action:"handleGoToNextDateComponentUnitCommand" input:UIKeyInputRightArrow modifierFlags:0x100000 propertyList:0];
    v145[0] = v119;
    v90 = [NSBundle bundleForClass:objc_opt_class()];
    v89 = [v90 localizedStringForKey:@"Previous" value:&stru_1002133B8 table:0];
    v88 = [UIKeyCommand commandWithTitle:v89 image:0 action:"handleGoToPreviousDateComponentUnitCommand" input:UIKeyInputLeftArrow modifierFlags:0x100000 propertyList:0];
    v145[1] = v88;
    v87 = [NSArray arrayWithObjects:v145 count:2];
    v86 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v87];
    v147[1] = v86;
    v85 = [NSBundle bundleForClass:objc_opt_class()];
    v84 = [v85 localizedStringForKey:@"Go to Today" value:&stru_1002133B8 table:0];
    v83 = [UIKeyCommand commandWithTitle:v84 image:0 action:"handleTodayKeyCommand" input:@"t" modifierFlags:0x100000 propertyList:0];
    v144[0] = v83;
    v82 = [NSBundle bundleForClass:objc_opt_class()];
    v81 = [v82 localizedStringForKey:@"Go to Date…" value:&stru_1002133B8 table:0];
    v80 = [UIKeyCommand commandWithTitle:v81 image:0 action:"handleGoToDateCommand" input:@"t" modifierFlags:1179648 propertyList:0];
    v144[1] = v80;
    v79 = [NSBundle bundleForClass:objc_opt_class()];
    v78 = [v79 localizedStringForKey:@"Go to Next Occurrence" value:&stru_1002133B8 table:0];
    v77 = [UIKeyCommand commandWithTitle:v78 image:0 action:"handleSelectNextOccurrenceCommand" input:@"]" modifierFlags:0x100000 propertyList:0];
    v144[2] = v77;
    v76 = [NSBundle bundleForClass:objc_opt_class()];
    v75 = [v76 localizedStringForKey:@"Go to Previous Occurrence" value:&stru_1002133B8 table:0];
    v57 = [UIKeyCommand commandWithTitle:v75 image:0 action:"handleSelectPreviousOccurrenceCommand" input:@"[" modifierFlags:0x100000 propertyList:0];
    v144[3] = v57;
    v58 = [NSArray arrayWithObjects:v144 count:4];
    v59 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v58];
    v147[2] = v59;
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v61 = [v60 localizedStringForKey:@"Refresh Calendars" value:&stru_1002133B8 table:0];
    v62 = [UIImage systemImageNamed:@"arrow.clockwise"];
    v63 = [UIKeyCommand commandWithTitle:v61 image:v62 action:"handleRefreshKeyCommand" input:@"r" modifierFlags:0x100000 propertyList:0];
    v147[3] = v63;
    v147[4] = v129;
    v147[5] = v127;
    v147[6] = v125;
    v147[7] = v123;
    v147[8] = v121;
    v120 = v56;
    v147[9] = v56;
    v64 = [NSArray arrayWithObjects:v147 count:10];
    v65 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v64];

    [v130 insertChildMenu:v65 atStartOfMenuForIdentifier:UIMenuView];
    v66 = [NSBundle bundleForClass:objc_opt_class()];
    v67 = [v66 localizedStringForKey:@"Availability Panel" value:&stru_1002133B8 table:0];
    v68 = [UIImage systemImageNamed:@"clock"];
    v69 = [UIKeyCommand commandWithTitle:v67 image:v68 action:"handleViewAvailabilityCommand" input:@"a" modifierFlags:1179648 propertyList:0];
    v143 = v69;
    v70 = [NSArray arrayWithObjects:&v143 count:1];
    v71 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:0 options:1 children:v70];

    builderCopy = v130;
    [v130 insertChildMenu:v71 atEndOfMenuForIdentifier:UIMenuWindow];
    if (+[EKFeatureSet mustDisplaySplashScreenToUser])
    {
      v72 = [UIKeyCommand commandWithTitle:&stru_1002133B8 image:0 action:"handleDismissSplashScreenKeyCommand" input:@"\r" modifierFlags:0 propertyList:0];
      [v72 setAttributes:4];
      v142 = v72;
      v73 = [NSArray arrayWithObjects:&v142 count:1];
      v74 = [UIMenu menuWithChildren:v73];

      [v130 insertChildMenu:v74 atStartOfMenuForIdentifier:UIMenuApplication];
    }
  }
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  configuration = [session configuration];
  v6 = [configuration copy];
  role = [configuration role];
  v8 = [role isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  if ((v8 & 1) != 0 || ([configuration role], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", UIWindowSceneSessionRoleApplication), v9, v10))
  {
    [v6 setDelegateClass:objc_opt_class()];
  }

  return v6;
}

- (void)_collapsedSectionIdentifiersSaveToPreferencesNotificationReceived:(id)received
{
  receivedCopy = received;
  object = [receivedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    allSceneManagers = [(Application *)self allSceneManagers];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [allSceneManagers countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(allSceneManagers);
          }

          model = [*(*(&v20 + 1) + 8 * i) model];
          collapsedSectionIdentifiers = [model collapsedSectionIdentifiers];
          v15 = collapsedSectionIdentifiers;
          if (v10)
          {
            [v10 intersectSet:collapsedSectionIdentifiers];
          }

          else
          {
            v10 = [collapsedSectionIdentifiers mutableCopy];
          }
        }

        v9 = [allSceneManagers countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    allObjects = [v10 allObjects];
    v17 = allObjects;
    if (allObjects)
    {
      v18 = allObjects;
    }

    else
    {
      v18 = &__NSArray0__struct;
    }

    v19 = +[EKPreferences shared];
    [v19 setCollapsedSectionIdentifiers:v18];
  }
}

- (void)_selectedCalendarSaveToPreferencesNotificationReceived:(id)received
{
  receivedCopy = received;
  object = [receivedCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(Application *)self allSceneManagers];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v43 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          model = [*(*(&v40 + 1) + 8 * i) model];
          sourceForSelectedIdentity = [model sourceForSelectedIdentity];

          if (!sourceForSelectedIdentity)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_12:

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v37;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v36 + 1) + 8 * j);
          if ((v14 & 1) == 0)
          {
            model2 = [*(*(&v36 + 1) + 8 * j) model];
            sourceForSelectedIdentity2 = [model2 sourceForSelectedIdentity];

            if (sourceForSelectedIdentity2)
            {
              continue;
            }
          }

          model3 = [v21 model];
          unselectedCalendarsIgnoringFocus = [model3 unselectedCalendarsIgnoringFocus];
          v26 = unselectedCalendarsIgnoringFocus;
          if (v18)
          {
            [v18 intersectSet:unselectedCalendarsIgnoringFocus];
          }

          else
          {
            v18 = [unselectedCalendarsIgnoringFocus mutableCopy];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    userInfo = [receivedCopy userInfo];
    v28 = [userInfo objectForKeyedSubscript:CUIKCalendarModelVisibleCalendarPreferenceRequiresSavingNotificationReasonKey];

    v29 = +[EKPreferences shared];
    allObjects = [v18 allObjects];
    v31 = allObjects;
    if (allObjects)
    {
      v32 = allObjects;
    }

    else
    {
      v32 = &__NSArray0__struct;
    }

    [v29 setDeselectedCalendars:v32 reason:v28];

    if (([UIApp launchedToTest] & 1) == 0)
    {
      v33 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Reloading widget timeline because of selectedCalendar change notification", v35, 2u);
      }

      +[CalWidgetUtils refreshEventWidgets];
      v34 = +[CalendarLinkAppEntityNotifier sharedNotifier];
      [v34 notifyObservers];
    }
  }
}

- (void)_sceneManagerDidDismissSplashScreen
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Calendar - a sceneManager dismissed a splash screen.", buf, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:0];

  applicationRequestDelayer = [(Application *)self applicationRequestDelayer];

  if (applicationRequestDelayer)
  {
    v6 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Executing delayed application request.", v9, 2u);
    }

    applicationRequestDelayer2 = [(Application *)self applicationRequestDelayer];
    applicationRequestDelayer2[2]();

    [(Application *)self setApplicationRequestDelayer:0];
  }

  [(Application *)self requestLocationAuthorization];
  [(Application *)self requestContactsAuthorization];
  v8 = +[UIMenuSystem mainSystem];
  [v8 setNeedsRebuild];
}

- (void)application:(id)application performFetchWithCompletionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[Application application:performFetchWithCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Calendar %s", &buf, 0xCu);
  }

  group = dispatch_group_create();
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 1;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = +[UIApplication sharedApplication];
  obj = [v6 connectedScenes];

  v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v7)
  {
    v8 = *v52;
    v29 = CUIKCalendarModelDisplayedOccurrencesChangedNotification;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        delegate = [v10 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          delegate2 = [v10 delegate];
          if ([v10 activationState])
          {
            v49[0] = 0;
            v49[1] = v49;
            v49[2] = 0x2020000000;
            v50 = 0;
            v47[0] = 0;
            v47[1] = v47;
            v47[2] = 0x2020000000;
            v48 = 0;
            *&buf = 0;
            *(&buf + 1) = &buf;
            v57 = 0x3032000000;
            v58 = sub_100136404;
            v59 = sub_100136414;
            v60 = 0;
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10013641C;
            v43[3] = &unk_100211FC0;
            v43[4] = v10;
            p_buf = &buf;
            v46 = v55;
            v14 = group;
            v44 = v14;
            v15 = objc_retainBlock(v43);
            dispatch_group_enter(v14);
            v16 = +[NSNotificationCenter defaultCenter];
            model = [delegate2 model];
            v18 = +[NSOperationQueue mainQueue];
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_100136540;
            v39[3] = &unk_100211FE8;
            v41 = v47;
            v39[4] = v10;
            v42 = v49;
            v19 = v15;
            v40 = v19;
            v20 = [v16 addObserverForName:v29 object:model queue:v18 usingBlock:v39];
            v21 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v20;

            v22 = dispatch_time(0, 8000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100136630;
            block[3] = &unk_100212010;
            v37 = v49;
            block[4] = v10;
            v38 = v47;
            v23 = v19;
            v36 = v23;
            dispatch_after(v22, &_dispatch_main_q, block);
            model2 = [delegate2 model];
            [model2 updateAfterAppResume];

            _Block_object_dispose(&buf, 8);
            _Block_object_dispose(v47, 8);
            _Block_object_dispose(v49, 8);
          }

          else
          {
            v25 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v10;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Not updating scene snapshot because it's already active: %@", &buf, 0xCu);
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v7);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10013670C;
  v32[3] = &unk_100212038;
  v33 = handlerCopy;
  v34 = v55;
  v26 = handlerCopy;
  dispatch_group_notify(group, &_dispatch_main_q, v32);

  _Block_object_dispose(v55, 8);
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  testCopy = test;
  applicationCopy = application;
  tester = [(Application *)self tester];
  model = [tester model];

  if (!model)
  {
    _findSomeCalendarModel = [(Application *)self _findSomeCalendarModel];
    tester2 = [(Application *)self tester];
    [tester2 setModel:_findSomeCalendarModel];
  }

  tester3 = [(Application *)self tester];
  v16 = [tester3 application:applicationCopy runTest:testCopy options:optionsCopy];

  return v16;
}

+ (void)_setModelDateForLaunch:(id)launch restoreLastViewedDateFromPreferenceIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  launchCopy = launch;
  eventStore = [launchCopy eventStore];
  timeZone = [eventStore timeZone];

  v8 = +[CUIKPreferences sharedPreferences];
  lastSuspendTime = [v8 lastSuspendTime];

  v10 = CUIKNowDate();
  [self _resumeToTodayTimeout];
  v12 = v11;
  [v10 timeIntervalSinceReferenceDate];
  v14 = v13;
  [lastSuspendTime doubleValue];
  if (!neededCopy || !lastSuspendTime || v14 - v15 > v12 || ([UIApp launchedToTest] & 1) != 0 || (+[CUIKPreferences sharedPreferences](CUIKPreferences, "sharedPreferences"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "lastViewedDate"), v17 = objc_claimAutoreleasedReturnValue(), v16, !v17) || (objc_msgSend(v17, "doubleValue"), v19 = v18, v20 = objc_msgSend([NSTimeZone alloc], "initWithName:", @"GMT"), v21 = objc_msgSend([EKCalendarDate alloc], "initWithAbsoluteTime:timeZone:", v20, v19), objc_msgSend(v21, "calendarDateInTimeZone:", timeZone), v22 = objc_claimAutoreleasedReturnValue(), v21, v20, v17, !v22))
  {
    v23 = CUIKNowComponents();
    v22 = [[EKCalendarDate alloc] initWithDateComponents:v23 timeZone:timeZone];
  }

  v24 = +[NSProcessInfo processInfo];
  environment = [v24 environment];
  v26 = [environment objectForKeyedSubscript:@"SelectedDateName"];

  if (v26)
  {
    [v26 doubleValue];
    v28 = -v27;
    if (v27 >= 0.0)
    {
      v28 = v27;
    }

    if (v28 > 0.00001)
    {
      v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v30 = [[EKCalendarDate alloc] initWithDate:v29 timeZone:timeZone];

      v22 = v30;
    }
  }

  [launchCopy setSelectedDate:v22];
}

- (void)_refreshAccountListAndViewContentsIfNeededForModel:(id)model
{
  modelCopy = model;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100136B28;
  block[3] = &unk_10020EB00;
  v7 = modelCopy;
  v5 = modelCopy;
  dispatch_async(v4, block);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationStatus = [authorization authorizationStatus];
  locationManager = self->_locationManager;
  if (authorizationStatus)
  {
    [(CLLocationManager *)locationManager setDelegate:0];
    v6 = self->_locationManager;
    self->_locationManager = 0;
  }

  else
  {

    [(CLLocationManager *)locationManager requestWhenInUseAuthorization];
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [NSNumber numberWithUnsignedInteger:26];
    request = [notificationCopy request];
    identifier = [request identifier];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = identifier;
    v17 = 2112;
    v18 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will present notification with options = %{public}@, notification identifier = %{public}@, notification = %@", &v13, 0x20u);
  }

  handlerCopy[2](handlerCopy, 26);
}

- (BOOL)optionKeyIsDown
{
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    optionKeyDown = self->_optionKeyDown;
    v6 = 134217984;
    v7 = optionKeyDown;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "optionKeyIsDown: %lu", &v6, 0xCu);
  }

  return self->_optionKeyDown != 0;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [beganCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(beganCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 key];
        characters = [v12 characters];
        if ([characters length])
        {
        }

        else
        {
          v14 = [v11 key];
          modifierFlags = [v14 modifierFlags];

          if ((modifierFlags & 0x80000) != 0)
          {
            ++self->_optionKeyDown;
            v16 = kCalUILogHandle;
            if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
            {
              optionKeyDown = self->_optionKeyDown;
              *buf = 134217984;
              v25 = optionKeyDown;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "optionKeyPress: %lu", buf, 0xCu);
            }
          }
        }
      }

      v8 = [beganCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v19.receiver = self;
  v19.super_class = Application;
  [(Application *)&v19 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (self->_optionKeyDown)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [endedCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(endedCopy);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 key];
          characters = [v12 characters];
          if ([characters length])
          {
          }

          else
          {
            v14 = [v11 key];
            modifierFlags = [v14 modifierFlags];

            if ((modifierFlags & 0x80000) != 0)
            {
              --self->_optionKeyDown;
              v16 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
              {
                optionKeyDown = self->_optionKeyDown;
                *buf = 134217984;
                v25 = optionKeyDown;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "optionKeyRelease: %lu", buf, 0xCu);
              }
            }
          }
        }

        v8 = [endedCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }
  }

  v19.receiver = self;
  v19.super_class = Application;
  [(Application *)&v19 pressesEnded:endedCopy withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (self->_optionKeyDown)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [cancelledCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(cancelledCopy);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 key];
          characters = [v12 characters];
          if ([characters length])
          {
          }

          else
          {
            v14 = [v11 key];
            modifierFlags = [v14 modifierFlags];

            if ((modifierFlags & 0x80000) != 0)
            {
              --self->_optionKeyDown;
              v16 = kCalUILogHandle;
              if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
              {
                optionKeyDown = self->_optionKeyDown;
                *buf = 134217984;
                v25 = optionKeyDown;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "optionKeyCancel: %lu", buf, 0xCu);
              }
            }
          }
        }

        v8 = [cancelledCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }
  }

  v19.receiver = self;
  v19.super_class = Application;
  [(Application *)&v19 pressesCancelled:cancelledCopy withEvent:eventCopy];
}

- (id)eventStore
{
  selfCopy = self;
  v3 = Application.eventStore()();

  return v3;
}

@end