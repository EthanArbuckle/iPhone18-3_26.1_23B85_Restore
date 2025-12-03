@interface MapsAppDelegate
+ (BOOL)mapsIsLaunchedForTesting;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (AppCoordinator)appCoordinator;
- (ApplicationSessionController)appSessionController;
- (BOOL)_isShowingLocationServicesAuthorizationPrompt;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canPlayTrace;
- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)kind;
- (FeedbackSubmissionManager)submissionManager;
- (IOSChromeViewController)chromeViewController;
- (IdleTimerController)idleTimerController;
- (NSArray)allVisibleMapViews;
- (NSArray)allVisibleMapViewsButNotCarPlay;
- (POISearchManager)poiSearchManager;
- (PlatformController)platformController;
- (double)timeIntervalSinceLastBackgrounded;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (id)entryPointsCoordinator;
- (id)hardwareModel;
- (id)legacyDataMigrator;
- (id)mainVKMapView;
- (id)sceneDelegateForTesting;
- (id)testCoordinator;
- (id)visibleMapViewFromCarPlay;
- (int64_t)currentInterruptionKind;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_acquireDoubleHeightStatusBarAssertionIfNeeded;
- (void)_acquireProcessAssertionForTurnByTurn:(BOOL)turn;
- (void)_acquireSecureAppAssertion;
- (void)_cleanupAfterLocationServicesAlertController;
- (void)_clearDoubleHeightStatusBar;
- (void)_locationManagerApprovalDidChange:(id)change;
- (void)_maps_applicationDidBecomeActive:(id)active;
- (void)_maps_applicationDidEnterBackground:(id)background;
- (void)_maps_applicationWillEnterForeground:(id)foreground;
- (void)_maps_applicationWillResignActive:(id)active;
- (void)_performPostExtendedLaunchInitialization;
- (void)_presentLocationServicesAlertController:(id)controller;
- (void)_registerDefaults;
- (void)_releaseProcessAssertion;
- (void)_releaseSecureAppAssertion;
- (void)_setCanShowInLockscreen:(BOOL)lockscreen;
- (void)_setCurrentInterruptionHandle:(id)handle;
- (void)_setShowingLocationServicesAuthorizationPrompt:(BOOL)prompt;
- (void)_setupSharedLocationManager;
- (void)_share:(id)_share;
- (void)_startLegacyDataMigration;
- (void)_suppressNetworkFlags;
- (void)_unsuppressNetworkFlags;
- (void)_updateSecureAppAssertion;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)applicationDidReceiveMemoryWarning:(id)warning;
- (void)applicationDidRemoveDeactivationReason:(id)reason;
- (void)applicationWillAddDeactivationReason:(id)reason;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)carDisplayControllerDidUpdateNavigationVisibility:(id)visibility;
- (void)checkCoreRoutineEnabledState;
- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack;
- (void)chromeViewController:(id)controller willMoveFromContextStack:(id)stack toContextStack:(id)contextStack;
- (void)collectRadarAttachments;
- (void)createSubmissionManagerIfNeeded;
- (void)dealloc;
- (void)dismissCurrentInterruption;
- (void)doPostLaunchTestSetup;
- (void)endBackgroundNavigation;
- (void)endTransitTurnByTurn;
- (void)endTurnByTurn:(id)turn;
- (void)fetchNotificationAuthUndetermined:(id)undetermined;
- (void)interruptApplicationWithKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler;
- (void)interruptConvertToNavigableSavedRouteID:(id)d routeName:(id)name error:(id)error directionsError:(id)directionsError;
- (void)migrateARPConsentDefaults:(id)defaults;
- (void)migrateNavigoDefaults:(id)defaults;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts;
- (void)navigationService:(id)service didFailWithError:(id)error;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)newScene;
- (void)notificationButtonPressedWithCompletionHandler:(id)handler;
- (void)preferencesPrivacyControllerDidDismiss:(id)dismiss;
- (void)prepareBackgroundNavigationWithMessage:(id)message;
- (void)prepareForCarPlayLaunch;
- (void)presentAboutAndPrivacyScreen;
- (void)presentAddAMissingPlace;
- (void)presentAddAMissingPlaceWith:(id)with;
- (void)presentMacPreferencesTabWithType:(int64_t)type;
- (void)presentRAP;
- (void)presentRadar;
- (void)presentRatingsAndPhotosPrivacyScreen;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)promptLocationServicesAuthorizationWithHandler:(id)handler;
- (void)promptLocationServicesOff;
- (void)promptPreciseLocationOff;
- (void)receivedFullyDrawnNotification;
- (void)sendDidEnterBackgroundNotification;
- (void)setMapsIsShowingTour:(BOOL)tour;
- (void)setTrackingMode:(int64_t)mode monitorBatteryState:(BOOL)state;
- (void)showLocationServicesAlertWithError:(id)error;
- (void)showNavigationAdvisoryIfNeeded;
- (void)startPreparedBackgroundNavigationWithMessage:(id)message;
- (void)startTransitTurnByTurn;
- (void)startTurnByTurn:(id)turn;
- (void)toggleDisableMenuSharing;
- (void)toggleScrollingOpensPlacecard;
- (void)toggleSidebarSelection;
- (void)updateWithGuidance:(id)guidance;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
@end

@implementation MapsAppDelegate

- (void)prepareForCarPlayLaunch
{
  v3 = +[CarDisplayController sharedInstance];
  [v3 prepareCarPlay];
  [v3 setDelegate:self];
  self->_carNavigationWasVisible = [v3 isAnyCarSceneHostingDrivingNavigation];
}

- (void)_registerDefaults
{
  v10[0] = @"LastViewMode";
  v2 = [NSNumber numberWithInt:0];
  v11[0] = v2;
  v10[1] = @"SearchMode";
  v3 = [NSNumber numberWithInt:1];
  v11[1] = v3;
  v11[2] = @"YES";
  v10[2] = @"PlaybackControls";
  v10[3] = @"TraceBookmarksAlert";
  v11[3] = @"NO";
  v11[4] = @"YES";
  v10[4] = @"__internal__AlwaysShowRouteTraffic";
  v10[5] = @"MapsWalkingEnableImageBasedHeading";
  v11[5] = &__kCFBooleanTrue;
  v11[6] = &__kCFBooleanTrue;
  v10[6] = @"MapsEnablePedestrianARRaiseToStart";
  v10[7] = @"PedestrianARAutoFocusEnabledKey";
  v11[7] = &__kCFBooleanTrue;
  v11[8] = &__kCFBooleanTrue;
  v10[8] = @"PedestrianAREnableLowerToExitKey";
  v10[9] = @"PedestrianARSafetyUIKey";
  v11[9] = &__kCFBooleanTrue;
  v11[10] = &__kCFBooleanTrue;
  v10[10] = @"PedestrianARTTRButtonEnabledKey";
  v10[11] = @"PedestrianARIndoorOutdoorDetectionInterval";
  v11[11] = &off_1016EDD48;
  v11[12] = &__kCFBooleanTrue;
  v10[12] = @"VLFSessionIgnoreFusedLocationForReplayKey";
  v10[13] = @"VLFSessionAppLaunchDelayMonitorAffectsPuckVisibilityKey";
  v11[13] = &__kCFBooleanTrue;
  v11[14] = &__kCFBooleanTrue;
  v10[14] = @"VLFSessionAppLaunchDelayMonitorAffectsBannerVisibilityKey";
  v10[15] = @"VLFSessionCarPlayConnectionMonitorAffectsPuckVisibilityKey";
  v11[15] = &__kCFBooleanTrue;
  v11[16] = &__kCFBooleanTrue;
  v10[16] = @"VLFSessionCarPlayConnectionMonitorAffectsBannerVisibilityKey";
  v10[17] = @"VLFSessionChromeStackMonitorAffectsPuckVisibilityKey";
  v11[17] = &__kCFBooleanTrue;
  v11[18] = &__kCFBooleanTrue;
  v10[18] = @"VLFSessionChromeStackMonitorAffectsBannerVisibilityKey";
  v10[19] = @"VLFSessionCoarseLocationMonitorAffectsPuckVisibilityKey";
  v11[19] = &__kCFBooleanTrue;
  v11[20] = &__kCFBooleanTrue;
  v10[20] = @"VLFSessionCoarseLocationMonitorAffectsBannerVisibilityKey";
  v10[21] = @"VLFSessionHistoricalLocationAccuracyMonitorAffectsPuckVisibilityKey";
  v11[21] = &__kCFBooleanTrue;
  v11[22] = &__kCFBooleanFalse;
  v10[22] = @"VLFSessionHistoricalLocationAccuracyMonitorAffectsBannerVisibilityKey";
  v10[23] = @"VLFSessionHomeWorkMonitorAffectsPuckVisibilityKey";
  v11[23] = &__kCFBooleanTrue;
  v11[24] = &__kCFBooleanTrue;
  v10[24] = @"VLFSessionHomeWorkMonitorAffectsBannerVisibilityKey";
  v10[25] = @"VLFSessionLocationHorizontalAccuracyMonitorAffectsPuckVisibilityKey";
  v11[25] = &__kCFBooleanTrue;
  v11[26] = &__kCFBooleanTrue;
  v10[26] = @"VLFSessionLocationHorizontalAccuracyMonitorAffectsBannerVisibilityKey";
  v10[27] = @"VLFSessionLocationOutdoorMonitorAffectsPuckVisibilityKey";
  v11[27] = &__kCFBooleanTrue;
  v11[28] = &__kCFBooleanTrue;
  v10[28] = @"VLFSessionLocationOutdoorMonitorAffectsBannerVisibilityKey";
  v10[29] = @"VLFSessionLocationTypeMonitorAffectsPuckVisibilityKey";
  v11[29] = &__kCFBooleanTrue;
  v11[30] = &__kCFBooleanTrue;
  v10[30] = @"VLFSessionLocationTypeMonitorAffectsBannerVisibilityKey";
  v10[31] = @"VLFSessionLocationSignalEnvironmentMonitorAffectsPuckVisibilityKey";
  v11[31] = &__kCFBooleanTrue;
  v11[32] = &__kCFBooleanTrue;
  v10[32] = @"VLFSessionLocationSignalEnvironmentMonitorAffectsBannerVisibilityKey";
  v10[33] = @"VLFSessionMapsHomeMonitorAffectsPuckVisibilityKey";
  v11[33] = &__kCFBooleanFalse;
  v11[34] = &__kCFBooleanTrue;
  v10[34] = @"VLFSessionMapsHomeMonitorAffectsBannerVisibilityKey";
  v10[35] = @"VLFSessionNetworkReachabilityMonitorAffectsPuckVisibilityKey";
  v11[35] = &__kCFBooleanTrue;
  v11[36] = &__kCFBooleanTrue;
  v10[36] = @"VLFSessionNetworkReachabilityMonitorAffectsBannerVisibilityKey";
  v10[37] = @"VLFSessionSunsetSunriseMonitorAffectsPuckVisibilityKey";
  v11[37] = &__kCFBooleanTrue;
  v11[38] = &__kCFBooleanFalse;
  v10[38] = @"VLFSessionSunsetSunriseMonitorAffectsBannerVisibilityKey";
  v10[39] = @"VLFSessionThermalStateMonitorAffectsPuckVisibilityKey";
  v11[39] = &__kCFBooleanTrue;
  v11[40] = &__kCFBooleanTrue;
  v10[40] = @"VLFSessionThermalStateMonitorAffectsBannerVisibilityKey";
  v10[41] = @"VLFSessionTransitSteppingMonitorAffectsPuckVisibilityKey";
  v10[42] = @"VLFSessionTransitSteppingMonitorAffectsBannerVisibilityKey";
  v10[43] = @"VLFSessionTileAvailabilityMonitorAffectsPuckVisibilityKey";
  v11[41] = &__kCFBooleanTrue;
  v11[42] = &__kCFBooleanTrue;
  v10[44] = @"VLFSessionTileAvailabilityMonitorAffectsBannerVisibilityKey";
  v10[45] = @"VLFSessionUsageMonitorAffectsPuckVisibilityKey";
  v11[43] = &__kCFBooleanTrue;
  v11[44] = &__kCFBooleanTrue;
  v11[45] = &__kCFBooleanFalse;
  v11[46] = &__kCFBooleanTrue;
  v10[46] = @"VLFSessionUsageMonitorAffectsBannerVisibilityKey";
  v10[47] = @"NavigationShowRawGPSTrail";
  v11[47] = @"NO";
  v11[48] = @"NO";
  v10[48] = @"NavigationShowMatchedLocationTrail";
  v10[49] = @"EnableEnvironmentSelectionInSettings";
  v4 = +[MKSystemController sharedInstance];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isInternalInstall]);
  v11[49] = v5;
  v10[50] = @"EnableCustomEnvironmentsInSettings";
  v6 = +[MKSystemController sharedInstance];
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isInternalInstall]);
  v10[51] = @"SCROLLING_OPENS_PLACECARD_KEY_ROTATED";
  v11[50] = v7;
  v11[51] = @"YES";
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:52];

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 registerDefaults:v8];
}

- (void)_setupSharedLocationManager
{
  [MKLocationManager setCanMonitorWiFiStatus:1];
  v2 = +[MKLocationManager sharedLocationManager];
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_1008BF52C;
  v4[4] = sub_1008BF53C;
  v5 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1008BF544;
  v3[3] = &unk_10165F5C8;
  v3[4] = v4;
  [v2 setNetworkActivity:v3];
  [v2 setActivityType:4];
  _Block_object_dispose(v4, 8);
}

- (void)doPostLaunchTestSetup
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019410;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_unsuppressNetworkFlags
{
  v2 = SBSSpringBoardServerPort();

  _SBSetApplicationNetworkFlags(v2, 1, 1);
}

- (ApplicationSessionController)appSessionController
{
  appSessionController = self->_appSessionController;
  if (!appSessionController)
  {
    v4 = objc_alloc_init(ApplicationSessionController);
    v5 = self->_appSessionController;
    self->_appSessionController = v4;

    appSessionController = self->_appSessionController;
  }

  return appSessionController;
}

- (id)mainVKMapView
{
  sceneDelegateForTesting = [(MapsAppDelegate *)self sceneDelegateForTesting];
  chromeViewController = [sceneDelegateForTesting chromeViewController];
  mapView = [chromeViewController mapView];
  _mapLayer = [mapView _mapLayer];

  return _mapLayer;
}

- (id)sceneDelegateForTesting
{
  if (!+[UIApplication _maps_isAnyCarPlayApplicationSceneForeground])
  {
LABEL_4:
    v3 = +[UIApplication _maps_keyMapsSceneDelegate];
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___PPTTestableProtocol])
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_8;
  }

  v2 = +[UIApplication _maps_carPlayApplicationSceneDelegate];
  if (([v2 conformsToProtocol:&OBJC_PROTOCOL___PPTTestableProtocol] & 1) == 0)
  {

    goto LABEL_4;
  }

LABEL_8:

  return v2;
}

- (FeedbackSubmissionManager)submissionManager
{
  [(MapsAppDelegate *)self createSubmissionManagerIfNeeded];
  submissionManager = self->_submissionManager;

  return submissionManager;
}

- (void)createSubmissionManagerIfNeeded
{
  if (!self->_submissionManager)
  {
    v3 = objc_alloc_init(FeedbackSubmissionManager);
    submissionManager = self->_submissionManager;
    self->_submissionManager = v3;
  }
}

- (double)timeIntervalSinceLastBackgrounded
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 doubleForKey:@"LastSuspendTime"];
  v4 = v3;

  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:v4];
  [v5 timeIntervalSinceNow];
  v7 = fabs(v6);

  return v7;
}

- (void)_startLegacyDataMigration
{
  legacyDataMigrator = [(MapsAppDelegate *)self legacyDataMigrator];
  [legacyDataMigrator performMigration];

  v3 = +[UIApplication sharedApplication];
  [v3 registerForRemoteNotifications];
}

- (id)legacyDataMigrator
{
  legacyDataMigrator = self->_legacyDataMigrator;
  if (!legacyDataMigrator)
  {
    v4 = objc_alloc_init(MapsLegacyDataMigrator);
    v5 = self->_legacyDataMigrator;
    self->_legacyDataMigrator = v4;

    legacyDataMigrator = self->_legacyDataMigrator;
  }

  return legacyDataMigrator;
}

- (void)checkCoreRoutineEnabledState
{
  v3 = +[RTRoutineManager defaultManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000363C8;
  v4[3] = &unk_10162D340;
  v4[4] = self;
  [v3 fetchRoutineStateWithHandler:v4];
}

- (IOSChromeViewController)chromeViewController
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  chromeViewController = [v2 chromeViewController];

  v4 = sub_1008B9228();
  v5 = v4;
  if (chromeViewController)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found chrome view controller from key maps scene delegate", buf, 2u);
    }

    v6 = chromeViewController;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find chromeViewController", v8, 2u);
    }
  }

  return chromeViewController;
}

- (void)presentAboutAndPrivacyScreen
{
  if (self->_privacyController)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _privacyController == ((void *)0)", v6, 2u);
    }
  }

  else
  {
    v3 = [[AppKitPreferencesPrivacyController alloc] initWithBundleIdentifier:@"com.apple.onboarding.maps"];
    privacyController = self->_privacyController;
    self->_privacyController = v3;

    [(AppKitPreferencesPrivacyController *)self->_privacyController setDelegate:self];
    v5 = self->_privacyController;

    [(AppKitPreferencesPrivacyController *)v5 present];
  }
}

- (void)presentRatingsAndPhotosPrivacyScreen
{
  if (self->_privacyController)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _privacyController == ((void *)0)", v6, 2u);
    }
  }

  else
  {
    v3 = [[AppKitPreferencesPrivacyController alloc] initWithBundleIdentifier:@"com.apple.onboarding.ratingsAndPhotos"];
    privacyController = self->_privacyController;
    self->_privacyController = v3;

    [(AppKitPreferencesPrivacyController *)self->_privacyController setDelegate:self];
    v5 = self->_privacyController;

    [(AppKitPreferencesPrivacyController *)v5 present];
  }
}

- (void)notificationButtonPressedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1008B84C0;
  v6[3] = &unk_1016588E8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 getNotificationSettingsWithCompletionHandler:v6];
}

- (void)fetchNotificationAuthUndetermined:(id)undetermined
{
  undeterminedCopy = undetermined;
  v4 = +[UNUserNotificationCenter currentNotificationCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1008B8854;
  v6[3] = &unk_1016588E8;
  v7 = undeterminedCopy;
  v5 = undeterminedCopy;
  [v4 getNotificationSettingsWithCompletionHandler:v6];
}

- (void)preferencesPrivacyControllerDidDismiss:(id)dismiss
{
  privacyController = self->_privacyController;
  self->_privacyController = 0;
}

- (void)presentMacPreferencesTabWithType:(int64_t)type
{
  switch(type)
  {
    case 2:
      [(MapsAppDelegate *)self presentMacARPPreferences];
      break;
    case 1:
      [(MapsAppDelegate *)self presentMacRoutePlannerPreferences];
      break;
    case 0:
      [(MapsAppDelegate *)self presentMacGeneralPreferences];
      break;
  }
}

- (void)_share:(id)_share
{
  chromeViewController = [(MapsAppDelegate *)self chromeViewController];
  currentShareItemSource = [chromeViewController currentShareItemSource];

  v5 = [[MapsActivityViewController alloc] initWithShareItem:currentShareItemSource];
  chromeViewController2 = [(MapsAppDelegate *)self chromeViewController];
  view = [chromeViewController2 view];
  popoverPresentationController = [(MapsActivityViewController *)v5 popoverPresentationController];
  [popoverPresentationController setSourceItem:view];

  chromeViewController3 = [(MapsAppDelegate *)self chromeViewController];
  [chromeViewController3 _maps_topMostPresentViewController:v5 animated:1 completion:0];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  system = [builderCopy system];
  v5 = +[UIMenuSystem mainSystem];

  v6 = builderCopy;
  if (system == v5)
  {
    v7 = +[UIScreen mainScreen];
    v8 = sub_10000FA08(v7);

    if (self->_didSkipInitialUIKitBuildMenuCall || v8 != 5)
    {
      chromeViewController = [(MapsAppDelegate *)self chromeViewController];
      currentShareItemSource = [chromeViewController currentShareItemSource];

      v11 = 0;
      if (v8 == 5 && currentShareItemSource)
      {
        chromeViewController2 = [(MapsAppDelegate *)self chromeViewController];
        currentCollectionShareItemSource = [chromeViewController2 currentCollectionShareItemSource];
        v11 = currentCollectionShareItemSource == 0;
      }

      [MapsMenuBuilder buildMenuWithBuilder:builderCopy sendToDeviceEnabled:v11];
    }

    self->_didSkipInitialUIKitBuildMenuCall = 1;
    v6 = builderCopy;
  }
}

- (id)testCoordinator
{
  sceneDelegateForTesting = [(MapsAppDelegate *)self sceneDelegateForTesting];
  testCoordinator = [sceneDelegateForTesting testCoordinator];

  return testCoordinator;
}

- (id)visibleMapViewFromCarPlay
{
  v2 = +[CarDisplayController sharedInstance];
  chromeViewController = [v2 chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (NSArray)allVisibleMapViewsButNotCarPlay
{
  allVisibleMapViews = [(MapsAppDelegate *)self allVisibleMapViews];
  v3 = [allVisibleMapViews mutableCopy];

  v4 = +[CarDisplayController sharedInstance];
  chromeViewController = [v4 chromeViewController];
  mapView = [chromeViewController mapView];

  [v3 removeObject:mapView];

  return v3;
}

- (NSArray)allVisibleMapViews
{
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [connectedScenes count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = connectedScenes;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          delegate = [v10 delegate];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            delegate2 = [v10 delegate];
            chromeViewController = [delegate2 chromeViewController];
            mapView = [chromeViewController mapView];
            [v17 addObject:mapView];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy)
  {
    v14 = controllerCopy;
    presentingViewController = [controllerCopy presentingViewController];

    controllerCopy = v14;
    if (!presentingViewController)
    {
      v7 = +[UIApplication _maps_keyMapsWindow];
      rootViewController = [v7 rootViewController];

      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        do
        {
          presentedViewController2 = [rootViewController presentedViewController];

          v10PresentedViewController = [presentedViewController2 presentedViewController];

          rootViewController = presentedViewController2;
        }

        while (v10PresentedViewController);
      }

      else
      {
        presentedViewController2 = rootViewController;
      }

      if ([presentedViewController2 isViewLoaded])
      {
        view = [presentedViewController2 view];
        window = [view window];

        if (window)
        {
          [v14 setModalPresentationStyle:2];
          [presentedViewController2 presentViewController:v14 animated:animatedCopy completion:0];
        }
      }

      controllerCopy = v14;
    }
  }
}

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  request = [notificationCopy request];
  shouldShowIfAppInForeground = [request shouldShowIfAppInForeground];

  v10 = sub_10079857C();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (shouldShowIfAppInForeground)
  {
    if (v11)
    {
      v13 = 138412290;
      v14 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will present notification - %@", &v13, 0xCu);
    }

    v12 = 6;
  }

  else
  {
    if (v11)
    {
      v13 = 138412290;
      v14 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Skipping showing notification since app in FG - %@", &v13, 0xCu);
    }

    v12 = 0;
  }

  handlerCopy[2](handlerCopy, v12);
}

- (void)endBackgroundNavigation
{
  v3 = sub_1008B9228();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will end background navigation", v7, 2u);
  }

  appSessionController = [(MapsAppDelegate *)self appSessionController];
  currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];
  [currentlyNavigatingPlatformController clearSessions];

  v6 = +[MNNavigationService sharedService];
  [(MapsAppDelegate *)self endTurnByTurn:v6];
}

- (void)updateWithGuidance:(id)guidance
{
  navigationIdleTimerProvider = self->_navigationIdleTimerProvider;
  guidanceCopy = guidance;
  [(NavigationIdleTimerProvider *)navigationIdleTimerProvider updateGuidanceState:guidanceCopy];
  [(NavigationIdleTimerProvider *)self->_transitIdleTimerProvider updateGuidanceState:guidanceCopy];
}

- (void)startPreparedBackgroundNavigationWithMessage:(id)message
{
  messageCopy = message;
  platformController = [(MapsAppDelegate *)self platformController];
  v6 = platformController;
  if (platformController)
  {
    primaryPlatformController = platformController;
  }

  else
  {
    appSessionController = [(MapsAppDelegate *)self appSessionController];
    primaryPlatformController = [appSessionController primaryPlatformController];
  }

  platformController2 = [(MapsAppDelegate *)self platformController];
  currentSession = [platformController2 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = currentSession;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  appSessionController2 = [(MapsAppDelegate *)self appSessionController];
  primaryPlatformController2 = [appSessionController2 primaryPlatformController];
  currentSession2 = [primaryPlatformController2 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = currentSession2;
  }

  else
  {
    v16 = 0;
  }

  v61 = v16;

  currentSession3 = [primaryPlatformController currentSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = currentSession3;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v59 = v19;
  currentRouteCollection = [v19 currentRouteCollection];
  v58 = primaryPlatformController;
  iosBasedChromeViewController = [primaryPlatformController iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  routeID = [messageCopy routeID];
  routeIndex = [messageCopy routeIndex];
  loadDirectionsMessage = [messageCopy loadDirectionsMessage];
  routePersistentData = [loadDirectionsMessage routePersistentData];

  if (routePersistentData)
  {
    v60 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:routePersistentData error:0];
  }

  else
  {
    v60 = 0;
  }

  v25 = sub_1008B9228();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = v12 != 0;
    [v12 currentRouteCollection];
    v27 = v55 = messageCopy;
    [v61 currentRouteCollection];
    v56 = routePersistentData;
    v29 = v28 = v12;
    *buf = 67109890;
    *&buf[4] = v26;
    *v72 = 2112;
    *&v72[2] = v27;
    v73 = 1024;
    v74 = v61 != 0;
    v75 = 2112;
    v76 = v29;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Will start prepared background navigation.  platformController hasSession: %d, routes: %@, primaryPlatformController hasSession: %d, routes: %@", buf, 0x22u);

    v12 = v28;
    routePersistentData = v56;

    messageCopy = v55;
  }

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1008B9AB8;
  v68[3] = &unk_10162D488;
  v68[4] = self;
  v30 = messageCopy;
  v69 = v30;
  v31 = appCoordinator;
  v70 = v31;
  v32 = objc_retainBlock(v68);
  originIsWatch = [v30 originIsWatch];
  if (routePersistentData && originIsWatch && !currentRouteCollection)
  {
    v34 = sub_1008B9228();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Will recreate a navigable route from provided persistent data", buf, 2u);
    }

    currentRouteCollection2 = [GEOComposedRoute _maps_composedRouteWithPersistentData:v60];
    if (currentRouteCollection2)
    {
      [(MapsAppDelegate *)self chromeViewController];
      v37 = v36 = v12;
      currentTraits = [v37 currentTraits];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1008B9B88;
      v65[3] = &unk_10162D4F0;
      v67 = v32;
      currentRouteCollection2 = currentRouteCollection2;
      v66 = currentRouteCollection2;
      v39 = [currentRouteCollection2 _maps_convertToNavigableRouteWithTraits:currentTraits errorHandler:&stru_10162D4C8 completionHandler:v65];

      v12 = v36;
    }

    goto LABEL_43;
  }

  if (!currentRouteCollection)
  {
    currentRouteCollection2 = +[IPCServer sharedServer];
    [currentRouteCollection2 navigationStateDidChangeTo:3 reason:@"No routes available"];
    goto LABEL_43;
  }

  p_cache = (&OBJC_METACLASS___RoutePlanningFeatureDiscoveryProvider + 16);
  if (routeID)
  {
    *buf = 0;
    *v72 = 0;
    [routeID getBytes:buf length:{objc_msgSend(routeID, "length")}];
    v41 = [[NSUUID alloc] initWithUUIDBytes:buf];
    [currentRouteCollection routes];
    v42 = currentRouteCollection;
    v44 = v43 = v12;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1008B9C90;
    v63[3] = &unk_10163B1E8;
    v64 = v41;
    v45 = v32;
    v46 = v41;
    currentRouteIndex = [v44 indexOfObjectPassingTest:v63];

    v12 = v43;
    currentRouteCollection = v42;

    v32 = v45;
    p_cache = &OBJC_METACLASS___RoutePlanningFeatureDiscoveryProvider.cache;
    if (currentRouteIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_36;
    }
  }

  if (self->_lastPrepareNavigationMessage && ([v30 matchesLoadDirectionsMessage:?] & 1) == 0)
  {
    v48 = v32;
    v49 = sub_1008B9228();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "This IPC request is not the same as the last Siri/Watch request we got, so we fail.", buf, 2u);
    }

    sharedServer = [p_cache + 118 sharedServer];
    [sharedServer navigationStateDidChangeTo:2 reason:@"Request to start navigation doesn't match prepared directions."];

    v32 = v48;
  }

  currentRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (routeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  currentRouteIndex = routeIndex;
  if (routeIndex >= [currentRouteCollection count])
  {
    currentRouteIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
    [p_cache + 118 sharedServer];
    v52 = v51 = v32;
    [v52 navigationStateDidChangeTo:2 reason:@"Requested route index not found in prepared directions."];

    v32 = v51;
  }

  if (currentRouteIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentRouteIndex = [currentRouteCollection currentRouteIndex];
  }

  [v59 setSelectedRouteIndex:currentRouteIndex forTransportType:{objc_msgSend(v59, "currentTransportType", v55)}];
  currentRouteCollection2 = [v59 currentRouteCollection];
  if (currentRouteCollection2)
  {
    (v32[2])(v32, currentRouteCollection2);
  }

  else
  {
    [p_cache + 118 sharedServer];
    v54 = v53 = v32;
    [v54 navigationStateDidChangeTo:2 reason:@"No route collection to navigate"];

    v32 = v53;
  }

LABEL_43:
}

- (void)prepareBackgroundNavigationWithMessage:(id)message
{
  messageCopy = message;
  objc_storeStrong(&self->_lastPrepareNavigationMessage, message);
  v6 = +[UIApplication _maps_keyMapsSceneDelegate];
  v7 = v6;
  if (v6)
  {
    delegate = v6;
  }

  else
  {
    v9 = +[UIApplication _maps_applicationScenes];
    firstObject = [v9 firstObject];
    delegate = [firstObject delegate];
  }

  v11 = delegate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v37 = v13;
  entryPointsCoordinator = [v13 entryPointsCoordinator];
  v15 = entryPointsCoordinator;
  if (entryPointsCoordinator)
  {
    entryPointsCoordinator2 = entryPointsCoordinator;
  }

  else
  {
    appSessionController = [(MapsAppDelegate *)self appSessionController];
    primaryPlatformController = [appSessionController primaryPlatformController];
    entryPointsCoordinator2 = [primaryPlatformController entryPointsCoordinator];
  }

  v19 = sub_1008B9228();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v41 = v11;
    v42 = 2112;
    v43 = entryPointsCoordinator2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Will prepare background navigation, sceneDelegate: %@, entryPointsCoordinator: %@", buf, 0x16u);
  }

  v36 = v11;

  [entryPointsCoordinator2 prepareBackgroundNavigation];
  v20 = +[MKLocationManager sharedLocationManager];
  [v20 resetAfterResumeIfNecessary];

  routeContextData = [messageCopy routeContextData];
  v22 = entryPointsCoordinator2;
  if (routeContextData)
  {
    v23 = [[GEOCompanionRouteContext alloc] initWithData:{routeContextData, v36}];
  }

  else
  {
    v23 = 0;
  }

  v24 = [[MKURLContext alloc] initWithOriginatedFromWatch:objc_msgSend(messageCopy companionRouteContext:{"originIsWatch"), v23}];
  v25 = +[UIApplication sharedApplication];
  windows = [v25 windows];
  firstObject2 = [windows firstObject];
  [firstObject2 windowScene];
  v29 = v28 = messageCopy;

  v30 = [v28 url];
  session = [v29 session];
  v38 = @"MKURLContext";
  v39 = v24;
  v32 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  coordinateSpace = [v29 coordinateSpace];
  [coordinateSpace bounds];
  [v22 openURL:v30 session:session sceneOptions:0 mkOptions:v32 windowSize:{v34, v35}];
}

- (id)hardwareModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (void)navigationService:(id)service didFailWithError:(id)error
{
  errorCopy = error;
  v6 = +[IPCServer sharedServer];
  v7 = [errorCopy description];
  [v6 navigationStateDidChangeTo:3 reason:v7];

  v8 = +[GEOPlatform sharedPlatform];
  if ([v8 isInternalInstall] && objc_msgSend(errorCopy, "code") == 10)
  {
    v9 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008BA294;
    block[3] = &unk_101661A40;
    v11 = errorCopy;
    selfCopy = self;
    v13 = v8;
    dispatch_after(v9, &_dispatch_main_q, block);
  }
}

- (void)navigationService:(id)service didEnableGuidancePrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  serviceCopy = service;
  if (promptsCopy)
  {
    [(MapsAppDelegate *)self _acquireDoubleHeightStatusBarAssertionIfNeeded];
    [(MapsAppDelegate *)self _updateSecureAppAssertion];
  }

  else
  {
    [(MapsAppDelegate *)self _clearDoubleHeightStatusBar];
    if (![serviceCopy navigationState])
    {
      [(MapsAppDelegate *)self _releaseSecureAppAssertion];
    }
  }
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  waypointCopy = waypoint;
  v8 = sub_100035E6C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    shortDescription = [waypointCopy shortDescription];
    v10 = 138412290;
    v11 = shortDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Did resume from waypoint: %@; update idle timer state", &v10, 0xCu);
  }

  [(NavigationIdleTimerProvider *)self->_navigationIdleTimerProvider updateConfiguration];
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  route = [service route];
  LODWORD(index) = [route isLegIndexOfLastLeg:index];

  if (index)
  {

    [(MapsAppDelegate *)self _clearDoubleHeightStatusBar];
  }
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v7 = +[MapsLightLevelController sharedController];
    [v7 reloadForChangedLightLevelTrackers];

    if ([serviceCopy desiredNavigationType] == 2)
    {
      v8 = @"Stepping navigation started";
    }

    else
    {
      if ([serviceCopy desiredNavigationType] != 3)
      {
LABEL_11:
        if (self->_foregroundDataActivationPopupAssertion)
        {
          goto LABEL_14;
        }

        v12 = objc_alloc_init(ForegroundOnlyDataActivationPopupAssertion);
        foregroundDataActivationPopupAssertion = self->_foregroundDataActivationPopupAssertion;
        self->_foregroundDataActivationPopupAssertion = v12;
        goto LABEL_13;
      }

      v8 = @"TBT navigation started";
    }

    v11 = +[IPCServer sharedServer];
    [v11 navigationStateDidChangeTo:1 reason:v8];

    goto LABEL_11;
  }

  if (!toState)
  {
    [(MapsAppDelegate *)self endTurnByTurn:serviceCopy];
  }

  v9 = self->_foregroundDataActivationPopupAssertion;
  if (v9)
  {
    [(DataActivationPopupAssertion *)v9 invalidate];
    foregroundDataActivationPopupAssertion = self->_foregroundDataActivationPopupAssertion;
    self->_foregroundDataActivationPopupAssertion = 0;
LABEL_13:
  }

LABEL_14:
  v13 = +[IPCServer sharedServer];
  [v13 setEtaOnlyNavMode:toState == 5];

  v14 = +[IPCServer sharedServer];
  [v14 setRoutePreviewGuidanceNavMode:toState == 3];
}

- (void)navigationService:(id)service willChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  if (!MNNavigationServiceStateChangedToNavigating())
  {
    v8 = serviceCopy;
    if (toState)
    {
      goto LABEL_15;
    }

    if ([serviceCopy navigationType] == 2)
    {
      [(MapsAppDelegate *)self endTransitTurnByTurn];
      [(MapsAppDelegate *)self _releaseProcessAssertion];
      [(MapsAppDelegate *)self _setCanShowInLockscreen:0];
      [(MapsAppDelegate *)self _unsuppressNetworkFlagsIfNecessary];
    }

    if ([serviceCopy navigationType] == 3)
    {
      [(MapsAppDelegate *)self endTurnByTurn:serviceCopy];
    }

    [(MapsAppDelegate *)self _clearDoubleHeightStatusBar];
    [(MapsAppDelegate *)self _releaseSecureAppAssertion];
    goto LABEL_14;
  }

  if ([serviceCopy desiredNavigationType] == 2)
  {
    [(MapsAppDelegate *)self _suppressNetworkFlags];
    v7 = [(MapsAppDelegate *)self _supportsModernTransitNavigation:serviceCopy];
    [(MapsAppDelegate *)self _setCanShowInLockscreen:v7];
    v8 = serviceCopy;
    if (!v7)
    {
      goto LABEL_15;
    }

    [(MapsAppDelegate *)self _acquireProcessAssertionForTurnByTurn:0];
    [(MapsAppDelegate *)self startTransitTurnByTurn];
    goto LABEL_14;
  }

  v9 = [serviceCopy desiredNavigationType] == 3;
  v8 = serviceCopy;
  if (v9)
  {
    [(MapsAppDelegate *)self startTurnByTurn:serviceCopy];
    [(MapsAppDelegate *)self _acquireDoubleHeightStatusBarAssertionIfNeeded];
LABEL_14:
    v8 = serviceCopy;
  }

LABEL_15:
}

- (void)_releaseProcessAssertion
{
  priorityAssertion = [(MapsAppDelegate *)self priorityAssertion];

  if (priorityAssertion)
  {
    priorityAssertion2 = [(MapsAppDelegate *)self priorityAssertion];
    [(MapsAppDelegate *)self setPriorityAssertion:0];
    v5 = sub_1008B9228();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      explanation = [priorityAssertion2 explanation];
      *buf = 138412546;
      v12 = explanation;
      v13 = 2048;
      v14 = 0x4014000000000000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Will invalidate priority assertion %@ in %#.1lfs", buf, 0x16u);
    }

    v7 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008BAD7C;
    block[3] = &unk_101661B18;
    v10 = priorityAssertion2;
    v8 = priorityAssertion2;
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

- (void)_acquireProcessAssertionForTurnByTurn:(BOOL)turn
{
  turnCopy = turn;
  priorityAssertion = [(MapsAppDelegate *)self priorityAssertion];

  if (!priorityAssertion)
  {
    v6 = +[NSBundle mainBundle];
    bundleIdentifier = [v6 bundleIdentifier];
    v8 = bundleIdentifier;
    if (turnCopy)
    {
      v9 = @".Navigation.TurnByTurn";
    }

    else
    {
      v9 = @".Navigation.Stepping";
    }

    v10 = [bundleIdentifier stringByAppendingString:v9];

    v11 = [RBSDomainAttribute attributeWithDomain:@"com.apple.maps" name:@"ActiveNavigation"];
    v25 = v11;
    v12 = [NSArray arrayWithObjects:&v25 count:1];
    v13 = [RBSAssertion alloc];
    v14 = +[RBSTarget currentProcess];
    v15 = [v13 initWithExplanation:v10 target:v14 attributes:v12];

    [v15 setInvalidationHandler:&stru_10162D460];
    v20 = 0;
    v16 = [v15 acquireWithError:&v20];
    v17 = v20;
    v18 = sub_1008B9228();
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Acquired priority assertion %@", buf, 0xCu);
      }

      [(MapsAppDelegate *)self setPriorityAssertion:v15];
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v10;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to acquire a priority assertion %@, error %@", buf, 0x16u);
      }
    }
  }
}

- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack
{
  if (self->_canShowInLockscreen)
  {
    lastObject = [contextStack lastObject];
    if ([lastObject conformsToProtocol:&OBJC_PROTOCOL___LockScreenProtocol] && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(lastObject, "supportsLockscreen")))
    {
      [(MapsAppDelegate *)self _updateSecureAppAssertion];
    }
  }
}

- (void)chromeViewController:(id)controller willMoveFromContextStack:(id)stack toContextStack:(id)contextStack
{
  if (self->_canShowInLockscreen)
  {
    lastObject = [contextStack lastObject];
    if (![lastObject conformsToProtocol:&OBJC_PROTOCOL___LockScreenProtocol] || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(lastObject, "supportsLockscreen") & 1) == 0)
    {
      [(MapsAppDelegate *)self _updateSecureAppAssertion];
    }
  }
}

- (void)endTurnByTurn:(id)turn
{
  self->_isNavigatingTurnByTurn = 0;
  navigationIdleTimerProvider = self->_navigationIdleTimerProvider;
  self->_navigationIdleTimerProvider = 0;

  idleTimerController = [(MapsAppDelegate *)self idleTimerController];
  [idleTimerController setDesiredIdleTimerState:0 forReason:2];

  thermalWarningController = self->_thermalWarningController;
  self->_thermalWarningController = 0;

  v11 = +[IPCServer sharedServer];
  v7 = +[MNNavigationService sharedService];
  externalGuidanceSource = [v11 externalGuidanceSource];

  if (externalGuidanceSource == v7)
  {
    [v11 setExternalGuidanceSource:0];
  }

  [(MapsAppDelegate *)self _setCanShowInLockscreen:0];
  [(MapsAppDelegate *)self _clearDoubleHeightStatusBar];
  [(MapsAppDelegate *)self _releaseSecureAppAssertion];
  [(MapsAppDelegate *)self _releaseProcessAssertion];
  if (self->_hasNavNotifyToken)
  {
    if (notify_set_state(self->_navNotifyToken, 0))
    {
      NSLog(@"Failed to set state for notify token");
    }

    else if (notify_post("com.apple.Maps.Navigation"))
    {
      NSLog(@"Failed to post notification for token");
    }
  }

  v9 = +[MapsLightLevelController sharedController];
  [v9 reloadForChangedLightLevelTrackers];

  [self->_navigatorDataActivationPopupAssertion invalidate];
  navigatorDataActivationPopupAssertion = self->_navigatorDataActivationPopupAssertion;
  self->_navigatorDataActivationPopupAssertion = 0;

  [(MapsAppDelegate *)self _unsuppressNetworkFlagsIfNecessary];
}

- (void)endTransitTurnByTurn
{
  transitIdleTimerProvider = self->_transitIdleTimerProvider;
  self->_transitIdleTimerProvider = 0;
}

- (void)startTurnByTurn:(id)turn
{
  turnCopy = turn;
  self->_isNavigatingTurnByTurn = 1;
  idleTimerController = [(MapsAppDelegate *)self idleTimerController];
  objc_initWeak(&location, idleTimerController);

  v6 = [NavigationIdleTimerProvider alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1008BB7B0;
  v24[3] = &unk_1016619A8;
  objc_copyWeak(&v25, &location);
  v7 = [(NavigationIdleTimerProvider *)v6 initWithIdleStateHandler:v24 undimHandler:&stru_10162D420];
  navigationIdleTimerProvider = self->_navigationIdleTimerProvider;
  self->_navigationIdleTimerProvider = v7;

  v9 = objc_alloc_init(NavigationThermalWarningController);
  thermalWarningController = self->_thermalWarningController;
  self->_thermalWarningController = v9;

  objc_initWeak(&from, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1008BB834;
  v21 = &unk_1016619A8;
  objc_copyWeak(&v22, &from);
  [(NavigationThermalWarningController *)self->_thermalWarningController setChangeHandler:&v18];
  v11 = [IPCServer sharedServer:v18];
  v12 = +[MNNavigationService sharedService];
  externalGuidanceSource = [v11 externalGuidanceSource];

  if (externalGuidanceSource != v12)
  {
    [v11 setExternalGuidanceSource:v12];
  }

  v14 = +[VGVirtualGarageService sharedService];
  virtualGarageSource = [v11 virtualGarageSource];

  if (virtualGarageSource != v14)
  {
    [v11 setVirtualGarageSource:v14];
  }

  [(MapsAppDelegate *)self _acquireProcessAssertionForTurnByTurn:1];
  [(MapsAppDelegate *)self _setCanShowInLockscreen:1];
  if (!self->_hasNavNotifyToken)
  {
    if (notify_register_check("com.apple.Maps.Navigation", &self->_navNotifyToken))
    {
      NSLog(@"Failed to get notify token");
      if (!self->_hasNavNotifyToken)
      {
        goto LABEL_14;
      }
    }

    else
    {
      self->_hasNavNotifyToken = 1;
    }
  }

  if (notify_set_state(self->_navNotifyToken, 1uLL))
  {
    NSLog(@"Failed to set state for notify token");
  }

  else if (notify_post("com.apple.Maps.Navigation"))
  {
    NSLog(@"Failed to post notification for token");
  }

LABEL_14:
  if (!self->_navigatorDataActivationPopupAssertion)
  {
    v16 = objc_alloc_init(DataActivationPopupAssertion);
    navigatorDataActivationPopupAssertion = self->_navigatorDataActivationPopupAssertion;
    self->_navigatorDataActivationPopupAssertion = v16;
  }

  [(MapsAppDelegate *)self _suppressNetworkFlags];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)startTransitTurnByTurn
{
  v3 = [[NavigationIdleTimerProvider alloc] initWithIdleStateHandler:0 undimHandler:&stru_10162D400];
  transitIdleTimerProvider = self->_transitIdleTimerProvider;
  self->_transitIdleTimerProvider = v3;
}

- (BOOL)canPlayTrace
{
  if (sub_10078A958())
  {
    v2 = +[MNNavigationService sharedService];
    v3 = [v2 isInNavigatingState] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_releaseSecureAppAssertion
{
  if (self->_secureAppAssertion)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Releasing secure app assertion for Maps navigation", v5, 2u);
    }

    [(SBSSecureAppAssertion *)self->_secureAppAssertion invalidate];
    secureAppAssertion = self->_secureAppAssertion;
    self->_secureAppAssertion = 0;
  }
}

- (void)_acquireSecureAppAssertion
{
  secureAppAssertion = self->_secureAppAssertion;
  v4 = GEOFindOrCreateLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (secureAppAssertion)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not taking secure app assertion for Maps navigation: we already have one", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Taking secure app assertion for Maps navigation", v7, 2u);
    }

    v6 = [SBSSecureAppAssertion acquireContentProviderAssertionForType:2 slot:SBSLockScreenContentAssertionSlotApp identifier:@"com.apple.Maps" errorHandler:&stru_10162D3E0];
    v4 = self->_secureAppAssertion;
    self->_secureAppAssertion = v6;
  }
}

- (void)_updateSecureAppAssertion
{
  if (self->_canShowInLockscreen)
  {
    appSessionController = [(MapsAppDelegate *)self appSessionController];
    currentlyNavigatingCoverSheetSceneAssociation = [appSessionController currentlyNavigatingCoverSheetSceneAssociation];
    mapsScene = [currentlyNavigatingCoverSheetSceneAssociation mapsScene];
    delegate = [mapsScene delegate];

    chromeViewController = [delegate chromeViewController];

    if (!chromeViewController)
    {
      v17 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "No chrome is navigating", buf, 2u);
      }

      [(MapsAppDelegate *)self _releaseSecureAppAssertion];
      goto LABEL_45;
    }

    chromeViewController2 = [delegate chromeViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        chromeViewController3 = [delegate chromeViewController];
        *buf = 138412290;
        v33 = chromeViewController3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Chrome not ready to take secure app assertion: %@", buf, 0xCu);
      }

      goto LABEL_45;
    }

    chromeViewController4 = [delegate chromeViewController];
    topIOSBasedContext = [chromeViewController4 topIOSBasedContext];
    if ([topIOSBasedContext conformsToProtocol:&OBJC_PROTOCOL___LockScreenProtocol])
    {
      if (objc_opt_respondsToSelector() & 1) == 0 || ([topIOSBasedContext supportsLockscreen])
      {
        v12 = +[CarDisplayController sharedInstance];
        isAnyCarSceneHostingNavigation = [v12 isAnyCarSceneHostingNavigation];

        if (isAnyCarSceneHostingNavigation)
        {
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v15 = "Not taking secure app assertion for Maps navigation: CarPlay is hosting navigation";
LABEL_30:
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
          }
        }

        else
        {
          if (![(NavigationThermalWarningController *)self->_thermalWarningController isDeviceMelting])
          {
            [(MapsAppDelegate *)self _acquireSecureAppAssertion];
            goto LABEL_44;
          }

          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v15 = "Not taking secure app assertion for Maps navigation: thermal level is too high";
            goto LABEL_30;
          }
        }

LABEL_43:

        [(MapsAppDelegate *)self _releaseSecureAppAssertion];
LABEL_44:

LABEL_45:
        return;
      }

      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v26 = topIOSBasedContext;
        if (!v26)
        {
          v25 = @"<nil>";
          goto LABEL_50;
        }

        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = [v26 performSelector:"accessibilityIdentifier"];
          v30 = v29;
          if (v29 && ![v29 isEqualToString:v28])
          {
            v25 = [NSString stringWithFormat:@"%@<%p, %@>", v28, v26, v30];

            goto LABEL_38;
          }
        }

        v25 = [NSString stringWithFormat:@"%@<%p>", v28, v26];
LABEL_38:

LABEL_50:
        *buf = 138412290;
        v33 = v25;
        v31 = "Not taking secure app assertion, topContext %@ reports that it currently does not support the lockscreen";
        goto LABEL_41;
      }

LABEL_42:

      goto LABEL_43;
    }

    v14 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_42;
    }

    v20 = topIOSBasedContext;
    if (!v20)
    {
      v25 = @"<nil>";
      goto LABEL_40;
    }

    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_26;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_26:

LABEL_40:
    *buf = 138412290;
    v33 = v25;
    v31 = "Not taking secure app assertion for Maps navigation: top mode %@ doesn't conform to LockScreenProtocol";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v31, buf, 0xCu);

    goto LABEL_42;
  }

  v16 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Not taking secure app assertion for Maps navigation: not permitted", buf, 2u);
  }

  [(MapsAppDelegate *)self _releaseSecureAppAssertion];
}

- (void)_setCanShowInLockscreen:(BOOL)lockscreen
{
  if (self->_canShowInLockscreen != lockscreen)
  {
    self->_canShowInLockscreen = lockscreen;
    appSessionController = [(MapsAppDelegate *)self appSessionController];
    currentlyNavigatingCoverSheetSceneAssociation = [appSessionController currentlyNavigatingCoverSheetSceneAssociation];
    mapsScene = [currentlyNavigatingCoverSheetSceneAssociation mapsScene];
    delegate = [mapsScene delegate];

    chromeViewController = [delegate chromeViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = chromeViewController;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    canShowInLockscreen = self->_canShowInLockscreen;
    v12 = GEOFindOrCreateLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (canShowInLockscreen)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Now able to show in lockscreen", buf, 2u);
      }

      v14 = +[GEOTileLoader modernLoader];
      [v14 openForClient:@"LockScreenNav"];

      v15 = +[GEOResourceManifestManager modernManager];
      [v15 openServerConnection];

      [(MapsAppDelegate *)self acquireSecureAppAssertionIfNeeded];
      [v10 addContextStackObserver:self];
    }

    else
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No longer able to show in lockscreen", v17, 2u);
      }

      [v10 removeContextStackObserver:self];
      [(MapsAppDelegate *)self _releaseSecureAppAssertion];
      v16 = +[GEOTileLoader modernLoader];
      [v16 closeForClient:@"LockScreenNav"];

      v10 = +[GEOResourceManifestManager modernManager];
      [v10 closeServerConnection];
    }
  }
}

- (void)setMapsIsShowingTour:(BOOL)tour
{
  isShowingTour = self->_isShowingTour;
  self->_isShowingTour = tour;
  if (!tour || isShowingTour)
  {
    if (!tour && isShowingTour)
    {
      v5 = dispatch_time(0, 10000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1008BC5EC;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v5, &_dispatch_main_q, block);
    }
  }

  else
  {
    idleTimerController = [(MapsAppDelegate *)self idleTimerController];
    [idleTimerController setDesiredIdleTimerState:1 forReason:1];
  }
}

- (void)setTrackingMode:(int64_t)mode monitorBatteryState:(BOOL)state
{
  isTrackingLocation = self->_isTrackingLocation;
  v6 = mode != 0;
  self->_isTrackingLocation = v6;
  if (isTrackingLocation != v6)
  {
    v7 = 1;
    if (state)
    {
      v7 = 2;
    }

    if (mode)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    idleTimerController = [(MapsAppDelegate *)self idleTimerController];
    [idleTimerController setDesiredIdleTimerState:v8 forReason:0];
  }
}

- (void)_clearDoubleHeightStatusBar
{
  if (self->_doubleHeightStatusBarAssertion)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating navigation status bar assertion", v5, 2u);
    }

    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion invalidate];
    doubleHeightStatusBarAssertion = self->_doubleHeightStatusBarAssertion;
    self->_doubleHeightStatusBarAssertion = 0;
  }
}

- (void)_acquireDoubleHeightStatusBarAssertionIfNeeded
{
  if (!self->_doubleHeightStatusBarAssertion)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Acquiring navigation status bar assertion", v8, 2u);
    }

    v4 = [[SBSStatusBarStyleOverridesAssertion alloc] initWithStatusBarStyleOverrides:128 forPID:getpid() exclusive:0 showsWhenForeground:0];
    doubleHeightStatusBarAssertion = self->_doubleHeightStatusBarAssertion;
    self->_doubleHeightStatusBarAssertion = v4;

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Touch to return to Navigation" value:@"localized string not found" table:0];
    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion setStatusString:v7];

    [(SBSStatusBarStyleOverridesAssertion *)self->_doubleHeightStatusBarAssertion acquireWithHandler:&stru_10162D3A0 invalidationHandler:&stru_10162D3C0];
  }
}

- (void)_suppressNetworkFlags
{
  v2 = SBSSpringBoardServerPort();

  _SBSetApplicationNetworkFlags(v2, 0, 0);
}

- (void)carDisplayControllerDidUpdateNavigationVisibility:(id)visibility
{
  visibilityCopy = visibility;
  v5 = +[MapsLightLevelController sharedController];
  [v5 reloadForChangedLightLevelTrackers];

  isAnyCarSceneHostingDrivingNavigation = [visibilityCopy isAnyCarSceneHostingDrivingNavigation];
  v7 = sub_1008B9228();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v15 = isAnyCarSceneHostingDrivingNavigation;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "carDisplayControllerDidUpdateNavigationVisibility: %d", buf, 8u);
  }

  if (self->_carNavigationWasVisible != isAnyCarSceneHostingDrivingNavigation)
  {
    self->_carNavigationWasVisible = isAnyCarSceneHostingDrivingNavigation;
    if (isAnyCarSceneHostingDrivingNavigation)
    {
      appCoordinator = [(MapsAppDelegate *)self appCoordinator];
      [appCoordinator showFullscreenDirectionsList];

      [(MapsAppDelegate *)self _releaseSecureAppAssertion];
    }

    else if (self->_isNavigatingTurnByTurn)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1008BCC68;
      v13[3] = &unk_101661B18;
      v13[4] = self;
      v9 = objc_retainBlock(v13);
      if ([UIApplication _maps_isAnySceneConnectedForRole:UIWindowSceneSessionRoleApplication])
      {
        v10 = sub_1008B9228();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Main app scene already connected; executing cleanupAfterCarPlayDisconnected()", buf, 2u);
        }

        (v9[2])(v9);
      }

      else
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1008BCCF4;
        v11[3] = &unk_1016610B8;
        v12 = v9;
        [UIApplication _maps_openApplicationSceneSuspendedWithCompletion:v11];
      }
    }
  }
}

- (void)migrateARPConsentDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if (([defaultsCopy BOOLForKey:@"MigratedARPConsentPreference"] & 1) == 0)
  {
    GEOConfigGetBOOL();
    GEOConfigSetInteger();
    [defaultsCopy setBool:1 forKey:@"MigratedARPConsentPreference"];
    _GEOConfigRemoveValue();
  }
}

- (void)migrateNavigoDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if (([defaultsCopy BOOLForKey:@"MigratedNavigoAppPreferences"] & 1) == 0)
  {
    v3 = [defaultsCopy objectForKey:@"DefaultsDistanceUnits"];
    if (([v3 isEqualToString:@"Imperial"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Metric"))
    {
      [MapsSettings setValue:v3 forDefaultsKey:@"DistanceUnits" bundleID:0 syncToNano:0];
    }

    [defaultsCopy setBool:1 forKey:@"MigratedNavigoAppPreferences"];
  }
}

- (void)applicationDidRemoveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo objectForKeyedSubscript:_UIApplicationDeactivationReasonUserInfoKey];
  integerValue = [v4 integerValue];

  if (integerValue == 2)
  {
    v6 = 709;
  }

  else
  {
    if (integerValue != 1)
    {
      return;
    }

    v6 = 710;
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:27 onTarget:v6 eventValue:0];
}

- (void)applicationWillAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo objectForKeyedSubscript:_UIApplicationDeactivationReasonUserInfoKey];
  integerValue = [v4 integerValue];

  if (integerValue == 2)
  {
    v6 = 709;
  }

  else
  {
    if (integerValue != 1)
    {
      return;
    }

    v6 = 710;
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:26 onTarget:v6 eventValue:0];
}

- (void)_maps_applicationDidEnterBackground:(id)background
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "-_maps_applicationDidEnterBackground:", v5, 2u);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setDouble:@"LastSuspendTime" forKey:CFAbsoluteTimeGetCurrent()];
}

- (void)_maps_applicationWillEnterForeground:(id)foreground
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_maps_applicationWillEnterForeground:", v4, 2u);
  }

  +[MapsSettings clearSelectedViewModeIfExpired];
}

- (void)_maps_applicationWillResignActive:(id)active
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_maps_applicationWillResignActive:", v5, 2u);
  }

  v4 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v4 closeConnection];
}

- (void)_maps_applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "-_maps_applicationDidBecomeActive:", buf, 2u);
  }

  [(MapsAppDelegate *)self _startLegacyDataMigration];
  if (!self->_siriNavStatusUpdater)
  {
    v6 = [SiriNavStatusUpdater alloc];
    v7 = +[MNNavigationService sharedService];
    v8 = [(SiriNavStatusUpdater *)v6 initWithNavigationService:v7];
    siriNavStatusUpdater = self->_siriNavStatusUpdater;
    self->_siriNavStatusUpdater = v8;
  }

  [(MapsAppDelegate *)self checkCoreRoutineEnabledState];
  if (+[_TtC4Maps24VisitedPlacesUIUtilities isFeatureEnabled])
  {
    if (!self->_visitsLoader)
    {
      v10 = objc_alloc_init(_TtC4Maps12VisitsLoader);
      visitsLoader = self->_visitsLoader;
      self->_visitsLoader = v10;
    }

    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008BD528;
    v12[3] = &unk_1016619A8;
    objc_copyWeak(&v13, buf);
    [_TtC4Maps22MapsWarmingSheetHelper isVisitedPlacesAuthorizedWithCompletion:v12];
    [_TtC4Maps12VisitsLoader shouldShowNotificationWithCompletionHandler:&stru_10162D380];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, 2 * ([application applicationState] == 2));
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  errorCopy = error;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138477827;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Could not register for sync push notifications with error: %{private}@", &v6, 0xCu);
  }
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138477827;
    v7 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Registered for sync push notifications with token: %{private}@", &v6, 0xCu);
  }
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  if (![(MapsAppDelegate *)self lockedOrientations:application])
  {
    return 30;
  }

  return [(MapsAppDelegate *)self lockedOrientations];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  optionsCopy = options;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v23 = 138412546;
    v24 = sessionCopy;
    v25 = 2112;
    v26 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "application:configurationForConnectingSceneSession: %@, options: %@", &v23, 0x16u);
  }

  role = [sessionCopy role];
  v10 = [UISceneConfiguration configurationWithName:0 sessionRole:role];

  role2 = [sessionCopy role];
  v12 = [role2 isEqualToString:UIWindowSceneSessionRoleApplication];

  if (v12)
  {
    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];
    activityType = [anyObject activityType];
    [activityType isEqualToString:@"com.apple.Maps.MacPlacePhotoViewer"];

LABEL_7:
    [v10 setDelegateClass:objc_opt_class()];
    goto LABEL_8;
  }

  role3 = [sessionCopy role];
  v17 = [role3 isEqualToString:_UIWindowSceneSessionTypeCoverSheet];

  if (v17)
  {
    goto LABEL_7;
  }

  role4 = [sessionCopy role];
  v19 = [role4 isEqualToString:_UIWindowSceneSessionRoleCarPlay];

  if (v19)
  {
    goto LABEL_7;
  }

LABEL_8:
  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    delegateClass = [v10 delegateClass];
    v23 = 138412546;
    v24 = v10;
    v25 = 2112;
    v26 = delegateClass;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "application:configurationForConnectingSceneSession:options: sceneConfiguration: %@, delegateClass: %@", &v23, 0x16u);
  }

  return v10;
}

- (void)applicationDidReceiveMemoryWarning:(id)warning
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "applicationDidReceiveMemoryWarning:", v4, 2u);
  }
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "-applicationWillTerminate:", v10, 2u);
  }

  if (self->_isNavigatingTurnByTurn)
  {
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:3002 onTarget:0 eventValue:0];
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObjectForKey:@"NavigationUserActivityDefault"];

  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 removeObjectForKey:@"NavigationRestorationAttempts"];

  v8 = +[MNNavigationService sharedService];
  [v8 stopNavigationWithReason:9];

  v9 = +[MNNavigationService sharedService];
  [v9 unregisterObserver:self];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "application:didFinishLaunchingWithOptions: %@", &v18, 0xCu);
  }

  v7 = sub_100005610();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DidFinishLaunching", "", &v18, 2u);
  }

  v8 = sub_100005610();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CarPlaySetup", "", &v18, 2u);
  }

  v9 = +[CarDisplayController sharedInstance];
  [v9 didFinishLaunchingSuspendedWithOptions:optionsCopy];

  v10 = sub_100005610();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CarPlaySetup", "", &v18, 2u);
  }

  v11 = sub_100005610();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NetworkFlags", "", &v18, 2u);
  }

  [(MapsAppDelegate *)self _unsuppressNetworkFlags];
  v12 = sub_100005610();
  if (os_signpost_enabled(v12))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NetworkFlags", "", &v18, 2u);
  }

  v13 = sub_100005610();
  if (os_signpost_enabled(v13))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InitializeActivityItemsConfiguration", "", &v18, 2u);
  }

  v14 = objc_alloc_init(MapsActivityItemsConfiguration);
  [(MapsAppDelegate *)self setActivityItemsConfiguration:v14];

  v15 = sub_100005610();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InitializeActivityItemsConfiguration", "", &v18, 2u);
  }

  v16 = sub_100005610();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DidFinishLaunching", "", &v18, 2u);
  }

  return 1;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v73 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "application:willFinishLaunchingWithOptions: %@", buf, 0xCu);
  }

  v9 = sub_100005610();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WillFinishLaunching", "", buf, 2u);
  }

  byte_10195DC48 = [applicationCopy launchedToTest];
  v10 = +[NSBundle mainBundle];
  bundleIdentifier = [v10 bundleIdentifier];
  v12 = [NSSet setWithObjects:bundleIdentifier, 0];
  SBSSetAlertSuppressionContexts();

  [GEOUserSession setInitialShareSessionWithMaps:1];
  v13 = sub_100005610();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetInstallState", "", buf, 2u);
  }

  +[MSPMapsInstallState setRunningInsideMapsApp];
  v14 = sub_100005610();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetInstallState", "", buf, 2u);
  }

  v15 = +[GEOPlatform sharedPlatform];
  hardwareIdentifier = [v15 hardwareIdentifier];

  v17 = +[GEOMapService sharedService];
  [v17 setDefaultTraitsHardwareIdentifier:hardwareIdentifier];

  v18 = +[GEOPlatform sharedPlatform];
  [v18 setClientCapabilitiesHardwareIdentifier:hardwareIdentifier];

  v19 = sub_100005610();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StartOfflineService", "", buf, 2u);
  }

  v20 = +[MapsOfflineHelper sharedHelper];
  [v20 startServiceIfEnabled];

  v21 = sub_100005610();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StartOfflineService", "", buf, 2u);
  }

  v22 = sub_100005610();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SearchVirtualGarageSetup", "", buf, 2u);
  }

  v23 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v24 = sub_100005610();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SearchVirtualGarageSetup", "", buf, 2u);
  }

  v25 = sub_100005610();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NavigationServiceSetup", "", buf, 2u);
  }

  v26 = +[MNNavigationService sharedService];
  [v26 registerObserver:self];

  v27 = +[NavigationFeedbackCollector sharedFeedbackCollector];
  v28 = sub_100005610();
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NavigationServiceSetup", "", buf, 2u);
  }

  v29 = sub_100005610();
  if (os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "StartIPCServer", "", buf, 2u);
  }

  v30 = +[IPCServer sharedServer];
  [v30 setBackgroundNavigationDelegate:self];

  v31 = sub_100005610();
  if (os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "StartIPCServer", "", buf, 2u);
  }

  v32 = sub_100005610();
  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddNotificationObservers", "", buf, 2u);
  }

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"_maps_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"_maps_applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];

  v35 = +[NSNotificationCenter defaultCenter];
  [v35 addObserver:self selector:"_maps_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v36 = +[NSNotificationCenter defaultCenter];
  [v36 addObserver:self selector:"_maps_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v37 = +[NSNotificationCenter defaultCenter];
  [v37 addObserver:self selector:"_userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];

  v38 = +[NSNotificationCenter defaultCenter];
  [v38 addObserver:self selector:"_localeDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

  v39 = +[NSNotificationCenter defaultCenter];
  [v39 addObserver:self selector:"applicationWillAddDeactivationReason:" name:_UIApplicationWillAddDeactivationReasonNotification object:0];

  v40 = +[NSNotificationCenter defaultCenter];
  [v40 addObserver:self selector:"applicationDidRemoveDeactivationReason:" name:_UIApplicationDidRemoveDeactivationReasonNotification object:0];

  v41 = sub_100005610();
  if (os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddNotificationObservers", "", buf, 2u);
  }

  v42 = sub_100005610();
  if (os_signpost_enabled(v42))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrepareCarPlayLaunch", "", buf, 2u);
  }

  [(MapsAppDelegate *)self prepareForCarPlayLaunch];
  v43 = sub_100005610();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrepareCarPlayLaunch", "", buf, 2u);
  }

  v44 = sub_100005610();
  if (os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MigrateARPDefaults", "", buf, 2u);
  }

  v45 = +[NSUserDefaults standardUserDefaults];
  [(MapsAppDelegate *)self migrateARPConsentDefaults:v45];

  v46 = sub_100005610();
  if (os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MigrateARPDefaults", "", buf, 2u);
  }

  v47 = sub_100005610();
  if (os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RegisterDefaults", "", buf, 2u);
  }

  [(MapsAppDelegate *)self _registerDefaults];
  v48 = sub_100005610();
  if (os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RegisterDefaults", "", buf, 2u);
  }

  v49 = sub_100005610();
  if (os_signpost_enabled(v49))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v49, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InitializeLocationManager", "", buf, 2u);
  }

  [(MapsAppDelegate *)self _setupSharedLocationManager];
  v50 = sub_100005610();
  if (os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InitializeLocationManager", "", buf, 2u);
  }

  v51 = sub_100005610();
  if (os_signpost_enabled(v51))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SetMeasurementUnits", "", buf, 2u);
  }

  +[MapsSettings setSystemMeasurementUnits];
  v52 = sub_100005610();
  if (os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SetMeasurementUnits", "", buf, 2u);
  }

  v53 = +[UNUserNotificationCenter currentNotificationCenter];
  [v53 setDelegate:self];

  if ([UIApp shouldLaunchSafe])
  {
    GEOResetAllDefaults();
    v54 = +[NSUserDefaults __maps_groupUserDefaults];
    [v54 removeObjectForKey:@"MapsActivity"];

    v55 = +[NSUserDefaults standardUserDefaults];
    [v55 removeObjectForKey:@"WebBasedPlacecardManifest"];
  }

  if (([UIApp launchedToTest] & 1) == 0)
  {
    v56 = +[NSNotificationCenter defaultCenter];
    [v56 addObserver:self selector:"receivedFullyDrawnNotification" name:VKMapViewDidBecomeFullyDrawnNotification object:0];
  }

  v57 = sub_100005610();
  if (os_signpost_enabled(v57))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "InitializeMapsXPCConnections", "", buf, 2u);
  }

  v58 = +[MapsXPCConnectionsManager sharedManager];
  v59 = sub_100005610();
  if (os_signpost_enabled(v59))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "InitializeMapsXPCConnections", "", buf, 2u);
  }

  v60 = sub_100005610();
  if (os_signpost_enabled(v60))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MapsSuggestionsSignalPack", "", buf, 2u);
  }

  v61 = +[MKMapsSuggestionsPredictor sharedPredictor];
  v62 = +[MapsSuggestionsPredictor sharedPredictor];
  [v61 setSignalPackCacheInterface:v62];

  v63 = sub_100005610();
  if (os_signpost_enabled(v63))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MapsSuggestionsSignalPack", "", buf, 2u);
  }

  v64 = sub_100005610();
  if (os_signpost_enabled(v64))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SharedTripContactsSetup", "", buf, 2u);
  }

  +[MSPSharedTripContact _maps_prepareForFirstUse];
  v65 = sub_100005610();
  if (os_signpost_enabled(v65))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v65, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SharedTripContactsSetup", "", buf, 2u);
  }

  if (MGGetBoolAnswer())
  {
    v66 = sub_100005610();
    if (os_signpost_enabled(v66))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SiriContext", "", buf, 2u);
    }

    v67 = +[AFContextManager defaultContextManager];
    v68 = +[MapsSiriContextProvider sharedContextProvider];
    [v67 addContextProvider:v68];

    v69 = sub_100005610();
    if (os_signpost_enabled(v69))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v69, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SiriContext", "", buf, 2u);
    }
  }

  v70 = sub_100005610();
  if (os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WillFinishLaunching", "", buf, 2u);
  }

  +[_TtC4Maps22MapsWarmingSheetHelper setFamiliarRouteStatusForAnalytics];
  +[_TtC4Maps22MapsWarmingSheetHelper setVisitedPlacesStatusForAnalytics];

  return 1;
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if ([FeedbackSubmissionManager canHandleSessionIdentifier:sessionCopy])
  {
    v9 = sub_10002E924();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received a call from the app delegate with identifier %@", &v11, 0xCu);
    }

    submissionManager = [(MapsAppDelegate *)self submissionManager];
    [submissionManager updateEventsForBackgroundURLSessionWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_performPostExtendedLaunchInitialization
{
  v3 = sub_100005610();
  if (os_signpost_enabled(v3))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PostExtendedLaunchInitialization", "", buf, 2u);
  }

  if (!self->_distanceUnitUpdater)
  {
    v4 = objc_alloc_init(MapsDistanceUnitUpdater);
    distanceUnitUpdater = self->_distanceUnitUpdater;
    self->_distanceUnitUpdater = v4;

    [(MapsDistanceUnitUpdater *)self->_distanceUnitUpdater start];
  }

  if (!self->_placeholderGridCache)
  {
    v6 = +[MUPlaceholderGridCache unretainedInstance];
    placeholderGridCache = self->_placeholderGridCache;
    self->_placeholderGridCache = v6;

    [(MUPlaceholderGridCache *)self->_placeholderGridCache loadPlaceholderGridImages];
  }

  objc_initWeak(buf, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1008BF3A4;
  v14 = &unk_101661B98;
  objc_copyWeak(&v15, buf);
  geo_dispatch_async_qos();
  v8 = +[MapsMetroAnalyticsManager sharedManager];
  [v8 startMonitoring];

  v9 = sub_100005610();
  if (os_signpost_enabled(v9))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PostExtendedLaunchInitialization", "", v10, 2u);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)receivedFullyDrawnNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:VKMapViewDidBecomeFullyDrawnNotification object:0];

  v4 = +[UIApplication sharedApplication];
  if ([v4 shouldRecordExtendedLaunchTime])
  {
    [v4 finishedTest:@"launch" extraResults:0];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008BF4C8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sendDidEnterBackgroundNotification
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MapsApplicationDidEnterBackgroundNotification" object:UIApp];
}

- (POISearchManager)poiSearchManager
{
  poiSearchManager = self->_poiSearchManager;
  if (!poiSearchManager)
  {
    v4 = objc_alloc_init(POISearchManager);
    v5 = self->_poiSearchManager;
    self->_poiSearchManager = v4;

    poiSearchManager = self->_poiSearchManager;
  }

  return poiSearchManager;
}

- (IdleTimerController)idleTimerController
{
  idleTimerController = self->_idleTimerController;
  if (!idleTimerController)
  {
    v4 = objc_alloc_init(IdleTimerController);
    v5 = self->_idleTimerController;
    self->_idleTimerController = v4;

    idleTimerController = self->_idleTimerController;
  }

  return idleTimerController;
}

- (id)entryPointsCoordinator
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  entryPointsCoordinator = [v2 entryPointsCoordinator];

  v4 = sub_1008B9228();
  v5 = v4;
  if (entryPointsCoordinator)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found entry points coordinator from key maps scene delegate", buf, 2u);
    }

    v6 = entryPointsCoordinator;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find entryPointsCoordinator", v8, 2u);
    }
  }

  return entryPointsCoordinator;
}

- (AppCoordinator)appCoordinator
{
  v3 = +[UIApplication _maps_keyMapsSceneDelegate];
  appCoordinator = [v3 appCoordinator];

  if (!appCoordinator)
  {
    v7 = +[UIApplication _maps_lockScreenSceneDelegate];
    platformController = [v7 platformController];
    iosChromeViewController = [platformController iosChromeViewController];
    appCoordinator2 = [iosChromeViewController appCoordinator];

    if (appCoordinator2)
    {
      v11 = sub_1008B9228();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v21 = 0;
        v12 = "Found app coordinator from lock screen scene delegate";
        v13 = &v21;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, v12, v13, 2u);
      }
    }

    else
    {
      appSessionController = [(MapsAppDelegate *)self appSessionController];
      primaryPlatformController = [appSessionController primaryPlatformController];
      iosChromeViewController2 = [primaryPlatformController iosChromeViewController];
      appCoordinator2 = [iosChromeViewController2 appCoordinator];

      v17 = sub_1008B9228();
      v11 = v17;
      if (!appCoordinator2)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not find appCoordinator", v19, 2u);
        }

        v6 = 0;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        v12 = "Found app coordinator from app session controller";
        v13 = v20;
        goto LABEL_11;
      }
    }

    v6 = appCoordinator2;
LABEL_13:

    goto LABEL_14;
  }

  v5 = sub_1008B9228();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Found app coordinator from key maps scene delegate", buf, 2u);
  }

  v6 = appCoordinator;
LABEL_14:

  return v6;
}

- (PlatformController)platformController
{
  v2 = +[UIApplication _maps_keyMapsSceneDelegate];
  platformController = [v2 platformController];

  return platformController;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [UIApp setDelegate:0];
  [(MapsAppDelegate *)self _releaseSecureAppAssertion];
  v4 = +[IPCServer sharedServer];
  [v4 setBackgroundNavigationDelegate:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  if (MGGetBoolAnswer())
  {
    v6 = +[AFContextManager defaultContextManager];
    v7 = +[MapsSiriContextProvider sharedContextProvider];
    [v6 removeContextProvider:v7];
  }

  [(RBSAssertion *)self->_priorityAssertion invalidate];
  v8.receiver = self;
  v8.super_class = MapsAppDelegate;
  [(MapsAppDelegate *)&v8 dealloc];
}

+ (BOOL)mapsIsLaunchedForTesting
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = byte_10195DC48;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)interruptConvertToNavigableSavedRouteID:(id)d routeName:(id)name error:(id)error directionsError:(id)directionsError
{
  dCopy = d;
  nameCopy = name;
  errorCopy = error;
  directionsErrorCopy = directionsError;
  v14 = sub_100CD25CC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(MapsAppDelegate *)selfCopy performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v17, selfCopy, v19];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v17, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138544386;
    v40 = selfCopy;
    v41 = 2112;
    v42 = nameCopy;
    v43 = 2114;
    v44 = dCopy;
    v45 = 2114;
    v46 = errorCopy;
    v47 = 2114;
    v48 = directionsErrorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] interrupting navigable conversion for %@ (%{public}@) with error: %{public}@ directionsError: %{public}@", buf, 0x34u);
  }

  v21 = objc_opt_new();
  v22 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v22 isUsingOfflineMaps];

  v24 = +[NSBundle mainBundle];
  v25 = v24;
  if (isUsingOfflineMaps)
  {
    v26 = [v24 localizedStringForKey:@"[Interruption] Offline Custom Route Error Title" value:@"localized string not found" table:0];
    [v21 setObject:v26 forKeyedSubscript:@"kMapsInterruptionTitle"];

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"[Interruption] Offline Custom Route Error Message" value:@"localized string not found" table:0];
    [v21 setObject:v28 forKeyedSubscript:@"kMapsInterruptionMessage"];

LABEL_17:
    chromeViewController = [(MapsAppDelegate *)self chromeViewController];
    v34 = [chromeViewController presentInterruptionOfKind:3 userInfo:v21 completionHandler:0];
    goto LABEL_18;
  }

  v29 = [v24 localizedStringForKey:@"[Interruption] Generic Error Title" value:@"localized string not found" table:0];
  [v21 setObject:v29 forKeyedSubscript:@"kMapsInterruptionTitle"];

  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"[Interruption] Generic Error Message" value:@"localized string not found" table:0];
  [v21 setObject:v31 forKeyedSubscript:@"kMapsInterruptionMessage"];

  [v21 setObject:nameCopy forKeyedSubscript:@"kMapsInterruptionRouteNameKey"];
  [v21 setObject:dCopy forKeyedSubscript:@"kMapsInterruptionRouteStorageIDKey"];
  if (![directionsErrorCopy problemDetailsCount])
  {
    goto LABEL_17;
  }

  v32 = 0;
  while ([directionsErrorCopy problemDetailAtIndex:v32] != 8)
  {
    if (++v32 >= [directionsErrorCopy problemDetailsCount])
    {
      goto LABEL_17;
    }
  }

  chromeViewController2 = [(MapsAppDelegate *)self chromeViewController];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100CD2620;
  v37[3] = &unk_10165F3A0;
  v38 = dCopy;
  v36 = [chromeViewController2 presentInterruptionOfKind:22 userInfo:v21 completionHandler:v37];

  chromeViewController = v38;
LABEL_18:
}

- (void)showNavigationAdvisoryIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100CD2710;
  block[3] = &unk_101661B18;
  block[4] = self;
  if (qword_10195EEB0 != -1)
  {
    dispatch_once(&qword_10195EEB0, block);
  }
}

- (void)promptPreciseLocationOff
{
  v3 = [NSError errorWithDomain:MKLocationErrorDomain code:6 userInfo:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Maps works best with your precise location." value:@"localized string not found" table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"You'll get turn-by-turn directions value:estimated travel times table:{and improved search results when you allow Maps to use your precise location.", @"localized string not found", 0}];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Turn On in Settings" value:@"localized string not found" table:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Keep Precise Off" value:@"localized string not found" table:0];

  v12 = [UIAlertController alertControllerWithTitle:v5 message:v7 preferredStyle:1];
  selfCopy = self;
  objc_initWeak(location, self);
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Allow Once" value:@"localized string not found" table:0];
  v19 = v7;

  if (v14)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100CD2C80;
    v28[3] = &unk_101658AF0;
    objc_copyWeak(&v29, location);
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v28];
    [v12 addAction:v15];
    objc_destroyWeak(&v29);
  }

  else
  {
    v15 = 0;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100CD2CF0;
  v24[3] = &unk_101650778;
  objc_copyWeak(&v26, location);
  v27 = 688;
  v16 = v3;
  v25 = v16;
  v17 = [UIAlertAction actionWithTitle:v9 style:0 handler:v24];
  [v12 addAction:v17];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100CD2DA8;
  v21[3] = &unk_1016507A0;
  objc_copyWeak(&v22, location);
  v23 = 688;
  v18 = [UIAlertAction actionWithTitle:v11 style:0 handler:v21];
  [v12 addAction:v18];
  [(MapsAppDelegate *)selfCopy _presentLocationServicesAlertController:v12];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v26);

  objc_destroyWeak(location);
}

- (void)promptLocationServicesOff
{
  v3 = +[MKLocationManager sharedLocationManager];
  isLocationServicesAuthorizationNeeded = [v3 isLocationServicesAuthorizationNeeded];

  if ((isLocationServicesAuthorizationNeeded & 1) == 0)
  {
    v7 = +[MKLocationManager sharedLocationManager];
    v35[0] = 0;
    v8 = [v7 isLocationServicesPossiblyAvailable:v35];
    v6 = v35[0];

    if ((v8 & 1) == 0)
    {
      domain = [v6 domain];
      if ([domain isEqualToString:MKLocationErrorDomain])
      {
        v10 = [v6 code] != 0;

        v5 = 2 * v10;
        goto LABEL_8;
      }
    }

    v5 = 2;
    goto LABEL_8;
  }

  v5 = 0;
  v6 = 0;
LABEL_8:
  v11 = [NSError errorWithDomain:MKLocationErrorDomain code:v5 userInfo:0];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Maps works best with Location Services turned on." value:@"localized string not found" table:0];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"You'll get turn-by-turn directions value:estimated travel times table:{and improved search results when you turn on Location Services for Maps.", @"localized string not found", 0}];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Turn On in Settings" value:@"localized string not found" table:0];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Keep Location Services Off" value:@"localized string not found" table:0];

  v26 = v15;
  v20 = [UIAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];
  selfCopy = self;
  objc_initWeak(&location, self);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100CD31E4;
  v30[3] = &unk_101650778;
  objc_copyWeak(&v32, &location);
  v33 = 0;
  v22 = v11;
  v31 = v22;
  v23 = [UIAlertAction actionWithTitle:v17 style:0 handler:v30];
  v24 = v6;
  [v20 addAction:v23];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100CD329C;
  v27[3] = &unk_1016507A0;
  objc_copyWeak(&v28, &location);
  v29 = 0;
  v25 = [UIAlertAction actionWithTitle:v19 style:0 handler:v27];
  [v20 addAction:v25];
  [(MapsAppDelegate *)selfCopy _presentLocationServicesAlertController:v20];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (void)_presentLocationServicesAlertController:(id)controller
{
  controllerCopy = controller;
  v5 = +[MKLocationManager sharedLocationManager];
  isLocationServicesApproved = [v5 isLocationServicesApproved];

  v7 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v7 isAuthorizedForPreciseLocation];

  objc_setAssociatedObject(self, off_101934B18, controllerCopy, 1);
  v9 = off_101934B20;
  v10 = [NSNumber numberWithBool:isLocationServicesApproved];
  objc_setAssociatedObject(self, v9, v10, 3);

  v11 = off_101934B28;
  v12 = [NSNumber numberWithBool:isAuthorizedForPreciseLocation];
  objc_setAssociatedObject(self, v11, v12, 3);

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_locationManagerApprovalDidChange:" name:MKLocationManagerApprovalDidChangeNotification object:0];

  chromeViewController = [(MapsAppDelegate *)self chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:controllerCopy animated:1 completion:0];
}

- (void)_cleanupAfterLocationServicesAlertController
{
  objc_setAssociatedObject(self, off_101934B18, 0, 1);
  objc_setAssociatedObject(self, off_101934B20, 0, 3);
  objc_setAssociatedObject(self, off_101934B28, 0, 3);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MKLocationManagerApprovalDidChangeNotification object:0];
}

- (void)_locationManagerApprovalDidChange:(id)change
{
  v4 = objc_getAssociatedObject(self, off_101934B18);
  if (v4)
  {
    v13 = v4;
    v5 = +[MKLocationManager sharedLocationManager];
    isLocationServicesApproved = [v5 isLocationServicesApproved];

    v7 = objc_getAssociatedObject(self, off_101934B20);
    bOOLValue = [v7 BOOLValue];

    v9 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v9 isAuthorizedForPreciseLocation];

    v11 = objc_getAssociatedObject(self, off_101934B28);
    bOOLValue2 = [v11 BOOLValue];

    v4 = v13;
    if (isLocationServicesApproved != bOOLValue || isAuthorizedForPreciseLocation != bOOLValue2)
    {
      [v13 dismissViewControllerAnimated:1 completion:0];
      [(MapsAppDelegate *)self _cleanupAfterLocationServicesAlertController];
      v4 = v13;
    }
  }
}

- (void)promptLocationServicesAuthorizationWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100CD25CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"handler";
    if (!handlerCopy)
    {
      v6 = @"no handler";
    }

    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Showing Location Services Authorization Prompt with %@", buf, 0xCu);
  }

  if (![(MapsAppDelegate *)self _isShowingLocationServicesAuthorizationPrompt])
  {
    [(MapsAppDelegate *)self _setShowingLocationServicesAuthorizationPrompt:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100CD37AC;
    v7[3] = &unk_101657DA0;
    v8 = handlerCopy;
    [(MapsAppDelegate *)self interruptApplicationWithKind:5 userInfo:0 completionHandler:v7];
  }
}

- (void)showLocationServicesAlertWithError:(id)error
{
  errorCopy = error;
  v5 = objc_getAssociatedObject(self, off_101934B10);
  bOOLValue = [v5 BOOLValue];

  domain = [errorCopy domain];
  v8 = [domain isEqualToString:MKLocationErrorDomain];

  if (v8 && (bOOLValue & 1) == 0)
  {
    objc_setAssociatedObject(self, off_101934B10, &__kCFBooleanTrue, 3);
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"LocationServiceAlert_Title" value:@"localized string not found" table:0];

    v11 = +[NSMutableDictionary dictionary];
    v12 = v11;
    if (v10)
    {
      [v11 setObject:v10 forKeyedSubscript:@"kMapsInterruptionTitle"];
    }

    if (errorCopy)
    {
      [v12 setObject:errorCopy forKeyedSubscript:@"kMapsInterruptionError"];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100CD39B8;
    v13[3] = &unk_10165F3A0;
    v13[4] = self;
    [(MapsAppDelegate *)self interruptApplicationWithKind:6 userInfo:v12 completionHandler:v13];
  }
}

- (void)interruptApplicationWithKind:(int64_t)kind userInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v8 = sub_100CD25CC();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_10;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  if (objc_opt_respondsToSelector())
  {
    v12 = [(MapsAppDelegate *)selfCopy performSelector:"accessibilityIdentifier"];
    v13 = v12;
    if (v12 && ![v12 isEqualToString:v11])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v11, selfCopy, v13];

      goto LABEL_8;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v11, selfCopy];
LABEL_8:

LABEL_10:
  if ((kind - 1) > 0x16)
  {
    v15 = @"kMapsInterruptionNone";
  }

  else
  {
    v15 = off_1016507E0[kind - 1];
  }

  *buf = 138543618;
  *&buf[4] = selfCopy;
  *&buf[12] = 2112;
  *&buf[14] = v15;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Showing interrupt with kind: %@", buf, 0x16u);

LABEL_14:
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v75 = 0;
  v16 = objc_alloc_init(DismissalHandle);
  v17 = objc_alloc_init(DismissalHandle);
  v18 = objc_alloc_init(InterruptionHandle);
  [(InterruptionHandle *)v18 setInterruptionKind:kind];
  [(MapsAppDelegate *)self _setCurrentInterruptionHandle:v18];
  v19 = [infoCopy objectForKeyedSubscript:@"kMapsInterruptionActions"];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = sub_100CD424C;
  v84 = sub_100CD4278;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100CD4280;
  v67[3] = &unk_101650700;
  v67[4] = self;
  v20 = v18;
  v68 = v20;
  v73 = v74;
  v54 = v19;
  v69 = v54;
  v53 = handlerCopy;
  v72 = v53;
  v21 = v17;
  v70 = v21;
  v22 = v16;
  v71 = v22;
  v85 = objc_retainBlock(v67);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100CD4374;
  v63[3] = &unk_101650728;
  v23 = v22;
  v64 = v23;
  v24 = v21;
  v65 = v24;
  v66 = buf;
  [(DismissalHandle *)v20 setDismissalBlock:v63];
  v25 = +[UIApplication sharedMapsDelegate];
  chromeViewController = [v25 chromeViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = chromeViewController;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_100CD4444;
    v60[3] = &unk_101650750;
    v61 = v24;
    v62 = buf;
    v29 = objc_retainBlock(v60);
    v30 = sub_100CD25CC();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_36:

      v44 = [v28 presentInterruptionOfKind:kind userInfo:infoCopy completionHandler:v29];
      [(DismissalHandle *)v23 setDismissalBlock:v44];

      v37 = v61;
      goto LABEL_39;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_35;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    if (objc_opt_respondsToSelector())
    {
      v34 = [(MapsAppDelegate *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v35 = v34;
      if (v34 && ([v34 isEqualToString:v33] & 1) == 0)
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy2, v35];

        goto LABEL_25;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy2];
LABEL_25:

LABEL_35:
    *v76 = 138543362;
    v77 = selfCopy2;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Showing interruption on iOS", v76, 0xCu);

    goto LABEL_36;
  }

  v37 = sub_100CD25CC();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy3 = self;
    if (!selfCopy3)
    {
      selfCopy3 = @"<nil>";
      goto LABEL_38;
    }

    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    if (objc_opt_respondsToSelector())
    {
      v41 = [(MapsAppDelegate *)selfCopy3 performSelector:"accessibilityIdentifier"];
      v42 = v41;
      if (v41 && ([v41 isEqualToString:v40] & 1) == 0)
      {
        selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v40, selfCopy3, v42];

        goto LABEL_33;
      }
    }

    selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v40, selfCopy3];
LABEL_33:

LABEL_38:
    v45 = selfCopy3;
    appSessionController = [(MapsAppDelegate *)selfCopy3 appSessionController];
    appSessionController2 = [(MapsAppDelegate *)selfCopy3 appSessionController];
    primaryPlatformController = [appSessionController2 primaryPlatformController];
    *v76 = 138543874;
    v77 = v45;
    v78 = 2112;
    v79 = appSessionController;
    v80 = 2112;
    v81 = primaryPlatformController;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will NOT show interrupt on iOS; appSessionController: %@; primaryPlatformController: %@", v76, 0x20u);
  }

LABEL_39:

  v49 = +[CarDisplayController sharedInstance];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100CD44E8;
  v57[3] = &unk_101650750;
  v50 = v23;
  v58 = v50;
  v59 = buf;
  v51 = objc_retainBlock(v57);
  v52 = [v49 presentInterruptionOfKind:kind userInfo:infoCopy completionHandler:v51];
  [(DismissalHandle *)v24 setDismissalBlock:v52];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v74, 8);
}

- (BOOL)dismissCurrentInterruptionOfKind:(int64_t)kind
{
  currentInterruptionKind = [(MapsAppDelegate *)self currentInterruptionKind];
  if (currentInterruptionKind == kind)
  {
    [(MapsAppDelegate *)self dismissCurrentInterruption];
  }

  return currentInterruptionKind == kind;
}

- (void)dismissCurrentInterruption
{
  v3 = sub_100CD25CC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentInterruptionKind = [(MapsAppDelegate *)self currentInterruptionKind];
    if ((currentInterruptionKind - 1) > 0x16)
    {
      v5 = @"kMapsInterruptionNone";
    }

    else
    {
      v5 = off_1016507E0[currentInterruptionKind - 1];
    }

    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing the current interruption with kind: %@", buf, 0xCu);
  }

  _currentInterruptionHandle = [(MapsAppDelegate *)self _currentInterruptionHandle];
  v7 = _currentInterruptionHandle;
  if (_currentInterruptionHandle)
  {
    dismissalBlock = [_currentInterruptionHandle dismissalBlock];
    v9 = [dismissalBlock copy];

    if (v9)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100CD47A4;
      v12[3] = &unk_101661760;
      v13 = v9;
      [UIViewController _performWithoutDeferringTransitions:v12];
    }

    [(MapsAppDelegate *)self _setCurrentInterruptionHandle:0];
    [(MapsAppDelegate *)self _setShowingLocationServicesAuthorizationPrompt:0];
  }

  v10 = +[CarDisplayController sharedInstance];
  if ([v10 isChromeAvailable])
  {
    chromeViewController = [v10 chromeViewController];
    [chromeViewController dismissInterruption];
  }
}

- (int64_t)currentInterruptionKind
{
  _currentInterruptionHandle = [(MapsAppDelegate *)self _currentInterruptionHandle];
  v3 = _currentInterruptionHandle;
  if (_currentInterruptionHandle)
  {
    interruptionKind = [_currentInterruptionHandle interruptionKind];
  }

  else
  {
    interruptionKind = 0;
  }

  return interruptionKind;
}

- (void)_setShowingLocationServicesAuthorizationPrompt:(BOOL)prompt
{
  promptCopy = prompt;
  v5 = sub_100CD25CC();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (promptCopy)
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will start observing LocationAuthorizationDismissedNotification", &v11, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_locationAuthorizationDismissed:" name:@"LocationAuthorizationDismissedNotification" object:0];
  }

  else
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will stop observing LocationAuthorizationDismissedNotification", &v11, 2u);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:@"LocationAuthorizationDismissedNotification" object:0];
  }

  v8 = sub_100CD25CC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (promptCopy)
    {
      v9 = @"YES";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting value of kIsShowingLocationServicesAuthorizationPromptKey to %@", &v11, 0xCu);
  }

  v10 = [NSNumber numberWithBool:promptCopy];
  objc_setAssociatedObject(self, &unk_10195EEA9, v10, 1);
}

- (BOOL)_isShowingLocationServicesAuthorizationPrompt
{
  v2 = objc_getAssociatedObject(self, &unk_10195EEA9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  bOOLValue = [v3 BOOLValue];
  v5 = sub_100CD25CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (bOOLValue)
    {
      v6 = @"YES";
    }

    if (!v3)
    {
      v6 = @"nil";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Current value of kIsShowingLocationServicesAuthorizationPromptKey => %@", &v8, 0xCu);
  }

  return bOOLValue;
}

- (void)_setCurrentInterruptionHandle:(id)handle
{
  handleCopy = handle;
  v5 = NSStringFromSelector("_currentInterruptionHandle");
  [(MapsAppDelegate *)self willChangeValueForKey:v5];

  objc_setAssociatedObject(self, &unk_10195EEA8, handleCopy, 1);
  v6 = NSStringFromSelector("_currentInterruptionHandle");
  [(MapsAppDelegate *)self didChangeValueForKey:v6];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector("currentInterruptionKind");
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = NSStringFromSelector("_currentInterruptionHandle");
    v8 = [NSSet setWithObject:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___MapsAppDelegate;
    v8 = objc_msgSendSuper2(&v10, "keyPathsForValuesAffectingValueForKey:", keyCopy);
  }

  return v8;
}

- (void)presentAddAMissingPlaceWith:(id)with
{
  v4 = +[UIApplication _maps_keyMapsSceneDelegate];
  rapPresenter = [v4 rapPresenter];
  [rapPresenter presentAddAPlaceWithCompletion:0];
}

- (void)newScene
{
  v4 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Maps.NewWindow"];
  [v4 setEligibleForHandoff:0];
  v2 = objc_alloc_init(UISceneActivationRequestOptions);
  v3 = +[UIApplication sharedApplication];
  [v3 requestSceneSessionActivation:0 userActivity:v4 options:v2 errorHandler:0];
}

- (void)collectRadarAttachments
{
  v3 = sub_100E883E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsAppDelegate *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collecting Radar attachments", buf, 0xCu);
  }

  v10 = +[MapsRadarController sharedInstance];
  [v10 collectAttachmentsWithCompletion:&stru_101656D50];
}

- (void)presentRadar
{
  v3 = objc_opt_new();
  [v3 setTitle:@"[macOS]"];
  v4 = +[MapsRadarComponent mapsComponent];
  [v3 setComponent:v4];

  v5 = sub_100E883E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(MapsAppDelegate *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v14 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR", buf, 0xCu);
  }

  v12 = +[MapsRadarController sharedInstance];
  [v12 launchTTRWithRadar:v3];
}

- (void)toggleDisableMenuSharing
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:objc_msgSend(v3 forKey:{"BOOLForKey:", @"MENU_SHARING_DISABLED_KEY", @"MENU_SHARING_DISABLED_KEY"}];

  exit(0);
}

- (void)toggleScrollingOpensPlacecard
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:objc_msgSend(v2 forKey:{"BOOLForKey:", @"SCROLLING_OPENS_PLACECARD_KEY_ROTATED", @"SCROLLING_OPENS_PLACECARD_KEY_ROTATED"}];
}

- (void)toggleSidebarSelection
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"SIDEBAR_SELECTION_ENABLED_KEY"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v2 setBool:v5 forKey:@"SIDEBAR_SELECTION_ENABLED_KEY"];
  exit(0);
}

- (void)presentAddAMissingPlace
{
  v3 = +[UIApplication _maps_keyMapsSceneDelegate];
  rapPresenter = [v3 rapPresenter];
  [rapPresenter presentAddAPlaceWithCompletion:0];
}

- (void)presentRAP
{
  v3 = +[UIApplication _maps_keyMapsSceneDelegate];
  rapPresenter = [v3 rapPresenter];
  [rapPresenter presentReportAProblemWithCompletion:0];
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  applicationCopy = application;
  testCopy = test;
  optionsCopy = options;
  notify_post("com.apple.Maps.PPT.start");
  _mapstest_isUsingSampleProactiveData = [optionsCopy _mapstest_isUsingSampleProactiveData];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F3BDD8;
  v15[3] = &unk_10165DB58;
  v16 = applicationCopy;
  v17 = testCopy;
  v11 = testCopy;
  v12 = applicationCopy;
  v13 = [_MapsApplicationDelegateTestingCoordinator application:v12 testName:v11 options:optionsCopy shouldLoadSampleProactiveData:_mapstest_isUsingSampleProactiveData shouldRaiseExceptionIfNeeded:0 runTest:v15];

  return v13;
}

@end