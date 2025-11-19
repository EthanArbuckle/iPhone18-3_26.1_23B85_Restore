@interface HOAppDelegate
+ (NSString)itemManagerUpdatesDisabledReasonScrollPerformanceTest;
+ (void)_logSupportedSensitiveFeatures;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (HOAppNavigator)appNavigator;
- (HOBaseControllerDelegate)baseViewController;
- (UIViewController)sceneRootViewController;
- (id)_cameraProfileForTestingInHome:(id)a3 withUUID:(id)a4;
- (id)_firstReadCompleteFuture;
- (id)_networkConfigurationProfileForTestingInHome:(id)a3;
- (id)_networkRouterForTestingInHome:(id)a3;
- (id)_runScrollTestWithTestName:(id)a3 scrollView:(id)a4 options:(id)a5;
- (id)_selectAndFinishFirstReadForTabWithIdentifier:(id)a3;
- (id)_sortedAccessoriesInHome:(id)a3;
- (id)application:(id)a3 configurationForConnecting:(id)a4 options:(id)a5;
- (id)findAccessoryWithItemManager:(id)a3 accessoryID:(id)a4 testBlock:(id)a5;
- (id)findPreferredAccessoryWithItemManager:(id)a3 accessoryID:(id)a4 with:(id)a5;
- (id)firstReadCompleteFuture;
- (id)homeKitObjectIDFrom:(id)a3 userDefaultsEnabled:(BOOL)a4;
- (id)serviceLikeItemWithItem:(id)a3 itemManager:(id)a4 withID:(id)a5;
- (void)_deleteRoomWithName:(id)a3 inHome:(id)a4;
- (void)_endBackgroundTaskWithItemIdentifier:(id)a3;
- (void)_endBackgroundTaskWithTaskIdentifier:(unint64_t)a3;
- (void)_logAccessoryCountMetricsWithHomes:(id)a3;
- (void)_logNetworkSymptoms;
- (void)_logUserAutomationNamingTypeProportions:(id)a3;
- (void)_logUserMetrics;
- (void)_runAddRoomTestWithApplication:(id)a3 options:(id)a4;
- (void)_runDeleteRoomTestWithApplication:(id)a3 options:(id)a4;
- (void)_runExtendedLaunchTestWithApplication:(id)a3 options:(id)a4;
- (void)_runPresentHomeSettingsTestWithApplication:(id)a3 options:(id)a4;
- (void)_runPresentNetworkConfigurationSettingsTestWithApplication:(id)a3 options:(id)a4;
- (void)_runPresentNetworkRouterSettingsTestWithApplication:(id)a3 options:(id)a4;
- (void)_runPresentNetworkSettingsTestWithApplication:(id)a3 options:(id)a4;
- (void)_runScrollAutomationTestWithApplication:(id)a3 options:(id)a4;
- (void)_runScrollCameraClipsInPlayerTestWithApplication:(id)a3 options:(id)a4;
- (void)_runScrollHomeSettingsTestWithApplication:(id)a3 options:(id)a4;
- (void)_runTabSwitchToAutomationTestWithApplication:(id)a3 options:(id)a4;
- (void)_runToggleLightTestWithApplication:(id)a3 options:(id)a4;
- (void)_runToggleSceneTestWithApplication:(id)a3 options:(id)a4;
- (void)_startBackgroundTaskWithItemIdentifier:(id)a3;
- (void)_submitMetricsSymptomsSummaryForSymptomsHandlers:(id)a3;
- (void)application:(id)a3 didDiscardSceneSessions:(id)a4;
- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5;
- (void)buildMenuWithBuilder:(id)a3;
- (void)endAppleMusicLoginBackgroundTask:(id)a3;
- (void)endSymptomFixBackgroundTask:(id)a3;
- (void)startAppleMusicLoginBackgroundTask:(id)a3;
- (void)startSymptomFixBackgroundTask:(id)a3;
@end

@implementation HOAppDelegate

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
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

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [HOActivationManager sharedInstance:a3];
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
  v12 = [v11 applicationState];

  v13 = HFLogForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12 == 2)
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

- (void)application:(id)a3 handleEventsForBackgroundURLSession:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[HFAccessoryDiagnosticsUploadManager backgroundURLSessionIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handle background URL Session update for identifier:%@.", &v12, 0xCu);
    }

    v11 = +[HFAccessoryDiagnosticsUploadManager sharedManager];
    [v11 resumeServiceForURLSessionIdentifier:v6];
    [v11 setBackgroundUrlSessionCompletionHandler:v7];
  }
}

- (id)application:(id)a3 configurationForConnecting:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[HOAppDelegate application:configurationForConnecting:options:]";
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) Scene configuration for %@ through App Delegate instead of .plist.", &v11, 0x16u);
  }

  v7 = [UISceneConfiguration alloc];
  v8 = [v5 role];
  v9 = [v7 initWithName:@"Default Configuration" sessionRole:v8];

  [v9 setDelegateClass:objc_opt_class()];

  return v9;
}

- (void)application:(id)a3 didDiscardSceneSessions:(id)a4
{
  v4 = a4;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Discarding scene sessions: %@", &v6, 0xCu);
  }
}

- (void)startSymptomFixBackgroundTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

- (void)endSymptomFixBackgroundTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

- (void)startAppleMusicLoginBackgroundTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

- (void)endAppleMusicLoginBackgroundTask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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

- (void)_startBackgroundTaskWithItemIdentifier:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = +[UIApplication sharedApplication];
  v6 = [v4 UUIDString];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001792C;
  v13[3] = &unk_1000C2450;
  v7 = v4;
  v15 = self;
  v16 = &v17;
  v14 = v7;
  v8 = [v5 beginBackgroundTaskWithName:v6 expirationHandler:v13];

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

  v11 = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
  v12 = [NSNumber numberWithUnsignedInteger:v18[3]];
  [v11 setObject:v12 forKey:v7];

  _Block_object_dispose(&v17, 8);
}

- (void)_endBackgroundTaskWithItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    [(HOAppDelegate *)self _endBackgroundTaskWithTaskIdentifier:v7];
    v8 = [(HOAppDelegate *)self itemIdentifierToBackgroundTaskIdentifierMap];
    [v8 removeObjectForKey:v4];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007FF14();
    }
  }
}

- (void)_endBackgroundTaskWithTaskIdentifier:(unint64_t)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending background task with taskID %lu", &v6, 0xCu);
  }

  v5 = +[UIApplication sharedApplication];
  [v5 endBackgroundTask:a3];
}

- (void)_logUserMetrics
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 allHomesFuture];
  v5 = +[NAScheduler globalAsyncScheduler];
  v6 = [v4 reschedule:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100017C78;
  v8[3] = &unk_1000C2478;
  v8[4] = self;
  v7 = [v6 addSuccessBlock:v8];
}

- (void)_logAccessoryCountMetricsWithHomes:(id)a3
{
  v3 = a3;
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
  [v3 na_each:v10];
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

- (void)_logUserAutomationNamingTypeProportions:(id)a3
{
  v9 = [a3 na_flatMap:&stru_1000C2598];
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

- (void)_submitMetricsSymptomsSummaryForSymptomsHandlers:(id)a3
{
  v3 = a3;
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
  [v3 na_each:v7];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending HFAnalyticsEventTypeNetworkSymptomsSummary with data=%@", buf, 0xCu);
  }

  [HFAnalytics sendEvent:58 withData:v5];
}

- (void)buildMenuWithBuilder:(id)a3
{
  v8 = a3;
  v4 = [(HOAppDelegate *)self menuToolbarManager];

  if (v4)
  {
    v5 = [v8 system];
    v6 = +[UIMenuSystem mainSystem];

    if (v5 == v6)
    {
      v7 = [(HOAppDelegate *)self menuToolbarManager];
      [v7 setMenuBuilder:v8];
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

- (void)_runExtendedLaunchTestWithApplication:(id)a3 options:(id)a4
{
  [a3 startedTest:{@"ExtendedLaunch PPT", a4}];
  v5 = [(HOAppDelegate *)self baseViewController];
}

- (void)_runTabSwitchToAutomationTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - Switch to automation tab", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7)
  {
    v8 = [(HOAppDelegate *)self _firstReadCompleteFuture];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001ED48;
    v21[3] = &unk_1000C2A78;
    v9 = v5;
    v22 = v9;
    v23 = @"tabSwitchToAutomation";
    v24 = v7;
    v10 = [v8 flatMap:v21];
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

    [v5 failedTest:@"tabSwitchToAutomation"];
  }
}

- (void)_runScrollHomeSettingsTestWithApplication:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[HOAppDelegate(PerformanceTests) _runScrollHomeSettingsTestWithApplication:options:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) PPT - Scrolling Home Settings", buf, 0xCu);
  }

  v9 = [(HOAppDelegate *)self baseViewController];
  if (v9 && ([(HOAppDelegate *)self appNavigator], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [v9 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001F008;
    v18[3] = &unk_1000C2B18;
    v12 = v6;
    v19 = v12;
    v20 = @"scrollHomeSettings";
    v21 = self;
    v22 = v7;
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
    [v6 failedTest:@"scrollHomeSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runScrollAutomationTestWithApplication:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PPT - Scrolling automation tab", buf, 2u);
  }

  v10 = [(HOAppDelegate *)self baseViewController];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 selectTabWithIdentifier:HFHomeAppTabIdentifierTriggers];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001F7F0;
    v19[3] = &unk_1000C2B40;
    v22 = a2;
    v19[4] = self;
    v20 = v8;
    v21 = @"scrollAutomation";
    v13 = [v12 addSuccessBlock:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001F94C;
    v16[3] = &unk_1000C2AC8;
    v17 = v7;
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

    [v7 failedTest:@"scrollAutomation"];
  }
}

- (void)_runAddRoomTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - Add a room", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7)
  {
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    v9 = [v8 home];

    v10 = [[HFRoomBuilder alloc] initWithHome:v9];
    [v10 setName:@"PPT-Room"];
    [v5 startedTest:@"addRoom"];
    v11 = [v10 commitItem];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001FC20;
    v24[3] = &unk_1000C2B68;
    v12 = v5;
    v25 = v12;
    v26 = @"addRoom";
    v13 = [v11 addSuccessBlock:v24];
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
    v20 = v9;
    v15 = v9;
    v16 = [v14 addCompletionBlock:v18];
  }

  else
  {
    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000803F0();
    }

    [v5 failedTest:@"addRoom"];
  }
}

- (void)_runDeleteRoomTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - delete a room", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7)
  {
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    v9 = [v8 home];

    v10 = [[HFRoomBuilder alloc] initWithHome:v9];
    [v10 setName:@"PPT-Room"];
    v11 = [v10 commitItem];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001FF5C;
    v25[3] = &unk_1000C2BB8;
    v12 = v5;
    v26 = v12;
    v27 = @"deleteRoom";
    v28 = v9;
    v13 = v9;
    v14 = [v11 flatMap:v25];

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

    [v5 failedTest:@"deleteRoom"];
  }
}

- (void)_runPresentHomeSettingsTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present home settings", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002023C;
    v16[3] = &unk_1000C2C08;
    v10 = v5;
    v17 = v10;
    v18 = @"presentHomeSettings";
    v19 = self;
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
    [v5 failedTest:@"presentHomeSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkSettingsTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network settings", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000205FC;
    v16[3] = &unk_1000C2C08;
    v10 = v5;
    v17 = v10;
    v18 = @"presentNetworkSettings";
    v19 = self;
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
    [v5 failedTest:@"presentNetworkSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkRouterSettingsTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network router settings", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000209EC;
    v16[3] = &unk_1000C2C08;
    v10 = v5;
    v17 = v10;
    v18 = @"presentNetworkRouterSettings";
    v19 = self;
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
    [v5 failedTest:@"presentNetworkRouterSettings" withFailure:@"Invalid controller"];
  }
}

- (void)_runPresentNetworkConfigurationSettingsTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - present network configuration settings", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 selectTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100020E04;
    v17[3] = &unk_1000C2C08;
    v10 = v5;
    v18 = v10;
    v19 = @"presentNetworkConfigurationSettings";
    v20 = self;
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

    [v5 failedTest:@"presentNetworkConfigurationSettings"];
  }
}

- (void)_runScrollCameraClipsInPlayerTestWithApplication:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PPT - scroll camera clips", buf, 2u);
  }

  objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"cameraUUID"];
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
  v13 = [(HOAppDelegate *)self baseViewController];
  if (v13 && ([(HOAppDelegate *)self appNavigator], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100021470;
    v35[3] = &unk_1000C2C30;
    v40 = buf;
    v16 = v6;
    v36 = v16;
    v37 = @"scrollCameraClips";
    v38 = self;
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
    v29 = v7;
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
    [v6 failedTest:@"scrollCameraClips" withFailure:@"Invalid controller"];
  }

  _Block_object_dispose(buf, 8);
}

- (void)_runToggleLightTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - toggling light", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100021A04;
    v16[3] = &unk_1000C2AA0;
    v10 = v5;
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
    [v5 failedTest:@"toggleLight" withFailure:@"Invalid controller"];
  }
}

- (void)_runToggleSceneTestWithApplication:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PPT - toggling scene", buf, 2u);
  }

  v7 = [(HOAppDelegate *)self baseViewController];
  if (v7 && ([(HOAppDelegate *)self appNavigator], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(HOAppDelegate *)self _selectAndFinishFirstReadForTabWithIdentifier:HFHomeAppTabIdentifierHome];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100021EC4;
    v16[3] = &unk_1000C2AA0;
    v10 = v5;
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
    [v5 failedTest:@"toggleScene" withFailure:@"Invalid controller"];
  }
}

- (id)_firstReadCompleteFuture
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 homeFuture];
  v4 = [v3 flatMap:&stru_1000C2D48];

  return v4;
}

- (id)_selectAndFinishFirstReadForTabWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HOAppDelegate *)self baseViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 selectTabWithIdentifier:v4];
    v18[0] = v7;
    v8 = +[HFHomeKitDispatcher sharedDispatcher];
    v9 = [v8 homeFuture];
    v18[1] = v9;
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

- (id)_networkRouterForTestingInHome:(id)a3
{
  v3 = [a3 hf_allNetworkRouterAccessories];
  v4 = [v3 sortedArrayUsingComparator:&stru_1000C2EB8];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_networkConfigurationProfileForTestingInHome:(id)a3
{
  v3 = [a3 hf_allNetworkConfigurationProfiles];
  v4 = [v3 sortedArrayUsingComparator:&stru_1000C2EF8];
  v5 = [v4 firstObject];

  return v5;
}

- (id)_sortedAccessoriesInHome:(id)a3
{
  v3 = [a3 accessories];
  v4 = [v3 sortedArrayUsingComparator:&stru_1000C2F18];

  return v4;
}

- (void)_deleteRoomWithName:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 rooms];
  if ([v7 count])
  {
    v8 = [NSPredicate predicateWithFormat:@"name == %@", v5];
    v9 = [v7 filteredArrayUsingPredicate:v8];
    if ([v9 count])
    {
      v10 = [v9 firstObject];
      [v6 removeRoom:v10 completionHandler:&stru_1000C2F38];
    }

    else
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10008048C(v5, v10);
      }
    }
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100080504();
    }
  }
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v16.value.super.super.isa = a3;
  v16.is_nil = v8;
  v13.value._countAndFlagsBits = v10;
  v13.value._object = v5;
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
  v2 = [(HOAppDelegate *)self sceneRootViewController];
  if (v2)
  {
    v3 = v2;
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (!v2)
    {

      v2 = 0;
    }
  }

  return v2;
}

- (HOAppNavigator)appNavigator
{
  v2 = self;
  v3 = HOAppDelegate.appNavigator.getter();

  return v3;
}

- (id)serviceLikeItemWithItem:(id)a3 itemManager:(id)a4 withID:(id)a5
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  if (a5)
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

  v15 = a3;
  v16 = a4;
  v17 = self;
  v18 = sub_10007D5C0(v15, v12);

  sub_10007E208(v12);

  return v18;
}

- (id)findPreferredAccessoryWithItemManager:(id)a3 accessoryID:(id)a4 with:(id)a5
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  if (a4)
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
  v17 = a3;
  v18 = self;
  v19 = HOAppDelegate.findPreferredAccessory(itemManager:accessoryID:with:)(v17, v12, sub_10007E66C, (&v21 - 4));
  _Block_release(v13);

  sub_10007E208(v12);

  return v19;
}

- (id)findAccessoryWithItemManager:(id)a3 accessoryID:(id)a4 testBlock:(id)a5
{
  v9 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  if (a4)
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
  v16 = a3;
  v17 = self;
  sub_10007E270(v16, v12, v17, v13);
  v19 = v18;
  _Block_release(v13);
  _Block_release(v13);

  sub_10007E208(v12);

  return v19;
}

- (id)homeKitObjectIDFrom:(id)a3 userDefaultsEnabled:(BOOL)a4
{
  v5 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
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

- (id)_runScrollTestWithTestName:(id)a3 scrollView:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = self;
  v13 = sub_100077518(v7, v9, v11, v10, 0);

  return v13;
}

- (id)_cameraProfileForTestingInHome:(id)a3 withUUID:(id)a4
{
  v7 = sub_1000578B4(&unk_1000D9E30, &qword_1000933F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  if (a4)
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

  v13 = a3;
  v14 = self;
  v15 = sub_10007CF40(v13, v10);

  sub_10007E208(v10);

  return v15;
}

@end