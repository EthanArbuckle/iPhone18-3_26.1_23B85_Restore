@interface FRApplicationUpdateNotifier
- (BOOL)isAlertPresentationIntervalPassed;
- (BOOL)shouldShowUpdateAlert;
- (FRApplicationUpdateNotifier)init;
- (FRApplicationUpdateNotifier)initWithVersionHelpers:(id)helpers appActivityMonitor:(id)monitor;
- (UIViewController)viewController;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)launchSettings;
- (void)persistStates;
- (void)restoreStates;
- (void)showAppUpdateAlert;
- (void)updateAlertDidDismiss:(BOOL)dismiss;
@end

@implementation FRApplicationUpdateNotifier

- (void)restoreStates
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v6 = [v3 dictionaryForKey:@"FRAUNPersistedState"];

  persistableProperties = [(FRApplicationUpdateNotifier *)self persistableProperties];
  v5 = [v6 dictionaryWithValuesForKeys:persistableProperties];

  if ([v5 count])
  {
    [(FRApplicationUpdateNotifier *)self setValuesForKeysWithDictionary:v5];
  }
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if ([(FRApplicationUpdateNotifier *)self shouldShowUpdateAlert])
  {
    [(FRApplicationUpdateNotifier *)self showAppUpdateAlert];
  }

  versionHelpers = [(FRApplicationUpdateNotifier *)self versionHelpers];
  [versionHelpers updateAppObsolescenceState];
}

- (BOOL)shouldShowUpdateAlert
{
  versionHelpers = [(FRApplicationUpdateNotifier *)self versionHelpers];
  v4 = [versionHelpers isUpdateRequired] && !-[FRApplicationUpdateNotifier isPresentingAlert](self, "isPresentingAlert") && -[FRApplicationUpdateNotifier isAlertPresentationIntervalPassed](self, "isAlertPresentationIntervalPassed") && -[FRApplicationUpdateNotifier alertPresentationCount](self, "alertPresentationCount") < 3;

  return v4;
}

- (FRApplicationUpdateNotifier)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRApplicationUpdateNotifier init]";
    v8 = 2080;
    v9 = "FRApplicationUpdateNotifier.m";
    v10 = 1024;
    v11 = 41;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRApplicationUpdateNotifier init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRApplicationUpdateNotifier)initWithVersionHelpers:(id)helpers appActivityMonitor:(id)monitor
{
  helpersCopy = helpers;
  monitorCopy = monitor;
  if (!helpersCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D310();
    if (monitorCopy)
    {
      goto LABEL_6;
    }
  }

  else if (monitorCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D3F0();
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = FRApplicationUpdateNotifier;
  v9 = [(FRApplicationUpdateNotifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_versionHelpers, helpers);
    [monitorCopy addObserver:v10];
  }

  return v10;
}

- (void)persistStates
{
  v3 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  persistableProperties = [(FRApplicationUpdateNotifier *)self persistableProperties];
  v5 = [persistableProperties countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(persistableProperties);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(FRApplicationUpdateNotifier *)self valueForKey:v9];
        if (v10)
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [persistableProperties countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 setObject:v3 forKey:@"FRAUNPersistedState"];
}

- (void)showAppUpdateAlert
{
  viewController = [(FRApplicationUpdateNotifier *)self viewController];

  if (!viewController && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006D4D0();
  }

  viewController2 = [(FRApplicationUpdateNotifier *)self viewController];

  if (viewController2)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FRTimeToUpdateAlertTitle" value:&stru_1000C67A8 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FRInstallLatestVersionOS" value:&stru_1000C67A8 table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"FRGoToSettings" value:&stru_1000C67A8 table:0];

    LODWORD(v9) = [(FRApplicationUpdateNotifier *)self shouldPresentLastAlertForCurrentUpdate];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (v9)
    {
      v13 = @"No Thanks";
    }

    else
    {
      v13 = @"Not Now";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_1000C67A8 table:0];

    v15 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    objc_initWeak(location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002AEA0;
    v25[3] = &unk_1000C37E0;
    objc_copyWeak(&v26, location);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002AEFC;
    v23[3] = &unk_1000C1AA0;
    v16 = objc_retainBlock(v25);
    v24 = v16;
    v17 = [UIAlertAction actionWithTitle:v14 style:0 handler:v23];
    [v15 addAction:v17];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002AF10;
    v21[3] = &unk_1000C1AA0;
    v18 = v16;
    v22 = v18;
    v19 = [UIAlertAction actionWithTitle:v10 style:0 handler:v21];
    [v15 addAction:v19];
    self->_isPresentingAlert = 1;
    viewController3 = [(FRApplicationUpdateNotifier *)self viewController];
    [viewController3 presentViewController:v15 animated:1 completion:0];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

- (void)updateAlertDidDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  v5 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  [(FRApplicationUpdateNotifier *)self setNextAlertPresentationDate:v5];

  ++self->_alertPresentationCount;
  [(FRApplicationUpdateNotifier *)self persistStates];
  if (dismissCopy)
  {

    [(FRApplicationUpdateNotifier *)self launchSettings];
  }
}

- (void)launchSettings
{
  v2 = objc_opt_new();
  [v2 openApplication:@"com.apple.Preferences" options:0 withResult:0];
}

- (BOOL)isAlertPresentationIntervalPassed
{
  v3 = NewsCoreUserDefaults();
  if ([v3 BOOLForKey:FCSimulateAppObsolescenceSharedPreferenceKey])
  {
    v4 = 1;
  }

  else
  {
    v5 = NewsCoreUserDefaults();
    if (([(NSDate *)v5 BOOLForKey:FCSimulateOSObsolescenceSharedPreferenceKey]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v6 = NewsCoreUserDefaults();
      v7 = [v6 BOOLForKey:FCSimulateHardwareObsolescenceSharedPreferenceKey];

      if (v7)
      {
        return 1;
      }

      nextAlertPresentationDate = self->_nextAlertPresentationDate;
      if (!nextAlertPresentationDate)
      {
        return 1;
      }

      v3 = +[NSDate date];
      v5 = [(NSDate *)nextAlertPresentationDate earlierDate:v3];
      v4 = v5 == self->_nextAlertPresentationDate;
    }
  }

  return v4;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end