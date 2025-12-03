@interface FRAppDelegate
+ (BOOL)shouldHideHeadline:(id)headline;
+ (id)sharedDelegate;
+ (id)stateRestorationURL;
+ (void)registerDefaults;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)safeIsAppRunningInBackground;
- (FRAppDelegate)init;
- (NSArray)tfAssemblies;
- (NSArray)tfBundleAssemblies;
- (TFResolver)resolver;
- (double)_timeSinceLastActivation;
- (id)_extractWidgetEngagementFromReferralURL:(id)l;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)gizmoSyncManager:(id)manager fetchOperationForArticleIDs:(id)ds;
- (id)setupAnalyticsReferralWithOptions:(id)options;
- (id)setupDestructiveDataAction;
- (int)fcDigestModeFromScheduledDeliverySetting:(int64_t)setting;
- (void)_application:(id)_application openURL:(id)l options:(id)options animated:(BOOL)animated;
- (void)_configureBackgroundFetch;
- (void)_didCommitFirstFrame;
- (void)_didResumeLowPriorityTasks;
- (void)_updateBackgroundFetchSettingsWithAppConfiguration:(id)configuration;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)application:(id)application didSendEvent:(id)event;
- (void)application:(id)application handleIntent:(id)intent completionHandler:(id)handler;
- (void)application:(id)application performFetchWithCompletionHandler:(id)handler;
- (void)buildMenuWithBuilder:(id)builder;
- (void)clearOldCacheItemsWithFeldsparContext:(id)context;
- (void)dealloc;
- (void)hideAlert:(id)alert;
- (void)localDraftsDeviceOnPreview:(id)preview articleIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier;
- (void)prepareAppCacheSnapShot;
- (void)registerForDeviceLockNotifications;
- (void)resolveAppSingletons;
- (void)sceneDidBecomeActive;
- (void)sceneDidEnterBackground;
- (void)sceneWillEnterForeground;
- (void)scheduleTasksWithOptions:(id)options;
- (void)setRunningPPTWithApplication:(id)application;
- (void)setupAnalyticsControllerWithFeldsparContext:(id *)context versionHelpers:(id)helpers referral:(id)referral;
- (void)setupCloudContextWithAppActivityMonitor:(id)monitor dataActionProvider:(id)provider versionHelpers:(id)helpers configurationManager:(id)manager networkBehaviorMonitor:(id)behaviorMonitor networkReachability:(id)reachability;
- (void)setupCloudContextWithFavoritesPersonalizer:(id)personalizer state:(int64_t)state launchOptions:(id)options versionHelpers:(id)helpers referral:(id)referral;
- (void)setupLanguages;
- (void)setupNotificationManagerWithFeldsparContext:(id *)context;
- (void)setupUserDefaultsForPPT;
- (void)showAlertWithPin:(id)pin pin:(id)a4;
- (void)showAppUnsupportedAlert;
- (void)unregisterForDeviceLockNotifications;
- (void)validateCommand:(id)command;
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
  firstObject = [v4 firstObject];

  v6 = @"en-US";
  if (firstObject)
  {
    v6 = firstObject;
  }

  v7 = v6;
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = firstObject;
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
  selfCopy = self;
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10004A6E0;
  handler[3] = &unk_1000C4FC0;
  objc_copyWeak(&v5, &location);
  handler[4] = selfCopy;
  LODWORD(selfCopy) = notify_register_dispatch("com.apple.springboard.lockstate", &selfCopy->lockStateToken, &_dispatch_main_q, handler);

  if (selfCopy && os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
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
  isRunningPPT = [v2 isRunningPPT];

  v4 = +[FRPPTContext sharedContext];
  [v4 d_logState];

  if (isRunningPPT)
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
  selfCopy = self;
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  appConfigurationManager = [cloudContext appConfigurationManager];
  v11 = [v7 initWithNewsAppConfigurationManager:appConfigurationManager];
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
    feldsparContext2 = [(FRAppDelegate *)selfCopy feldsparContext];
    v18 = [v16 initWithContext:feldsparContext2];

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
  key_window = [v3 key_window];

  v4 = [FRCoreAssembly alloc];
  cloudContext = [(FRAppDelegate *)self cloudContext];
  cloudContext2 = [(FRAppDelegate *)self cloudContext];
  configurationManager = [cloudContext2 configurationManager];
  cloudContext3 = [(FRAppDelegate *)self cloudContext];
  appActivityMonitor = [cloudContext3 appActivityMonitor];
  networkBehaviorMonitor = [(FRAppDelegate *)self networkBehaviorMonitor];
  offlineModeMonitor = [(FRAppDelegate *)self offlineModeMonitor];
  v25 = [(FRCoreAssembly *)v4 initWithCloudContext:cloudContext configurationManager:configurationManager appActivityMonitor:appActivityMonitor networkBehaviorMonitor:networkBehaviorMonitor offlineModeMonitor:offlineModeMonitor];
  v33[0] = v25;
  v24 = objc_alloc_init(FRAnalyticsAssembly);
  v33[1] = v24;
  v5 = [FRFeldsparContextAssembly alloc];
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  privateDataUpdateCoordinator = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  v21 = [(FRFeldsparContextAssembly *)v5 initWithContext:feldsparContext privateDataUpdateCoordinator:privateDataUpdateCoordinator];
  v33[2] = v21;
  v6 = objc_alloc_init(FRFeedSubscriptionAssembly);
  v33[3] = v6;
  v7 = [FREditorialAssembly alloc];
  feldsparContext2 = [(FRAppDelegate *)self feldsparContext];
  dataProviderFactory = [(FRAppDelegate *)self dataProviderFactory];
  v10 = [(FREditorialAssembly *)v7 initWithFeldsparContext:feldsparContext2 dataProviderFactory:dataProviderFactory];
  v33[4] = v10;
  v11 = objc_alloc_init(FRHeadlineRendererAssembly);
  v33[5] = v11;
  v12 = [FRRoutingAssembly alloc];
  feldsparContext3 = [(FRAppDelegate *)self feldsparContext];
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  v15 = [(FRRoutingAssembly *)v12 initWithFeldsparContext:feldsparContext3 bridgedAppDelegate:bridgedAppDelegate window:key_window];
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
  selfCopy = self;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100032E10;
  v43[3] = &unk_1000C3A20;
  v43[4] = selfCopy;
  cloudContext = [(FRAppDelegate *)selfCopy cloudContext];
  [cloudContext setOfflineArticleManagerProvider:v43];

  resolver = [(FRAppDelegate *)selfCopy resolver];
  v5 = [resolver resolveProtocol:&OBJC_PROTOCOL___FCLocalRegionManager];
  cloudContext2 = [(FRAppDelegate *)selfCopy cloudContext];
  [cloudContext2 setLocalRegionProvider:v5];

  resolver2 = [(FRAppDelegate *)selfCopy resolver];
  v8 = [resolver2 resolveProtocol:&OBJC_PROTOCOL___FCLocalChannelsProvider];
  cloudContext3 = [(FRAppDelegate *)selfCopy cloudContext];
  [cloudContext3 setLocalChannelsProvider:v8];

  resolver3 = [(FRAppDelegate *)selfCopy resolver];
  v11 = [resolver3 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)selfCopy setTodayAgent:v11];

  resolver4 = [(FRAppDelegate *)selfCopy resolver];
  v13 = [resolver4 resolveClass:objc_opt_class()];
  [(FRAppDelegate *)selfCopy setDiagnosticFileCollectionCoordinator:v13];

  feldsparContext = [(FRAppDelegate *)selfCopy feldsparContext];
  resolver5 = [(FRAppDelegate *)selfCopy resolver];
  v16 = [resolver5 resolveProtocol:&OBJC_PROTOCOL___TSSharedImageCacheType];
  [feldsparContext setUnderlyingImageCache:v16];

  resolver6 = [(FRAppDelegate *)selfCopy resolver];
  v18 = [resolver6 resolveClass:objc_opt_class()];
  [feldsparContext setArticlePrefetchManager:v18];

  resolver7 = [(FRAppDelegate *)selfCopy resolver];
  v20 = [resolver7 resolveProtocol:&OBJC_PROTOCOL___AAViewingSessionManagerType name:@"Issue"];
  [feldsparContext setIssueViewingSessionManager:v20];

  resolver8 = [(FRAppDelegate *)selfCopy resolver];
  v22 = [resolver8 resolveProtocol:&OBJC_PROTOCOL___FRToCEditorialManager];

  [v22 refreshEditorialItems];
  resolver9 = [(FRAppDelegate *)selfCopy resolver];
  v24 = [resolver9 resolveProtocol:&OBJC_PROTOCOL___TSLocationDetectionManagerType];
  feldsparContext2 = [(FRAppDelegate *)selfCopy feldsparContext];
  favoritesPersonalizer = [feldsparContext2 favoritesPersonalizer];
  [favoritesPersonalizer setLocationManager:v24];

  [(FRAppDelegate *)selfCopy setFeldsparContext:feldsparContext];
  [(FRAppDelegate *)selfCopy clearOldCacheItemsWithFeldsparContext:feldsparContext];
  if (+[FRMacros iPhone])
  {
    v27 = [FRGizmoSyncManager alloc];
    cloudContext4 = [feldsparContext cloudContext];
    appConfigurationManager = [cloudContext4 appConfigurationManager];
    readingList = [feldsparContext readingList];
    readingHistory = [feldsparContext readingHistory];
    v32 = [(FRGizmoSyncManager *)v27 initWithAppConfigManager:appConfigurationManager readingList:readingList readingHistory:readingHistory];

    [(FRGizmoSyncManager *)v32 setDelegate:selfCopy];
    [feldsparContext setGizmoSyncManager:v32];
  }

  resolver10 = [(FRAppDelegate *)selfCopy resolver];
  v34 = [resolver10 resolveProtocol:&OBJC_PROTOCOL___FRURLRouterManagerType];
  [(FRAppDelegate *)selfCopy setUrlRouterManager:v34];

  if (NFInternalBuild())
  {
    v35 = NewsCoreUserDefaults();
    v36 = [v35 BOOLForKey:@"news_articles.drafts.allow_remote_preview"];

    if (v36)
    {
      resolver11 = [(FRAppDelegate *)selfCopy resolver];
      v38 = [resolver11 resolveProtocol:&OBJC_PROTOCOL___TSLocalDraftsDeviceManagerType];
      [(FRAppDelegate *)selfCopy setDeviceManager:v38];

      deviceManager = [(FRAppDelegate *)selfCopy deviceManager];
      [deviceManager setDelegate:selfCopy];

      v40 = [UIAlertController alertControllerWithTitle:@"News Preview - Device PIN" message:0 preferredStyle:1];
      [(FRAppDelegate *)selfCopy setPinAlertController:v40];

      pinAlertController = [(FRAppDelegate *)selfCopy pinAlertController];
      v42 = [UIAlertAction actionWithTitle:@"Done" style:1 handler:0];
      [pinAlertController addAction:v42];
    }
  }

  [(FRAppDelegate *)selfCopy _configureBackgroundFetch];
}

- (void)_configureBackgroundFetch
{
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];

  v5 = +[UIApplication sharedApplication];
  v6 = [[TSApplicationBackgroundFetchScheduler alloc] initWithApplication:v5];
  [v6 prepareForUseWithApplicationDelegate:self];
  [(FRAppDelegate *)self setBackgroundFetchScheduler:v6];
  resolver = [(FRAppDelegate *)self resolver];
  v8 = [resolver resolveClass:objc_opt_class()];
  [(FRAppDelegate *)self setBackgroundFetchManager:v8];

  backgroundFetchManager = [(FRAppDelegate *)self backgroundFetchManager];

  if (!backgroundFetchManager && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10007110C();
  }

  appConfigurationManager = [cloudContext appConfigurationManager];
  [appConfigurationManager addAppConfigObserver:self];
  possiblyUnfetchedAppConfiguration = [appConfigurationManager possiblyUnfetchedAppConfiguration];
  [(FRAppDelegate *)self _updateBackgroundFetchSettingsWithAppConfiguration:possiblyUnfetchedAppConfiguration];
}

- (void)sceneWillEnterForeground
{
  resolver = [(FRAppDelegate *)self resolver];
  v4 = [resolver resolveProtocol:&OBJC_PROTOCOL___AAViewingSessionManagerType name:@"Issue"];

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
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  userInfo = [cloudContext userInfo];
  [userInfo maybeUpdateOnboardingVersion:&stru_1000C4EA8];

  v7 = dispatch_get_global_queue(2, 0);
  dispatch_async(v7, &stru_1000C4EC8);

  [(FRAppDelegate *)self _disableLoggingForUnsupportedControls];
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  [bridgedAppDelegate didCommitFirstFrame];

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
    privateDataUpdateCoordinator = [(FRAppDelegate *)self privateDataUpdateCoordinator];
    [privateDataUpdateCoordinator markAllPrivateDataControllersAsNeedingUpdate];
  }

  privateDataUpdateCoordinator2 = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  [privateDataUpdateCoordinator2 updatePrivateDataControllersWithCompletion:&stru_1000C4F58];

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"simulate_quick_subscription_refresh"];

  if (v12)
  {
    cloudContext = [(FRAppDelegate *)self cloudContext];
    subscriptionController = [cloudContext subscriptionController];
    [subscriptionController performSelector:"refreshAndNotifyAboutSubscribedTags" withObject:0 afterDelay:120.0];
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
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  cloudContext2 = [feldsparContext cloudContext];
  userInfo = [cloudContext2 userInfo];
  [userInfo setDateLastOpened:v15];

  v19 = +[NSNotificationCenter defaultCenter];
  v20 = +[NSOperationQueue mainQueue];
  v21 = [v19 addObserverForName:@"Unregister Crash Callbacks" object:0 queue:v20 usingBlock:&stru_1000C4F98];

  v22 = +[NSNotificationQueue defaultQueue];
  v23 = [NSNotification notificationWithName:@"Unregister Crash Callbacks" object:0];
  v32 = NSRunLoopCommonModes;
  v24 = [NSArray arrayWithObjects:&v32 count:1];
  [v22 enqueueNotification:v23 postingStyle:1 coalesceMask:3 forModes:v24];

  feldsparContext2 = [(FRAppDelegate *)self feldsparContext];
  gizmoSyncManager = [feldsparContext2 gizmoSyncManager];
  [gizmoSyncManager syncWithGizmo];

  resolver = [(FRAppDelegate *)self resolver];
  v28 = [resolver resolveClass:objc_opt_class()];

  [v28 updateUnderlyingMappingWithQualityOfService:-1 completion:0];
  resolver2 = [(FRAppDelegate *)self resolver];
  v30 = [resolver2 resolveClass:objc_opt_class()];
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

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  applicationCopy = application;
  v8 = +[UIApplication sharedApplication];
  key_window = [v8 key_window];

  applicationUpdateNotifier = [(FRAppDelegate *)self applicationUpdateNotifier];
  rootViewController = [key_window rootViewController];
  [applicationUpdateNotifier setViewController:rootViewController];

  v12 = +[FCAppleAccount sharedAccount];
  endpointConnectionClientID = [v12 endpointConnectionClientID];

  v14 = +[NSUserDefaults standardUserDefaults];
  [v14 setBool:1 forKey:@"hasLaunchedBefore"];

  [WKBrowsingContextController registerSchemeForCustomProtocol:FCExcerptURLScheme];
  [(FRAppDelegate *)self performSelector:"_didCommitFirstFrame" withObject:0 afterDelay:0.0];
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  LOBYTE(v14) = [bridgedAppDelegate application:applicationCopy didFinishLaunchingWithOptions:optionsCopy];

  return v14;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  [(FRAppDelegate *)self setupLanguages];
  [(FRAppDelegate *)self scheduleTasksWithOptions:optionsCopy];
  v127 = applicationCopy;
  [(FRAppDelegate *)self setRunningPPTWithApplication:applicationCopy];
  setupDestructiveDataAction = [(FRAppDelegate *)self setupDestructiveDataAction];
  [(FRAppDelegate *)self registerForDeviceLockNotifications];
  v126 = optionsCopy;
  v124 = [(FRAppDelegate *)self setupAnalyticsReferralWithOptions:optionsCopy];
  [(FRAppDelegate *)self prepareAppCacheSnapShot];
  v8 = +[FRAppDelegate stateRestorationURL];
  path = [v8 path];

  v10 = +[NSFileManager defaultManager];
  v121 = path;
  LOBYTE(path) = [v10 fileExistsAtPath:path];

  if ((path & 1) == 0)
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
  path2 = [v15 path];
  v123 = [v14 initWithCacheDirectory:path2];

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
  [(FRAppDelegate *)self setupCloudContextWithAppActivityMonitor:v18 dataActionProvider:setupDestructiveDataAction versionHelpers:v128 configurationManager:v28 networkBehaviorMonitor:v17 networkReachability:v29];
  v30 = [FRFavoritesPersonalizer alloc];
  cloudContext = [(FRAppDelegate *)self cloudContext];
  v122 = [(FRFavoritesPersonalizer *)v30 initWithCloudContext:cloudContext];

  cloudContext2 = [(FRAppDelegate *)self cloudContext];
  subscriptionList = [cloudContext2 subscriptionList];

  v111 = v29;
  v33 = [[FRPrivateDataUpdateCoordinator alloc] initWithNetworkReachability:v29];
  [(FRAppDelegate *)self setPrivateDataUpdateCoordinator:v33];

  cloudContext3 = [(FRAppDelegate *)self cloudContext];
  subscriptionList2 = [cloudContext3 subscriptionList];
  v129[0] = subscriptionList2;
  cloudContext4 = [(FRAppDelegate *)self cloudContext];
  readingList = [cloudContext4 readingList];
  v129[1] = readingList;
  cloudContext5 = [(FRAppDelegate *)self cloudContext];
  userInfo = [cloudContext5 userInfo];
  v129[2] = userInfo;
  cloudContext6 = [(FRAppDelegate *)self cloudContext];
  audioPlaylist = [cloudContext6 audioPlaylist];
  v129[3] = audioPlaylist;
  cloudContext7 = [(FRAppDelegate *)self cloudContext];
  privateChannelMembershipController = [cloudContext7 privateChannelMembershipController];
  v129[4] = privateChannelMembershipController;
  cloudContext8 = [(FRAppDelegate *)self cloudContext];
  shortcutList = [cloudContext8 shortcutList];
  v129[5] = shortcutList;
  cloudContext9 = [(FRAppDelegate *)self cloudContext];
  shortcutCategoryList = [cloudContext9 shortcutCategoryList];
  v129[6] = shortcutCategoryList;
  cloudContext10 = [(FRAppDelegate *)self cloudContext];
  personalizationData = [cloudContext10 personalizationData];
  v129[7] = personalizationData;
  cloudContext11 = [(FRAppDelegate *)self cloudContext];
  userEventHistory = [cloudContext11 userEventHistory];
  v129[8] = userEventHistory;
  cloudContext12 = [(FRAppDelegate *)self cloudContext];
  readingHistory = [cloudContext12 readingHistory];
  v129[9] = readingHistory;
  cloudContext13 = [(FRAppDelegate *)self cloudContext];
  issueReadingHistory = [cloudContext13 issueReadingHistory];
  v129[10] = issueReadingHistory;
  cloudContext14 = [(FRAppDelegate *)self cloudContext];
  puzzleHistory = [cloudContext14 puzzleHistory];
  v129[11] = puzzleHistory;
  cloudContext15 = [(FRAppDelegate *)self cloudContext];
  recipeUserEventHistory = [cloudContext15 recipeUserEventHistory];
  v129[12] = recipeUserEventHistory;
  v41 = [NSArray arrayWithObjects:v129 count:13];
  privateDataUpdateCoordinator = [(FRAppDelegate *)self privateDataUpdateCoordinator];
  [privateDataUpdateCoordinator setPrivateDataControllers:v41];

  v43 = [FRFlintEmbedConfigurationManager alloc];
  cloudContext16 = [(FRAppDelegate *)self cloudContext];
  appConfigurationManager = [cloudContext16 appConfigurationManager];
  cloudContext17 = [(FRAppDelegate *)self cloudContext];
  flintResourceManager = [cloudContext17 flintResourceManager];
  v48 = [(FRFlintEmbedConfigurationManager *)v43 initWithConfigurationManager:appConfigurationManager resourceManager:flintResourceManager];
  [(FRAppDelegate *)self setEmbedConfigurationManager:v48];

  v49 = [FRFlintDataProviderFactory alloc];
  cloudContext18 = [(FRAppDelegate *)self cloudContext];
  cloudContext19 = [(FRAppDelegate *)self cloudContext];
  flintResourceManager2 = [cloudContext19 flintResourceManager];
  embedConfigurationManager = [(FRAppDelegate *)self embedConfigurationManager];
  v54 = [(FRFlintDataProviderFactory *)v49 initWithCloudContext:cloudContext18 resourceManager:flintResourceManager2 embedConfigurationManager:embedConfigurationManager];

  [(FRAppDelegate *)self setDataProviderFactory:v54];
  -[FRAppDelegate setupCloudContextWithFavoritesPersonalizer:state:launchOptions:versionHelpers:referral:](self, "setupCloudContextWithFavoritesPersonalizer:state:launchOptions:versionHelpers:referral:", v122, [v127 applicationState], v126, v128, v124);
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  createBridgedAppResolver = [bridgedAppDelegate createBridgedAppResolver];
  [(FRAppDelegate *)self setResolver:createBridgedAppResolver];

  resolver = [(FRAppDelegate *)self resolver];
  v58 = [resolver resolveProtocol:&OBJC_PROTOCOL___FCReadonlyAggregateStoreProviderType];

  [(FRFavoritesPersonalizer *)v122 setAggregateStoreProvider:v58];
  resolver2 = [(FRAppDelegate *)self resolver];
  v60 = [resolver2 resolveProtocol:&OBJC_PROTOCOL___FCTagRanking];

  [(FRFavoritesPersonalizer *)v122 setTagRanker:v60];
  resolver3 = [(FRAppDelegate *)self resolver];
  v62 = [resolver3 resolveProtocol:&OBJC_PROTOCOL___FCFeedPersonalizing];
  cloudContext20 = [(FRAppDelegate *)self cloudContext];
  [cloudContext20 setFeedPersonalizer:v62];

  resolver4 = [(FRAppDelegate *)self resolver];
  v65 = [resolver4 resolveProtocol:&OBJC_PROTOCOL___FCUserVectorAggregateVectorProvider];
  cloudContext21 = [(FRAppDelegate *)self cloudContext];
  [cloudContext21 setUserVectorAggregateVectorProvider:v65];

  resolver5 = [(FRAppDelegate *)self resolver];
  v68 = +[FCItemExposureRegistryNames article];
  v69 = [resolver5 resolveProtocol:&OBJC_PROTOCOL___FCItemExposureRegistryType name:v68];
  cloudContext22 = [(FRAppDelegate *)self cloudContext];
  readingHistory2 = [cloudContext22 readingHistory];
  [readingHistory2 setArticleExposureRegistry:v69];

  v72 = [FRSubscribedTagRanker alloc];
  resolver6 = [(FRAppDelegate *)self resolver];
  v74 = [resolver6 resolveProtocol:&OBJC_PROTOCOL___FCFeedPersonalizing];
  v75 = [(FRSubscribedTagRanker *)v72 initWithTagRanker:v74];
  [subscriptionList setSubscribedTagRanker:v75];

  [subscriptionList assignOrderToTagSubscriptionsIfNeeded];
  [(FRAppDelegate *)self resolveAppSingletons];
  resolver7 = [(FRAppDelegate *)self resolver];
  v77 = [resolver7 resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];

  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  appActivityMonitor = [feldsparContext appActivityMonitor];
  [appActivityMonitor setAnalyticsReferralFactory:v77];

  feldsparContext2 = [(FRAppDelegate *)self feldsparContext];
  appActivityMonitor2 = [feldsparContext2 appActivityMonitor];
  [appActivityMonitor2 applicationWillFinishLaunching];

  [(FRAppDelegate *)self prewarmAd];
  if (NFInternalBuild())
  {
    v82 = [FRCrashLogMessageManager alloc];
    feldsparContext3 = [(FRAppDelegate *)self feldsparContext];
    cloudContext23 = [feldsparContext3 cloudContext];
    appConfigurationManager2 = [cloudContext23 appConfigurationManager];
    v86 = [(FRCrashLogMessageManager *)v82 initWithAppConfigurationManager:appConfigurationManager2];
    [(FRAppDelegate *)self setCrashLogMessageManager:v86];

    crashLogMessageManager = [(FRAppDelegate *)self crashLogMessageManager];
    [crashLogMessageManager updateCrashLogMessageWithCurrentData];
  }

  bridgedAppDelegate2 = [(FRAppDelegate *)self bridgedAppDelegate];
  v89 = [bridgedAppDelegate2 application:v127 willFinishLaunchingWithOptions:v126];

  return v89;
}

- (void)scheduleTasksWithOptions:(id)options
{
  optionsCopy = options;
  +[FCTaskScheduler pushHighPriorityTaskInFlight];
  +[FCTaskScheduler pushHighPriorityTaskInFlight];
  v4 = [optionsCopy objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];

  if (v4)
  {

    +[FCTaskScheduler disableOptionalPrefetching];
  }
}

- (void)setRunningPPTWithApplication:(id)application
{
  applicationCopy = application;
  v4 = +[FRPPTContext sharedContext];
  [v4 d_logState];

  v5 = +[FRPPTContext sharedContext];
  launchedToTest = [applicationCopy launchedToTest];

  [v5 setRunningPPT:launchedToTest];
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

- (void)clearOldCacheItemsWithFeldsparContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000330EC;
  v4[3] = &unk_1000C18D0;
  contextCopy = context;
  v3 = contextCopy;
  [FCTaskScheduler scheduleLowPriorityBlock:v4];
}

- (void)setupCloudContextWithAppActivityMonitor:(id)monitor dataActionProvider:(id)provider versionHelpers:(id)helpers configurationManager:(id)manager networkBehaviorMonitor:(id)behaviorMonitor networkReachability:(id)reachability
{
  monitorCopy = monitor;
  reachabilityCopy = reachability;
  behaviorMonitorCopy = behaviorMonitor;
  managerCopy = manager;
  helpersCopy = helpers;
  providerCopy = provider;
  v15 = FRURLForNewsAppCachesDirectory();
  v16 = +[FCContextConfiguration defaultConfiguration];
  v52 = +[FCFeldsparIDProvider sharedInstance];
  v17 = [FCCloudContext alloc];
  v18 = FRURLForNewsAppDocumentsDirectory();
  LOBYTE(helpers) = +[FRMacros iPad];
  v19 = +[UIApplication sharedApplication];
  v20 = +[FCPrivateDataSyncAvailability defaultAvailability];
  v21 = +[FRPPTContext sharedContext];
  LOBYTE(v48) = helpers;
  v53 = v15;
  v22 = [v17 initWithConfiguration:v16 configurationManager:managerCopy contentHostDirectory:v15 privateDataHostDirectory:v18 privateDataActionProvider:providerCopy networkBehaviorMonitor:behaviorMonitorCopy networkReachability:reachabilityCopy appActivityMonitor:monitorCopy desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:6 deviceIsiPad:v48 backgroundTaskable:v19 privateDataSyncAvailability:v20 pptContext:v21 options:14];

  if (FeldsparInternalExtrasEnabled())
  {
    v23 = +[NSBundle fr_feldsparInternalExtrasBundle];
    [v23 load];

    v24 = objc_alloc(NSClassFromString(@"FREntitlementsOverrideProvider"));
    configurationManager = [v22 configurationManager];
    v26 = [v24 initWithConfigurationManager:configurationManager];

    v27 = FCProtocolCast();
    purchaseController = [v22 purchaseController];
    [purchaseController setEntitlementsOverrideProvider:v27];

    bundleSubscriptionManager = [v22 bundleSubscriptionManager];
    [bundleSubscriptionManager setEntitlementsOverrideProvider:v27];

    v30 = objc_alloc_init(NSClassFromString(@"FRPurchaseFlowOverrideProvider"));
    v31 = FCProtocolCast();
    purchaseManager = [v22 purchaseManager];
    [purchaseManager setPurchaseFlowOverrideProvider:v31];
  }

  [v22 prewarmStores];
  [TSTodayPrewarmManager prewarmTodayWithContext:v22];
  tagController = [v22 tagController];
  [tagController setShouldPrefetchGlobalTags:1];

  userInfo = [v22 userInfo];
  [v52 registerUserInfo:userInfo];

  FRSetupLogging();
  v35 = [[FRApplicationUpdateNotifier alloc] initWithVersionHelpers:helpersCopy appActivityMonitor:monitorCopy];

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
    userInfo2 = [v22 userInfo];
    [userInfo2 setOnboardingVersionNumber:v46];
  }

  [(FRAppDelegate *)self setCloudContext:v22];
}

- (void)setupCloudContextWithFavoritesPersonalizer:(id)personalizer state:(int64_t)state launchOptions:(id)options versionHelpers:(id)helpers referral:(id)referral
{
  referralCopy = referral;
  helpersCopy = helpers;
  personalizerCopy = personalizer;
  v11 = objc_alloc_init(FRFeldsparContext);
  cloudContext = [(FRAppDelegate *)self cloudContext];
  [(FRFeldsparContext *)v11 setCloudContext:cloudContext];

  cloudContext2 = [(FRAppDelegate *)self cloudContext];
  readingHistory = [cloudContext2 readingHistory];
  [(FRFeldsparContext *)v11 setReadingHistory:readingHistory];

  cloudContext3 = [(FRAppDelegate *)self cloudContext];
  readingList = [cloudContext3 readingList];
  [(FRFeldsparContext *)v11 setReadingList:readingList];

  [(FRFeldsparContext *)v11 setFavoritesPersonalizer:personalizerCopy];
  v42 = v11;
  [(FRAppDelegate *)self setupNotificationManagerWithFeldsparContext:&v42];
  v37 = v42;

  v17 = [FRPresubscribeService alloc];
  cloudContext4 = [(FRAppDelegate *)self cloudContext];
  appConfigurationManager = [cloudContext4 appConfigurationManager];
  cloudContext5 = [(FRAppDelegate *)self cloudContext];
  tagController = [cloudContext5 tagController];
  cloudContext6 = [(FRAppDelegate *)self cloudContext];
  subscriptionController = [cloudContext6 subscriptionController];
  cloudContext7 = [(FRAppDelegate *)self cloudContext];
  purchaseController = [cloudContext7 purchaseController];
  notificationManager = [(FRAppDelegate *)self notificationManager];
  v25 = [(FRPresubscribeService *)v17 initWithAppConfigurationManager:appConfigurationManager tagController:tagController subscriptionController:subscriptionController purchaseController:purchaseController notificationManager:notificationManager];
  [(FRFeldsparContext *)v37 setPresubscribeService:v25];

  v26 = [FRArticleContentPool alloc];
  cloudContext8 = [(FRAppDelegate *)self cloudContext];
  dataProviderFactory = [(FRAppDelegate *)self dataProviderFactory];
  v29 = [(FRArticleContentPool *)v26 initWithCloudContext:cloudContext8 dataProviderFactory:dataProviderFactory];
  [(FRFeldsparContext *)v37 setArticleContentPool:v29];

  v30 = [FRSpotlightManager alloc];
  cloudContext9 = [(FRAppDelegate *)self cloudContext];
  v32 = [(FRSpotlightManager *)v30 initWithCloudContext:cloudContext9];
  [(FRFeldsparContext *)v37 setSpotlightManager:v32];

  v33 = objc_alloc_init(AppEntityAssociator);
  spotlightManager = [(FRFeldsparContext *)v37 spotlightManager];
  [spotlightManager setAssociator:v33];

  v41 = v37;
  [(FRAppDelegate *)self setupAnalyticsControllerWithFeldsparContext:&v41 versionHelpers:helpersCopy referral:referralCopy];

  v35 = v41;
  [(FRAppDelegate *)self setFeldsparContext:v35];
}

- (void)setupAnalyticsControllerWithFeldsparContext:(id *)context versionHelpers:(id)helpers referral:(id)referral
{
  v7 = *context;
  referralCopy = referral;
  v9 = [FRAnalyticsController alloc];
  cloudContext = [(FRAppDelegate *)self cloudContext];
  v18 = [(FRAnalyticsController *)v9 initWithCloudContext:cloudContext];

  [v7 setAnalyticsController:v18];
  v11 = +[UIApplication sharedApplication];
  key_window = [v11 key_window];

  v13 = [FRAppActivityMonitor alloc];
  cloudContext2 = [(FRAppDelegate *)self cloudContext];
  appActivityMonitor = [cloudContext2 appActivityMonitor];
  cloudContext3 = [(FRAppDelegate *)self cloudContext];
  v17 = [(FRAppActivityMonitor *)v13 initWithAnalyticsController:v18 appActivityMonitor:appActivityMonitor cloudContext:cloudContext3 window:key_window];

  [(FRAppActivityMonitor *)v17 addObserver:self];
  [v7 setAppActivityMonitor:v17];

  [(FRAppActivityMonitor *)v17 setAppSessionStartReferral:referralCopy];
  [(FRAppDelegate *)self setActivityMonitor:v17];
}

- (id)setupAnalyticsReferralWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKey:?];
  selfCopy = self;
  if ([v5 nss_isNewsURL])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:0 forKey:FCWhitetailOnboardingNeededKey];

    fr_campaignID = [v5 fr_campaignID];
    fr_campaignType = [v5 fr_campaignType];
    fr_creativeID = [v5 fr_creativeID];
    fr_widgetModeGroupID = [v5 fr_widgetModeGroupID];
    v10 = [(FRAppDelegate *)self _extractWidgetEngagementFromReferralURL:v5];
    if ([v5 fr_isFeldsparReferableURL])
    {
      absoluteString = [v5 absoluteString];
      v12 = 0;
      LOBYTE(v13) = 1;
    }

    else
    {
      absoluteString = 0;
      LOBYTE(v13) = 0;
      v12 = 0;
    }

    v15 = 4;
  }

  else
  {
    v13 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityDictionaryKey];

    if (v13)
    {
      v14 = [optionsCopy objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityDictionaryKey];
      fr_campaignID = NSSSafariSearchCampaignID;
      v12 = [v14 objectForKeyedSubscript:UIApplicationLaunchOptionsUserActivityTypeKey];

      absoluteString = 0;
      fr_widgetModeGroupID = 0;
      v10 = 0;
      v15 = 0;
      fr_creativeID = 0;
      fr_campaignType = 0;
      LOBYTE(v13) = 1;
    }

    else
    {
      absoluteString = 0;
      fr_widgetModeGroupID = 0;
      v10 = 0;
      v15 = 0;
      v12 = 0;
      fr_creativeID = 0;
      fr_campaignType = 0;
      fr_campaignID = 0;
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

  else if ([fr_campaignID isEqualToString:NSSSafariSearchCampaignID])
  {
    v15 = 8;
  }

  LOBYTE(v20) = v13;
  v16 = [[FRAnalyticsReferral alloc] initWithUserActivityType:v12 creativeID:fr_creativeID campaignID:fr_campaignID campaignType:fr_campaignType referringApplication:0 referringURL:absoluteString appOpenedByUserActivity:v20 widgetModeGroupID:fr_widgetModeGroupID widgetEngagement:v10 appSessionStartMethod:v15 appSessionStartNotificationType:0];
  v17 = [optionsCopy objectForKey:UIApplicationLaunchOptionsURLKey];
  v18 = v17;
  if (v17)
  {
    -[FRAppDelegate setInPreviewMode:](selfCopy, "setInPreviewMode:", [v17 fr_isPreviewURL]);
  }

  return v16;
}

- (id)_extractWidgetEngagementFromReferralURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E234();
  }

  if (([lCopy nss_isNewsURL] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E314();
  }

  fr_widgetEngagementFileURL = [lCopy fr_widgetEngagementFileURL];
  if (fr_widgetEngagementFileURL)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:fr_widgetEngagementFileURL];
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
  delegate = [v2 delegate];
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

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  testCopy = test;
  resolver = [(FRAppDelegate *)self resolver];
  v10 = [resolver resolveProtocol:&OBJC_PROTOCOL___SNTestRunner];

  LOBYTE(resolver) = [v10 runTest:testCopy options:optionsCopy];
  return resolver;
}

- (void)localDraftsDeviceOnPreview:(id)preview articleIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier
{
  identifier = [NSString stringWithFormat:@"applenews://preview/%@/%@", channelIdentifier, identifier];
  v7 = [NSURL URLWithString:identifier];

  [(FRAppDelegate *)self _application:self openURL:v7 options:&__NSDictionary0__struct animated:+[UIView areAnimationsEnabled]];
}

- (void)showAlertWithPin:(id)pin pin:(id)a4
{
  v5 = a4;
  v6 = +[UIApplication sharedApplication];
  key_window = [v6 key_window];

  v7 = [NSMutableAttributedString alloc];
  v8 = [@"\n" stringByAppendingString:v5];

  v9 = [v7 initWithString:v8];
  v10 = [UIFont fontWithName:@"Helvetica" size:24.0];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, 7}];

  [v9 addAttribute:NSKernAttributeName value:&off_1000CB618 range:{0, 7}];
  pinAlertController = [(FRAppDelegate *)self pinAlertController];
  [pinAlertController setValue:v9 forKey:@"attributedMessage"];

  rootViewController = [key_window rootViewController];
  pinAlertController2 = [(FRAppDelegate *)self pinAlertController];
  [rootViewController presentViewController:pinAlertController2 animated:1 completion:0];
}

- (void)hideAlert:(id)alert
{
  pinAlertController = [(FRAppDelegate *)self pinAlertController];
  [pinAlertController dismissViewControllerAnimated:1 completion:0];
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
  key_window = [v7 key_window];

  rootViewController = [key_window rootViewController];
  [rootViewController presentViewController:v3 animated:1 completion:0];
}

- (void)application:(id)application handleIntent:(id)intent completionHandler:(id)handler
{
  handlerCopy = handler;
  intentCopy = intent;
  applicationCopy = application;
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  [bridgedAppDelegate application:applicationCopy handleIntent:intentCopy completionHandler:handlerCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  v5 = [bridgedAppDelegate forwardingTargetForSelector:selector];

  return v5;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  [bridgedAppDelegate buildMenuWithBuilder:builderCopy];
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  [bridgedAppDelegate validateCommand:commandCopy];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  LOBYTE(action) = [bridgedAppDelegate canPerformAction:action withSender:senderCopy];

  return action;
}

- (void)_didResumeLowPriorityTasks
{
  resolver = [(FRAppDelegate *)self resolver];
  v4 = [resolver resolveProtocol:&OBJC_PROTOCOL___TSCacheFlushingManagerType];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100049E20;
  v16[3] = &unk_1000C30E8;
  v16[4] = self;
  [v4 addPreFlushTask:v16];
  resolver2 = [(FRAppDelegate *)self resolver];
  v6 = [resolver2 resolveProtocol:&OBJC_PROTOCOL___FRToCEditorialManager];

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
  todayAgent = [(FRAppDelegate *)self todayAgent];
  [todayAgent performSelector:"enable" withObject:0 afterDelay:1.0];
}

- (void)application:(id)application didSendEvent:(id)event
{
  eventCopy = event;
  keyboardInputMonitor = [(FRAppDelegate *)self keyboardInputMonitor];
  [keyboardInputMonitor handle:eventCopy];
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  applicationCopy = application;
  lCopy = l;
  optionsCopy = options;
  LODWORD(v11) = +[UIView areAnimationsEnabled];
  v12 = FRNavigationLog;
  if (os_log_type_enabled(FRNavigationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = lCopy;
    v38 = 1024;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ApplicationDelegate received URL to handle <%{public}@>, animated %d", buf, 0x12u);
  }

  LODWORD(v13) = [lCopy nss_isNewsURL];
  if (v13)
  {
    v14 = [UIView alloc];
    v15 = +[UIScreen mainScreen];
    [v15 bounds];
    v16 = [v14 initWithFrame:?];

    v17 = +[UIColor systemBackgroundColor];
    [v16 setBackgroundColor:v17];

    key_window = [optionsCopy valueForKey:NUURLWasOpenedFromNewsKey];
    if (([key_window isEqual:&__kCFBooleanTrue] & 1) == 0)
    {
      [optionsCopy valueForKey:UIApplicationOpenURLOptionsSourceApplicationKey];
      v11 = v29 = v11;
      v19 = +[NSBundle mainBundle];
      [v19 bundleIdentifier];
      v20 = v16;
      v21 = v13;
      v13 = optionsCopy;
      selfCopy = self;
      v24 = v23 = applicationCopy;
      v28 = [v11 isEqual:v24];

      applicationCopy = v23;
      self = selfCopy;
      optionsCopy = v13;
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
        v31 = applicationCopy;
        v32 = lCopy;
        v35 = v11;
        v33 = optionsCopy;
        v34 = v16;
        v26 = v16;
        dispatch_async(&_dispatch_main_q, block);

        goto LABEL_9;
      }

      v25 = +[UIApplication sharedApplication];
      key_window = [v25 key_window];

      [key_window addSubview:v16];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

+ (BOOL)shouldHideHeadline:(id)headline
{
  headlineCopy = headline;
  v4 = +[FRAppDelegate sharedDelegate];
  cloudContext = [v4 cloudContext];
  readingList = [cloudContext readingList];
  v7 = [readingList shouldHideHeadline:headlineCopy];

  return v7;
}

- (void)_application:(id)_application openURL:(id)l options:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  lCopy = l;
  optionsCopy = options;
  if ([lCopy nss_isNewsURL])
  {
    if ([lCopy fr_isFeldsparOpenInNewsErrorURL])
    {
      v11 = +[UIApplication sharedApplication];
      key_window = [v11 key_window];

      rootViewController = [key_window rootViewController];
      presentedViewController = [rootViewController presentedViewController];

      if (presentedViewController)
      {
        presentedViewController2 = [rootViewController presentedViewController];

        rootViewController = presentedViewController2;
      }

      FROpenInNewsAlert(rootViewController);
    }

    else
    {
      resolver = [(FRAppDelegate *)self resolver];
      key_window = [resolver resolveProtocol:&OBJC_PROTOCOL___FRURLAnalyticsReferralFactory];

      v17 = [optionsCopy objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
      v18 = [key_window analyticsReferralForURL:lCopy sourceApplication:v17];

      feldsparContext = [(FRAppDelegate *)self feldsparContext];
      appActivityMonitor = [feldsparContext appActivityMonitor];
      [appActivityMonitor setAppSessionStartReferral:v18];

      if (animatedCopy)
      {
        urlRouterManager = [(FRAppDelegate *)self urlRouterManager];
        [urlRouterManager handleOpenURL:lCopy options:optionsCopy analyticsReferral:v18];
      }

      else
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10004A56C;
        v22[3] = &unk_1000C1970;
        v22[4] = self;
        v23 = lCopy;
        v24 = optionsCopy;
        v25 = v18;
        [UIView performWithoutAnimation:v22];
      }
    }
  }
}

- (void)sceneDidEnterBackground
{
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  underlyingImageCache = [feldsparContext underlyingImageCache];

  [underlyingImageCache pruneImagesOlderThan:86400.0];
  v4 = objc_alloc_init(FRInternalExtrasFakeNotificationSender);
  notificationManager = [(FRAppDelegate *)self notificationManager];
  v6 = +[UIApplication sharedApplication];
  [(FRInternalExtrasFakeNotificationSender *)v4 scheduleAnyFakeNotificationsFromInternalExtras:notificationManager whenAppEntersBackground:v6];
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

- (void)setupNotificationManagerWithFeldsparContext:(id *)context
{
  v4 = *context;
  v5 = objc_alloc_init(FCAMSPushHandler);
  [(FRAppDelegate *)self setAmsPushHandler:v5];

  v6 = [[FRNotificationManager alloc] initWithFeldsparContext:v4];
  [(FRAppDelegate *)self setNotificationManager:v6];

  notificationManager = [(FRAppDelegate *)self notificationManager];
  [v4 setNotificationManager:notificationManager];
}

- (int)fcDigestModeFromScheduledDeliverySetting:(int64_t)setting
{
  if (setting == 2)
  {
    return 2;
  }

  else
  {
    return setting == 1;
  }
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  bytes = [token bytes];
  v8 = [NSString stringWithFormat:@"%08X%08X%08X%08X%08X%08X%08X%08X", bswap32(*bytes), bswap32(bytes[1]), bswap32(bytes[2]), bswap32(bytes[3]), bswap32(bytes[4]), bswap32(bytes[5]), bswap32(bytes[6]), bswap32(bytes[7])];
  v9 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Successfully registered for remote notifications with deviceToken: %@", buf, 0xCu);
  }

  objc_opt_class();
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
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

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    sub_100071098();
  }

  objc_opt_class();
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  v7 = FCDynamicCast();

  v8 = +[UNUserNotificationCenter currentNotificationCenter];
  notificationSettings = [v8 notificationSettings];
  v10 = -[FRAppDelegate fcDigestModeFromScheduledDeliverySetting:](self, "fcDigestModeFromScheduledDeliverySetting:", [notificationSettings scheduledDeliverySetting]);
  cloudContext = [v7 cloudContext];
  notificationController = [cloudContext notificationController];
  [notificationController registerDeviceToken:0 deviceDigestMode:v10];
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  handlerCopy = handler;
  notificationCopy = notification;
  applicationCopy = application;
  bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];
  [bridgedAppDelegate application:applicationCopy didReceiveRemoteNotification:notificationCopy fetchCompletionHandler:handlerCopy];
}

- (id)gizmoSyncManager:(id)manager fetchOperationForArticleIDs:(id)ds
{
  dsCopy = ds;
  v6 = [FCArticleHeadlinesFetchOperation alloc];
  feldsparContext = [(FRAppDelegate *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  v9 = [dsCopy copy];

  v10 = [v6 initWithContext:cloudContext articleIDs:v9 ignoreCacheForArticleIDs:&__NSArray0__struct];

  return v10;
}

- (void)application:(id)application performFetchWithCompletionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v8 = FRBackgroundFetchLog;
  if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "app was awoken for fetching via application:performFetchWithCompletionHandler:", buf, 2u);
  }

  offlineModeMonitor = [(FRAppDelegate *)self offlineModeMonitor];
  isCloudKitReachable = [offlineModeMonitor isCloudKitReachable];

  if (isCloudKitReachable)
  {
    if ([(FRAppDelegate *)self safeIsAppRunningInBackground])
    {
      +[FCTaskScheduler enableBackgroundDownloadsInSpiteOfHighPriorityTasks];
      v11 = dispatch_group_create();
      v12 = +[NSMutableSet set];
      bridgedAppDelegate = [(FRAppDelegate *)self bridgedAppDelegate];

      if (bridgedAppDelegate)
      {
        v14 = FRBackgroundFetchLog;
        if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "will run bridged backround fetch", buf, 2u);
        }

        dispatch_group_enter(v11);
        bridgedAppDelegate2 = [(FRAppDelegate *)self bridgedAppDelegate];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10004B2F8;
        v26[3] = &unk_1000C5010;
        v27 = v12;
        v28 = v11;
        [bridgedAppDelegate2 application:applicationCopy performFetchWithCompletionHandler:v26];
      }

      backgroundFetchManager = [(FRAppDelegate *)self backgroundFetchManager];

      if (backgroundFetchManager)
      {
        v17 = FRBackgroundFetchLog;
        if (os_log_type_enabled(FRBackgroundFetchLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "will run legacy backround fetch", buf, 2u);
        }

        dispatch_group_enter(v11);
        backgroundFetchManager2 = [(FRAppDelegate *)self backgroundFetchManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10004B3B0;
        v23[3] = &unk_1000C5038;
        v24 = v12;
        v25 = v11;
        [backgroundFetchManager2 peformBackgroundFetchWithReason:0 timeout:v23 completionHandler:25.0];
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10004B468;
      v20[3] = &unk_1000C1E48;
      v21 = v12;
      v22 = handlerCopy;
      v19 = v12;
      dispatch_group_notify(v11, &_dispatch_main_q, v20);
    }

    else
    {
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_10004B2E4;
      v32 = &unk_1000C3098;
      v33 = handlerCopy;
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
    v38 = handlerCopy;
    v38[2](v38, 2);
    v11 = v38;
  }
}

- (void)_updateBackgroundFetchSettingsWithAppConfiguration:(id)configuration
{
  prefetchConfig = [configuration prefetchConfig];
  if ([prefetchConfig isBackgroundFetchEnabled])
  {
    [prefetchConfig minimumBackgroundFetchInterval];
    v5 = v4;
    backgroundFetchScheduler = [(FRAppDelegate *)self backgroundFetchScheduler];
    if (v5 <= 0.0)
    {
      v7 = UIApplicationBackgroundFetchIntervalMinimum;
    }

    else
    {
      [prefetchConfig minimumBackgroundFetchInterval];
    }

    backgroundFetchScheduler2 = backgroundFetchScheduler;
  }

  else
  {
    backgroundFetchScheduler2 = [(FRAppDelegate *)self backgroundFetchScheduler];
    backgroundFetchScheduler = backgroundFetchScheduler2;
    v7 = UIApplicationBackgroundFetchIntervalNever;
  }

  [backgroundFetchScheduler2 setMinimumBackgroundFetchInterval:v7];
}

- (BOOL)safeIsAppRunningInBackground
{
  v3 = +[UIApplication sharedApplication];
  key_window = [v3 key_window];

  if (+[NSThread isMainThread])
  {
    windowScene = [key_window windowScene];
    if ([windowScene activationState] == 2)
    {
      isDeviceLocked = 1;
    }

    else
    {
      isDeviceLocked = [(FRAppDelegate *)self isDeviceLocked];
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
    v9 = key_window;
    selfCopy = self;
    dispatch_sync(&_dispatch_main_q, block);
    isDeviceLocked = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  return isDeviceLocked & 1;
}

@end