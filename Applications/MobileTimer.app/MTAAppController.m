@interface MTAAppController
- (BOOL)_runResizeTest;
- (BOOL)_runRotationTest;
- (BOOL)_runScrollTest:(id)a3;
- (BOOL)_runSelectTest:(id)a3;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (NSString)recentTimerIdentifier;
- (double)visibleViewHeight;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (int64_t)interfaceOrientation;
- (void)_handleAddSpecifierForSection:(int64_t)a3;
- (void)_handleDefaultSpecifierForSection:(int64_t)a3;
- (void)_handleEditSpecifierForSection:(int64_t)a3;
- (void)_selectViewController:(id)a3;
- (void)_spinMainRunLoop;
- (void)_windowDidRotate:(id)a3;
- (void)appIntentsProvider:(id)a3 didSelectTab:(unint64_t)a4;
- (void)applyStyle;
- (void)buildMenuWithBuilder:(id)a3;
- (void)cancelScheduledUserPreferencesCommit;
- (void)chooseViewOption:(int64_t)a3;
- (void)commitUserPreferences;
- (void)dealloc;
- (void)didAddNewWorldClockWithName:(id)a3 provider:(id)a4;
- (void)didRemoveWorldClockWithName:(id)a3 provider:(id)a4;
- (void)finishedTest:(id)a3 extraResults:(id)a4;
- (void)handleUserPreferencesChanged;
- (void)initWindowAndViewControllersWithWindowScene:(id)a3;
- (void)prepareTabBarControllerRestoreIndex:(BOOL)a3;
- (void)reloadTimerState;
- (void)restoreLastSelectedTabIndex;
- (void)saveState;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 openURL:(id)a4 sourceApplication:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)scheduleUserPreferencesCommit;
- (void)startedTest:(id)a3;
- (void)switchToTimerTab;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
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

  v7 = [(MTATabBarController *)self->_tabBarController viewControllers];
  if (v5 >= [v7 count])
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
  v3 = [(MTATabBarController *)self->_tabBarController timerViewController];
  v4 = [v3 isViewLoaded];

  if (v4)
  {
    v5 = [(MTATabBarController *)self->_tabBarController timerViewController];
    [v5 reloadState];
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

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = [a4 configuration];
  [v5 setDelegateClass:objc_opt_class()];

  return v5;
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneDidBecomeActive", buf, 0xCu);
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [(MTATabBarController *)self->_tabBarController viewControllers];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v29 + 1) + 8 * v9) topViewController];
          [v10 setTitle:&stru_1000AEF10];
          v11 = [v10 navigationItem];
          [v11 setLeftBarButtonItem:0];

          v12 = [v10 navigationItem];
          [v12 setRightBarButtonItem:0];

          v13 = [v10 view];
          [v13 setHidden:1];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v7);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(MTATabBarController *)self->_tabBarController view];
    v15 = [v14 subviews];
    v16 = [v15 objectAtIndex:1];
    v17 = [v16 subviews];

    v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
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
            objc_enumerationMutation(v17);
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
        v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v19);
    }
  }

  v23 = MTLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    sessionManager = self->_sessionManager;
    *buf = 138543618;
    v34 = self;
    v35 = 2114;
    v36 = sessionManager;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ ending session with manager: %{public}@", buf, 0x16u);
  }

  [(MTSessionManager *)self->_sessionManager endAlertingSession];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ application willFinishLaunchingWithOptions", &v8, 0xCu);
  }

  v6 = dispatch_get_global_queue(0, 0);
  dispatch_async(v6, &stru_1000ADE58);

  return 1;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = self;
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
  v20 = [v19 keyWindow];
  [v20 _accessibilitySetInterfaceStyleIntent:2];

  return 1;
}

- (void)scene:(id)a3 openURL:(id)a4 sourceApplication:(id)a5
{
  v6 = a4;
  v7 = [v6 resourceSpecifier];
  v8 = [v6 mtClockAppSection];

  if (v8 != -1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017600;
    block[3] = &unk_1000ADE80;
    block[4] = self;
    v10 = v7;
    v11 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_handleDefaultSpecifierForSection:(int64_t)a3
{
  v4 = [(MTATabBarController *)self->_tabBarController tabIndexForAppSection:a3];
  [(MTATabBarController *)self->_tabBarController setSelectedIndex:v4];
  v6 = +[NSUserDefaults standardUserDefaults];
  v5 = [NSNumber numberWithUnsignedInteger:v4 + 1];
  [v6 setObject:v5 forKey:@"LAST_SELECTED_VIEW"];
}

- (void)_handleEditSpecifierForSection:(int64_t)a3
{
  if (a3 == 2)
  {
    [(MTAAppController *)self _handleDefaultSpecifierForSection:?];
    tabBarController = self->_tabBarController;

    [(MTATabBarController *)tabBarController showSleepView];
  }
}

- (void)_handleAddSpecifierForSection:(int64_t)a3
{
  if (a3 == 4)
  {
    [(MTAAppController *)self _handleDefaultSpecifierForSection:?];
    tabBarController = self->_tabBarController;

    [(MTATabBarController *)tabBarController showAddView];
  }
}

- (void)initWindowAndViewControllersWithWindowScene:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLOCK" value:&stru_1000AEF10 table:0];
  [v4 setTitle:v6];

  v7 = [[MTASecureWindow alloc] initWithWindowScene:v4];
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
  v2 = [(MTASecureWindow *)self->_window windowScene];
  v3 = [v2 interfaceOrientation];

  return v3;
}

- (void)saveState
{
  v3 = [NSNumber numberWithUnsignedInteger:[(MTATabBarController *)self->_tabBarController selectedIndex]+ 1];
  CFPreferencesSetAppValue(@"LAST_SELECTED_VIEW", v3, @"com.apple.mobiletimer");

  v4 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  [v4 saveState];

  v5 = [(MTATabBarController *)self->_tabBarController alarmViewController];
  [v5 saveState];

  v6 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  [v6 saveState];

  v7 = [(MTATabBarController *)self->_tabBarController timerViewController];
  [v7 saveState];

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
  v3 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  v4 = [v3 isViewLoaded];

  if (!self->_userPreferencesCommitTimer)
  {
    +[ClockManager loadUserPreferences];
    if (v4)
    {
      v6 = +[WorldClockManager sharedManager];
      if ([v6 checkIfCitiesModified])
      {
        v5 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
        [v5 reloadState];
      }
    }
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ sceneWillEnterForeground", &v11, 0xCu);
  }

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:1];
  [(MTAAppController *)self reloadTimerState];
  v5 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  v6 = [v5 isViewLoaded];

  if (v6)
  {
    v7 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
    [v7 reloadState];
  }

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 shortcutItems];
  v10 = [v9 count];

  if (!v10)
  {
    [(MTATabBarController *)self->_tabBarController populateShortcutItems];
  }

  [(MTATabBarController *)self->_tabBarController restoreState];
}

- (void)prepareTabBarControllerRestoreIndex:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100017F48;
  v3[3] = &unk_1000ADEA8;
  v3[4] = self;
  v4 = a3;
  if (qword_1000D2928 != -1)
  {
    dispatch_once(&qword_1000D2928, v3);
  }
}

- (void)startedTest:(id)a3
{
  objc_storeStrong(&self->_currentTestName, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = MTAAppController;
  [(MTAAppController *)&v6 startedTest:v5];
}

- (void)finishedTest:(id)a3 extraResults:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTAAppController;
  [(MTAAppController *)&v6 finishedTest:a3 extraResults:a4];
  currentTestName = self->_currentTestName;
  self->_currentTestName = 0;
}

- (BOOL)_runSelectTest:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_currentTestName isEqualToString:@"SelectAlarm"])
  {
    v5 = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([(NSString *)self->_currentTestName isEqualToString:@"SelectWorldClock"])
  {
    v5 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if ([(NSString *)self->_currentTestName isEqualToString:@"SelectStopwatch"])
  {
    v5 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![(NSString *)self->_currentTestName isEqualToString:@"SelectTimer"])
    {
      goto LABEL_13;
    }

    v5 = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v6 = v5;
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 setupForTest:self->_currentTestName options:v4];
    }

    [(MTAAppController *)self startedTest:self->_currentTestName];
    [(MTAAppController *)self _selectViewController:v6];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000182B0;
    block[3] = &unk_1000ADED0;
    block[4] = self;
    v10 = v6;
    v11 = v4;
    v7 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

LABEL_13:

  return 1;
}

- (BOOL)_runScrollTest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"natural"];
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
    v7 = [(MTATabBarController *)self->_tabBarController alarmViewController];
    v8 = 0;
  }

  else
  {
    if (![(NSString *)self->_currentTestName containsString:@"ScrollWorldClock"])
    {
      goto LABEL_20;
    }

    v7 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
    if ([(NSString *)self->_currentTestName containsString:@"Edit"])
    {
      v11 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      v8 = 1;
      [v11 setEditing:1 animated:1];
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 setupForTest:self->_currentTestName options:v4];
    }

    [(MTAAppController *)self _selectViewController:v7];
    [(MTAAppController *)self _spinMainRunLoop];
    v9 = [v7 contentScrollView];
    if (v6)
    {
      v10 = [[RPTScrollViewTestParameters alloc] initWithTestName:self->_currentTestName scrollView:v9 completionHandler:0];
      [RPTTestRunner runTestWithParameters:v10];
    }

    else
    {
      currentTestName = self->_currentTestName;
      v10 = [v4 objectForKeyedSubscript:@"iterations"];
      v13 = [v10 intValue];
      v14 = [v4 objectForKey:@"offset"];
      [v9 _performScrollTest:currentTestName iterations:v13 delta:{objc_msgSend(v14, "intValue")}];
    }

    if (v8)
    {
      v15 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      [v15 setEditing:0 animated:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 teardownForTest:self->_currentTestName options:v4];
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

- (void)_selectViewController:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = self;
  v5 = [(MTATabBarController *)self->_tabBarController viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        if (v12 == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v12 viewControllers], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14 == v4))
        {

          if (v11 != 1)
          {
            [(MTATabBarController *)v15->_tabBarController setSelectedIndex:-v11];
          }

          goto LABEL_14;
        }

        v10 = v10 + 1;
        --v11;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_windowDidRotate:(id)a3
{
  v4 = a3;
  if (self->_currentTestName)
  {
    v12 = v4;
    if (self->_iterations)
    {
      v5 = +[UIWindow keyWindow];
      v6 = [v5 interfaceOrientation];

      if (v6 == 3)
      {
        --self->_iterations;
        v7 = self;
        v8 = 1;
      }

      else
      {
        v7 = self;
        v8 = 3;
      }

      [(MTAAppController *)v7 rotateIfNeeded:v8];
    }

    else
    {
      [MTAAppController finishedTest:"finishedTest:extraResults:" extraResults:?];
      v9 = +[NSNotificationCenter defaultCenter];
      v10 = UIWindowDidRotateNotification;
      v11 = +[UIWindow keyWindow];
      [v9 removeObserver:self name:v10 object:v11];
    }

    v4 = v12;
  }
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a4;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Will Continue with Activity Type:%@", &v9, 0xCu);
  }

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:0];
  if (qword_1000D2930 != -1)
  {
    sub_1000735A4();
  }

  if ([v5 isEqualToString:@"com.apple.clock.worldclock"])
  {
    v7 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if (([v5 isEqualToString:@"com.apple.clock.alarm"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.clock.wakealarm") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.clock.bedtime"))
  {
    v7 = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([v5 isEqualToString:@"com.apple.clock.stopwatch"])
  {
    v7 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![v5 isEqualToString:@"com.apple.clock.timer"])
    {
      goto LABEL_12;
    }

    v7 = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v8 = v7;
  [(MTAAppController *)self _selectViewController:v7];

LABEL_12:
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v10 = a4;
  v5 = [v10 interaction];
  v6 = [v5 intent];

  if (v6)
  {
    [(MTATabBarController *)self->_tabBarController performActionForIntent:v6];
  }

  else
  {
    v7 = [v10 activityType];
    v8 = [v7 isEqualToString:@"com.apple.clock.worldclock"];

    if (v8)
    {
      v9 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      if (objc_opt_respondsToSelector())
      {
        [v9 restoreWithUserActivity:v10];
      }
    }
  }
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = MTLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000735CC(self, v6, v7);
  }
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v6 = +[MTAStateStore shared];
  [v6 bypass];

  [(MTAAppController *)self prepareTabBarControllerRestoreIndex:0];
  [(MTATabBarController *)self->_tabBarController performActionForShortcutItem:v7];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MTAAppController;
  [(MTAAppController *)&v14 buildMenuWithBuilder:v4];
  [(MTAAppController *)self setMenuBuilder:v4];
  [v4 removeMenuForIdentifier:UIMenuHide];
  [v4 removeMenuForIdentifier:UIMenuQuit];
  [v4 removeMenuForIdentifier:UIMenuFont];
  [v4 removeMenuForIdentifier:UIMenuFormat];
  [v4 removeMenuForIdentifier:UIMenuFind];
  [v4 removeMenuForIdentifier:UIMenuAutoFill];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"RECENT_TIMERS_MENU" value:&stru_1000AEF10 table:0];
  v7 = [UIMenu menuWithTitle:v6 children:&__NSArray0__struct];

  [v4 insertChildMenu:v7 atStartOfMenuForIdentifier:UIMenuFile];
  v8 = [v7 identifier];
  [(MTAAppController *)self setRecentTimerIdentifier:v8];

  v9 = [(MTATabBarController *)self->_tabBarController timerViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(MTATabBarController *)self->_tabBarController timerViewController];
    v12 = [v7 identifier];
    [v11 performSelector:"menuBarAppearedWithBuilder:targetMenuIdentifier:" withObject:v4 withObject:v12];
  }

  [v4 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:&stru_1000ADF30];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100019298;
  v13[3] = &unk_1000ADF80;
  v13[4] = self;
  [v4 replaceChildrenOfMenuForIdentifier:UIMenuView fromChildrenBlock:v13];
  [v4 replaceChildrenOfMenuForIdentifier:UIMenuWindow fromChildrenBlock:&stru_1000ADFA0];
}

- (void)chooseViewOption:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
    }

    else
    {
      if (a3 != 3)
      {
        return;
      }

      v4 = [(MTATabBarController *)self->_tabBarController timerViewController];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v4 = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else
  {
    v4 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  if (v4)
  {
    v5 = v4;
    [(MTAAppController *)self _selectViewController:v4];
  }
}

- (void)switchToTimerTab
{
  v3 = [(MTATabBarController *)self->_tabBarController timerViewController];
  [(MTAAppController *)self _selectViewController:v3];
}

- (void)appIntentsProvider:(id)a3 didSelectTab:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v11 = MTLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabStopwatch", &v13, 0xCu);
      }

      v8 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
      goto LABEL_18;
    }

    if (a4 == 3)
    {
      v9 = MTLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabTimer", &v13, 0xCu);
      }

      v8 = [(MTATabBarController *)self->_tabBarController timerViewController];
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      v10 = MTLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabClock", &v13, 0xCu);
      }

      v8 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
      goto LABEL_18;
    }

    if (a4 == 1)
    {
      v7 = MTLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "[MTAAppController appIntentsProvider:didSelectTab:]";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Handling AppIntents action for MTProviderTabAlarm", &v13, 0xCu);
      }

      v8 = [(MTATabBarController *)self->_tabBarController alarmViewController];
LABEL_18:
      v12 = v8;
      [(MTAAppController *)self _selectViewController:v8];
    }
  }
}

- (void)didAddNewWorldClockWithName:(id)a3 provider:(id)a4
{
  v5 = a3;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didAddNewWordClockWithName: %{public}@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019BA0;
  v8[3] = &unk_1000ADAB0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)didRemoveWorldClockWithName:(id)a3 provider:(id)a4
{
  v5 = a3;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: didRemoveWorldClockWithName: %{public}@", buf, 0x16u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019EF0;
  v8[3] = &unk_1000ADAB0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 objectForKey:@"iterations"];
  self->_iterations = [v9 integerValue];

  objc_storeStrong(&self->_currentTestName, a3);
  if ([v7 rangeOfString:@"Scroll"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(MTAAppController *)self _runScrollTest:v8];
LABEL_23:
    v16 = v13;
    goto LABEL_24;
  }

  if ([v7 rangeOfString:@"Select"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(MTAAppController *)self _runSelectTest:v8];
    goto LABEL_23;
  }

  if (([v7 hasPrefix:@"Rotate"] & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"Resize"))
  {
    goto LABEL_22;
  }

  if ((MTUIIsPadIdiom() & 1) == 0)
  {
    v10 = +[UIDevice currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 != 5)
    {
      goto LABEL_22;
    }
  }

  if ([v7 hasSuffix:@"WorldClock"])
  {
    v12 = [(MTATabBarController *)self->_tabBarController worldClockViewController];
  }

  else if ([v7 hasSuffix:@"Alarm"])
  {
    v12 = [(MTATabBarController *)self->_tabBarController alarmViewController];
  }

  else if ([v7 hasSuffix:@"Stopwatch"])
  {
    v12 = [(MTATabBarController *)self->_tabBarController stopwatchViewController];
  }

  else
  {
    if (![v7 hasSuffix:@"Timer"])
    {
LABEL_22:
      v18.receiver = self;
      v18.super_class = MTAAppController;
      v13 = [(MTAAppController *)&v18 runTest:v7 options:v8];
      goto LABEL_23;
    }

    v12 = [(MTATabBarController *)self->_tabBarController timerViewController];
  }

  v14 = v12;
  if (!v12)
  {
    goto LABEL_22;
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setupForTest:v7 options:v8];
  }

  [(MTAAppController *)self _selectViewController:v14];
  if ([v7 hasPrefix:@"Rotate"])
  {
    v15 = [(MTAAppController *)self _runRotationTest];
  }

  else
  {
    if (![v7 hasPrefix:@"Resize"])
    {
      v16 = 0;
      goto LABEL_29;
    }

    v15 = [(MTAAppController *)self _runResizeTest];
  }

  v16 = v15;
LABEL_29:
  if (objc_opt_respondsToSelector())
  {
    [v14 teardownForTest:v7 options:v8];
  }

LABEL_24:
  return v16;
}

- (double)visibleViewHeight
{
  v2 = [(MTATabBarController *)self->_tabBarController viewControllers];
  v3 = [v2 firstObject];

  v4 = [v3 topViewController];
  if (v4)
  {
    v5 = +[MTAUtilities isLandscape];
    v6 = [v4 view];
    [v6 frame];
    v8 = v7;

    v9 = [v4 view];
    [v9 frame];
    v11 = v10;

    if (v8 < v11 != v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    v13 = [v4 tabBarController];
    v14 = [v13 tabBar];
    [v14 frame];
    v16 = v15;

    v17 = [v4 navigationController];
    v18 = [v17 navigationBar];
    [v18 frame];
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