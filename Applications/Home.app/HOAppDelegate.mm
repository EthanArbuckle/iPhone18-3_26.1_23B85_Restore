@interface HOAppDelegate
+ (NSString)itemManagerUpdatesDisabledReasonScrollPerformanceTest;
+ (void)_logSupportedSensitiveFeatures;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (HOAppNavigator)appNavigator;
- (HOBaseControllerDelegate)baseViewController;
- (UIViewController)sceneRootViewController;
- (id)_cameraProfileForTestingInHome:(id)home withUUID:(id)d;
- (id)_firstReadCompleteFuture;
- (id)_networkConfigurationProfileForTestingInHome:(id)home;
- (id)_networkRouterForTestingInHome:(id)home;
- (id)_runScrollTestWithTestName:(id)name scrollView:(id)view options:(id)options;
- (id)_selectAndFinishFirstReadForTabWithIdentifier:(id)identifier;
- (id)_sortedAccessoriesInHome:(id)home;
- (id)application:(id)application configurationForConnecting:(id)connecting options:(id)options;
- (id)findAccessoryWithItemManager:(id)manager accessoryID:(id)d testBlock:(id)block;
- (id)findPreferredAccessoryWithItemManager:(id)manager accessoryID:(id)d with:(id)with;
- (id)firstReadCompleteFuture;
- (id)homeKitObjectIDFrom:(id)from userDefaultsEnabled:(BOOL)enabled;
- (id)serviceLikeItemWithItem:(id)item itemManager:(id)manager withID:(id)d;
- (void)_deleteRoomWithName:(id)name inHome:(id)home;
- (void)_endBackgroundTaskWithItemIdentifier:(id)identifier;
- (void)_endBackgroundTaskWithTaskIdentifier:(unint64_t)identifier;
- (void)_logAccessoryCountMetricsWithHomes:(id)homes;
- (void)_logNetworkSymptoms;
- (void)_logUserAutomationNamingTypeProportions:(id)proportions;
- (void)_logUserMetrics;
- (void)_runAddRoomTestWithApplication:(id)application options:(id)options;
- (void)_runDeleteRoomTestWithApplication:(id)application options:(id)options;
- (void)_runExtendedLaunchTestWithApplication:(id)application options:(id)options;
- (void)_runPresentHomeSettingsTestWithApplication:(id)application options:(id)options;
- (void)_runPresentNetworkConfigurationSettingsTestWithApplication:(id)application options:(id)options;
- (void)_runPresentNetworkRouterSettingsTestWithApplication:(id)application options:(id)options;
- (void)_runPresentNetworkSettingsTestWithApplication:(id)application options:(id)options;
- (void)_runScrollAutomationTestWithApplication:(id)application options:(id)options;
- (void)_runScrollCameraClipsInPlayerTestWithApplication:(id)application options:(id)options;
- (void)_runScrollHomeSettingsTestWithApplication:(id)application options:(id)options;
- (void)_runTabSwitchToAutomationTestWithApplication:(id)application options:(id)options;
- (void)_runToggleLightTestWithApplication:(id)application options:(id)options;
- (void)_runToggleSceneTestWithApplication:(id)application options:(id)options;
- (void)_startBackgroundTaskWithItemIdentifier:(id)identifier;
- (void)_submitMetricsSymptomsSummaryForSymptomsHandlers:(id)handlers;
- (void)application:(id)application didDiscardSceneSessions:(id)sessions;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
- (void)endAppleMusicLoginBackgroundTask:(id)task;
- (void)endSymptomFixBackgroundTask:(id)task;
- (void)startAppleMusicLoginBackgroundTask:(id)task;
- (void)startSymptomFixBackgroundTask:(id)task;
@end

@implementation HOAppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v4 = dispatch_get_global_queue(-2, 0);
  dispatch_async(v4, &stru_1000C2408);
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  [v5 warmup];

  +[HUDashboardViewController prefetchState];
  v6 = +[HFWallpaperManager sharedInstance];
  v7 = objc_alloc_init(HUNamedWallpaperFactory);
  v8 = objc_alloc_init(HUProcessedWallpaperFactory);
  [v6 registerWallpaperSource:v7 processedSource:v8];

  v9 = +[HFWallpaperManager sharedInstance];
  [v9 preheatCache];

  v10 = +[NAScheduler globalAsyncScheduler];
  [v10 performBlock:&stru_1000C2428];

  objc_opt_class();
  v11 = +[HFMediaServiceManager sharedManager];
  [v11 warmup];

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [HOActivationManager sharedInstance:application];
  v6 = objc_opt_new();
  [(HOAppDelegate *)self setItemIdentifierToBackgroundTaskIdentifierMap:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"startSymptomFixBackgroundTask:" name:HFSymptomFixManagerStartSessionNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"endSymptomFixBackgroundTask:" name:HFSymptomFixManagerEndSessionNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"startAppleMusicLoginBackgroundTask:" name:HFAppleMusicAccountStartManualLoginNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"endAppleMusicLoginBackgroundTask:" name:HFAppleMusicAccountEndManualLoginNotification object:0];

  v11 = +[UIApplication sharedApplication];
  applicationState = [v11 applicationState];

  v13 = HFLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (applicationState == 2)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Application state is launched in background", buf, 2u);
    }

    v15 = +[HFExecutionEnvironment sharedInstance];
    [v15 setRunningState:1];
  }

  else
  {
    if (v14)
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Application state is launched in foreground", v25, 2u);
    }

    v16 = +[HFExecutionEnvironment sharedInstance];
    [v16 setRunningState:0];

    v15 = +[HFCharacteristicNotificationManager sharedManager];
    [v15 enableNotificationsForSelectedHomeWithReason:HOSceneDelegateNotificationsEnabledReasonForeground];
  }

  v17 = [HFWiFiExecutionEnvironmentObserver alloc];
  v18 = +[HFExecutionEnvironment sharedInstance];
  v19 = +[HFHomeKitDispatcher sharedDispatcher];
  v20 = [v17 initWithExecutionEnvironment:v18 dispatcher:v19];
  [(HOAppDelegate *)self setWifiExecutionEnvironmentObserver:v20];

  [(HOAppDelegate *)self _logUserMetrics];
  if (+[HFUtilities isInternalInstall])
  {
    +[HOAppDelegate _logSupportedSensitiveFeatures];
  }

  if (_UIEnhancedMainMenuEnabled())
  {
    v21 = [[HUMenuToolbarManager alloc] initWithAppNavigator:0];
    [(HOAppDelegate *)self setMenuToolbarManager:v21];
  }

  v22 = HFLogForCategory();
  if (os_signpost_enabled(v22))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_END, 0x1F4uLL, "HomeAppLaunch", "App Finished Launching!", v24, 2u);
  }

  return 1;
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v8 = +[HFAccessoryDiagnosticsUploadManager backgroundURLSessionIdentifier];
  v9 = [v8 isEqualToString:sessionCopy];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handle background URL Session update for identifier:%@.", &v12, 0xCu);
    }

    v11 = +[HFAccessoryDiagnosticsUploadManager sharedManager];
    [v11 resumeServiceForURLSessionIdentifier:sessionCopy];
    [v11 setBackgroundUrlSessionCompletionHandler:handlerCopy];
  }
}

- (id)application:(id)application configurationForConnecting:(id)connecting options:(id)options
{
  connectingCopy = connecting;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[HOAppDelegate application:configurationForConnecting:options:]";
    v13 = 2112;
    v14 = connectingCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) Scene configuration for %@ through App Delegate instead of .plist.", &v11, 0x16u);
  }

  v7 = [UISceneConfiguration alloc];
  role = [connectingCopy role];
  v9 = [v7 initWithName:@"Default Configuration" sessionRole:role];

  [v9 setDelegateClass:objc_opt_class()];

  return v9;
}

- (void)application:(id)application didDiscardSceneSessions:(id)sessions
{
  sessionsCopy = sessions;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = sessionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Discarding scene sessions: %@", &v6, 0xCu);
  }
}

- (void)startSymptomFixBackgroundTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  userInfo = [taskCopy userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = userInfo;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 objectForKeyedSubscript:symptomItemIdentifierKey];

  if (v8)
  {
    [(HOAppDelegate *)self _startBackgroundTaskWithItemIdentifier:v8];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007FE44();
    }
  }
}

- (void)endSymptomFixBackgroundTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  userInfo = [taskCopy userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = userInfo;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 objectForKeyedSubscript:symptomItemIdentifierKey];

  if (v8)
  {
    [(HOAppDelegate *)self _endBackgroundTaskWithItemIdentifier:v8];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007FEAC();
    }
  }
}

- (void)startAppleMusicLoginBackgroundTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  userInfo = [taskCopy userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = userInfo;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 objectForKeyedSubscript:symptomItemIdentifierKey];

  if (v8)
  {
    [(HOAppDelegate *)self _startBackgroundTaskWithItemIdentifier:v8];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007FE44();
    }
  }
}

- (void)endAppleMusicLoginBackgroundTask:(id)task
{
  taskCopy = task;
  objc_opt_class();
  userInfo = [taskCopy userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = userInfo;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 objectForKeyedSubscript:symptomItemIdentifierKey];

  if (v8)
  {
    [(HOAppDelegate *)self _endBackgroundTaskWithItemIdentifier:v8];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10007FEAC();
    }
  }
}

- (void)_startBackgroundTaskWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[UIApplication sharedApplication];
  uUIDString = [identifierCopy UUIDString];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001792C;
  v13[3] = &unk_1000C2450;
  v7 = identifierCopy;
  selfCopy = self;
  v16 = &v17;
  v14 = v7;
  v8 = [v5 beginBackgroundTaskWithName:uUIDString expirationHandler:v13];

  v18[3] = v8;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v18[3];
    *buf = 138412546;
    v22 = v7;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Began background task for itemID = %@ - taskID = %lu", buf, 0x16u);
  }

  itemIdentifierToBackgroundTaskIdentifierMap = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
  v12 = [NSNumber numberWithUnsignedInteger:v18[3]];
  [itemIdentifierToBackgroundTaskIdentifierMap setObject:v12 forKey:v7];

  _Block_object_dispose(&v17, 8);
}

- (void)_endBackgroundTaskWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemIdentifierToBackgroundTaskIdentifierMap = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
  v6 = [itemIdentifierToBackgroundTaskIdentifierMap objectForKey:identifierCopy];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    [(HOAppDelegate *)self _endBackgroundTaskWithTaskIdentifier:unsignedIntegerValue];
    itemIdentifierToBackgroundTaskIdentifierMap2 = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
    [itemIdentifierToBackgroundTaskIdentifierMap2 removeObjectForKey:identifierCopy];
  }

  else
  {
    itemIdentifierToBackgroundTaskIdentifierMap2 = HFLogForCategory();
    if (os_log_type_enabled(itemIdentifierToBackgroundTaskIdentifierMap2, OS_LOG_TYPE_ERROR))
    {
      sub_10007FF14();
    }
  }
}

- (void)_endBackgroundTaskWithTaskIdentifier:(unint64_t)identifier
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending background task with taskID %lu", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 endBackgroundTask:identifier];
}

- (void)_logUserMetrics
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v3 allHomesFuture];
  v5 = +[NAScheduler globalAsyncScheduler];
  v6 = [allHomesFuture reschedule:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017C78;
  v8[3] = &unk_1000C2478;
  v8[4] = self;
  v7 = [v6 addSuccessBlock:v8];
}

- (void)_logAccessoryCountMetricsWithHomes:(id)homes
{
  homesCopy = homes;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100017F7C;
  v10[3] = &unk_1000C24F0;
  v10[4] = &v11;
  v10[5] = &v23;
  v10[6] = &v19;
  v10[7] = &v15;
  [homesCopy na_each:v10];
  v27[0] = HFAnalyticsEventFieldNameUnsupportedServicesCount;
  v4 = [NSNumber numberWithInteger:v24[3]];
  v27[1] = HFAnalyticsEventFieldNameSupportedServicesCount;
  v28[0] = v4;
  v5 = [NSNumber numberWithInteger:v20[3]];
  v28[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v7 = [v6 mutableCopy];

  v8 = [NSNumber numberWithInteger:v12[3]];
  [v7 na_safeSetObject:v8 forKey:HFAnalyticsEventFieldNameFavoriteServicesCount];

  v9 = [NSNumber numberWithInteger:v16[3]];
  [v7 na_safeSetObject:v9 forKey:HFAnalyticsEventFieldNameShowInHomeCamerasCount];

  [HFAnalytics sendEvent:31 withData:v7];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)_logUserAutomationNamingTypeProportions:(id)proportions
{
  v9 = [proportions na_flatMap:&stru_1000C2598];
  v3 = [v9 na_filter:&stru_1000C25D8];
  if ([v9 count])
  {
    v4 = [v3 count];
    v5 = (v4 / [v9 count]) * 100.0;
    v6 = +[NSMutableDictionary dictionary];
    *&v7 = v5;
    v8 = [NSNumber numberWithFloat:v7];
    [v6 setObject:v8 forKeyedSubscript:HFAnalyticsAutomationNamingTypeProportionPercentUsingConfiguredNameKey];

    [HFAnalytics sendEvent:25 withData:v6];
  }
}

- (void)_logNetworkSymptoms
{
  v3 = dispatch_time(0, 5000000000);
  v4 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000187C4;
  block[3] = &unk_1000C1CF0;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (void)_submitMetricsSymptomsSummaryForSymptomsHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameAnySymptom];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomMisconfigurationDoubleNAT];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomMisconfigurationPeerToPeer];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomMisconfigurationMultipleNetworks];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomDHCPAcquisitionFailure];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomDNSServerOutage];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomMisconfigurationUnknown];
  [v4 setObject:&off_1000CB728 forKeyedSubscript:HFAnalyticsEventFieldNameSymptomWifiDisassociation];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018B3C;
  v7[3] = &unk_1000C26C8;
  v5 = v4;
  v8 = v5;
  [handlersCopy na_each:v7];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending HFAnalyticsEventTypeNetworkSymptomsSummary with data=%@", buf, 0xCu);
  }

  [HFAnalytics sendEvent:58 withData:v5];
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  menuToolbarManager = [(HOAppDelegate *)self menuToolbarManager];

  if (menuToolbarManager)
  {
    system = [builderCopy system];
    v6 = +[UIMenuSystem mainSystem];

    if (system == v6)
    {
      menuToolbarManager2 = [(HOAppDelegate *)self menuToolbarManager];
      [menuToolbarManager2 setMenuBuilder:builderCopy];
    }
  }
}

+ (void)_logSupportedSensitiveFeatures
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Features enabled...", &v13, 2u);
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _os_feature_enabled_impl();
    v13 = 67109120;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HOME_ENABLE_AUTOMATION_REVAMP enabled = %{BOOL}d", &v13, 8u);
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _os_feature_enabled_impl();
    v13 = 67109120;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HOME_TARGET_BUILDS_COORDINATION compiled in. HOME_HAS_ENABLED_COORDINATION = %{BOOL}d", &v13, 8u);
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    v14 = 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HM_FEATURE_SIRI_ENDPOINTS_SUPPORTED compiled in. HOME_ENABLE_SIRI_ENDPOINTS = %{BOOL}d", &v13, 8u);
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    v14 = 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "HOME_SUPPORTS_RESTRICTED_GUEST compiled in. HOME_SUPPORTS_RESTRICTED_GUEST = %{BOOL}d", &v13, 8u);
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = _os_feature_enabled_impl();
    v13 = 67109120;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HOME_SUPPORTS_WALLET_KEY_UWB compiled in. HOME_ENABLE_WALLET_KEY_UWB = %{BOOL}d", &v13, 8u);
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = _os_feature_enabled_impl();
    v13 = 67109120;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HOME_SUPPORTS_ACTIVITY_STATE compiled in. HOME_ENABLE_ACTIVITY_STATE = %{BOOL}d", &v13, 8u);
  }
}

- (void)_runExtendedLaunchTestWithApplication:(id)application options:(id)options
{
  [application startedTest:{@"ExtendedLaunch PPT", options}];
  baseViewController = [(HOAppDelegate *)self baseViewController];
}

- (void)_runTabSwitchToAutomationTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - Switch to automation tab", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController)
  {
    _firstReadCompleteFuture = [(HOAppDelegate *)self _firstReadCompleteFuture];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001ED48;
    v21[3] = &unk_1000C2A78;
    v9 = applicationCopy;
    v22 = v9;
    v23 = @"tabSwitchToAutomation";
    v24 = baseViewController;
    v10 = [_firstReadCompleteFuture flatMap:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001ED94;
    v18[3] = &unk_1000C2AA0;
    v11 = v9;
    v19 = v11;
    v20 = @"tabSwitchToAutomation";
    v12 = [v10 addSuccessBlock:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001EDA8;
    v15[3] = &unk_1000C2AC8;
    v16 = v11;
    v17 = @"tabSwitchToAutomation";
    v13 = [v12 addFailureBlock:v15];
  }

  else
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100080070();
    }

    [applicationCopy failedTest:@"tabSwitchToAutomation"];
  }
}

- (void)_runScrollHomeSettingsTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[HOAppDelegate(PerformanceTests) _runScrollHomeSettingsTestWithApplication:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) PPT - Scrolling Home Settings", buf, 0xCu);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001F008;
    v18[3] = &unk_1000C2B18;
    v12 = applicationCopy;
    v19 = v12;
    v20 = @"scrollHomeSettings";
    selfCopy = self;
    v22 = optionsCopy;
    v13 = [v11 addSuccessBlock:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001F530;
    v15[3] = &unk_1000C2AC8;
    v16 = v12;
    v17 = @"scrollHomeSettings";
    v14 = [v13 addFailureBlock:v15];
  }

  else
  {
    [applicationCopy failedTest:@"scrollHomeSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runScrollAutomationTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PPT - Scrolling automation tab", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  v11 = baseViewController;
  if (baseViewController)
  {
    v12 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001F7F0;
    v19[3] = &unk_1000C2B40;
    v22 = a2;
    v19[4] = self;
    v20 = optionsCopy;
    v21 = @"scrollAutomation";
    v13 = [v12 addSuccessBlock:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001F94C;
    v16[3] = &unk_1000C2AC8;
    v17 = applicationCopy;
    v18 = @"scrollAutomation";
    v14 = [v13 addFailureBlock:v16];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000802B8();
    }

    [applicationCopy failedTest:@"scrollAutomation"];
  }
}

- (void)_runAddRoomTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - Add a room", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController)
  {
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [v8 home];

    v10 = [[HFRoomBuilder alloc] initWithHome:home];
    [v10 setName:@"PPT-Room"];
    [applicationCopy startedTest:@"addRoom"];
    commitItem = [v10 commitItem];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001FC20;
    v24[3] = &unk_1000C2B68;
    v12 = applicationCopy;
    v25 = v12;
    v26 = @"addRoom";
    v13 = [commitItem addSuccessBlock:v24];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001FC2C;
    v21[3] = &unk_1000C2AC8;
    v22 = v12;
    v23 = @"addRoom";
    v14 = [v13 addFailureBlock:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001FC88;
    v18[3] = &unk_1000C2B90;
    v18[4] = self;
    v19 = @"PPT-Room";
    v20 = home;
    v15 = home;
    v16 = [v14 addCompletionBlock:v18];
  }

  else
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000803F0();
    }

    [applicationCopy failedTest:@"addRoom"];
  }
}

- (void)_runDeleteRoomTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - delete a room", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController)
  {
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    home = [v8 home];

    v10 = [[HFRoomBuilder alloc] initWithHome:home];
    [v10 setName:@"PPT-Room"];
    commitItem = [v10 commitItem];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001FF5C;
    v25[3] = &unk_1000C2BB8;
    v12 = applicationCopy;
    v26 = v12;
    v27 = @"deleteRoom";
    v28 = home;
    v13 = home;
    v14 = [commitItem flatMap:v25];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001FFE8;
    v22[3] = &unk_1000C2BE0;
    v15 = v12;
    v23 = v15;
    v24 = @"deleteRoom";
    v16 = [v14 addSuccessBlock:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001FFF4;
    v19[3] = &unk_1000C2AC8;
    v20 = v15;
    v21 = @"deleteRoom";
    v17 = [v14 addFailureBlock:v19];
  }

  else
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100080424();
    }

    [applicationCopy failedTest:@"deleteRoom"];
  }
}

- (void)_runPresentHomeSettingsTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present home settings", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002023C;
    v16[3] = &unk_1000C2C08;
    v10 = applicationCopy;
    v17 = v10;
    v18 = @"presentHomeSettings";
    selfCopy = self;
    v11 = [v9 addSuccessBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100020404;
    v13[3] = &unk_1000C2AC8;
    v14 = v10;
    v15 = @"presentHomeSettings";
    v12 = [v11 addFailureBlock:v13];
  }

  else
  {
    [applicationCopy failedTest:@"presentHomeSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkSettingsTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network settings", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000205FC;
    v16[3] = &unk_1000C2C08;
    v10 = applicationCopy;
    v17 = v10;
    v18 = @"presentNetworkSettings";
    selfCopy = self;
    v11 = [v9 addSuccessBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000207F4;
    v13[3] = &unk_1000C2AC8;
    v14 = v10;
    v15 = @"presentNetworkSettings";
    v12 = [v11 addFailureBlock:v13];
  }

  else
  {
    [applicationCopy failedTest:@"presentNetworkSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkRouterSettingsTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network router settings", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000209EC;
    v16[3] = &unk_1000C2C08;
    v10 = applicationCopy;
    v17 = v10;
    v18 = @"presentNetworkRouterSettings";
    selfCopy = self;
    v11 = [v9 addSuccessBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100020BE8;
    v13[3] = &unk_1000C2AC8;
    v14 = v10;
    v15 = @"presentNetworkRouterSettings";
    v12 = [v11 addFailureBlock:v13];
  }

  else
  {
    [applicationCopy failedTest:@"presentNetworkRouterSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkConfigurationSettingsTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network configuration settings", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [baseViewController selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100020E04;
    v17[3] = &unk_1000C2C08;
    v10 = applicationCopy;
    v18 = v10;
    v19 = @"presentNetworkConfigurationSettings";
    selfCopy = self;
    v11 = [v9 addSuccessBlock:v17];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021038;
    v14[3] = &unk_1000C2AC8;
    v15 = v10;
    v16 = @"presentNetworkConfigurationSettings";
    v12 = [v11 addFailureBlock:v14];
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100080458();
    }

    [applicationCopy failedTest:@"presentNetworkConfigurationSettings"];
  }
}

- (void)_runScrollCameraClipsInPlayerTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PPT - scroll camera clips", buf, 2u);
  }

  objc_opt_class();
  v9 = [optionsCopy objectForKeyedSubscript:@"cameraUUID"];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [[NSUUID alloc] initWithUUIDString:v11];
  }

  else
  {
    v12 = 0;
  }

  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = sub_100021458;
  v45 = sub_100021468;
  v46 = 0;
  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100021470;
    v35[3] = &unk_1000C2C30;
    v40 = buf;
    v16 = applicationCopy;
    v36 = v16;
    v37 = @"scrollCameraClips";
    selfCopy = self;
    v39 = v12;
    v17 = [v15 flatMap:v35];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000215F8;
    v31[3] = &unk_1000C2C58;
    v34 = buf;
    v18 = v16;
    v32 = v18;
    v33 = @"scrollCameraClips";
    v19 = [v17 flatMap:v31];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10002169C;
    v26[3] = &unk_1000C2C80;
    v30 = buf;
    v20 = v18;
    v27 = v20;
    v28 = @"scrollCameraClips";
    v29 = optionsCopy;
    v21 = [v19 addSuccessBlock:v26];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000217C0;
    v23[3] = &unk_1000C2AC8;
    v24 = v20;
    v25 = @"scrollCameraClips";
    v22 = [v21 addFailureBlock:v23];
  }

  else
  {
    [applicationCopy failedTest:@"scrollCameraClips" withFailure:@"Invalid controller"];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_runToggleLightTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - toggling light", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100021A04;
    v16[3] = &unk_1000C2AA0;
    v10 = applicationCopy;
    v17 = v10;
    v18 = @"toggleLight";
    v11 = [v9 addSuccessBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100021CD0;
    v13[3] = &unk_1000C2AC8;
    v14 = v10;
    v15 = @"toggleLight";
    v12 = [v11 addFailureBlock:v13];
  }

  else
  {
    [applicationCopy failedTest:@"toggleLight" withFailure:@"Invalid controller"];
  }
}

- (void)_runToggleSceneTestWithApplication:(id)application options:(id)options
{
  applicationCopy = application;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - toggling scene", buf, 2u);
  }

  baseViewController = [(HOAppDelegate *)self baseViewController];
  if (baseViewController && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100021EC4;
    v16[3] = &unk_1000C2AA0;
    v10 = applicationCopy;
    v17 = v10;
    v18 = @"toggleScene";
    v11 = [v9 addSuccessBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000220D4;
    v13[3] = &unk_1000C2AC8;
    v14 = v10;
    v15 = @"toggleScene";
    v12 = [v11 addFailureBlock:v13];
  }

  else
  {
    [applicationCopy failedTest:@"toggleScene" withFailure:@"Invalid controller"];
  }
}

- (id)_firstReadCompleteFuture
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  homeFuture = [v2 homeFuture];
  v4 = [homeFuture flatMap:&stru_1000C2D48];

  return v4;
}

- (id)_selectAndFinishFirstReadForTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  baseViewController = [(HOAppDelegate *)self baseViewController];
  v6 = baseViewController;
  if (baseViewController)
  {
    v7 = [baseViewController selectTabWithIdentifier:identifierCopy];
    v18[0] = v7;
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    homeFuture = [v8 homeFuture];
    v18[1] = homeFuture;
    v10 = [NSArray arrayWithObjects:v18 count:2];
    v11 = [NAFuture combineAllFutures:v10];
    v12 = [v11 flatMap:&stru_1000C2D88];

    v13 = [v12 flatMap:&stru_1000C2DC8];
    v14 = [v13 flatMap:&stru_1000C2E10];
    v15 = [v14 flatMap:&stru_1000C2E78];
  }

  else
  {
    v16 = +[NSError na_genericError];
    v15 = [NAFuture futureWithError:v16];
  }

  return v15;
}

- (id)_networkRouterForTestingInHome:(id)home
{
  hf_allNetworkRouterAccessories = [home hf_allNetworkRouterAccessories];
  v4 = [hf_allNetworkRouterAccessories sortedArrayUsingComparator:&stru_1000C2EB8];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)_networkConfigurationProfileForTestingInHome:(id)home
{
  hf_allNetworkConfigurationProfiles = [home hf_allNetworkConfigurationProfiles];
  v4 = [hf_allNetworkConfigurationProfiles sortedArrayUsingComparator:&stru_1000C2EF8];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)_sortedAccessoriesInHome:(id)home
{
  accessories = [home accessories];
  v4 = [accessories sortedArrayUsingComparator:&stru_1000C2F18];

  return v4;
}

- (void)_deleteRoomWithName:(id)name inHome:(id)home
{
  nameCopy = name;
  homeCopy = home;
  rooms = [homeCopy rooms];
  if ([rooms count])
  {
    nameCopy = [NSPredicate predicateWithFormat:@"name == %@", nameCopy];
    v9 = [rooms filteredArrayUsingPredicate:nameCopy];
    if ([v9 count])
    {
      firstObject = [v9 firstObject];
      [homeCopy removeRoom:firstObject completionHandler:&stru_1000C2F38];
    }

    else
    {
      firstObject = HFLogForCategory();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        sub_10008048C(nameCopy, firstObject);
      }
    }
  }

  else
  {
    nameCopy = HFLogForCategory();
    if (os_log_type_enabled(nameCopy, OS_LOG_TYPE_ERROR))
    {
      sub_100080504();
    }
  }
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v16.value.super.super.isa = application;
  v16.is_nil = v8;
  v13.value._countAndFlagsBits = v10;
  v13.value._object = optionsCopy;
  v14 = HOAppDelegate.application(_:runTest:options:)(v16, v13, v17);

  return v14;
}

+ (NSString)itemManagerUpdatesDisabledReasonScrollPerformanceTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)firstReadCompleteFuture
{
  CompleteFutureSo8NAFutureCySo6NSNullCGyF_0 = _sSo13HOAppDelegateC7HomeAppE23firstReadCompleteFutureSo8NAFutureCySo6NSNullCGyF_0();

  return CompleteFutureSo8NAFutureCySo6NSNullCGyF_0;
}

- (UIViewController)sceneRootViewController
{
  v2 = _sSo13HOAppDelegateC7HomeAppE23sceneRootViewControllerSo06UIViewH0CSgvg_0();

  return v2;
}

- (HOBaseControllerDelegate)baseViewController
{
  sceneRootViewController = [(HOAppDelegate *)self sceneRootViewController];
  if (sceneRootViewController)
  {
    v3 = sceneRootViewController;
    sceneRootViewController = swift_dynamicCastObjCProtocolConditional();
    if (!sceneRootViewController)
    {

      sceneRootViewController = 0;
    }
  }

  return sceneRootViewController;
}

- (HOAppNavigator)appNavigator
{
  selfCopy = self;
  v3 = HOAppDelegate.appNavigator.getter();

  return v3;
}

- (id)serviceLikeItemWithItem:(id)item itemManager:(id)manager withID:(id)d
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  itemCopy = item;
  managerCopy = manager;
  selfCopy = self;
  v18 = sub_10007D5C0(itemCopy, v12);

  sub_10007E208(v12);

  return v18;
}

- (id)findPreferredAccessoryWithItemManager:(id)manager accessoryID:(id)d with:(id)with
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(with);
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    v15 = (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for UUID();
    v15 = (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  __chkstk_darwin(v15);
  *(&v21 - 2) = v13;
  managerCopy = manager;
  selfCopy = self;
  v19 = HOAppDelegate.findPreferredAccessory(itemManager:accessoryID:with:)(managerCopy, v12, sub_10007E66C, (&v21 - 4));
  _Block_release(v13);

  sub_10007E208(v12);

  return v19;
}

- (id)findAccessoryWithItemManager:(id)manager accessoryID:(id)d testBlock:(id)block
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(block);
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  _Block_copy(v13);
  managerCopy = manager;
  selfCopy = self;
  sub_10007E270(managerCopy, v12, selfCopy, v13);
  v19 = v18;
  _Block_release(v13);
  _Block_release(v13);

  sub_10007E208(v12);

  return v19;
}

- (id)homeKitObjectIDFrom:(id)from userDefaultsEnabled:(BOOL)enabled
{
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  HOAppDelegate.homeKitObjectID(from:userDefaultsEnabled:)(v9, v8);

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
    v14 = isa;
  }

  return v14;
}

- (id)_runScrollTestWithTestName:(id)name scrollView:(id)view options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100077518(v7, v9, viewCopy, v10, 0);

  return v13;
}

- (id)_cameraProfileForTestingInHome:(id)home withUUID:(id)d
{
  v7 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  homeCopy = home;
  selfCopy = self;
  v15 = sub_10007CF40(homeCopy, v10);

  sub_10007E208(v10);

  return v15;
}

@end