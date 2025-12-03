@interface MTAAppController
- (BOOL)_runResizeTest;
- (BOOL)_runRotationTest;
- (BOOL)_runScrollTest:(id)test;
- (BOOL)_runSelectTest:(id)test;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)runTest:(id)test options:(id)options;
- (NSString)recentTimerIdentifier;
- (double)visibleViewHeight;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (int64_t)interfaceOrientation;
- (void)_handleAddSpecifierForSection:(int64_t)section;
- (void)_handleDefaultSpecifierForSection:(int64_t)section;
- (void)_handleEditSpecifierForSection:(int64_t)section;
- (void)_selectViewController:(id)controller;
- (void)_spinMainRunLoop;
- (void)_windowDidRotate:(id)rotate;
- (void)appIntentsProvider:(id)provider didSelectTab:(unint64_t)tab;
- (void)applyStyle;
- (void)buildMenuWithBuilder:(id)builder;
- (void)cancelScheduledUserPreferencesCommit;
- (void)chooseViewOption:(int64_t)option;
- (void)commitUserPreferences;
- (void)dealloc;
- (void)didAddNewWorldClockWithName:(id)name provider:(id)provider;
- (void)didRemoveWorldClockWithName:(id)name provider:(id)provider;
- (void)finishedTest:(id)test extraResults:(id)results;
- (void)handleUserPreferencesChanged;
- (void)initWindowAndViewControllersWithWindowScene:(id)scene;
- (void)prepareTabBarControllerRestoreIndex:(BOOL)index;
- (void)reloadTimerState;
- (void)restoreLastSelectedTabIndex;
- (void)saveState;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene openURL:(id)l sourceApplication:(id)application;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)scheduleUserPreferencesCommit;
- (void)startedTest:(id)test;
- (void)switchToTimerTab;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation MTAAppController

- (void)applyStyle
{
  v2 = +[UITableView appearance];
  v3 = +[UIColor mtui_cellSeparatorColor];
  [v2 setSeparatorColor:v3];

  v4 = +[UITableView appearance];
  [v4 setIndicatorStyle:2];

  v5 = +[UITableView appearance];
  v6 = +[UIColor mtui_tintColor];
  [v5 setSectionIndexColor:v6];

  v8 = +[UITableView appearance];
  v7 = +[UIColor mtui_tintColor];
  [v8 setTintColor:v7];
}

- (void)restoreLastSelectedTabIndex
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"LAST_SELECTED_VIEW"];

  if (v4 <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 - 1;
  }

  viewControllers = [(MTATabBarController *)self->_tabBarController viewControllers];
  if (v5 >= [viewControllers count])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  [(MTATabBarController *)self->_tabBarController setSelectedIndex:v6];
}

- (void)reloadTimerState
{
  timerViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  isViewLoaded = [timerViewController isViewLoaded];

  if (isViewLoaded)
  {
    timerViewController2 = [(MTATabBarController *)self->_tabBarController timerViewController];
    [timerViewController2 reloadState];
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = MTAAppController;
  [(MTAAppController *)&v4 dealloc];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  configuration = [session configuration];
  [configuration setDelegateClass:objc_opt_class()];

  return configuration;
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidBecomeActive", buf, 0xCu);
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    viewControllers = [(MTATabBarController *)self->_tabBarController viewControllers];
    v6 = [viewControllers countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(viewControllers);
          }

          topViewController = [*(*(&v29 + 1) + 8 * v9) topViewController];
          [topViewController setTitle:&stru_1000AEF10];
          navigationItem = [topViewController navigationItem];
          [navigationItem setLeftBarButtonItem:0];

          navigationItem2 = [topViewController navigationItem];
          [navigationItem2 setRightBarButtonItem:0];

          view = [topViewController view];
          [view setHidden:1];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [viewControllers countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v7);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    view2 = [(MTATabBarController *)self->_tabBarController view];
    subviews = [view2 subviews];
    v16 = [subviews objectAtIndex:1];
    subviews2 = [v16 subviews];

    v18 = [subviews2 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        v21 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(subviews2);
          }

          v22 = *(*(&v25 + 1) + 8 * v21);
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            [v22 _setSelected:0];
            [v22 _showSelectedIndicator:0 changeSelection:0];
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [subviews2 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v19);
    }
  }

  v23 = MTLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sessionManager = self->_sessionManager;
    *buf = 138543618;
    selfCopy2 = self;
    v35 = 2114;
    v36 = sessionManager;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ ending session with manager: %{public}@", buf, 0x16u);
  }

  [(MTSessionManager *)self->_sessionManager endAlertingSession];
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ application willFinishLaunchingWithOptions", &v8, 0xCu);
  }

  v6 = dispatch_get_global_queue(0, 0);
  dispatch_async(v6, &stru_1000ADE58);

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ application didFinishLaunchingWithOptions", &v22, 0xCu);
  }

  v6 = objc_opt_new();
  alarmManager = self->_alarmManager;
  self->_alarmManager = v6;

  v8 = [[MTAlarmDataSource alloc] initWithAlarmManager:self->_alarmManager];
  alarmDataSource = self->_alarmDataSource;
  self->_alarmDataSource = v8;

  v10 = objc_opt_new();
  timerManager = self->_timerManager;
  self->_timerManager = v10;

  v12 = objc_opt_new();
  sessionManager = self->_sessionManager;
  self->_sessionManager = v12;

  v14 = [[MTTimerDataSource alloc] initWithTimerManager:self->_timerManager];
  timerDataSource = self->_timerDataSource;
  self->_timerDataSource = v14;

  v16 = objc_opt_new();
  notificationDelegate = self->_notificationDelegate;
  self->_notificationDelegate = v16;

  +[UIView _naui_beginDebuggingAutolayout];
  +[ClockManager loadUserPreferences];
  v18 = +[MTAppIntentsProvider sharedInstance];
  [v18 setDelegate:self];

  v19 = +[UIApplication sharedApplication];
  keyWindow = [v19 keyWindow];
  [keyWindow _accessibilitySetInterfaceStyleIntent:2];

  return 1;
}

- (void)scene:(id)scene openURL:(id)l sourceApplication:(id)application
{
  lCopy = l;
  resourceSpecifier = [lCopy resourceSpecifier];
  mtClockAppSection = [lCopy mtClockAppSection];

  if (mtClockAppSection != -1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017600;
    block[3] = &unk_1000ADE80;
    block[4] = self;
    v10 = resourceSpecifier;
    v11 = mtClockAppSection;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_handleDefaultSpecifierForSection:(int64_t)section
{
  v4 = [(MTATabBarController *)self->_tabBarController tabIndexForAppSection:section];
  [(MTATabBarController *)self->_tabBarController setSelectedIndex:v4];
  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithUnsignedInteger:v4 + 1];
  [v6 setObject:v5 forKey:@"LAST_SELECTED_VIEW"];
}

- (void)_handleEditSpecifierForSection:(int64_t)section
{
  if (section == 2)
  {
    [(MTAAppController *)self _handleDefaultSpecifierForSection:?];
    tabBarController = self->_tabBarController;

    [(MTATabBarController *)tabBarController showSleepView];
  }
}

- (void)_handleAddSpecifierForSection:(int64_t)section
{
  if (section == 4)
  {
    [(MTAAppController *)self _handleDefaultSpecifierForSection:?];
    tabBarController = self->_tabBarController;

    [(MTATabBarController *)tabBarController showAddView];
  }
}

- (void)initWindowAndViewControllersWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOCK" value:&stru_1000AEF10 table:0];
  [sceneCopy setTitle:v6];

  v7 = [[MTASecureWindow alloc] initWithWindowScene:sceneCopy];
  window = self->_window;
  self->_window = v7;

  v9 = self->_window;
  v10 = +[UIColor mtui_tintColor];
  [(MTASecureWindow *)v9 setTintColor:v10];

  v11 = self->_window;
  v12 = +[UIColor mtui_backgroundColor];
  [(MTASecureWindow *)v11 setBackgroundColor:v12];

  [(MTASecureWindow *)self->_window makeKeyAndVisible];
  [(MTAAppController *)self applyStyle];
  v13 = [[MTATabBarController alloc] initWithAlarmManager:self->_alarmManager alarmDataSource:self->_alarmDataSource timerManager:self->_timerManager timerDataSource:self->_timerDataSource];
  tabBarController = self->_tabBarController;
  self->_tabBarController = v13;

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"scheduleUserPreferencesCommit" name:@"com.apple.mobiletimer.user-preferences-dirty" object:0];
  [v16 addObserver:self selector:"handleFrameworkPreferencesNotification:" name:MobileTimerFrameworkPreferencesChanged object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100016DF4, @"com.apple.mobiletimer.user-preferences-changed", 0, 0);
}

- (int64_t)interfaceOrientation
{
  windowScene = [(MTASecureWindow *)self->_window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (void)saveState
{
  v3 = [NSNumber numberWithUnsignedInteger:[(MTATabBarController *)self->_tabBarController selectedIndex]+ 1];
  CFPreferencesSetAppValue(@"LAST_SELECTED_VIEW", v3, @"com.apple.mobiletimer");

  worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  [worldClockViewController saveState];

  alarmViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
  [alarmViewController saveState];

  stopwatchViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  [stopwatchViewController saveState];

  timerViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  [timerViewController saveState];

  [(MTAAppController *)self commitUserPreferences];

  _CPLoggingFlush(-1);
}

- (void)cancelScheduledUserPreferencesCommit
{
  [(NSTimer *)self->_userPreferencesCommitTimer invalidate];
  userPreferencesCommitTimer = self->_userPreferencesCommitTimer;
  self->_userPreferencesCommitTimer = 0;
}

- (void)scheduleUserPreferencesCommit
{
  [(MTAAppController *)self cancelScheduledUserPreferencesCommit];
  self->_userPreferencesCommitTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"commitUserPreferences" selector:0 userInfo:0 repeats:3.0];

  _objc_release_x1();
}

- (void)commitUserPreferences
{
  [(MTAAppController *)self cancelScheduledUserPreferencesCommit];

  CFPreferencesAppSynchronize(@"com.apple.mobiletimer");
}

- (void)handleUserPreferencesChanged
{
  worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  isViewLoaded = [worldClockViewController isViewLoaded];

  if (!self->_userPreferencesCommitTimer)
  {
    +[ClockManager loadUserPreferences];
    if (isViewLoaded)
    {
      v6 = +[WorldClockManager sharedManager];
      if ([v6 checkIfCitiesModified])
      {
        worldClockViewController2 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
        [worldClockViewController2 reloadState];
      }
    }
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillEnterForeground", &v11, 0xCu);
  }

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:1];
  [(MTAAppController *)self reloadTimerState];
  stopwatchViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  isViewLoaded = [stopwatchViewController isViewLoaded];

  if (isViewLoaded)
  {
    stopwatchViewController2 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
    [stopwatchViewController2 reloadState];
  }

  v8 = +[UIApplication sharedApplication];
  shortcutItems = [v8 shortcutItems];
  v10 = [shortcutItems count];

  if (!v10)
  {
    [(MTATabBarController *)self->_tabBarController populateShortcutItems];
  }

  [(MTATabBarController *)self->_tabBarController restoreState];
}

- (void)prepareTabBarControllerRestoreIndex:(BOOL)index
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100017F48;
  v3[3] = &unk_1000ADEA8;
  v3[4] = self;
  indexCopy = index;
  if (qword_1000D2928 != -1)
  {
    dispatch_once(&qword_1000D2928, v3);
  }
}

- (void)startedTest:(id)test
{
  objc_storeStrong(&self->_currentTestName, test);
  testCopy = test;
  v6.receiver = self;
  v6.super_class = MTAAppController;
  [(MTAAppController *)&v6 startedTest:testCopy];
}

- (void)finishedTest:(id)test extraResults:(id)results
{
  v6.receiver = self;
  v6.super_class = MTAAppController;
  [(MTAAppController *)&v6 finishedTest:test extraResults:results];
  currentTestName = self->_currentTestName;
  self->_currentTestName = 0;
}

- (BOOL)_runSelectTest:(id)test
{
  testCopy = test;
  if ([(NSString *)self->_currentTestName isEqualToString:@"SelectAlarm"])
  {
    alarmViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([(NSString *)self->_currentTestName isEqualToString:@"SelectWorldClock"])
  {
    alarmViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if ([(NSString *)self->_currentTestName isEqualToString:@"SelectStopwatch"])
  {
    alarmViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![(NSString *)self->_currentTestName isEqualToString:@"SelectTimer"])
    {
      goto LABEL_13;
    }

    alarmViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v6 = alarmViewController;
  if (alarmViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 setupForTest:self->_currentTestName options:testCopy];
    }

    [(MTAAppController *)self startedTest:self->_currentTestName];
    [(MTAAppController *)self _selectViewController:v6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000182B0;
    block[3] = &unk_1000ADED0;
    block[4] = self;
    v10 = v6;
    v11 = testCopy;
    v7 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

LABEL_13:

  return 1;
}

- (BOOL)_runScrollTest:(id)test
{
  testCopy = test;
  v5 = [testCopy objectForKeyedSubscript:@"natural"];
  if ([v5 BOOLValue])
  {
    v6 = +[RPTTestRunner isRecapAvailable];
  }

  else
  {
    v6 = 0;
  }

  if ([(NSString *)self->_currentTestName containsString:@"ScrollAlarm"])
  {
    alarmViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
    v8 = 0;
  }

  else
  {
    if (![(NSString *)self->_currentTestName containsString:@"ScrollWorldClock"])
    {
      goto LABEL_20;
    }

    alarmViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
    if ([(NSString *)self->_currentTestName containsString:@"Edit"])
    {
      worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      v8 = 1;
      [worldClockViewController setEditing:1 animated:1];
    }

    else
    {
      v8 = 0;
    }
  }

  if (alarmViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [alarmViewController setupForTest:self->_currentTestName options:testCopy];
    }

    [(MTAAppController *)self _selectViewController:alarmViewController];
    [(MTAAppController *)self _spinMainRunLoop];
    contentScrollView = [alarmViewController contentScrollView];
    if (v6)
    {
      v10 = [[RPTScrollViewTestParameters alloc] initWithTestName:self->_currentTestName scrollView:contentScrollView completionHandler:0];
      [RPTTestRunner runTestWithParameters:v10];
    }

    else
    {
      currentTestName = self->_currentTestName;
      v10 = [testCopy objectForKeyedSubscript:@"iterations"];
      intValue = [v10 intValue];
      v14 = [testCopy objectForKey:@"offset"];
      [contentScrollView _performScrollTest:currentTestName iterations:intValue delta:{objc_msgSend(v14, "intValue")}];
    }

    if (v8)
    {
      worldClockViewController2 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      [worldClockViewController2 setEditing:0 animated:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [alarmViewController teardownForTest:self->_currentTestName options:testCopy];
    }
  }

LABEL_20:

  return 1;
}

- (void)_spinMainRunLoop
{
  v3 = +[NSRunLoop mainRunLoop];
  v2 = [NSDate dateWithTimeIntervalSinceNow:2.0];
  [v3 runUntilDate:v2];
}

- (void)_selectViewController:(id)controller
{
  controllerCopy = controller;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  viewControllers = [(MTATabBarController *)self->_tabBarController viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      v11 = -v8;
      v8 += v7;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        if (v12 == controllerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v12 viewControllers], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == controllerCopy))
        {

          if (v11 != 1)
          {
            [(MTATabBarController *)selfCopy->_tabBarController setSelectedIndex:-v11];
          }

          goto LABEL_14;
        }

        v10 = v10 + 1;
        --v11;
      }

      while (v7 != v10);
      v7 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (BOOL)_runRotationTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = UIWindowDidRotateNotification;
  v5 = +[UIWindow keyWindow];
  [v3 addObserver:self selector:"_windowDidRotate:" name:v4 object:v5];

  [(MTAAppController *)self rotateIfNeeded:1];
  [(MTAAppController *)self _spinMainRunLoop];
  [(MTAAppController *)self startedTest:self->_currentTestName];
  [(MTAAppController *)self rotateIfNeeded:3];
  return 1;
}

- (BOOL)_runResizeTest
{
  v3 = [RPTResizeTestParameters alloc];
  currentTestName = self->_currentTestName;
  v5 = +[UIWindow keyWindow];
  v6 = [v3 initWithTestName:currentTestName window:v5 completionHandler:0];

  [RPTTestRunner runTestWithParameters:v6];
  return 1;
}

- (void)_windowDidRotate:(id)rotate
{
  rotateCopy = rotate;
  if (self->_currentTestName)
  {
    v12 = rotateCopy;
    if (self->_iterations)
    {
      v5 = +[UIWindow keyWindow];
      interfaceOrientation = [v5 interfaceOrientation];

      if (interfaceOrientation == 3)
      {
        --self->_iterations;
        selfCopy2 = self;
        v8 = 1;
      }

      else
      {
        selfCopy2 = self;
        v8 = 3;
      }

      [(MTAAppController *)selfCopy2 rotateIfNeeded:v8];
    }

    else
    {
      [MTAAppController finishedTest:"finishedTest:extraResults:" extraResults:?];
      v9 = +[NSNotificationCenter defaultCenter];
      v10 = UIWindowDidRotateNotification;
      v11 = +[UIWindow keyWindow];
      [v9 removeObserver:self name:v10 object:v11];
    }

    rotateCopy = v12;
  }
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = typeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will Continue with Activity Type:%@", &v9, 0xCu);
  }

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:0];
  if (qword_1000D2930 != -1)
  {
    sub_1000735A4();
  }

  if ([typeCopy isEqualToString:@"com.apple.clock.worldclock"])
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if (([typeCopy isEqualToString:@"com.apple.clock.alarm"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.clock.wakealarm") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.clock.bedtime"))
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([typeCopy isEqualToString:@"com.apple.clock.stopwatch"])
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![typeCopy isEqualToString:@"com.apple.clock.timer"])
    {
      goto LABEL_12;
    }

    worldClockViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v8 = worldClockViewController;
  [(MTAAppController *)self _selectViewController:worldClockViewController];

LABEL_12:
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  activityCopy = activity;
  interaction = [activityCopy interaction];
  intent = [interaction intent];

  if (intent)
  {
    [(MTATabBarController *)self->_tabBarController performActionForIntent:intent];
  }

  else
  {
    activityType = [activityCopy activityType];
    v8 = [activityType isEqualToString:@"com.apple.clock.worldclock"];

    if (v8)
    {
      worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      if (objc_opt_respondsToSelector())
      {
        [worldClockViewController restoreWithUserActivity:activityCopy];
      }
    }
  }
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  errorCopy = error;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000735CC(self, errorCopy, v7);
  }
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  v6 = +[MTAStateStore shared];
  [v6 bypass];

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:0];
  [(MTATabBarController *)self->_tabBarController performActionForShortcutItem:itemCopy];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v14.receiver = self;
  v14.super_class = MTAAppController;
  [(MTAAppController *)&v14 buildMenuWithBuilder:builderCopy];
  [(MTAAppController *)self setMenuBuilder:builderCopy];
  [builderCopy removeMenuForIdentifier:UIMenuHide];
  [builderCopy removeMenuForIdentifier:UIMenuQuit];
  [builderCopy removeMenuForIdentifier:UIMenuFont];
  [builderCopy removeMenuForIdentifier:UIMenuFormat];
  [builderCopy removeMenuForIdentifier:UIMenuFind];
  [builderCopy removeMenuForIdentifier:UIMenuAutoFill];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RECENT_TIMERS_MENU" value:&stru_1000AEF10 table:0];
  v7 = [UIMenu menuWithTitle:v6 children:&__NSArray0__struct];

  [builderCopy insertChildMenu:v7 atStartOfMenuForIdentifier:UIMenuFile];
  identifier = [v7 identifier];
  [(MTAAppController *)self setRecentTimerIdentifier:identifier];

  timerViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    timerViewController2 = [(MTATabBarController *)self->_tabBarController timerViewController];
    identifier2 = [v7 identifier];
    [timerViewController2 performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:builderCopy withObject:identifier2];
  }

  [builderCopy replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:&stru_1000ADF30];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100019298;
  v13[3] = &unk_1000ADF80;
  v13[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:UIMenuView fromChildrenBlock:v13];
  [builderCopy replaceChildrenOfMenuForIdentifier:UIMenuWindow fromChildrenBlock:&stru_1000ADFA0];
}

- (void)chooseViewOption:(int64_t)option
{
  if (option > 1)
  {
    if (option == 2)
    {
      stopwatchViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
    }

    else
    {
      if (option != 3)
      {
        return;
      }

      stopwatchViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
    }
  }

  else if (option)
  {
    if (option != 1)
    {
      return;
    }

    stopwatchViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else
  {
    stopwatchViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  if (stopwatchViewController)
  {
    v5 = stopwatchViewController;
    [(MTAAppController *)self _selectViewController:stopwatchViewController];
  }
}

- (void)switchToTimerTab
{
  timerViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  [(MTAAppController *)self _selectViewController:timerViewController];
}

- (void)appIntentsProvider:(id)provider didSelectTab:(unint64_t)tab
{
  providerCopy = provider;
  if (tab > 1)
  {
    if (tab == 2)
    {
      v11 = MTLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabStopwatch", &v13, 0xCu);
      }

      stopwatchViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
      goto LABEL_18;
    }

    if (tab == 3)
    {
      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabTimer", &v13, 0xCu);
      }

      stopwatchViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
      goto LABEL_18;
    }
  }

  else
  {
    if (!tab)
    {
      v10 = MTLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabClock", &v13, 0xCu);
      }

      stopwatchViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      goto LABEL_18;
    }

    if (tab == 1)
    {
      v7 = MTLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabAlarm", &v13, 0xCu);
      }

      stopwatchViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
LABEL_18:
      v12 = stopwatchViewController;
      [(MTAAppController *)self _selectViewController:stopwatchViewController];
    }
  }
}

- (void)didAddNewWorldClockWithName:(id)name provider:(id)provider
{
  nameCopy = name;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = nameCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didAddNewWordClockWithName: %{public}@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019BA0;
  v8[3] = &unk_1000ADAB0;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)didRemoveWorldClockWithName:(id)name provider:(id)provider
{
  nameCopy = name;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = nameCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didRemoveWorldClockWithName: %{public}@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019EF0;
  v8[3] = &unk_1000ADAB0;
  v8[4] = self;
  v9 = nameCopy;
  v7 = nameCopy;
  dispatch_async(&_dispatch_main_q, v8);
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v9 = [optionsCopy objectForKey:@"iterations"];
  self->_iterations = [v9 integerValue];

  objc_storeStrong(&self->_currentTestName, test);
  if ([testCopy rangeOfString:@"Scroll"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(MTAAppController *)self _runScrollTest:optionsCopy];
LABEL_23:
    v16 = v13;
    goto LABEL_24;
  }

  if ([testCopy rangeOfString:@"Select"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(MTAAppController *)self _runSelectTest:optionsCopy];
    goto LABEL_23;
  }

  if (([testCopy hasPrefix:@"Rotate"] & 1) == 0 && !objc_msgSend(testCopy, "hasPrefix:", @"Resize"))
  {
    goto LABEL_22;
  }

  if ((MTUIIsPadIdiom() & 1) == 0)
  {
    v10 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v10 userInterfaceIdiom];

    if (userInterfaceIdiom != 5)
    {
      goto LABEL_22;
    }
  }

  if ([testCopy hasSuffix:@"WorldClock"])
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if ([testCopy hasSuffix:@"Alarm"])
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([testCopy hasSuffix:@"Stopwatch"])
  {
    worldClockViewController = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![testCopy hasSuffix:@"Timer"])
    {
LABEL_22:
      v18.receiver = self;
      v18.super_class = MTAAppController;
      v13 = [(MTAAppController *)&v18 runTest:testCopy options:optionsCopy];
      goto LABEL_23;
    }

    worldClockViewController = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v14 = worldClockViewController;
  if (!worldClockViewController)
  {
    goto LABEL_22;
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setupForTest:testCopy options:optionsCopy];
  }

  [(MTAAppController *)self _selectViewController:v14];
  if ([testCopy hasPrefix:@"Rotate"])
  {
    _runRotationTest = [(MTAAppController *)self _runRotationTest];
  }

  else
  {
    if (![testCopy hasPrefix:@"Resize"])
    {
      v16 = 0;
      goto LABEL_29;
    }

    _runRotationTest = [(MTAAppController *)self _runResizeTest];
  }

  v16 = _runRotationTest;
LABEL_29:
  if (objc_opt_respondsToSelector())
  {
    [v14 teardownForTest:testCopy options:optionsCopy];
  }

LABEL_24:
  return v16;
}

- (double)visibleViewHeight
{
  viewControllers = [(MTATabBarController *)self->_tabBarController viewControllers];
  firstObject = [viewControllers firstObject];

  topViewController = [firstObject topViewController];
  if (topViewController)
  {
    v5 = +[MTAUtilities isLandscape];
    view = [topViewController view];
    [view frame];
    v8 = v7;

    view2 = [topViewController view];
    [view2 frame];
    v11 = v10;

    if (v8 < v11 != v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    tabBarController = [topViewController tabBarController];
    tabBar = [tabBarController tabBar];
    [tabBar frame];
    v16 = v15;

    navigationController = [topViewController navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar frame];
    v20 = v19;

    v21 = v12 - v16 - v20;
  }

  else
  {
    v21 = 0.0;
  }

  return v21;
}

- (NSString)recentTimerIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_recentTimerIdentifier);

  return WeakRetained;
}

@end