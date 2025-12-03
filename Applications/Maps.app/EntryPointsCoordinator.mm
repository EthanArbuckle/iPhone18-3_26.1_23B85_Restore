@interface EntryPointsCoordinator
- (BOOL)_debug_shouldSkipSendingMergedRichMapsActivity;
- (BOOL)_isBackgroundNavigationLaunch:(id)launch;
- (BOOL)_isMapsActivityActionInQueue;
- (BOOL)_sessionShouldParticipateInLifecycle:(id)lifecycle;
- (BOOL)_sessionShouldParticipateInLifecycle:(id)lifecycle scene:(id)scene;
- (BOOL)_shouldEnqueueLocationAuthenticationAlerts;
- (BOOL)_shouldRestoreNavigationSession:(id)session;
- (BOOL)shouldHandleUniversalLinkWithUserActivity:(id)activity;
- (EntryPointsCoordinator)init;
- (EntryPointsCoordinatorDelegate)delegate;
- (LaunchAlertsManager)launchAlertsManager;
- (void)_addCompletionIfNeeded;
- (void)_addRestoreTaskForSession:(id)session;
- (void)_addTask:(id)task atFirstIndex:(BOOL)index;
- (void)_cleanState;
- (void)_continueUserActivity:(id)activity session:(id)session windowSize:(CGSize)size;
- (void)_displayLaunchAlertsIfNecessary;
- (void)_lockMergeActivities;
- (void)_mergeTasks;
- (void)_openURL:(id)l referringURL:(id)rL sourceApplication:(id)application session:(id)session sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size;
- (void)_sendMergedRichMapsActivity;
- (void)_sendMergedRichMapsActivityIfPossible;
- (void)_unlockMergeActivities;
- (void)_updateLocaleInformation;
- (void)addTask:(id)task;
- (void)continueUserActivity:(id)activity session:(id)session windowSize:(CGSize)size;
- (void)didBecomeActiveWithSession:(id)session;
- (void)didEnterBackgroundWithSession:(id)session;
- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)launchAlertsManagerDidFinishProcessingAlert:(id)alert;
- (void)openNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier;
- (void)openShortcutItem:(id)item;
- (void)openURL:(id)l session:(id)session sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size;
- (void)prepareBackgroundNavigation;
- (void)receivedDidPresentContaineeNotification:(id)notification;
- (void)receivedFullyDrawnNotification:(id)notification;
- (void)willConnectToSession:(id)session options:(id)options windowSize:(CGSize)size scene:(id)scene;
- (void)willContinueUserActivityWithType:(id)type;
- (void)willEnterForegroundWithSession:(id)session;
- (void)willResignActiveWithSession:(id)session;
@end

@implementation EntryPointsCoordinator

- (EntryPointsCoordinator)init
{
  v19.receiver = self;
  v19.super_class = EntryPointsCoordinator;
  v2 = [(EntryPointsCoordinator *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_firstWidget = 1;
    v2->_coldLaunch = 1;
    v4 = +[UIScreen mainScreen];
    v5 = sub_10000FA08(v4);

    if (v5 != 5)
    {
      v3->_shouldWaitForFirstContainee = 1;
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 addObserver:v3 selector:"receivedDidPresentContaineeNotification:" name:@"ContainerDidPresentContaineeNotification" object:0];
    }

    v7 = +[NSMutableArray array];
    tasks = v3->_tasks;
    v3->_tasks = v7;

    v9 = +[NSMutableArray array];
    tasksToPerform = v3->_tasksToPerform;
    v3->_tasksToPerform = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.MapsEntryPoint", v12);
    tasksQueue = v3->_tasksQueue;
    v3->_tasksQueue = v13;

    v15 = dispatch_group_create();
    tasksGroup = v3->_tasksGroup;
    v3->_tasksGroup = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v3 selector:"receivedFullyDrawnNotification:" name:VKMapViewDidBecomeFullyDrawnNotification object:0];
  }

  return v3;
}

- (void)_lockMergeActivities
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self->_mergeLocked)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] lockMergeActivities (%@)", &v6, 0xCu);
  }

  if (!self->_mergeLocked)
  {
    self->_mergeLocked = 1;
    dispatch_group_enter(self->_tasksGroup);
  }
}

- (EntryPointsCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receivedFullyDrawnNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:VKMapViewDidBecomeFullyDrawnNotification object:0];

  [(EntryPointsCoordinator *)self _updateLocaleInformation];
}

- (void)receivedDidPresentContaineeNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"ContainerDidPresentContaineeNotification" object:0];

  *&self->_shouldWaitForFirstContainee = 0;
}

- (void)openNotificationData:(id)data forType:(id)type recordIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  dataCopy = data;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = typeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[EP] openNotificationData %@", &v13, 0xCu);
  }

  v12 = [NotificationHandlingTask taskForData:dataCopy type:typeCopy recordIdentifier:identifierCopy];

  [(EntryPointsCoordinator *)self _addTask:v12];
}

- (void)openShortcutItem:(id)item
{
  itemCopy = item;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = itemCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] openShortcutItem %@", &v7, 0xCu);
  }

  v6 = [ShortcutHandlingTask taskForShortcutItem:itemCopy];
  [(EntryPointsCoordinator *)self _addTask:v6];
}

- (BOOL)shouldHandleUniversalLinkWithUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    webpageURL = [activityCopy webpageURL];
    if (webpageURL)
    {
      LOBYTE(v5) = [_MKURLHandler canHandleURL:webpageURL];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)_continueUserActivity:(id)activity session:(id)session windowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  activityCopy = activity;
  sessionCopy = session;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = activityCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[EP] _continueUserActivity %@", buf, 0xCu);
  }

  if ([(EntryPointsCoordinator *)self shouldHandleUniversalLinkWithUserActivity:activityCopy])
  {
    webpageURL = [activityCopy webpageURL];
    referrerURL = [activityCopy referrerURL];
    _sourceApplication = [activityCopy _sourceApplication];
    [(EntryPointsCoordinator *)self _openURL:webpageURL referringURL:referrerURL sourceApplication:_sourceApplication session:sessionCopy sceneOptions:0 mkOptions:0 windowSize:width, height];
    goto LABEL_9;
  }

  webpageURL = [activityCopy userInfo];
  referrerURL = [activityCopy activityType];
  if (![referrerURL isEqual:@"com.apple.Maps"])
  {
LABEL_8:
    _sourceApplication = [UserActivityHandlingTask taskForUserActivity:activityCopy atColdLaunch:self->_coldLaunch];
    [(EntryPointsCoordinator *)self _addTask:_sourceApplication];
    goto LABEL_9;
  }

  v15 = [webpageURL objectForKeyedSubscript:@"bs"];
  if (v15)
  {

    goto LABEL_8;
  }

  v16 = [webpageURL objectForKeyedSubscript:@"MapsActionKey"];

  if (!v16)
  {
    goto LABEL_8;
  }

  _sourceApplication = [webpageURL objectForKeyedSubscript:@"MapsActionLaunchURLKey"];
  v17 = sub_100005610();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    title = [activityCopy title];
    *buf = 138412546;
    v26 = title;
    v27 = 2112;
    v28 = _sourceApplication;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[EP] LAUNCHING Siri Action '%@' from URL %@", buf, 0x16u);
  }

  v23 = _UISceneConnectionOptionsSourceApplicationKey;
  v24 = @"SiriActions";
  v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v20 = [UISceneOpenURLOptions _optionsFromDictionary:v19];

  _sourceApplication2 = [activityCopy _sourceApplication];
  height = [URLHandlingTask taskForURL:_sourceApplication referringURL:0 sourceApplication:_sourceApplication2 sceneOptions:v20 mkOptions:0 windowSize:width, height];

  if (height)
  {
    [(EntryPointsCoordinator *)self _addTask:height];
  }

LABEL_9:
}

- (void)continueUserActivity:(id)activity session:(id)session windowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  activityCopy = activity;
  sessionCopy = session;
  continuityLoadingToken = self->_continuityLoadingToken;
  self->_continuityLoadingToken = 0;

  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = activityCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[EP] continueUserActivity %@", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B3F868;
  v15[3] = &unk_10165E6B0;
  v15[4] = self;
  v16 = activityCopy;
  v17 = sessionCopy;
  v18 = width;
  v19 = height;
  v13 = sessionCopy;
  v14 = activityCopy;
  [UIApplication _mapsCarPlay_connectApplicationSceneIfNeededForSession:v13 completion:v15];
}

- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  continuityLoadingToken = self->_continuityLoadingToken;
  self->_continuityLoadingToken = 0;

  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v27 = typeCopy;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[EP] didFailToContinueUserActivityWithType %@ %@", buf, 0x16u);
  }

  self->_launchedWithExternalInput = 0;
  v10 = [typeCopy isEqual:CSSearchableItemActionType];
  v11 = +[NSBundle mainBundle];
  v12 = v11;
  if (v10)
  {
    v13 = @"Failed to continue activity [Spotlight opening error alert]";
  }

  else
  {
    v13 = @"Failed to continue activity [Continuation error alert]";
  }

  if (v10)
  {
    v14 = @"The Spotlight selection could not be opened. [Spotlight opening error alert]";
  }

  else
  {
    v14 = @"The connection to your other device may have been interrupted. Please try again. [Continuation error alert]";
  }

  v15 = [v11 localizedStringForKey:v13 value:@"localized string not found" table:0];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:v14 value:@"localized string not found" table:0];

  v18 = [ErrorActionOption alloc];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"OK [Continuation error alert]" value:@"localized string not found" table:0];
  v21 = [(ErrorActionOption *)v18 initWithTitle:v20 cancels:1 handler:0];
  v25 = v21;
  v22 = [NSArray arrayWithObjects:&v25 count:1];

  v23 = [[ErrorAction alloc] initWithTitle:v15 message:v17 options:v22];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained entryPointsCoordinator:self performErrorAction:v23];
}

- (void)willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  v5 = +[LoadingIndicatorController sharedController];
  beginShowingLoadingIndicator = [v5 beginShowingLoadingIndicator];
  continuityLoadingToken = self->_continuityLoadingToken;
  self->_continuityLoadingToken = beginShowingLoadingIndicator;

  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = typeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[EP] willContinueUserActivityWithType %@", &v9, 0xCu);
  }
}

- (void)addTask:(id)task
{
  taskCopy = task;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = taskCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] addTask: %{private}@", &v6, 0xCu);
  }

  if (taskCopy)
  {
    [(EntryPointsCoordinator *)self _addTask:taskCopy];
  }
}

- (void)_openURL:(id)l referringURL:(id)rL sourceApplication:(id)application session:(id)session sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  optionsCopy = options;
  mkOptionsCopy = mkOptions;
  applicationCopy = application;
  rLCopy = rL;
  v21 = sub_100005610();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v23 = 138478083;
    v24 = lCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[EP] _openURL: %{private}@ sceneOptions: %@", &v23, 0x16u);
  }

  height = [URLHandlingTask taskForURL:lCopy referringURL:rLCopy sourceApplication:applicationCopy sceneOptions:optionsCopy mkOptions:mkOptionsCopy windowSize:width, height];

  if (height)
  {
    [(EntryPointsCoordinator *)self _addTask:height];
  }
}

- (void)openURL:(id)l session:(id)session sceneOptions:(id)options mkOptions:(id)mkOptions windowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  sessionCopy = session;
  optionsCopy = options;
  mkOptionsCopy = mkOptions;
  v17 = sub_100005610();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v30 = lCopy;
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[EP] openURL: %{private}@ sceneOptions: %@", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100B3FFB4;
  v22[3] = &unk_101638EB8;
  v22[4] = self;
  v23 = lCopy;
  v24 = sessionCopy;
  v25 = optionsCopy;
  v26 = mkOptionsCopy;
  v27 = width;
  v28 = height;
  v18 = mkOptionsCopy;
  v19 = optionsCopy;
  v20 = sessionCopy;
  v21 = lCopy;
  [UIApplication _mapsCarPlay_connectApplicationSceneIfNeededForSession:v20 completion:v22];
}

- (BOOL)_isBackgroundNavigationLaunch:(id)launch
{
  launchCopy = launch;
  v4 = launchCopy;
  if (launchCopy)
  {
    scheme = [launchCopy scheme];
    v6 = [scheme isEqualToString:@"x-maps-reopen"];

    if (v6)
    {
      query = [v4 query];
      if ([query length])
      {
        LOBYTE(v6) = [query hasPrefix:@"backgroundnavigation"];
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_addRestoreTaskForSession:(id)session
{
  sessionCopy = session;
  if (self->_launchedInBackground)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained isNavigationTurnByTurnOrStepping] ^ 1;
  }

  v7 = +[UIApplication sharedApplication];
  v8 = v7;
  if (!v5 || ([v7 shouldLaunchSafe] & 1) != 0 || objc_msgSend(v8, "launchedToTest"))
  {
    v9 = sub_100005610();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = @"NO";
      if (v5)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[EP] _addRestoreTaskForSession should restore %@", &v15, 0xCu);
    }
  }

  else
  {
    if (self->_restoreTaskAdded)
    {
      v12 = sub_100005610();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        tasks = self->_tasks;
        v15 = 138412290;
        v16 = tasks;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[EP] we are trying to add another restoration task in %@", &v15, 0xCu);
      }
    }

    else
    {
      v12 = [SceneSessionRestorationArbiter activityForSceneSession:sessionCopy];
      v14 = [UserActivityHandlingTask taskForUserActivity:v12 atColdLaunch:self->_coldLaunch];
      if (v14)
      {
        self->_restoreTaskAdded = 1;
        [(EntryPointsCoordinator *)self _insertTaskAtFirstIndex:v14];
      }
    }
  }
}

- (void)didBecomeActiveWithSession:(id)session
{
  sessionCopy = session;
  v5 = [(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:sessionCopy];
  v6 = sub_100005610();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[EP] didBecomeActive", buf, 2u);
    }

    objc_initWeak(&location, self);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100B407B0;
    v41[3] = &unk_101661B98;
    objc_copyWeak(&v42, &location);
    v8 = objc_retainBlock(v41);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100B40858;
    v37[3] = &unk_101660C70;
    objc_copyWeak(&v40, &location);
    v37[4] = self;
    v9 = v8;
    v39 = v9;
    v10 = sessionCopy;
    v38 = v10;
    v11 = objc_retainBlock(v37);
    role = [v10 role];
    if ([role isEqual:_UIWindowSceneSessionRoleCarPlay])
    {
    }

    else
    {
      shouldWaitForFirstContainee = self->_shouldWaitForFirstContainee;

      if (shouldWaitForFirstContainee)
      {
        v20 = sub_100005610();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[EP] waiting for first containee", buf, 2u);
        }

        *&self->_shouldWaitForFirstContainee = 256;
        *buf = 0;
        v32 = buf;
        v33 = 0x3032000000;
        v34 = sub_100B409D8;
        v35 = sub_100B409E8;
        v36 = 0;
        v21 = +[NSNotificationCenter defaultCenter];
        v22 = +[NSOperationQueue mainQueue];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100B409F0;
        v28[3] = &unk_101638E90;
        v30 = buf;
        v29 = v11;
        v23 = [v21 addObserverForName:@"ContainerDidPresentContaineeNotification" object:0 queue:v22 usingBlock:v28];
        v24 = *(v32 + 5);
        *(v32 + 5) = v23;

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }
    }

    if (!self->_waitingForFirstContainee)
    {
      (v11[2])(v11);
    }

LABEL_20:

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
    goto LABEL_26;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[EP] _sessionShouldParticipateInLifecycle == NO", buf, 2u);
  }

  if ([(EntryPointsCoordinator *)self _shouldRestoreNavigationSession:sessionCopy])
  {
    self->_firstWidget = 0;
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 objectForKey:@"NavigationRestorationAttempts"];

    if (v14)
    {
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      if (unsignedIntegerValue > 2)
      {
        v16 = sub_100005610();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[EP] discard Navigation defaults, too many attempts", buf, 2u);
        }

        v17 = +[NSUserDefaults standardUserDefaults];
        [v17 removeObjectForKey:@"NavigationUserActivityDefault"];

        v18 = +[NSUserDefaults standardUserDefaults];
        [v18 removeObjectForKey:@"NavigationRestorationAttempts"];

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v25 = sub_100005610();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[EP] needs to launch main CarPlay", buf, 2u);
    }

    self->_waitingForCarplayAppScene = 1;
    v26 = +[NSUserDefaults standardUserDefaults];
    v27 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [v26 setObject:v27 forKey:@"NavigationRestorationAttempts"];

    +[MapsCarPlayServicesShim openMapsCarPlayApplicationSuspended];
    goto LABEL_25;
  }

LABEL_26:
}

- (void)willEnterForegroundWithSession:(id)session
{
  sessionCopy = session;
  if ([(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:sessionCopy])
  {
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] willEnterForeground", v6, 2u);
    }

    [(EntryPointsCoordinator *)self _addRestoreTaskForSession:sessionCopy];
  }
}

- (void)didEnterBackgroundWithSession:(id)session
{
  if ([(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:session])
  {
    v4 = +[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground];
    v5 = sub_100005610();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] ignoring didEnterBackground since another application scene is foreground, not locking merge activities", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] didEnterBackground", v7, 2u);
      }

      [(EntryPointsCoordinator *)self _cleanState];
      [(EntryPointsCoordinator *)self _lockMergeActivities];
      +[MapsAnalyticStateProvider clearSharedState];
    }
  }
}

- (void)willResignActiveWithSession:(id)session
{
  if ([(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:session])
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] willResignActive", v4, 2u);
    }
  }
}

- (void)willConnectToSession:(id)session options:(id)options windowSize:(CGSize)size scene:(id)scene
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  optionsCopy = options;
  v13 = [(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:sessionCopy scene:scene];
  shortcutItem3 = sub_100005610();
  v15 = os_log_type_enabled(shortcutItem3, OS_LOG_TYPE_INFO);
  if ((v13 & 1) == 0)
  {
    if (v15)
    {
      LOWORD(v43) = 0;
      _os_log_impl(&_mh_execute_header, shortcutItem3, OS_LOG_TYPE_INFO, "[EP] willConnectToSession scene not participating", &v43, 2u);
    }

    goto LABEL_36;
  }

  if (v15)
  {
    v43 = 138412546;
    v44 = sessionCopy;
    v45 = 2112;
    v46 = optionsCopy;
    _os_log_impl(&_mh_execute_header, shortcutItem3, OS_LOG_TYPE_INFO, "[EP] willConnectToSession: %@ options: %@", &v43, 0x16u);
  }

  shortcutItem = [(__CFString *)optionsCopy shortcutItem];

  uRLContexts = [(__CFString *)optionsCopy URLContexts];
  if ([uRLContexts count])
  {
    self->_launchedWithExternalInput = 1;
  }

  else
  {
    handoffUserActivityType = [(__CFString *)optionsCopy handoffUserActivityType];
    if (handoffUserActivityType)
    {
      self->_launchedWithExternalInput = 1;
    }

    else
    {
      userActivities = [(__CFString *)optionsCopy userActivities];
      self->_launchedWithExternalInput = ([userActivities count] | shortcutItem) != 0;
    }
  }

  uRLContexts2 = [(__CFString *)optionsCopy URLContexts];
  anyObject = [uRLContexts2 anyObject];
  v22 = [anyObject URL];
  v23 = [(EntryPointsCoordinator *)self _isBackgroundNavigationLaunch:v22];

  v24 = sub_100005610();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    if (self->_launchedWithExternalInput)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = v25;
    if (self->_launchedInBackground)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = v27;
    if (v23)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v30 = v29;
    v43 = 138412802;
    v44 = v26;
    v45 = 2112;
    v46 = v28;
    v47 = 2112;
    v48 = v30;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[EP] launchedWithExternalInput: %@, launchedInBackground: %@, isBackgroundNavigationLaunch: %@", &v43, 0x20u);
  }

  sourceApplication = [(__CFString *)optionsCopy sourceApplication];
  [(EntryPointsCoordinator *)self setLaunchApplication:sourceApplication];

  if (self->_launchedWithExternalInput && !self->_launchedInBackground && ((v23 ^ 1) & 1) == 0)
  {
    [(EntryPointsCoordinator *)self prepareBackgroundNavigation];
  }

  if (!self->_waitingForCarplayAppScene && !+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground])
  {
    [(EntryPointsCoordinator *)self _lockMergeActivities];
  }

  self->_waitingForCarplayAppScene = 0;
  [(EntryPointsCoordinator *)self _addRestoreTaskForSession:sessionCopy];
  self->_launchedInBackground = 0;
  uRLContexts3 = [(__CFString *)optionsCopy URLContexts];
  v33 = [uRLContexts3 count];

  if (v33)
  {
    uRLContexts4 = [(__CFString *)optionsCopy URLContexts];
    anyObject2 = [uRLContexts4 anyObject];

    v36 = [anyObject2 URL];
    options = [anyObject2 options];
    [(EntryPointsCoordinator *)self openURL:v36 session:sessionCopy sceneOptions:options mkOptions:0 windowSize:width, height];
  }

  userActivities2 = [(__CFString *)optionsCopy userActivities];
  v39 = [userActivities2 count];

  if (v39)
  {
    userActivities3 = [(__CFString *)optionsCopy userActivities];
    anyObject3 = [userActivities3 anyObject];

    [(EntryPointsCoordinator *)self continueUserActivity:anyObject3 session:sessionCopy windowSize:width, height];
  }

  shortcutItem2 = [(__CFString *)optionsCopy shortcutItem];

  if (shortcutItem2)
  {
    shortcutItem3 = [(__CFString *)optionsCopy shortcutItem];
    [(EntryPointsCoordinator *)self openShortcutItem:shortcutItem3];
LABEL_36:
  }
}

- (void)prepareBackgroundNavigation
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] prepareBackgroundNavigation", v4, 2u);
  }

  self->_launchedInBackground = 1;
  if (self->_mergeLocked)
  {
    [(EntryPointsCoordinator *)self _unlockMergeActivities];
  }
}

- (BOOL)_sessionShouldParticipateInLifecycle:(id)lifecycle scene:(id)scene
{
  sceneCopy = scene;
  role = [lifecycle role];
  v7 = [role isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [UIApplication _maps_isCarPlayApplicationScene:sceneCopy];
  }

  return v8;
}

- (BOOL)_sessionShouldParticipateInLifecycle:(id)lifecycle
{
  lifecycleCopy = lifecycle;
  scene = [lifecycleCopy scene];
  LOBYTE(self) = [(EntryPointsCoordinator *)self _sessionShouldParticipateInLifecycle:lifecycleCopy scene:scene];

  return self;
}

- (BOOL)_shouldRestoreNavigationSession:(id)session
{
  sessionCopy = session;
  v5 = +[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneConnected];
  scene = [sessionCopy scene];

  v7 = [UIApplication _maps_isCarPlayWidgetScene:scene];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"NavigationUserActivityPendingDeletion"];

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 objectForKey:@"NavigationUserActivityDefault"];

  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    if (v7)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v15;
    if (v11)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    v20 = 138412802;
    v21 = v14;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[EP] _shouldRestoreNavigationSession main %@ widget %@ data %@", &v20, 0x20u);
  }

  return !(v5 & 1 | ((v7 & 1) == 0) | v9 & 1 | (v11 == 0)) && self->_firstWidget;
}

- (void)launchAlertsManagerDidFinishProcessingAlert:(id)alert
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[EP] launchAlertsManagerDidFinishProcessingAlert", v5, 2u);
  }

  if (self->_waitingForAlerts)
  {
    self->_waitingForAlerts = 0;
    [(EntryPointsCoordinator *)self _mergeTasks];
  }
}

- (void)_updateLocaleInformation
{
  v2 = +[UIApplication sharedApplication];
  textInputMode = [v2 textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  v5 = +[MapsAnalyticStateProvider serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B415D8;
  block[3] = &unk_101661B18;
  v8 = primaryLanguage;
  v6 = primaryLanguage;
  dispatch_async(v5, block);
}

- (BOOL)_isMapsActivityActionInQueue
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_tasks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *v19;
  while (2)
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v19 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v18 + 1) + 8 * i);
      computedRichMapsActivity = [v6 computedRichMapsActivity];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        computedRichMapsActivity2 = [v6 computedRichMapsActivity];
        mapsActivity = [computedRichMapsActivity2 mapsActivity];
        hasDirectionsPlan = [mapsActivity hasDirectionsPlan];

        if (hasDirectionsPlan)
        {
          LOBYTE(v3) = 1;
        }

        else
        {
          action = [computedRichMapsActivity2 action];
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();

          if ((v13 & 1) == 0)
          {

            continue;
          }

          action2 = [computedRichMapsActivity2 action];
          searchItem = [action2 searchItem];
          searchString = [searchItem searchString];
          LOBYTE(v3) = [searchString length] != 0;
        }

        goto LABEL_16;
      }
    }

    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      continue;
    }

    break;
  }

LABEL_16:

  return v3;
}

- (BOOL)_shouldEnqueueLocationAuthenticationAlerts
{
  _isMapsActivityActionInQueue = [(EntryPointsCoordinator *)self _isMapsActivityActionInQueue];
  if (_isMapsActivityActionInQueue)
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The direction plan or a search action is in queue,  Skipping the warming sheet and will be shown the warming sheet during regular Maps Launch", v5, 2u);
    }
  }

  return _isMapsActivityActionInQueue ^ 1;
}

- (void)_displayLaunchAlertsIfNecessary
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] displayLaunchAlertsIfNecessary", buf, 2u);
  }

  launchAlertsManager = [(EntryPointsCoordinator *)self launchAlertsManager];
  [launchAlertsManager resetState];

  v5 = +[UIApplication sharedMapsDelegate];
  [v5 dismissCurrentInterruption];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isCarPlayOnlyContext = [WeakRetained isCarPlayOnlyContext];

  if ((isCarPlayOnlyContext & 1) == 0)
  {
    launchAlertsManager2 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager2 enqueueAlert:5];
  }

  launchAlertsManager3 = [(EntryPointsCoordinator *)self launchAlertsManager];
  [launchAlertsManager3 enqueueAlert:0];

  v10 = objc_loadWeakRetained(&self->_delegate);
  isCarPlayOnlyContext2 = [v10 isCarPlayOnlyContext];

  if (isCarPlayOnlyContext2)
  {
    launchAlertsManager4 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager4 enqueueAlert:1];
  }

  v13 = objc_loadWeakRetained(&self->_delegate);
  isCarPlayOnlyContext3 = [v13 isCarPlayOnlyContext];

  if ((isCarPlayOnlyContext3 & 1) == 0)
  {
    launchAlertsManager5 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager5 enqueueAlert:2];

    launchAlertsManager6 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager6 enqueueAlert:3];
  }

  if (GEOConfigGetInteger() == 1)
  {
    launchAlertsManager7 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager7 enqueueAlert:4];
  }

  launchAlertsManager8 = objc_loadWeakRetained(&self->_delegate);
  if (([launchAlertsManager8 isCarPlayOnlyContext] & 1) == 0)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    isNavigationTurnByTurnOrStepping = [v19 isNavigationTurnByTurnOrStepping];

    if (isNavigationTurnByTurnOrStepping)
    {
      goto LABEL_15;
    }

    launchAlertsManager8 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager8 enqueueAlert:6];
  }

LABEL_15:
  _shouldEnqueueLocationAuthenticationAlerts = [(EntryPointsCoordinator *)self _shouldEnqueueLocationAuthenticationAlerts];
  if (MapsFeature_IsEnabled_LocationIntelligenceMaps())
  {
    if (!_shouldEnqueueLocationAuthenticationAlerts)
    {
      goto LABEL_17;
    }

LABEL_20:
    launchAlertsManager9 = [(EntryPointsCoordinator *)self launchAlertsManager];
    [launchAlertsManager9 enqueueAlert:7];
    goto LABEL_21;
  }

  if (MapsFeature_IsEnabled_VisitedPlaces() & _shouldEnqueueLocationAuthenticationAlerts)
  {
    goto LABEL_20;
  }

LABEL_17:
  launchAlertsManager9 = sub_100005610();
  if (os_log_type_enabled(launchAlertsManager9, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, launchAlertsManager9, OS_LOG_TYPE_DEFAULT, "Not adding the warming sheet alert in queue. Neither LocInt nor Visit History was enabled or Direction plan is in queue.", v24, 2u);
  }

LABEL_21:

  launchAlertsManager10 = [(EntryPointsCoordinator *)self launchAlertsManager];
  [launchAlertsManager10 executeAlertsIfNecessary];
}

- (void)_unlockMergeActivities
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self->_mergeLocked)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] unlockMergeActivities (%@)", &v6, 0xCu);
  }

  if (self->_mergeLocked)
  {
    dispatch_group_leave(self->_tasksGroup);
  }

  self->_mergeLocked = 0;
}

- (void)_sendMergedRichMapsActivity
{
  if (self->_mergedRichMapsActivity)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];

    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = uUIDString;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] sendMergedRichMapsActivity (tag %@)", buf, 0xCu);
    }

    v6 = self->_mergedRichMapsActivity;
    v7 = dispatch_get_global_queue(-2, 0);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100B41DB4;
    v14 = &unk_101661A90;
    v15 = uUIDString;
    v16 = v6;
    v8 = v6;
    v9 = uUIDString;
    dispatch_async(v7, &v11);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained entryPointsCoordinator:self didMergedRichMapsActivity:{self->_mergedRichMapsActivity, v11, v12, v13, v14}];
  }

  [(EntryPointsCoordinator *)self _cleanState];
}

- (BOOL)_debug_shouldSkipSendingMergedRichMapsActivity
{
  if ((_GEOConfigHasValue() & 1) != 0 || _GEOConfigHasValue())
  {
    action = [self->_mergedRichMapsActivity action];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_sendMergedRichMapsActivityIfPossible
{
  launchAlertsManager = [(EntryPointsCoordinator *)self launchAlertsManager];
  currentlyShowingAlert = [launchAlertsManager currentlyShowingAlert];

  if (currentlyShowingAlert)
  {
    self->_waitingForAlerts = 1;
    v5 = sub_100005610();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[EP] Wait for Alerts to process", v7, 2u);
    }

    if (self->_didLaunchWithExplicitIntent)
    {
      launchAlertsManager2 = [(EntryPointsCoordinator *)self launchAlertsManager];
      [launchAlertsManager2 cancelVisibleAlertIfNecessary];
    }
  }

  else if (![(EntryPointsCoordinator *)self _debug_shouldSkipSendingMergedRichMapsActivity])
  {

    [(EntryPointsCoordinator *)self _sendMergedRichMapsActivity];
  }
}

- (void)_mergeTasks
{
  if ([(NSMutableArray *)self->_tasksToPerform count])
  {
    v3 = sub_100005610();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      tasksToPerform = self->_tasksToPerform;
      *buf = 138412290;
      v24 = tasksToPerform;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[EP] mergeTasks we should not have any more tasks to perform %@", buf, 0xCu);
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_tasks count]== 1 && self->_launchedWithExternalInput)
    {
      v5 = sub_100005610();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[EP] mergeTasks we should have 2 tasks to merge", buf, 2u);
      }
    }

    v3 = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_tasks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          computedRichMapsActivity = [v11 computedRichMapsActivity];

          if (computedRichMapsActivity)
          {
            computedRichMapsActivity2 = [v11 computedRichMapsActivity];
            [v3 addObject:computedRichMapsActivity2];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    if ([v3 count])
    {
      v14 = objc_alloc_init(MapsActivityMergeController);
      v15 = [(MapsActivityMergeController *)v14 mergeActivities:v3];
      [(RichMapsActivity *)v15 setColdLaunch:self->_coldLaunch];
      self->_didLaunchWithExplicitIntent = [(RichMapsActivity *)v15 didLaunchWithExplicitIntent];
      mergedRichMapsActivity = self->_mergedRichMapsActivity;
      self->_mergedRichMapsActivity = v15;

      [(EntryPointsCoordinator *)self _sendMergedRichMapsActivityIfPossible];
    }

    else
    {
      v17 = sub_100005610();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[EP] nothing to Merge", buf, 2u);
      }

      [(EntryPointsCoordinator *)self _cleanState];
    }
  }
}

- (void)_addTask:(id)task atFirstIndex:(BOOL)index
{
  indexCopy = index;
  taskCopy = task;
  v7 = sub_100005610();
  v8 = v7;
  if (taskCopy)
  {
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (indexCopy)
    {
      if (v9)
      {
        tasks = self->_tasks;
        *buf = 138412290;
        v21 = tasks;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[EP] insert in %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_tasks insertObject:taskCopy atIndex:0];
      [(NSMutableArray *)self->_tasksToPerform insertObject:taskCopy atIndex:0];
    }

    else
    {
      if (v9)
      {
        v11 = self->_tasks;
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[EP] addTask in %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_tasks addObject:taskCopy];
      [(NSMutableArray *)self->_tasksToPerform addObject:taskCopy];
    }

    dispatch_group_enter(self->_tasksGroup);
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = taskCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[EP] addTask dispatch_group_enter task: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    tasksQueue = self->_tasksQueue;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100B42520;
    v17 = &unk_101661340;
    v18 = taskCopy;
    objc_copyWeak(&v19, buf);
    dispatch_async(tasksQueue, &v14);
    [(EntryPointsCoordinator *)self _addCompletionIfNeeded:v14];
    objc_destroyWeak(&v19);

    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[EP] addTask not on the main thread", buf, 2u);
    }
  }
}

- (void)_addCompletionIfNeeded
{
  if ([(NSMutableArray *)self->_tasksToPerform count]== 1)
  {
    objc_initWeak(&location, self);
    tasksGroup = self->_tasksGroup;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100B42844;
    v4[3] = &unk_101661B98;
    objc_copyWeak(&v5, &location);
    dispatch_group_notify(tasksGroup, &_dispatch_main_q, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_cleanState
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[EP] cleanState", v5, 2u);
  }

  mergedRichMapsActivity = self->_mergedRichMapsActivity;
  self->_mergedRichMapsActivity = 0;

  self->_tasksDone = 0;
  self->_restoreTaskAdded = 0;
  [(NSMutableArray *)self->_tasks removeAllObjects];
  [(NSMutableArray *)self->_tasksToPerform removeAllObjects];
  *&self->_launchedWithExternalInput = 0;
}

- (LaunchAlertsManager)launchAlertsManager
{
  launchAlertsManager = self->_launchAlertsManager;
  if (!launchAlertsManager)
  {
    v4 = objc_alloc_init(LaunchAlertsManager);
    v5 = self->_launchAlertsManager;
    self->_launchAlertsManager = v4;

    [(LaunchAlertsManager *)self->_launchAlertsManager setDelegate:self];
    v6 = sub_100005610();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_launchAlertsManager;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[EP] created %@", &v9, 0xCu);
    }

    launchAlertsManager = self->_launchAlertsManager;
  }

  return launchAlertsManager;
}

@end