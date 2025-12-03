@interface MTReachability
+ (id)sharedInstance;
- (BOOL)isPodcastsCellularDownloadsEnabled;
- (BOOL)showInternetUnreachableDialogWithAcknowledmentBlock:(id)block;
- (MTReachability)init;
- (id)reasonTextForNoInternet;
- (unint64_t)reasonForNoInternet;
- (void)_applicationDidBecomeActive;
- (void)_showAlertForInternetUnavailableReason:(unint64_t)reason completion:(id)completion;
- (void)_updateAirplaneMode;
- (void)_updateGlobalCellularWithCompletion:(id)completion;
- (void)_updateReachability;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setHasDeterminedActualGlobalCellularState:(BOOL)state;
@end

@implementation MTReachability

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004870;
  block[3] = &unk_1004D86F8;
  block[4] = self;
  if (qword_100583C40 != -1)
  {
    dispatch_once(&qword_100583C40, block);
  }

  v2 = qword_100583C38;

  return v2;
}

- (MTReachability)init
{
  v19.receiver = self;
  v19.super_class = MTReachability;
  v2 = [(MTReachability *)&v19 init];
  if (v2)
  {
    v3 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing Reachability", buf, 2u);
    }

    v4 = +[NSHashTable weakObjectsHashTable];
    callbacks = v2->_callbacks;
    v2->_callbacks = v4;

    v6 = dispatch_queue_create("com.apple.MTReachability.cellularQueue", 0);
    cellularQueue = v2->_cellularQueue;
    v2->_cellularQueue = v6;

    v2->_hasDeterminedActualGlobalCellularState = 0;
    v8 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    v2->_globalCellularEnabled = [v8 BOOLForKey:kMTGlobalCellularUserDefaultKey];

    v9 = +[ITMReachability reachabilityForInternetConnection];
    reachability = v2->_reachability;
    v2->_reachability = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_updateReachability" name:kReachabilityChangedNotification object:v2->_reachability];

    [(ITMReachability *)v2->_reachability startNotifier];
    [(MTReachability *)v2 _updateReachability];
    v12 = objc_alloc_init(RadiosPreferences);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v12;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"_applicationDidBecomeActive" name:MTApplicationDidBecomeActiveNotification object:0];

    [(MTReachability *)v2 _updateAirplaneMode];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003CE0C;
    v16[3] = &unk_1004D8358;
    v17 = v2;
    [(MTReachability *)v17 _updateGlobalCellularWithCompletion:v16];
  }

  return v2;
}

- (void)_updateReachability
{
  v3 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating reachability", buf, 2u);
  }

  isReachable = [(MTReachability *)self isReachable];
  reachability = [(MTReachability *)self reachability];
  -[MTReachability setNetworkStatus:](self, "setNetworkStatus:", [reachability currentReachabilityStatus]);

  [(MTReachability *)self setReachable:1];
  networkStatus = [(MTReachability *)self networkStatus];
  if (networkStatus)
  {
    if (networkStatus == 1)
    {
      isGlobalCellularEnabled = 1;
    }

    else
    {
      if (networkStatus != 2)
      {
        goto LABEL_10;
      }

      isGlobalCellularEnabled = [(MTReachability *)self isGlobalCellularEnabled];
    }
  }

  else
  {
    isGlobalCellularEnabled = 0;
  }

  [(MTReachability *)self setReachable:isGlobalCellularEnabled];
LABEL_10:
  v8 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    reachability2 = [(MTReachability *)self reachability];
    currentReachabilityStatus = [reachability2 currentReachabilityStatus];
    *buf = 134217984;
    *v30 = currentReachabilityStatus;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "\treachability status <%ld>", buf, 0xCu);
  }

  v11 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isGlobalCellularEnabled2 = [(MTReachability *)self isGlobalCellularEnabled];
    *buf = 67109120;
    *v30 = isGlobalCellularEnabled2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "\tcellular enabled <%x>", buf, 8u);
  }

  v13 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    hasDeterminedActualGlobalCellularState = [(MTReachability *)self hasDeterminedActualGlobalCellularState];
    *buf = 67109120;
    *v30 = hasDeterminedActualGlobalCellularState ^ 1;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "\tis using cached global cellular setting <%x>", buf, 8u);
  }

  v15 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    isReachable2 = [(MTReachability *)self isReachable];
    *buf = 67109376;
    *v30 = isReachable;
    *&v30[4] = 1024;
    *&v30[6] = isReachable2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\treachability changing from %i to %i", buf, 0xEu);
  }

  callbacks = [(MTReachability *)self callbacks];
  objc_sync_enter(callbacks);
  callbacks2 = [(MTReachability *)self callbacks];
  v19 = [callbacks2 copy];

  objc_sync_exit(callbacks);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v21)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v24 + 1) + 8 * v23) reachabilityChangedFrom:isReachable to:{-[MTReachability isReachable](self, "isReachable", v24)}];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }
}

- (void)_updateAirplaneMode
{
  [(RadiosPreferences *)self->_radiosPreferences refresh];
  airplaneMode = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
  if (self->_airplaneModeEnabled != airplaneMode)
  {
    self->_airplaneModeEnabled = airplaneMode;
    v5 = +[NSNotificationCenter defaultCenter];
    v4 = [NSNumber numberWithBool:self->_airplaneModeEnabled];
    [v5 postNotificationName:@"MTAirplaneModeChangedNotification" object:v4];
  }
}

- (void)_applicationDidBecomeActive
{
  [(MTReachability *)self _updateAirplaneMode];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DF264;
  v3[3] = &unk_1004D8358;
  v3[4] = self;
  [(MTReachability *)self _updateGlobalCellularWithCompletion:v3];
}

- (void)dealloc
{
  reachability = [(MTReachability *)self reachability];
  [reachability stopNotifier];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = kReachabilityChangedNotification;
  reachability2 = [(MTReachability *)self reachability];
  [v4 removeObserver:self name:v5 object:reachability2];

  v7.receiver = self;
  v7.super_class = MTReachability;
  [(MTReachability *)&v7 dealloc];
}

- (void)setHasDeterminedActualGlobalCellularState:(BOOL)state
{
  self->_hasDeterminedActualGlobalCellularState = state;
  if (state)
  {
    v5 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    isGlobalCellularEnabled = [(MTReachability *)self isGlobalCellularEnabled];
    [v5 setBool:isGlobalCellularEnabled forKey:kMTGlobalCellularUserDefaultKey];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  callbacks = [(MTReachability *)self callbacks];
  objc_sync_enter(callbacks);
  callbacks2 = [(MTReachability *)self callbacks];
  [callbacks2 addObject:observerCopy];

  objc_sync_exit(callbacks);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  callbacks = [(MTReachability *)self callbacks];
  objc_sync_enter(callbacks);
  callbacks2 = [(MTReachability *)self callbacks];
  [callbacks2 removeObject:observerCopy];

  objc_sync_exit(callbacks);
}

- (id)reasonTextForNoInternet
{
  reasonForNoInternet = [(MTReachability *)self reasonForNoInternet];
  switch(reasonForNoInternet)
  {
    case 1uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"Airplane Mode";
      goto LABEL_9;
    case 2uLL:
      v6 = MGGetBoolAnswer();
      v7 = @"NO_WIFI";
      if (v6)
      {
        v7 = @"NO_WLAN";
      }

      v8 = v7;
      v4 = +[NSBundle mainBundle];
      v9 = [v4 localizedStringForKey:v8 value:&stru_1004F3018 table:0];

      goto LABEL_10;
    case 3uLL:
      v3 = +[NSBundle mainBundle];
      v4 = v3;
      v5 = @"No Internet";
LABEL_9:
      v9 = [v3 localizedStringForKey:v5 value:&stru_1004F3018 table:0];
LABEL_10:

      goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (BOOL)showInternetUnreachableDialogWithAcknowledmentBlock:(id)block
{
  blockCopy = block;
  if ([(MTReachability *)self isReachable]|| (v5 = [(MTReachability *)self reasonForNoInternet]) == 0)
  {
    v6 = 0;
  }

  else
  {
    [(MTReachability *)self _showAlertForInternetUnavailableReason:v5 completion:blockCopy];
    v6 = 1;
  }

  return v6;
}

- (unint64_t)reasonForNoInternet
{
  if ([(MTReachability *)self networkStatus])
  {
    if ([(MTReachability *)self networkStatus]== 2)
    {
      if ([(MTReachability *)self isGlobalCellularEnabled])
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  else if ([(MTReachability *)self isAirplaneModeEnabled])
  {
    return 1;
  }

  else if ([(MTReachability *)self isGlobalCellularEnabled]|| (MGGetBoolAnswer() & 1) == 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isPodcastsCellularDownloadsEnabled
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  if ([v3 BOOLForKey:kMTWiFiDownloadOnly])
  {
    isGlobalCellularEnabled = 0;
  }

  else
  {
    isGlobalCellularEnabled = [(MTReachability *)self isGlobalCellularEnabled];
  }

  return isGlobalCellularEnabled;
}

- (void)_showAlertForInternetUnavailableReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v6 = 0;
  if (reason > 1)
  {
    if (reason == 2)
    {
      v14 = +[NSBundle mainBundle];
      v8 = [v14 localizedStringForKey:@"ALERT_TITLE_GLOBAL_CELLULAR_DISABLED" value:&stru_1004F3018 table:0];

      v15 = MGGetBoolAnswer();
      v16 = @"ALERT_MESSAGE_GLOBAL_CELLULAR_DISABLED_WIFI";
      if (v15)
      {
        v16 = @"ALERT_MESSAGE_GLOBAL_CELLULAR_DISABLED_WLAN";
      }

      v17 = v16;
      v18 = +[NSBundle mainBundle];
      v7 = [v18 localizedStringForKey:v17 value:&stru_1004F3018 table:0];

      v6 = +[PSCellularDataSettingsDetail preferencesURL];
      goto LABEL_14;
    }

    v7 = 0;
    v8 = 0;
    if (reason == 3)
    {
      v13 = +[NSBundle mainBundle];
      v8 = [v13 localizedStringForKey:@"ALERT_TITLE_NO_INTERNET" value:&stru_1004F3018 table:0];

      v6 = 0;
LABEL_10:
      v7 = 0;
    }
  }

  else
  {
    if (!reason)
    {
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 0;
    if (reason == 1)
    {
      v9 = MGGetBoolAnswer();
      v10 = @"ALERT_TITLE_AIRPLANE_MODE_WIFI";
      if (v9)
      {
        v10 = @"ALERT_TITLE_AIRPLANE_MODE_WLAN";
      }

      v11 = v10;
      v12 = +[NSBundle mainBundle];
      v8 = [v12 localizedStringForKey:v11 value:&stru_1004F3018 table:0];

      v6 = +[PSAirplaneModeSettingsDetail preferencesURL];
      goto LABEL_10;
    }
  }

LABEL_14:
  v19 = [MTAlertController alertControllerWithTitle:v8 message:v7 preferredStyle:1];
  if (v6)
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Settings" value:&stru_1004F3018 table:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000DFAA4;
    v28[3] = &unk_1004DBC98;
    v29 = v6;
    v30 = completionCopy;
    v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v28];

    [v19 addAction:v22];
  }

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"OK" value:&stru_1004F3018 table:0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000DFB14;
  v26[3] = &unk_1004DB318;
  v27 = completionCopy;
  v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:v26];

  [v19 addAction:v25];
  [v19 presentAnimated:1 completion:0];

LABEL_17:
}

- (void)_updateGlobalCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _CTServerConnectionCreateOnTargetQueue();
  if (v5)
  {
    cellularQueue = self->_cellularQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DFBF4;
    block[3] = &unk_1004D8A70;
    v9 = v5;
    block[4] = self;
    v8 = completionCopy;
    dispatch_async(cellularQueue, block);
  }
}

@end