@interface FRAppDelegate
+ (BOOL)shouldHideHeadline:(id)a3;
+ (id)sharedDelegate;
+ (id)stateRestorationURL;
+ (void)registerDefaults;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)safeIsAppRunningInBackground;
- (FRAppDelegate)init;
- (NSArray)tfAssemblies;
- (NSArray)tfBundleAssemblies;
- (TFResolver)resolver;
- (double)_timeSinceLastActivation;
- (id)_extractWidgetEngagementFromReferralURL:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)gizmoSyncManager:(id)a3 fetchOperationForArticleIDs:(id)a4;
- (id)setupAnalyticsReferralWithOptions:(id)a3;
- (id)setupDestructiveDataAction;
- (int)fcDigestModeFromScheduledDeliverySetting:(int64_t)a3;
- (void)_application:(id)a3 openURL:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (void)_configureBackgroundFetch;
- (void)_didCommitFirstFrame;
- (void)_didResumeLowPriorityTasks;
- (void)_updateBackgroundFetchSettingsWithAppConfiguration:(id)a3;
- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4;
- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5;
- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4;
- (void)application:(id)a3 didSendEvent:(id)a4;
- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5;
- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4;
- (void)buildMenuWithBuilder:(id)a3;
- (void)clearOldCacheItemsWithFeldsparContext:(id)a3;
- (void)dealloc;
- (void)hideAlert:(id)a3;
- (void)localDraftsDeviceOnPreview:(id)a3 articleIdentifier:(id)a4 channelIdentifier:(id)a5;
- (void)prepareAppCacheSnapShot;
- (void)registerForDeviceLockNotifications;
- (void)resolveAppSingletons;
- (void)sceneDidBecomeActive;
- (void)sceneDidEnterBackground;
- (void)sceneWillEnterForeground;
- (void)scheduleTasksWithOptions:(id)a3;
- (void)setRunningPPTWithApplication:(id)a3;
- (void)setupAnalyticsControllerWithFeldsparContext:(id *)a3 versionHelpers:(id)a4 referral:(id)a5;
- (void)setupCloudContextWithAppActivityMonitor:(id)a3 dataActionProvider:(id)a4 versionHelpers:(id)a5 configurationManager:(id)a6 networkBehaviorMonitor:(id)a7 networkReachability:(id)a8;
- (void)setupCloudContextWithFavoritesPersonalizer:(id)a3 state:(int64_t)a4 launchOptions:(id)a5 versionHelpers:(id)a6 referral:(id)a7;
- (void)setupLanguages;
- (void)setupNotificationManagerWithFeldsparContext:(id *)a3;
- (void)setupUserDefaultsForPPT;
- (void)showAlertWithPin:(id)a3 pin:(id)a4;
- (void)showAppUnsupportedAlert;
- (void)unregisterForDeviceLockNotifications;
- (void)validateCommand:(id)a3;
@end

@implementation FRAppDelegate

- (FRAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = FRAppDelegate;
  v2 = [(FRAppDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSAppDelegate);
    bridgedAppDelegate = v2->_bridgedAppDelegate;
    v2->_bridgedAppDelegate = v3;
  }

  return v2;
}

- (void)setupLanguages
{
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting up languages", buf, 2u);
  }

  v3 = +[NSLocale _globalPreferredLanguages];
  v4 = [NSBundle preferredLocalizationsFromArray:&off_1000CB3B8 forPreferences:v3];
  v5 = [v4 firstObject];

  v6 = @"en-US";
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found preferred language: %{public}@, setting language as %{public}@", buf, 0x16u);
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v11 = v7;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v9 setObject:v10 forKey:@"AppleLanguages"];
}

- (id)setupDestructiveDataAction
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"hard_reset_news_on_next_launch"];

  if (v3)
  {
    v4 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Will perform hard reset because HardResetOnNextLaunch=true", buf, 2u);
    }
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"should_clear_cache_on_next_launch"];

  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will clear caches because ClearCacheOnNextLaunch=true", v29, 2u);
    }
  }

  v8 = objc_opt_new();
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"hard_reset_news_on_next_launch"];

  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [NSSet setWithObjects:FCContentEnvironmentSharedPreferenceKey, FCStorefrontSharedPreferenceKey, FCPPTTestNameKey, FCPersonalizationScriptKey, 0];
    v13 = [NSSUserDefaultsDataDestructionItem alloc];
    v14 = NewsCoreUserDefaults();
    v15 = [v13 initWithUserDefaults:v14 domainName:FCDefaultsSuiteName stickyKeys:v12];

    [v8 addObject:v15];
    v16 = [NSSUserDefaultsDataDestructionItem alloc];
    v17 = NewsCoreSensitiveUserDefaults();
    v18 = FCSensitiveDefaultsSuiteName;
    v19 = +[NSSet set];
    v20 = [v16 initWithUserDefaults:v17 domainName:v18 stickyKeys:v19];

    [v8 addObject:v20];
    if (NFInternalBuild())
    {
      v21 = [NSSet setWithObjects:@"news.onboarding.splash_screen.disable_splash_screen", @"news.modules.newsengagement.presentation.disable_all_presentations", 0];
    }

    else
    {
      v21 = objc_opt_new();
    }

    v22 = v21;
  }

  else
  {
    v11 = objc_opt_new();
    v22 = FRAppDefaultsDomainiCloudDataDestructionStickyKeys();
  }

  v23 = [NSSUserDefaultsDataDestructionItem alloc];
  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [v23 initWithUserDefaults:v24 domainName:@"com.apple.news" stickyKeys:v22];

  [v8 addObject:v25];
  v26 = [[FRDestructiveDataMigrationHandler alloc] initWithPrivateDataActionProvider:v11 defaultsDataDestructionItems:v8];
  [(FRDestructiveDataMigrationHandler *)v26 handleMigration];
  [objc_opt_class() registerDefaults];
  v27 = +[NSUserDefaults standardUserDefaults];
  [v27 setBool:1 forKey:@"NSAllowsDefaultLineBreakStrategy"];

  return v11;
}

+ (void)registerDefaults
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v8[0] = @"reset_identifier";
  v8[1] = FCWhitetailOnboardingNeededKey;
  v9[0] = &__kCFBooleanFalse;
  v9[1] = &__kCFBooleanTrue;
  v8[2] = @"use-label-cells";
  v8[3] = FCEnableSolitaireGrouping;
  v9[2] = &__kCFBooleanTrue;
  v9[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
  [v2 registerDefaults:v3];

  v4 = NewsCoreUserDefaults();
  v6 = FCAudioConfigEnabledSharedPreferenceKey;
  v7 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v4 registerDefaults:v5];
}

- (void)registerForDeviceLockNotifications
{
  v2 = self;
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004A6E0;
  handler[3] = &unk_1000C4FC0;
  objc_copyWeak(&v5, &location);
  handler[4] = v2;
  LODWORD(v2) = notify_register_dispatch("com.apple.springboard.lockstate", &v2->lockStateToken, &_dispatch_main_q, handler);

  if (v2 && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100071018();
  }

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)prepareAppCacheSnapShot
{
  if (FeldsparInternalExtrasEnabled())
  {
    v2 = objc_alloc_init(NSClassFromString(@"FRAppCacheSnapshotter"));
    if ([v2 snapshotPreparedAndWaitingForRestoration])
    {
      [v2 finalizeRestoreOfCachesDirectory];
    }
  }
}

+ (id)stateRestorationURL
{
  v2 = FCURLForContainerizedUserAccountHomeDirectory();
  v3 = [v2 URLByAppendingPathComponent:@"Saved Application State/com.apple.news.savedState/data.data"];

  return v3;
}

- (void)setupUserDefaultsForPPT
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v2 = +[FRPPTContext sharedContext];
  v3 = [v2 isRunningPPT];

  v4 = +[FRPPTContext sharedContext];
  [v4 d_logState];

  if (v3)
  {
    [v5 setBool:0 forKey:FCWhitetailOnboardingNeededKey];
    [v5 setBool:1 forKey:FCPeaceOnboardingCompletedKey];
  }
}

- (NSArray)tfBundleAssemblies
{
  v30 = objc_alloc_init(SXFrameworkAssembly);
  v31[0] = v30;
  v29 = objc_alloc_init(NUApplicationFrameworkAssembly);
  v31[1] = v29;
  v28 = objc_alloc_init(TFTeaFoundationAssembly);
  v31[2] = v28;
  v27 = objc_alloc_init(TUAssembly);
  v31[3] = v27;
  v26 = objc_alloc_init(FCAssembly);
  v31[4] = v26;
  v25 = objc_alloc_init(NMAssembly);
  v31[5] = v25;
  v24 = objc_alloc_init(NYAssembly);
  v31[6] = v24;
  v23 = objc_alloc_init(NEAssembly);
  v31[7] = v23;
  v3 = objc_alloc_init(NAAssembly);
  v31[8] = v3;
  v4 = objc_alloc_init(NPAssembly);
  v31[9] = v4;
  v5 = objc_alloc_init(NXAssembly);
  v31[10] = v5;
  v6 = objc_alloc_init(NAPAssembly);
  v31[11] = v6;
  v7 = [TSFrameworkAssembly alloc];
  v21 = self;
  v8 = [(FRAppDelegate *)self feldsparContext];
  v9 = [v8 cloudContext];
  v10 = [v9 appConfigurationManager];
  v11 = [v7 initWithNewsAppConfigurationManager:v10];
  v31[12] = v11;
  v12 = objc_alloc_init(SNAssembly);
  v31[13] = v12;
  v13 = objc_alloc_init(EGAssembly);
  v31[14] = v13;
  v22 = [NSArray arrayWithObjects:v31 count:15];

  if (FeldsparInternalExtrasEnabled())
  {
    v14 = +[NSBundle fr_feldsparInternalExtrasBundle];
    [v14 load];

    v15 = [v22 mutableCopy];
    v16 = objc_alloc(NSClassFromString(@"FRInternalExtrasAssembly"));
    v17 = [(FRAppDelegate *)v21 feldsparContext];
    v18 = [v16 initWithContext:v17];

    if (v18)
    {
      [v15 addObject:v18];
    }

    v19 = objc_alloc_init(NSClassFromString(@"FRInternalExtrasBundleAssembly"));
    if (v19)
    {
      [v15 addObject:v19];
    }
  }

  else
  {
    v15 = v22;
  }

  return v15;
}

- (NSArray)tfAssemblies
{
  v3 = +[UIApplication sharedApplication];
  v20 = [v3 key_window];

  v4 = [FRCoreAssembly alloc];
  v30 = [(FRAppDelegate *)self cloudContext];
  v32 = [(FRAppDelegate *)self cloudContext];
  v29 = [v32 configurationManager];
  v31 = [(FRAppDelegate *)self cloudContext];
  v28 = [v31 appActivityMonitor];
  v27 = [(FRAppDelegate *)self networkBehaviorMonitor];
  v26 = [(FRAppDelegate *)self offlineModeMonitor];
  v25 = [(FRCoreAssembly *)v4 initWithCloudContext:v30 configurationManager:v29 appActivityMonitor:v28 networkBehaviorMonitor:v27 offlineModeMonitor:v26];
  v33[0] = v25;
  v24 = objc_alloc_init(FRAnalyticsAssembly);
  v33[1] = v24;
  v5 = [FRFeldsparContextAssembly alloc];
  v23 = [(FRAppDelegate *)self feldsparContext];
  v22 = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  v21 = [(FRFeldsparContextAssembly *)v5 initWithContext:v23 privateDataUpdateCoordinator:v22];
  v33[2] = v21;
  v6 = objc_alloc_init(FRFeedSubscriptionAssembly);
  v33[3] = v6;
  v7 = [FREditorialAssembly alloc];
  v8 = [(FRAppDelegate *)self feldsparContext];
  v9 = [(FRAppDelegate *)self dataProviderFactory];
  v10 = [(FREditorialAssembly *)v7 initWithFeldsparContext:v8 dataProviderFactory:v9];
  v33[4] = v10;
  v11 = objc_alloc_init(FRHeadlineRendererAssembly);
  v33[5] = v11;
  v12 = [FRRoutingAssembly alloc];
  v13 = [(FRAppDelegate *)self feldsparContext];
  v14 = [(FRAppDelegate *)self bridgedAppDelegate];
  v15 = [(FRRoutingAssembly *)v12 initWithFeldsparContext:v13 bridgedAppDelegate:v14 window:v20];
  v33[6] = v15;
  v16 = objc_alloc_init(FRHistoryAssembly);
  v33[7] = v16;
  v17 = objc_alloc_init(FRLocalDraftsAssembly);
  v33[8] = v17;
  v19 = [NSArray arrayWithObjects:v33 count:9];

  return v19;
}

- (TFResolver)resolver
{
  resolver = self->_resolver;
  if (!resolver)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100070F38();
    }

    resolver = self->_resolver;
  }

  return resolver;
}

- (void)resolveAppSingletons
{
  v2 = self;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100032E10;
  v43[3] = &unk_1000C3A20;
  v43[4] = v2;
  v3 = [(FRAppDelegate *)v2 cloudContext];
  [v3 setOfflineArticleManagerProvider:v43];

  v4 = [(FRAppDelegate *)v2 resolver];
  v5 = [v4 resolveProtocol:&OBJC_PROTOCOL___FCLocalRegionManager];
  v6 = [(FRAppDelegate *)v2 cloudContext];
  [v6 setLocalRegionProvider:v5];

  v7 = [(FRAppDelegate *)v2 resolver];
  v8 = [v7 resolveProtocol:&OBJC_PROTOCOL___FCLocalChannelsProvider];
  v9 = [(FRAppDelegate *)v2 cloudContext];
  [v9 setLocalChannelsProvider:v8];

  v10 = [(FRAppDelegate *)v2 resolver];
  v11 = [v10 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)v2 setTodayAgent:v11];

  v12 = [(FRAppDelegate *)v2 resolver];
  v13 = [v12 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)v2 setDiagnosticFileCollectionCoordinator:v13];

  v14 = [(FRAppDelegate *)v2 feldsparContext];
  v15 = [(FRAppDelegate *)v2 resolver];
  v16 = [v15 resolveProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType];
  [v14 setUnderlyingImageCache:v16];

  v17 = [(FRAppDelegate *)v2 resolver];
  v18 = [v17 resolveClass:objc_opt_class()];
  [v14 setArticlePrefetchManager:v18];

  v19 = [(FRAppDelegate *)v2 resolver];
  v20 = [v19 resolveProtocol:&OBJC_PROTOCOL___AAViewingSessionManagerType name:@"Issue"];
  [v14 setIssueViewingSessionManager:v20];

  v21 = [(FRAppDelegate *)v2 resolver];
  v22 = [v21 resolveProtocol:&OBJC_PROTOCOL___FRToCEditorialManager];

  [v22 refreshEditorialItems];
  v23 = [(FRAppDelegate *)v2 resolver];
  v24 = [v23 resolveProtocol:&OBJC_PROTOCOL___TSLocationDetectionManagerType];
  v25 = [(FRAppDelegate *)v2 feldsparContext];
  v26 = [v25 favoritesPersonalizer];
  [v26 setLocationManager:v24];

  [(FRAppDelegate *)v2 setFeldsparContext:v14];
  [(FRAppDelegate *)v2 clearOldCacheItemsWithFeldsparContext:v14];
  if (+[FRMacros iPhone])
  {
    v27 = [FRGizmoSyncManager alloc];
    v28 = [v14 cloudContext];
    v29 = [v28 appConfigurationManager];
    v30 = [v14 readingList];
    v31 = [v14 readingHistory];
    v32 = [(FRGizmoSyncManager *)v27 initWithAppConfigManager:v29 readingList:v30 readingHistory:v31];

    [(FRGizmoSyncManager *)v32 setDelegate:v2];
    [v14 setGizmoSyncManager:v32];
  }

  v33 = [(FRAppDelegate *)v2 resolver];
  v34 = [v33 resolveProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType];
  [(FRAppDelegate *)v2 setUrlRouterManager:v34];

  if (NFInternalBuild())
  {
    v35 = NewsCoreUserDefaults();
    v36 = [v35 BOOLForKey:@"news_articles.drafts.allow_remote_preview"];

    if (v36)
    {
      v37 = [(FRAppDelegate *)v2 resolver];
      v38 = [v37 resolveProtocol:&OBJC_PROTOCOL___TSLocalDraftsDeviceManagerType];
      [(FRAppDelegate *)v2 setDeviceManager:v38];

      v39 = [(FRAppDelegate *)v2 deviceManager];
      [v39 setDelegate:v2];

      v40 = [UIAlertController alertControllerWithTitle:@"News Preview - Device PIN" message:0 preferredStyle:1];
      [(FRAppDelegate *)v2 setPinAlertController:v40];

      v41 = [(FRAppDelegate *)v2 pinAlertController];
      v42 = [UIAlertAction actionWithTitle:@"Done" style:1 handler:0];
      [v41 addAction:v42];
    }
  }

  [(FRAppDelegate *)v2 _configureBackgroundFetch];
}

- (void)_configureBackgroundFetch
{
  v3 = [(FRAppDelegate *)self feldsparContext];
  v4 = [v3 cloudContext];

  v5 = +[UIApplication sharedApplication];
  v6 = [[TSApplicationBackgroundFetchScheduler alloc] initWithApplication:v5];
  [v6 prepareForUseWithApplicationDelegate:self];
  [(FRAppDelegate *)self setBackgroundFetchScheduler:v6];
  v7 = [(FRAppDelegate *)self resolver];
  v8 = [v7 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)self setBackgroundFetchManager:v8];

  v9 = [(FRAppDelegate *)self backgroundFetchManager];

  if (!v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007110C();
  }

  v10 = [v4 appConfigurationManager];
  [v10 addAppConfigObserver:self];
  v11 = [v10 possiblyUnfetchedAppConfiguration];
  [(FRAppDelegate *)self _updateBackgroundFetchSettingsWithAppConfiguration:v11];
}

- (void)sceneWillEnterForeground
{
  v3 = [(FRAppDelegate *)self resolver];
  v4 = [v3 resolveProtocol:&OBJC_PROTOCOL___AAViewingSessionManagerType name:@"Issue"];

  [v4 endActiveViewingSession];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009808;
  block[3] = &unk_1000C18D0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_didCommitFirstFrame
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000094BC;
  block[3] = &unk_1000C18D0;
  block[4] = self;
  dispatch_async(v3, block);

  +[NSURLRequest setupFeldsparUserAgent];
  v4 = [(FRAppDelegate *)self feldsparContext];
  v5 = [v4 cloudContext];
  v6 = [v5 userInfo];
  [v6 maybeUpdateOnboardingVersion:&stru_1000C4EA8];

  v7 = dispatch_get_global_queue(2, 0);
  dispatch_async(v7, &stru_1000C4EC8);

  [(FRAppDelegate *)self _disableLoggingForUnsupportedControls];
  v8 = [(FRAppDelegate *)self bridgedAppDelegate];
  [v8 didCommitFirstFrame];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100049C6C;
  v9[3] = &unk_1000C18D0;
  v9[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v9];
  +[FCTaskScheduler popHighPriorityTaskInFlight];
}

- (void)sceneDidBecomeActive
{
  [(FRAppDelegate *)self _timeSinceLastActivation];
  v4 = v3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = +[NSDate date];
  [v5 setObject:v6 forKey:@"lastActivationDate"];

  if (v4 > 604800.0 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:FCSimulateServerSidePrivateDataReset], v7, v8))
  {
    v9 = [(FRAppDelegate *)self privateDataUpdateCoordinator];
    [v9 markAllPrivateDataControllersAsNeedingUpdate];
  }

  v10 = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  [v10 updatePrivateDataControllersWithCompletion:&stru_1000C4F58];

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"simulate_quick_subscription_refresh"];

  if (v12)
  {
    v13 = [(FRAppDelegate *)self cloudContext];
    v14 = [v13 subscriptionController];
    [v14 performSelector:"refreshAndNotifyAboutSubscribedTags" withObject:0 afterDelay:120.0];
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10004A684;
    v31[3] = &unk_1000C18D0;
    v31[4] = self;
    [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v31];
  }

  v15 = +[NSDate date];
  v16 = [(FRAppDelegate *)self feldsparContext];
  v17 = [v16 cloudContext];
  v18 = [v17 userInfo];
  [v18 setDateLastOpened:v15];

  v19 = +[NSNotificationCenter defaultCenter];
  v20 = +[NSOperationQueue mainQueue];
  v21 = [v19 addObserverForName:@"Unregister Crash Callbacks" object:0 queue:v20 usingBlock:&stru_1000C4F98];

  v22 = +[NSNotificationQueue defaultQueue];
  v23 = [NSNotification notificationWithName:@"Unregister Crash Callbacks" object:0];
  v32 = NSRunLoopCommonModes;
  v24 = [NSArray arrayWithObjects:&v32 count:1];
  [v22 enqueueNotification:v23 postingStyle:1 coalesceMask:3 forModes:v24];

  v25 = [(FRAppDelegate *)self feldsparContext];
  v26 = [v25 gizmoSyncManager];
  [v26 syncWithGizmo];

  v27 = [(FRAppDelegate *)self resolver];
  v28 = [v27 resolveClass:objc_opt_class()];

  [v28 updateUnderlyingMappingWithQualityOfService:-1 completion:0];
  v29 = [(FRAppDelegate *)self resolver];
  v30 = [v29 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)self setKeyboardInputMonitor:v30];
}

- (double)_timeSinceLastActivation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"lastActivationDate"];

  if (v3)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  return v6;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 key_window];

  v10 = [(FRAppDelegate *)self applicationUpdateNotifier];
  v11 = [v9 rootViewController];
  [v10 setViewController:v11];

  v12 = +[FCAppleAccount sharedAccount];
  v13 = [v12 endpointConnectionClientID];

  v14 = +[NSUserDefaults standardUserDefaults];
  [v14 setBool:1 forKey:@"hasLaunchedBefore"];

  [WKBrowsingContextController registerSchemeForCustomProtocol:FCExcerptURLScheme];
  [(FRAppDelegate *)self performSelector:"_didCommitFirstFrame" withObject:0 afterDelay:0.0];
  v15 = [(FRAppDelegate *)self bridgedAppDelegate];
  LOBYTE(v14) = [v15 application:v7 didFinishLaunchingWithOptions:v6];

  return v14;
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(FRAppDelegate *)self setupLanguages];
  [(FRAppDelegate *)self scheduleTasksWithOptions:v7];
  v127 = v6;
  [(FRAppDelegate *)self setRunningPPTWithApplication:v6];
  v125 = [(FRAppDelegate *)self setupDestructiveDataAction];
  [(FRAppDelegate *)self registerForDeviceLockNotifications];
  v126 = v7;
  v124 = [(FRAppDelegate *)self setupAnalyticsReferralWithOptions:v7];
  [(FRAppDelegate *)self prepareAppCacheSnapShot];
  v8 = +[FRAppDelegate stateRestorationURL];
  v9 = [v8 path];

  v10 = +[NSFileManager defaultManager];
  v121 = v9;
  LOBYTE(v9) = [v10 fileExistsAtPath:v9];

  if ((v9 & 1) == 0)
  {
    TFCompletedStartup();
  }

  [(FRAppDelegate *)self setupUserDefaultsForPPT];
  v11 = +[UIApplication sharedApplication];
  objc_opt_class();
  v12 = +[LSBundleProxy bundleProxyForCurrentProcess];
  v13 = FCCheckedDynamicCast();

  v119 = v13;
  v120 = v11;
  v128 = [[FRVersionHelpers alloc] initWithBackgroundTaskable:v11 applicationProxy:v13];
  [(FRVersionHelpers *)v128 updateAppObsolescenceState];
  v14 = [FCNetworkBehaviorMonitor alloc];
  v15 = FRURLForNewsAppCachesDirectory();
  v16 = [v15 path];
  v123 = [v14 initWithCacheDirectory:v16];

  v17 = objc_opt_new();
  [v17 addMonitor:v123];
  v117 = +[NSNotificationCenter defaultCenter];
  v18 = objc_alloc_init(NUApplicationAppActivityMonitorIOS);
  v19 = [[FCAppActivationMonitor alloc] initWithAppActivityMonitor:v18];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 objectForInfoDictionaryKey:@"CFBundleVersion"];

  v24 = [FCConfigurationManager alloc];
  v25 = +[FCContextConfiguration defaultConfiguration];
  v26 = FRURLForNewsAppCachesDirectory();
  v27 = +[FCFeldsparIDProvider sharedInstance];
  v113 = v23;
  v114 = v21;
  v28 = [v24 initWithContextConfiguration:v25 contentHostDirectoryFileURL:v26 feldsparIDProvider:v27 appShortVersionString:v21 buildNumberString:v23 networkBehaviorMonitor:v17 appActivityMonitor:v18 applicationState:0];

  v115 = v19;
  v29 = [[FCOfflineModeMonitor alloc] initWithAppActivationMonitor:v19 configurationManager:v28 networkBehaviorMonitor:v17];
  [(FRAppDelegate *)self setNetworkBehaviorMonitor:v123];
  [(FRAppDelegate *)self setOfflineModeMonitor:v29];
  v116 = v18;
  v112 = v28;
  v118 = v17;
  [(FRAppDelegate *)self setupCloudContextWithAppActivityMonitor:v18 dataActionProvider:v125 versionHelpers:v128 configurationManager:v28 networkBehaviorMonitor:v17 networkReachability:v29];
  v30 = [FRFavoritesPersonalizer alloc];
  v31 = [(FRAppDelegate *)self cloudContext];
  v122 = [(FRFavoritesPersonalizer *)v30 initWithCloudContext:v31];

  v32 = [(FRAppDelegate *)self cloudContext];
  v110 = [v32 subscriptionList];

  v111 = v29;
  v33 = [[FRPrivateDataUpdateCoordinator alloc] initWithNetworkReachability:v29];
  [(FRAppDelegate *)self setPrivateDataUpdateCoordinator:v33];

  v109 = [(FRAppDelegate *)self cloudContext];
  v108 = [v109 subscriptionList];
  v129[0] = v108;
  v107 = [(FRAppDelegate *)self cloudContext];
  v106 = [v107 readingList];
  v129[1] = v106;
  v105 = [(FRAppDelegate *)self cloudContext];
  v104 = [v105 userInfo];
  v129[2] = v104;
  v103 = [(FRAppDelegate *)self cloudContext];
  v102 = [v103 audioPlaylist];
  v129[3] = v102;
  v101 = [(FRAppDelegate *)self cloudContext];
  v100 = [v101 privateChannelMembershipController];
  v129[4] = v100;
  v99 = [(FRAppDelegate *)self cloudContext];
  v98 = [v99 shortcutList];
  v129[5] = v98;
  v97 = [(FRAppDelegate *)self cloudContext];
  v96 = [v97 shortcutCategoryList];
  v129[6] = v96;
  v95 = [(FRAppDelegate *)self cloudContext];
  v94 = [v95 personalizationData];
  v129[7] = v94;
  v93 = [(FRAppDelegate *)self cloudContext];
  v92 = [v93 userEventHistory];
  v129[8] = v92;
  v91 = [(FRAppDelegate *)self cloudContext];
  v34 = [v91 readingHistory];
  v129[9] = v34;
  v35 = [(FRAppDelegate *)self cloudContext];
  v36 = [v35 issueReadingHistory];
  v129[10] = v36;
  v37 = [(FRAppDelegate *)self cloudContext];
  v38 = [v37 puzzleHistory];
  v129[11] = v38;
  v39 = [(FRAppDelegate *)self cloudContext];
  v40 = [v39 recipeUserEventHistory];
  v129[12] = v40;
  v41 = [NSArray arrayWithObjects:v129 count:13];
  v42 = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  [v42 setPrivateDataControllers:v41];

  v43 = [FRFlintEmbedConfigurationManager alloc];
  v44 = [(FRAppDelegate *)self cloudContext];
  v45 = [v44 appConfigurationManager];
  v46 = [(FRAppDelegate *)self cloudContext];
  v47 = [v46 flintResourceManager];
  v48 = [(FRFlintEmbedConfigurationManager *)v43 initWithConfigurationManager:v45 resourceManager:v47];
  [(FRAppDelegate *)self setEmbedConfigurationManager:v48];

  v49 = [FRFlintDataProviderFactory alloc];
  v50 = [(FRAppDelegate *)self cloudContext];
  v51 = [(FRAppDelegate *)self cloudContext];
  v52 = [v51 flintResourceManager];
  v53 = [(FRAppDelegate *)self embedConfigurationManager];
  v54 = [(FRFlintDataProviderFactory *)v49 initWithCloudContext:v50 resourceManager:v52 embedConfigurationManager:v53];

  [(FRAppDelegate *)self setDataProviderFactory:v54];
  -[FRAppDelegate setupCloudContextWithFavoritesPersonalizer:state:launchOptions:versionHelpers:referral:](self, "setupCloudContextWithFavoritesPersonalizer:state:launchOptions:versionHelpers:referral:", v122, [v127 applicationState], v126, v128, v124);
  v55 = [(FRAppDelegate *)self bridgedAppDelegate];
  v56 = [v55 createBridgedAppResolver];
  [(FRAppDelegate *)self setResolver:v56];

  v57 = [(FRAppDelegate *)self resolver];
  v58 = [v57 resolveProtocol:&OBJC_PROTOCOL___FCReadonlyAggregateStoreProviderType];

  [(FRFavoritesPersonalizer *)v122 setAggregateStoreProvider:v58];
  v59 = [(FRAppDelegate *)self resolver];
  v60 = [v59 resolveProtocol:&OBJC_PROTOCOL___FCTagRanking];

  [(FRFavoritesPersonalizer *)v122 setTagRanker:v60];
  v61 = [(FRAppDelegate *)self resolver];
  v62 = [v61 resolveProtocol:&OBJC_PROTOCOL___FCFeedPersonalizing];
  v63 = [(FRAppDelegate *)self cloudContext];
  [v63 setFeedPersonalizer:v62];

  v64 = [(FRAppDelegate *)self resolver];
  v65 = [v64 resolveProtocol:&OBJC_PROTOCOL___FCUserVectorAggregateVectorProvider];
  v66 = [(FRAppDelegate *)self cloudContext];
  [v66 setUserVectorAggregateVectorProvider:v65];

  v67 = [(FRAppDelegate *)self resolver];
  v68 = +[FCItemExposureRegistryNames article];
  v69 = [v67 resolveProtocol:&OBJC_PROTOCOL___FCItemExposureRegistryType name:v68];
  v70 = [(FRAppDelegate *)self cloudContext];
  v71 = [v70 readingHistory];
  [v71 setArticleExposureRegistry:v69];

  v72 = [FRSubscribedTagRanker alloc];
  v73 = [(FRAppDelegate *)self resolver];
  v74 = [v73 resolveProtocol:&OBJC_PROTOCOL___FCFeedPersonalizing];
  v75 = [(FRSubscribedTagRanker *)v72 initWithTagRanker:v74];
  [v110 setSubscribedTagRanker:v75];

  [v110 assignOrderToTagSubscriptionsIfNeeded];
  [(FRAppDelegate *)self resolveAppSingletons];
  v76 = [(FRAppDelegate *)self resolver];
  v77 = [v76 resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];

  v78 = [(FRAppDelegate *)self feldsparContext];
  v79 = [v78 appActivityMonitor];
  [v79 setAnalyticsReferralFactory:v77];

  v80 = [(FRAppDelegate *)self feldsparContext];
  v81 = [v80 appActivityMonitor];
  [v81 applicationWillFinishLaunching];

  [(FRAppDelegate *)self prewarmAd];
  if (NFInternalBuild())
  {
    v82 = [FRCrashLogMessageManager alloc];
    v83 = [(FRAppDelegate *)self feldsparContext];
    v84 = [v83 cloudContext];
    v85 = [v84 appConfigurationManager];
    v86 = [(FRCrashLogMessageManager *)v82 initWithAppConfigurationManager:v85];
    [(FRAppDelegate *)self setCrashLogMessageManager:v86];

    v87 = [(FRAppDelegate *)self crashLogMessageManager];
    [v87 updateCrashLogMessageWithCurrentData];
  }

  v88 = [(FRAppDelegate *)self bridgedAppDelegate];
  v89 = [v88 application:v127 willFinishLaunchingWithOptions:v126];

  return v89;
}

- (void)scheduleTasksWithOptions:(id)a3
{
  v3 = a3;
  +[FCTaskScheduler pushHighPriorityTaskInFlight];
  +[FCTaskScheduler pushHighPriorityTaskInFlight];
  v4 = [v3 objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];

  if (v4)
  {

    +[FCTaskScheduler disableOptionalPrefetching];
  }
}

- (void)setRunningPPTWithApplication:(id)a3
{
  v3 = a3;
  v4 = +[FRPPTContext sharedContext];
  [v4 d_logState];

  v5 = +[FRPPTContext sharedContext];
  v6 = [v3 launchedToTest];

  [v5 setRunningPPT:v6];
  v7 = +[FRPPTContext sharedContext];
  [v7 d_logState];

  v12 = +[FRPPTContext sharedContext];
  if ([v12 isRunningPPT])
  {
    v8 = NewsCoreUserDefaults();
    v9 = [v8 BOOLForKey:@"skip_hard_reset_on_ppt_runs"];

    if (v9)
    {
      return;
    }

    v10 = NewsCoreUserDefaults();
    v11 = [v10 BOOLForKey:@"skip_hard_reset_on_ppt_runs_sticky"];

    if (v11)
    {
      return;
    }

    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 setBool:1 forKey:@"hard_reset_news_on_next_launch"];
  }
}

- (void)clearOldCacheItemsWithFeldsparContext:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000330EC;
  v4[3] = &unk_1000C18D0;
  v5 = a3;
  v3 = v5;
  [FCTaskScheduler scheduleLowPriorityBlock:v4];
}

- (void)setupCloudContextWithAppActivityMonitor:(id)a3 dataActionProvider:(id)a4 versionHelpers:(id)a5 configurationManager:(id)a6 networkBehaviorMonitor:(id)a7 networkReachability:(id)a8
{
  v55 = a3;
  v49 = a8;
  v50 = a7;
  v13 = a6;
  v51 = a5;
  v14 = a4;
  v15 = FRURLForNewsAppCachesDirectory();
  v16 = +[FCContextConfiguration defaultConfiguration];
  v52 = +[FCFeldsparIDProvider sharedInstance];
  v17 = [FCCloudContext alloc];
  v18 = FRURLForNewsAppDocumentsDirectory();
  LOBYTE(a5) = +[FRMacros iPad];
  v19 = +[UIApplication sharedApplication];
  v20 = +[FCPrivateDataSyncAvailability defaultAvailability];
  v21 = +[FRPPTContext sharedContext];
  LOBYTE(v48) = a5;
  v53 = v15;
  v22 = [v17 initWithConfiguration:v16 configurationManager:v13 contentHostDirectory:v15 privateDataHostDirectory:v18 privateDataActionProvider:v14 networkBehaviorMonitor:v50 networkReachability:v49 appActivityMonitor:v55 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:6 deviceIsiPad:v48 backgroundTaskable:v19 privateDataSyncAvailability:v20 pptContext:v21 options:14];

  if (FeldsparInternalExtrasEnabled())
  {
    v23 = +[NSBundle fr_feldsparInternalExtrasBundle];
    [v23 load];

    v24 = objc_alloc(NSClassFromString(@"FREntitlementsOverrideProvider"));
    v25 = [v22 configurationManager];
    v26 = [v24 initWithConfigurationManager:v25];

    v27 = FCProtocolCast();
    v28 = [v22 purchaseController];
    [v28 setEntitlementsOverrideProvider:v27];

    v29 = [v22 bundleSubscriptionManager];
    [v29 setEntitlementsOverrideProvider:v27];

    v30 = objc_alloc_init(NSClassFromString(@"FRPurchaseFlowOverrideProvider"));
    v31 = FCProtocolCast();
    v32 = [v22 purchaseManager];
    [v32 setPurchaseFlowOverrideProvider:v31];
  }

  [v22 prewarmStores];
  [TSTodayPrewarmManager prewarmTodayWithContext:v22];
  v33 = [v22 tagController];
  [v33 setShouldPrefetchGlobalTags:1];

  v34 = [v22 userInfo];
  [v52 registerUserInfo:v34];

  FRSetupLogging();
  v35 = [[FRApplicationUpdateNotifier alloc] initWithVersionHelpers:v51 appActivityMonitor:v55];

  [(FRApplicationUpdateNotifier *)v35 setup];
  [(FRAppDelegate *)self setApplicationUpdateNotifier:v35];
  v36 = +[UIApplication sharedApplication];
  [v36 registerForRemoteNotifications];

  v37 = +[NSUserDefaults standardUserDefaults];
  v38 = NewsCoreUserDefaults();
  v39 = [v38 BOOLForKey:FCExcludeHiddenFeedsCurrentSharedPreferenceKey];

  if (v39 != [v37 BOOLForKey:@"previous_exclude_hidden_feeds"])
  {
    [v37 setBool:v39 forKey:@"previous_exclude_hidden_feeds"];
  }

  v40 = +[NSUserDefaults standardUserDefaults];
  v41 = [v40 BOOLForKey:FCShouldResetOnboardingVersion];

  if (v41)
  {
    v42 = +[NSUserDefaults standardUserDefaults];
    v43 = [v42 integerForKey:FCOnboardingVersionToResetTo];

    if (v43 <= 1)
    {
      if (!v43)
      {
        v44 = +[NSUserDefaults standardUserDefaults];
        [v44 setBool:0 forKey:@"has_passed_new_user_state"];
      }

      v45 = +[NSUserDefaults standardUserDefaults];
      [v45 setBool:1 forKey:FCWhitetailOnboardingNeededKey];
    }

    v46 = [NSNumber numberWithInteger:v43];
    v47 = [v22 userInfo];
    [v47 setOnboardingVersionNumber:v46];
  }

  [(FRAppDelegate *)self setCloudContext:v22];
}

- (void)setupCloudContextWithFavoritesPersonalizer:(id)a3 state:(int64_t)a4 launchOptions:(id)a5 versionHelpers:(id)a6 referral:(id)a7
{
  v40 = a7;
  v39 = a6;
  v10 = a3;
  v11 = objc_alloc_init(FRFeldsparContext);
  v12 = [(FRAppDelegate *)self cloudContext];
  [(FRFeldsparContext *)v11 setCloudContext:v12];

  v13 = [(FRAppDelegate *)self cloudContext];
  v14 = [v13 readingHistory];
  [(FRFeldsparContext *)v11 setReadingHistory:v14];

  v15 = [(FRAppDelegate *)self cloudContext];
  v16 = [v15 readingList];
  [(FRFeldsparContext *)v11 setReadingList:v16];

  [(FRFeldsparContext *)v11 setFavoritesPersonalizer:v10];
  v42 = v11;
  [(FRAppDelegate *)self setupNotificationManagerWithFeldsparContext:&v42];
  v37 = v42;

  v17 = [FRPresubscribeService alloc];
  v38 = [(FRAppDelegate *)self cloudContext];
  v36 = [v38 appConfigurationManager];
  v18 = [(FRAppDelegate *)self cloudContext];
  v19 = [v18 tagController];
  v20 = [(FRAppDelegate *)self cloudContext];
  v21 = [v20 subscriptionController];
  v22 = [(FRAppDelegate *)self cloudContext];
  v23 = [v22 purchaseController];
  v24 = [(FRAppDelegate *)self notificationManager];
  v25 = [(FRPresubscribeService *)v17 initWithAppConfigurationManager:v36 tagController:v19 subscriptionController:v21 purchaseController:v23 notificationManager:v24];
  [(FRFeldsparContext *)v37 setPresubscribeService:v25];

  v26 = [FRArticleContentPool alloc];
  v27 = [(FRAppDelegate *)self cloudContext];
  v28 = [(FRAppDelegate *)self dataProviderFactory];
  v29 = [(FRArticleContentPool *)v26 initWithCloudContext:v27 dataProviderFactory:v28];
  [(FRFeldsparContext *)v37 setArticleContentPool:v29];

  v30 = [FRSpotlightManager alloc];
  v31 = [(FRAppDelegate *)self cloudContext];
  v32 = [(FRSpotlightManager *)v30 initWithCloudContext:v31];
  [(FRFeldsparContext *)v37 setSpotlightManager:v32];

  v33 = objc_alloc_init(AppEntityAssociator);
  v34 = [(FRFeldsparContext *)v37 spotlightManager];
  [v34 setAssociator:v33];

  v41 = v37;
  [(FRAppDelegate *)self setupAnalyticsControllerWithFeldsparContext:&v41 versionHelpers:v39 referral:v40];

  v35 = v41;
  [(FRAppDelegate *)self setFeldsparContext:v35];
}

- (void)setupAnalyticsControllerWithFeldsparContext:(id *)a3 versionHelpers:(id)a4 referral:(id)a5
{
  v7 = *a3;
  v8 = a5;
  v9 = [FRAnalyticsController alloc];
  v10 = [(FRAppDelegate *)self cloudContext];
  v18 = [(FRAnalyticsController *)v9 initWithCloudContext:v10];

  [v7 setAnalyticsController:v18];
  v11 = +[UIApplication sharedApplication];
  v12 = [v11 key_window];

  v13 = [FRAppActivityMonitor alloc];
  v14 = [(FRAppDelegate *)self cloudContext];
  v15 = [v14 appActivityMonitor];
  v16 = [(FRAppDelegate *)self cloudContext];
  v17 = [(FRAppActivityMonitor *)v13 initWithAnalyticsController:v18 appActivityMonitor:v15 cloudContext:v16 window:v12];

  [(FRAppActivityMonitor *)v17 addObserver:self];
  [v7 setAppActivityMonitor:v17];

  [(FRAppActivityMonitor *)v17 setAppSessionStartReferral:v8];
  [(FRAppDelegate *)self setActivityMonitor:v17];
}

- (id)setupAnalyticsReferralWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:?];
  v21 = self;
  if ([v5 nss_isNewsURL])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:0 forKey:FCWhitetailOnboardingNeededKey];

    v22 = [v5 fr_campaignID];
    v7 = [v5 fr_campaignType];
    v8 = [v5 fr_creativeID];
    v9 = [v5 fr_widgetModeGroupID];
    v10 = [(FRAppDelegate *)self _extractWidgetEngagementFromReferralURL:v5];
    if ([v5 fr_isFeldsparReferableURL])
    {
      v11 = [v5 absoluteString];
      v12 = 0;
      LOBYTE(v13) = 1;
    }

    else
    {
      v11 = 0;
      LOBYTE(v13) = 0;
      v12 = 0;
    }

    v15 = 4;
  }

  else
  {
    v13 = [v4 objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityDictionaryKey];

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityDictionaryKey];
      v22 = NSSSafariSearchCampaignID;
      v12 = [v14 objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityTypeKey];

      v11 = 0;
      v9 = 0;
      v10 = 0;
      v15 = 0;
      v8 = 0;
      v7 = 0;
      LOBYTE(v13) = 1;
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      v15 = 0;
      v12 = 0;
      v8 = 0;
      v7 = 0;
      v22 = 0;
    }
  }

  if ([v5 fr_articleOpenedFrom] == 2)
  {
    v15 = 12;
  }

  else if ([v12 isEqualToString:CSSearchableItemActionType])
  {
    v15 = 7;
  }

  else if ([v5 fr_isFromSafariSearchWithSourceApplication:0])
  {
    v15 = 9;
  }

  else if ([v22 isEqualToString:NSSSafariSearchCampaignID])
  {
    v15 = 8;
  }

  LOBYTE(v20) = v13;
  v16 = [[FRAnalyticsReferral alloc] initWithUserActivityType:v12 creativeID:v8 campaignID:v22 campaignType:v7 referringApplication:0 referringURL:v11 appOpenedByUserActivity:v20 widgetModeGroupID:v9 widgetEngagement:v10 appSessionStartMethod:v15 appSessionStartNotificationType:0];
  v17 = [v4 objectForKey:UIApplicationLaunchOptionsURLKey];
  v18 = v17;
  if (v17)
  {
    -[FRAppDelegate setInPreviewMode:](v21, "setInPreviewMode:", [v17 fr_isPreviewURL]);
  }

  return v16;
}

- (id)_extractWidgetEngagementFromReferralURL:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E234();
  }

  if (([v3 nss_isNewsURL] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E314();
  }

  v4 = [v3 fr_widgetEngagementFileURL];
  if (v4)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:v4];
    if (v5)
    {
      v6 = [[NTPBWidgetEngagement alloc] initWithData:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sharedDelegate
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = FCDynamicCast();

  return v4;
}

- (void)dealloc
{
  [(FRAppDelegate *)self unregisterForDeviceLockNotifications];
  v3.receiver = self;
  v3.super_class = FRAppDelegate;
  [(FRAppDelegate *)&v3 dealloc];
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(FRAppDelegate *)self resolver];
  v10 = [v9 resolveProtocol:&OBJC_PROTOCOL___SNTestRunner];

  LOBYTE(v9) = [v10 runTest:v8 options:v7];
  return v9;
}

- (void)localDraftsDeviceOnPreview:(id)a3 articleIdentifier:(id)a4 channelIdentifier:(id)a5
{
  v6 = [NSString stringWithFormat:@"applenews://preview/%@/%@", a5, a4];
  v7 = [NSURL URLWithString:v6];

  [(FRAppDelegate *)self _application:self openURL:v7 options:&__NSDictionary0__struct animated:+[UIView areAnimationsEnabled]];
}

- (void)showAlertWithPin:(id)a3 pin:(id)a4
{
  v5 = a4;
  v6 = +[UIApplication sharedApplication];
  v14 = [v6 key_window];

  v7 = [NSMutableAttributedString alloc];
  v8 = [@"\n" stringByAppendingString:v5];

  v9 = [v7 initWithString:v8];
  v10 = [UIFont fontWithName:@"Helvetica" size:24.0];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, 7}];

  [v9 addAttribute:NSKernAttributeName value:&off_1000CB618 range:{0, 7}];
  v11 = [(FRAppDelegate *)self pinAlertController];
  [v11 setValue:v9 forKey:@"attributedMessage"];

  v12 = [v14 rootViewController];
  v13 = [(FRAppDelegate *)self pinAlertController];
  [v12 presentViewController:v13 animated:1 completion:0];
}

- (void)hideAlert:(id)a3
{
  v3 = [(FRAppDelegate *)self pinAlertController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)showAppUnsupportedAlert
{
  v2 = +[NSBundle mainBundle];
  v10 = [v2 localizedStringForKey:@"Apple News isn’t supported in your current region." value:&stru_1000C67A8 table:0];

  v3 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Quit" value:&stru_1000C67A8 table:0];

  v6 = [UIAlertAction actionWithTitle:v5 style:2 handler:&stru_1000C4E88];
  [v3 addAction:v6];
  v7 = +[UIApplication sharedApplication];
  v8 = [v7 key_window];

  v9 = [v8 rootViewController];
  [v9 presentViewController:v3 animated:1 completion:0];
}

- (void)application:(id)a3 handleIntent:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FRAppDelegate *)self bridgedAppDelegate];
  [v11 application:v10 handleIntent:v9 completionHandler:v8];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = [(FRAppDelegate *)self bridgedAppDelegate];
  v5 = [v4 forwardingTargetForSelector:a3];

  return v5;
}

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [(FRAppDelegate *)self bridgedAppDelegate];
  [v5 buildMenuWithBuilder:v4];
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = [(FRAppDelegate *)self bridgedAppDelegate];
  [v5 validateCommand:v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(FRAppDelegate *)self bridgedAppDelegate];
  LOBYTE(a3) = [v7 canPerformAction:a3 withSender:v6];

  return a3;
}

- (void)_didResumeLowPriorityTasks
{
  v3 = [(FRAppDelegate *)self resolver];
  v4 = [v3 resolveProtocol:&OBJC_PROTOCOL___TSCacheFlushingManagerType];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100049E20;
  v16[3] = &unk_1000C30E8;
  v16[4] = self;
  [v4 addPreFlushTask:v16];
  v5 = [(FRAppDelegate *)self resolver];
  v6 = [v5 resolveProtocol:&OBJC_PROTOCOL___FRToCEditorialManager];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100049EF4;
  v14 = &unk_1000C30E8;
  v15 = v6;
  v7 = v6;
  [v4 addPreFlushTask:&v11];
  v8 = [(FRAppDelegate *)self resolver:v11];
  v9 = [v8 resolveClass:objc_opt_class()];

  [v9 acquireHoldTokenOnUnderlyingAssets];
  [v4 enableFlushing];
  v10 = [(FRAppDelegate *)self todayAgent];
  [v10 performSelector:"enable" withObject:0 afterDelay:1.0];
}

- (void)application:(id)a3 didSendEvent:(id)a4
{
  v5 = a4;
  v6 = [(FRAppDelegate *)self keyboardInputMonitor];
  [v6 handle:v5];
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  LODWORD(v11) = +[UIView areAnimationsEnabled];
  v12 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = v9;
    v38 = 1024;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ApplicationDelegate received URL to handle <%{public}@>, animated %d", buf, 0x12u);
  }

  LODWORD(v13) = [v9 nss_isNewsURL];
  if (v13)
  {
    v14 = [UIView alloc];
    v15 = +[UIScreen mainScreen];
    [v15 bounds];
    v16 = [v14 initWithFrame:?];

    v17 = +[UIColor systemBackgroundColor];
    [v16 setBackgroundColor:v17];

    v18 = [v10 valueForKey:NUURLWasOpenedFromNewsKey];
    if (([v18 isEqual:&__kCFBooleanTrue] & 1) == 0)
    {
      [v10 valueForKey:UIApplicationOpenURLOptionsSourceApplicationKey];
      v11 = v29 = v11;
      v19 = +[NSBundle mainBundle];
      [v19 bundleIdentifier];
      v20 = v16;
      v21 = v13;
      v13 = v10;
      v22 = self;
      v24 = v23 = v8;
      v28 = [v11 isEqual:v24];

      v8 = v23;
      self = v22;
      v10 = v13;
      LOBYTE(v13) = v21;
      v16 = v20;

      LOBYTE(v11) = v29;
      if (v28)
      {
LABEL_8:
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10004A26C;
        block[3] = &unk_1000C4F38;
        block[4] = self;
        v31 = v8;
        v32 = v9;
        v35 = v11;
        v33 = v10;
        v34 = v16;
        v26 = v16;
        dispatch_async(&_dispatch_main_q, block);

        goto LABEL_9;
      }

      v25 = +[UIApplication sharedApplication];
      v18 = [v25 key_window];

      [v18 addSubview:v16];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

+ (BOOL)shouldHideHeadline:(id)a3
{
  v3 = a3;
  v4 = +[FRAppDelegate sharedDelegate];
  v5 = [v4 cloudContext];
  v6 = [v5 readingList];
  v7 = [v6 shouldHideHeadline:v3];

  return v7;
}

- (void)_application:(id)a3 openURL:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if ([v9 nss_isNewsURL])
  {
    if ([v9 fr_isFeldsparOpenInNewsErrorURL])
    {
      v11 = +[UIApplication sharedApplication];
      v12 = [v11 key_window];

      v13 = [v12 rootViewController];
      v14 = [v13 presentedViewController];

      if (v14)
      {
        v15 = [v13 presentedViewController];

        v13 = v15;
      }

      FROpenInNewsAlert(v13);
    }

    else
    {
      v16 = [(FRAppDelegate *)self resolver];
      v12 = [v16 resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];

      v17 = [v10 objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
      v18 = [v12 analyticsReferralForURL:v9 sourceApplication:v17];

      v19 = [(FRAppDelegate *)self feldsparContext];
      v20 = [v19 appActivityMonitor];
      [v20 setAppSessionStartReferral:v18];

      if (v6)
      {
        v21 = [(FRAppDelegate *)self urlRouterManager];
        [v21 handleOpenURL:v9 options:v10 analyticsReferral:v18];
      }

      else
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10004A56C;
        v22[3] = &unk_1000C1970;
        v22[4] = self;
        v23 = v9;
        v24 = v10;
        v25 = v18;
        [UIView performWithoutAnimation:v22];
      }
    }
  }
}

- (void)sceneDidEnterBackground
{
  v3 = [(FRAppDelegate *)self feldsparContext];
  v7 = [v3 underlyingImageCache];

  [v7 pruneImagesOlderThan:86400.0];
  v4 = objc_alloc_init(FRInternalExtrasFakeNotificationSender);
  v5 = [(FRAppDelegate *)self notificationManager];
  v6 = +[UIApplication sharedApplication];
  [(FRInternalExtrasFakeNotificationSender *)v4 scheduleAnyFakeNotificationsFromInternalExtras:v5 whenAppEntersBackground:v6];
}

- (void)unregisterForDeviceLockNotifications
{
  if (notify_cancel(self->lockStateToken))
  {
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_100071058();
    }
  }
}

- (void)setupNotificationManagerWithFeldsparContext:(id *)a3
{
  v4 = *a3;
  v5 = objc_alloc_init(FCAMSPushHandler);
  [(FRAppDelegate *)self setAmsPushHandler:v5];

  v6 = [[FRNotificationManager alloc] initWithFeldsparContext:v4];
  [(FRAppDelegate *)self setNotificationManager:v6];

  v7 = [(FRAppDelegate *)self notificationManager];
  [v4 setNotificationManager:v7];
}

- (int)fcDigestModeFromScheduledDeliverySetting:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)application:(id)a3 didRegisterForRemoteNotificationsWithDeviceToken:(id)a4
{
  v6 = a4;
  v7 = [a4 bytes];
  v8 = [NSString stringWithFormat:@"%08X%08X%08X%08X%08X%08X%08X%08X", bswap32(*v7), bswap32(v7[1]), bswap32(v7[2]), bswap32(v7[3]), bswap32(v7[4]), bswap32(v7[5]), bswap32(v7[6]), bswap32(v7[7])];
  v9 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully registered for remote notifications with deviceToken: %@", buf, 0xCu);
  }

  objc_opt_class();
  v10 = [(FRAppDelegate *)self feldsparContext];
  v11 = FCDynamicCast();

  v12 = +[UNUserNotificationCenter currentNotificationCenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004AB00;
  v15[3] = &unk_1000C4FE8;
  v15[4] = self;
  v16 = v11;
  v17 = v8;
  v13 = v8;
  v14 = v11;
  [v12 getNotificationSettingsWithCompletionHandler:v15];
}

- (void)application:(id)a3 didFailToRegisterForRemoteNotificationsWithError:(id)a4
{
  v5 = a4;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100071098();
  }

  objc_opt_class();
  v6 = [(FRAppDelegate *)self feldsparContext];
  v7 = FCDynamicCast();

  v8 = +[UNUserNotificationCenter currentNotificationCenter];
  v9 = [v8 notificationSettings];
  v10 = -[FRAppDelegate fcDigestModeFromScheduledDeliverySetting:](self, "fcDigestModeFromScheduledDeliverySetting:", [v9 scheduledDeliverySetting]);
  v11 = [v7 cloudContext];
  v12 = [v11 notificationController];
  [v12 registerDeviceToken:0 deviceDigestMode:v10];
}

- (void)application:(id)a3 didReceiveRemoteNotification:(id)a4 fetchCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FRAppDelegate *)self bridgedAppDelegate];
  [v11 application:v10 didReceiveRemoteNotification:v9 fetchCompletionHandler:v8];
}

- (id)gizmoSyncManager:(id)a3 fetchOperationForArticleIDs:(id)a4
{
  v5 = a4;
  v6 = [FCArticleHeadlinesFetchOperation alloc];
  v7 = [(FRAppDelegate *)self feldsparContext];
  v8 = [v7 cloudContext];
  v9 = [v5 copy];

  v10 = [v6 initWithContext:v8 articleIDs:v9 ignoreCacheForArticleIDs:&__NSArray0__struct];

  return v10;
}

- (void)application:(id)a3 performFetchWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "app was awoken for fetching via application:performFetchWithCompletionHandler:", buf, 2u);
  }

  v9 = [(FRAppDelegate *)self offlineModeMonitor];
  v10 = [v9 isCloudKitReachable];

  if (v10)
  {
    if ([(FRAppDelegate *)self safeIsAppRunningInBackground])
    {
      +[FCTaskScheduler enableBackgroundDownloadsInSpiteOfHighPriorityTasks];
      v11 = dispatch_group_create();
      v12 = +[NSMutableSet set];
      v13 = [(FRAppDelegate *)self bridgedAppDelegate];

      if (v13)
      {
        v14 = FRBackgroundFetchLog;
        if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "will run bridged backround fetch", buf, 2u);
        }

        dispatch_group_enter(v11);
        v15 = [(FRAppDelegate *)self bridgedAppDelegate];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10004B2F8;
        v26[3] = &unk_1000C5010;
        v27 = v12;
        v28 = v11;
        [v15 application:v6 performFetchWithCompletionHandler:v26];
      }

      v16 = [(FRAppDelegate *)self backgroundFetchManager];

      if (v16)
      {
        v17 = FRBackgroundFetchLog;
        if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "will run legacy backround fetch", buf, 2u);
        }

        dispatch_group_enter(v11);
        v18 = [(FRAppDelegate *)self backgroundFetchManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10004B3B0;
        v23[3] = &unk_1000C5038;
        v24 = v12;
        v25 = v11;
        [v18 peformBackgroundFetchWithReason:0 timeout:v23 completionHandler:25.0];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10004B468;
      v20[3] = &unk_1000C1E48;
      v21 = v12;
      v22 = v7;
      v19 = v12;
      dispatch_group_notify(v11, &_dispatch_main_q, v20);
    }

    else
    {
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_10004B2E4;
      v32 = &unk_1000C3098;
      v33 = v7;
      v33[2](v33, 1);
      v11 = v33;
    }
  }

  else
  {
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_10004B2D0;
    v37 = &unk_1000C3098;
    v38 = v7;
    v38[2](v38, 2);
    v11 = v38;
  }
}

- (void)_updateBackgroundFetchSettingsWithAppConfiguration:(id)a3
{
  v9 = [a3 prefetchConfig];
  if ([v9 isBackgroundFetchEnabled])
  {
    [v9 minimumBackgroundFetchInterval];
    v5 = v4;
    v6 = [(FRAppDelegate *)self backgroundFetchScheduler];
    if (v5 <= 0.0)
    {
      v7 = UIApplicationBackgroundFetchIntervalMinimum;
    }

    else
    {
      [v9 minimumBackgroundFetchInterval];
    }

    v8 = v6;
  }

  else
  {
    v8 = [(FRAppDelegate *)self backgroundFetchScheduler];
    v6 = v8;
    v7 = UIApplicationBackgroundFetchIntervalNever;
  }

  [v8 setMinimumBackgroundFetchInterval:v7];
}

- (BOOL)safeIsAppRunningInBackground
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];

  if (+[NSThread isMainThread])
  {
    v5 = [v4 windowScene];
    if ([v5 activationState] == 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(FRAppDelegate *)self isDeviceLocked];
    }
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B6F8;
    block[3] = &unk_1000C5060;
    v11 = &v12;
    v9 = v4;
    v10 = self;
    dispatch_sync(&_dispatch_main_q, block);
    v6 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

@end