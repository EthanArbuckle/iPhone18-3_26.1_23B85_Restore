@interface MTAppDelegate_Shared
- (BOOL)_isApplicationActive;
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type;
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (MTAppDelegate_Shared)init;
- (MTSecureDownloadRenewalManager)secureDownloadRenewalManager;
- (MTSiriPlistDumper)siriDumper;
- (NSOperationQueue)updateQueue;
- (PFFairPlayValidationManager)fairPlayValidationManager;
- (_TtC18PodcastsFoundation11SiriDonator)siriDonator;
- (unint64_t)processNotification:(id)notification;
- (void)_setNeedsRetryFlagFromNotificationForStoreId:(int64_t)id;
- (void)_setupPlayer;
- (void)_submitForegroundAnalytics;
- (void)_validateFairPlayEpisodes;
- (void)_validateFairPlayEpisodesWithCompletionHandler:(id)handler;
- (void)_verifyFairPlayMigrationWithCompletionHandler:(id)handler;
- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error;
- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler;
- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token;
- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationDidReceiveMemoryWarning:(id)warning;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)applicationWillTerminate:(id)terminate;
- (void)dealloc;
- (void)didChangeStoreAccount:(id)account;
- (void)processFeedUpdateNotification:(int64_t)notification triggerBy:(id)by;
- (void)processSubscriptionSyncNotification;
- (void)processUPPSyncNotification;
- (void)setupAfterBecomingActive;
@end

@implementation MTAppDelegate_Shared

- (MTAppDelegate_Shared)init
{
  v6.receiver = self;
  v6.super_class = MTAppDelegate_Shared;
  v2 = [(MTAppDelegate_Shared *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.podcasts.AppDelegateAccountChangeQueue", 0);
    accountChangeQueue = v2->_accountChangeQueue;
    v2->_accountChangeQueue = v3;
  }

  return v2;
}

- (MTSiriPlistDumper)siriDumper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ACFC;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A38 != -1)
  {
    dispatch_once(&qword_100583A38, block);
  }

  return self->_siriDumper;
}

- (void)_validateFairPlayEpisodes
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  fairPlayMigrationRetryCount = [v3 fairPlayMigrationRetryCount];

  if (fairPlayMigrationRetryCount)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100042978;
    v5[3] = &unk_1004D8358;
    v5[4] = self;
    [(MTAppDelegate_Shared *)self _validateFairPlayEpisodesWithCompletionHandler:v5];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005ACDC;
    v6[3] = &unk_1004D8358;
    v6[4] = self;
    [(MTAppDelegate_Shared *)self _verifyFairPlayMigrationWithCompletionHandler:v6];
  }
}

- (PFFairPlayValidationManager)fairPlayValidationManager
{
  fairPlayValidationManager = self->_fairPlayValidationManager;
  if (!fairPlayValidationManager)
  {
    v4 = [PFFairPlayValidationManager alloc];
    v5 = +[MTLibrary sharedInstance];
    v6 = [v4 initWithEpisodeRemovalManager:v5];
    v7 = self->_fairPlayValidationManager;
    self->_fairPlayValidationManager = v6;

    fairPlayValidationManager = self->_fairPlayValidationManager;
  }

  return fairPlayValidationManager;
}

- (void)_submitForegroundAnalytics
{
  v3 = objc_opt_new();
  v2 = +[PFAnalyticsEvent globalRetentionPolicy];
  [v3 sendEvent:v2];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTAppDelegate_Shared;
  [(MTAppDelegate_Shared *)&v4 dealloc];
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v7 = [MTDBUtil isSupportedUrlString:absoluteString];

  if (v7)
  {
    absoluteString2 = [lCopy absoluteString];
    v9 = [absoluteString2 hasPrefix:@"feed:http"];

    if (v9)
    {
      absoluteString3 = [lCopy absoluteString];
      v11 = [absoluteString3 stringByReplacingOccurrencesOfString:@"feed:" withString:&stru_1004F3018 options:8 range:{0, 5}];

      v12 = [NSURL URLWithString:v11];

      lCopy = v12;
    }

    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString hasPrefix:@"itms"])
    {
      v15 = v22;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v16 = 1000000000;
      v17 = sub_100059CD8;
    }

    else
    {
      if (![lowercaseString hasPrefix:@"podcasts"])
      {
        if ([DebugUI isDebugUrl:lCopy])
        {
          +[DebugUI showDebugUI];
        }

        goto LABEL_12;
      }

      v16 = 0;
      v15 = v21;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v17 = sub_100059D30;
    }

    v15[2] = v17;
    v15[3] = &unk_1004D8358;
    v15[4] = lCopy;
    v18 = objc_retainBlock(v15);

    if (v18)
    {
      v19 = dispatch_time(0, v16);
      dispatch_after(v19, &_dispatch_main_q, v18);
    }

LABEL_12:
  }

  return v7;
}

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  v5 = [IMNetworkObserver sharedInstance:application];
  [v5 beginObserving];

  if (+[PFClientUtil isRunningOnInternalOS])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"EnableCharlesSupport"];

    if (v7)
    {
      [AMSDefaults setIgnoreServerTrustEvaluation:1];
    }
  }

  v8 = +[MTAccountController sharedInstance];
  +[UIViewController swizzleMethodsForMetrics];
  +[MTDebugDataManager setup];
  v9 = +[MTDeviceCapacityMonitor shared];
  [v9 setActiveNotificationName:MTApplicationDidBecomeActiveNotification];
  v10 = +[MTReachability sharedInstance];
  v11 = +[MTLibrary sharedInstance];
  backgroundTaskScheduler = [(MTAppDelegate_Shared *)self backgroundTaskScheduler];

  if (!backgroundTaskScheduler)
  {
    [MTBackgroundTaskScheduler registerBackgroundTaskClass:objc_opt_class()];
    v13 = objc_alloc_init(MTBackgroundTaskScheduler);
    [(MTAppDelegate_Shared *)self setBackgroundTaskScheduler:v13];
  }

  return 1;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = MTApplicationDidFinishLaunchingNotification;
  v8 = +[UIApplication sharedApplication];
  [v6 postNotificationName:v7 object:v8];

  v9 = +[PodcastsApplicationStateMonitor shared];
  applicationState = [applicationCopy applicationState];

  [v9 setUIApplicationState:applicationState];
  v11 = +[MTPushNotificationController sharedInstance];
  [v11 registerPushNotifications];

  v12 = dispatch_get_global_queue(0, 0);
  dispatch_async(v12, &stru_1004D8378);

  dispatch_async(&_dispatch_main_q, &stru_1004D8398);
  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"didChangeStoreAccount:" name:ACDAccountStoreDidChangeNotification object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"didChangeStoreAccountDSID" name:@"AccountDSIDChangedNotification" object:0];

  v15 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MTAppDelegate_Shared SiriX donation will begin", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A220;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v12, block);

  dispatch_async(&_dispatch_main_q, &stru_1004D83B8);
  return 1;
}

- (void)applicationWillResignActive:(id)active
{
  activeCopy = active;
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MTApplicationWillResignActiveNotification;
  v6 = +[UIApplication sharedApplication];
  [v4 postNotificationName:v5 object:v6];

  v7 = +[PodcastsApplicationStateMonitor shared];
  applicationState = [activeCopy applicationState];

  [v7 setUIApplicationState:applicationState];
  +[MTBaseFeedManager saveSubscriptionMetadata];
  v10 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v9 = +[NSDate now];
  [v10 setLastAppUseDate:v9];
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MTApplicationDidEnterBackgroundNotification;
  v6 = +[UIApplication sharedApplication];
  [v4 postNotificationName:v5 object:v6];

  v7 = +[PodcastsApplicationStateMonitor shared];
  applicationState = [backgroundCopy applicationState];

  [v7 setUIApplicationState:applicationState];
  v9 = +[PFRestrictionsController shared];
  [v9 stopListening];

  v10 = dispatch_get_global_queue(0, 0);
  dispatch_async(v10, &stru_1004D83D8);

  v11 = +[IMNetworkObserver sharedInstance];
  [v11 endObserving];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = +[IMNetworkObserver sharedInstance];
  [v4 beginObserving];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = MTApplicationWillEnterForegroundNotification;
  v7 = +[UIApplication sharedApplication];
  [v5 postNotificationName:v6 object:v7];

  [IMMetrics startTimer:@"app_resume"];
  v8 = +[PFRestrictionsController shared];
  [v8 startListening];

  v9 = +[PFRestrictionsController shared];
  [v9 reload];

  v10 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Foreground Sync] Application will enter foreground", buf, 2u);
  }

  v11 = dispatch_get_global_queue(0, 0);
  dispatch_async(v11, &stru_1004D83F8);

  v12 = +[MTForegroundSyncUtil sharedInstance];
  [v12 updatePlaybackSettingIfNeeded];

  v13 = +[MTForegroundSyncUtil sharedInstance];
  [v13 setNeedsSyncing];

  v14 = +[MTForegroundSyncUtil sharedInstance];
  [v14 feedUpdateAllPodcastsOnForeground];

  v15 = +[MTPurchaseControllerWrapper sharedInstance];
  [v15 syncMusicSubscriptionInformation];

  [(MTAppDelegate_Shared *)self _validateFairPlayEpisodes];
  dispatch_async(v11, &stru_1004D8418);

  v16 = +[PFSharedDispatchQueues localAssetSupportWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005A86C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(v16, block);
}

- (void)applicationDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MTApplicationDidBecomeActiveNotification;
  v6 = +[UIApplication sharedApplication];
  [v4 postNotificationName:v5 object:v6];

  v8 = +[PodcastsApplicationStateMonitor shared];
  applicationState = [activeCopy applicationState];

  [v8 setUIApplicationState:applicationState];
}

- (void)applicationDidReceiveMemoryWarning:(id)warning
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = MTApplicationDidReceiveMemoryWarningNotification;
  v4 = +[UIApplication sharedApplication];
  [v5 postNotificationName:v3 object:v4];
}

- (void)applicationWillTerminate:(id)terminate
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = MTApplicationWillTerminateNotification;
  v4 = +[UIApplication sharedApplication];
  [v5 postNotificationName:v3 object:v4];
}

- (void)application:(id)application didRegisterForRemoteNotificationsWithDeviceToken:(id)token
{
  tokenCopy = token;
  v5 = +[MTPushNotificationController sharedInstance];
  [v5 didRegisterWithToken:tokenCopy];
}

- (void)application:(id)application didFailToRegisterForRemoteNotificationsWithError:(id)error
{
  errorCopy = error;
  v5 = +[MTPushNotificationController sharedInstance];
  [v5 didFailToRegisterWithError:errorCopy];
}

- (void)application:(id)application didReceiveRemoteNotification:(id)notification fetchCompletionHandler:(id)handler
{
  notificationCopy = notification;
  handlerCopy = handler;
  v9 = +[MTAccountController sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005ABE0;
  v12[3] = &unk_1004D8440;
  v13 = notificationCopy;
  v14 = handlerCopy;
  v12[4] = self;
  v10 = notificationCopy;
  v11 = handlerCopy;
  [v9 fetchActiveAccountWithCompletion:v12];
}

- (BOOL)_isApplicationActive
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState] == 0;

  return v3;
}

- (void)_setupPlayer
{
  v2 = +[IMAVPlayer sharedPlayer];
  [v2 setChapterMetadataMode:1];

  v3 = +[IMAVPlayer sharedPlayer];
  [v3 becomeActiveMediaPlayer];
}

- (void)_validateFairPlayEpisodesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[PFFairPlayRolloutController sharedInstance];
  isEnabled = [v5 isEnabled];

  if (isEnabled)
  {
    fairPlayValidationManager = [(MTAppDelegate_Shared *)self fairPlayValidationManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005AE58;
    v13[3] = &unk_1004D84A8;
    v14 = handlerCopy;
    v8 = handlerCopy;
    [fairPlayValidationManager validateDownloadedEpisodesWithCompletion:v13];

    v9 = v14;
  }

  else
  {
    v8 = objc_alloc_init(_TtC10PodcastsUI23UIStoreResponseDelegate);
    secureDownloadRenewalManager = [(MTAppDelegate_Shared *)self secureDownloadRenewalManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005AE68;
    v11[3] = &unk_1004D84D0;
    v12 = handlerCopy;
    v9 = handlerCopy;
    [secureDownloadRenewalManager updateDRMKeysForDownloadsWithUrlProtocolDelegate:v8 completionHandler:v11];
  }
}

- (void)_verifyFairPlayMigrationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005AF30;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)setupAfterBecomingActive
{
  v3 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MTAppDelegate_Shared setupAfterBecomingActive", &v11, 2u);
  }

  v4 = +[PFDeferredLaunchTaskCoordinator sharedInstance];
  [v4 scheduleDefaultDeferralDeadline];

  if ([(MTAppDelegate_Shared *)self _isApplicationActive])
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "MTAppDelegate_Shared Application is Active!", &v11, 2u);
    }

    if (qword_100583A20 != -1)
    {
      sub_1003B2ABC();
    }

    v6 = +[MTForegroundSyncUtil sharedInstance];
    [v6 syncEverythingIfNeeded];

    v7 = dispatch_get_global_queue(0, 0);
    dispatch_async(v7, &stru_1004D8600);

    v8 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [NSNumber numberWithDouble:2.0];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Will start deleting hidden podcasts in %@ seconds", &v11, 0xCu);
    }

    v10 = dispatch_time(0, 2000000000);
    dispatch_after(v10, &_dispatch_main_q, &stru_1004D8640);
  }

  [IMMetrics endTimer:@"app_resume"];
  [IMMetrics endTimer:@"app_launch"];
}

- (void)didChangeStoreAccount:(id)account
{
  if ([MTAccountController iTunesAccountDidChangeForACAccountNotification:account])
  {

    [(MTAppDelegate_Shared *)self storeAccountDidChange];
  }
}

- (NSOperationQueue)updateQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005BAB0;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A30 != -1)
  {
    dispatch_once(&qword_100583A30, block);
  }

  return self->_updateQueue;
}

- (void)application:(id)application handleEventsForBackgroundURLSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v9 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_retainBlock(handlerCopy);
    v19 = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BackgroundSession] %@ handleEventsForBackgroundURLSession called for session with identifier %@ and completionHandler: %@.", &v19, 0x20u);
  }

  v11 = +[PUIAssetDownloaders sharedDownloaders];
  [v11 registerBackgroundCompletion:handlerCopy forSession:sessionCopy];

  if ([(NSString *)sessionCopy containsString:@"MTImageDownloader"])
  {
    nSClassFromString(sessionCopy) = [NSClassFromString(sessionCopy) sharedInstance];
    sessionCompletionHandler = [nSClassFromString(sessionCopy) sessionCompletionHandler];

    if (sessionCompletionHandler)
    {
      v14 = _MTLogCategoryNetwork();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sessionCompletionHandler2 = [nSClassFromString(sessionCopy) sessionCompletionHandler];
        v16 = objc_retainBlock(sessionCompletionHandler2);
        v19 = 138412546;
        selfCopy = sessionCopy;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "handleEventsForBackgroundURLSession being called BEFORE URLSessionDidFinishEventsForBackgroundURLSession for identifier %@.  Invoking existing completionHandler %@.", &v19, 0x16u);
      }

      sessionCompletionHandler3 = [nSClassFromString(sessionCopy) sessionCompletionHandler];
      sessionCompletionHandler3[2]();

      [nSClassFromString(sessionCopy) setSessionCompletionHandler:0];
    }

    v18 = _MTLogCategoryNetwork();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting sessionCompletionHandler for MTImageDownloader.", &v19, 2u);
    }

    [nSClassFromString(sessionCopy) setSessionCompletionHandler:handlerCopy];
  }

  else
  {
    nSClassFromString(sessionCopy) = +[MTFeedManager sharedInstance];
    [nSClassFromString(sessionCopy) handleEventsForBackgroundURLSessionFor:sessionCopy completionHandler:handlerCopy];
  }
}

- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  NSLog(@"Will Continue");
  if ([typeCopy isEqualToString:NSUserActivityTypeBrowsingWeb] & 1) != 0 || (+[MTIntentDonationUtil sharedInstance](MTIntentDonationUtil, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "canContinueIntentWithUserActivityType:", typeCopy), v5, (v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = +[MTHandoffController sharedInstance];
    supportedActivityTypes = [v8 supportedActivityTypes];
    v7 = [supportedActivityTypes containsObject:typeCopy];
  }

  return v7;
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  applicationCopy = application;
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  NSLog(@"Continue Activity! %@", userInfo);

  activityType = [activityCopy activityType];
  v11 = [activityType isEqualToString:NSUserActivityTypeBrowsingWeb];

  if (v11)
  {
    referrerURL = [activityCopy referrerURL];
    webpageURL = [activityCopy webpageURL];
    v25 = UIApplicationOpenURLOptionsAnnotationKey;
    if (referrerURL)
    {
      v23 = LSReferrerURLKey;
      v24 = referrerURL;
      v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    v26 = v14;
    v21 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(MTAppDelegate_Shared *)self application:applicationCopy openURL:webpageURL options:v21];

    if (referrerURL)
    {
    }

    goto LABEL_12;
  }

  if ([activityCopy isStateRestorationActivity])
  {
    [(MTAppDelegate_Shared *)self application:applicationCopy handleStateRestorationWith:activityCopy];
LABEL_12:
    v20 = 1;
    goto LABEL_13;
  }

  userInfo2 = [activityCopy userInfo];
  [IMMetrics recordUserAction:@"handoff" dataSource:0 withData:userInfo2];

  v16 = +[MTIntentDonationUtil sharedInstance];
  activityType2 = [activityCopy activityType];
  v18 = [v16 canContinueIntentWithUserActivityType:activityType2];

  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = +[MTIntentDonationUtil sharedInstance];
  v20 = [v19 continueIntentsUserActivity:activityCopy];

LABEL_13:
  return v20;
}

- (unint64_t)processNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing Notification %@", &v20, 0xCu);
  }

  v6 = +[MTPushNotificationController sharedInstance];
  v7 = [v6 shouldShowAnnouncementNotification:notificationCopy];

  if (v7)
  {
    v8 = +[MTPushNotificationController sharedInstance];
    [v8 processAnnouncementNotification:notificationCopy];
    v9 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if ([MTPushNotificationController shouldProcessNotification:notificationCopy])
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    if ([MTPushNotificationController shouldSyncFeedUpdateForNotification:notificationCopy])
    {
      v10 = [MTPushNotificationController storeIdFromFeedUpdateNotification:notificationCopy];
      v11 = [MTPushNotificationController triggeredByFromFeedUpdateNotification:notificationCopy];
      -[MTAppDelegate_Shared _setNeedsRetryFlagFromNotificationForStoreId:](self, "_setNeedsRetryFlagFromNotificationForStoreId:", [v10 longLongValue]);
      -[MTAppDelegate_Shared processFeedUpdateNotification:triggerBy:](self, "processFeedUpdateNotification:triggerBy:", [v10 longLongValue], v11);
      v12 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Push] Processing Feed Update push notification for podcast %@ with triggerBy %@", &v20, 0x16u);
      }

      v13 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
      [v8 setObject:v10 forKey:v13];

      v14 = +[MTFeedUpdateMetricsDataKey notificationType];
      [v8 setObject:@"FeedUpdate" forKey:v14];
    }

    else
    {
      if ([MTPushNotificationController shouldSyncSubscriptionsForNotification:notificationCopy])
      {
        v15 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Push] Processing Subscription Sync push notification.", &v20, 2u);
        }

        [(MTAppDelegate_Shared *)self processSubscriptionSyncNotification];
        v10 = +[MTFeedUpdateMetricsDataKey notificationType];
        v16 = @"BookKeeper";
      }

      else
      {
        if (![MTPushNotificationController shouldSyncUppForNotification:notificationCopy])
        {
          v9 = 1;
          goto LABEL_21;
        }

        v17 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Push] Processing UPP Sync push notification.", &v20, 2u);
        }

        [(MTAppDelegate_Shared *)self processUPPSyncNotification];
        v10 = +[MTFeedUpdateMetricsDataKey notificationType];
        v16 = @"UPP";
      }

      [v8 setObject:v16 forKey:v10];
    }

    v9 = 0;
LABEL_21:
    v18 = +[MTFeedUpdateMetricsAction notificationReceived];
    [IMMetrics recordUserAction:v18 dataSource:0 withData:v8];

    goto LABEL_22;
  }

  v9 = 1;
LABEL_23:

  return v9;
}

- (void)processFeedUpdateNotification:(int64_t)notification triggerBy:(id)by
{
  byCopy = by;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = +[UIApplication sharedApplication];
  notification = [NSString stringWithFormat:@"MTAppDelegate_Shared.FeedUpdatePushNotification.%lld", notification];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005C6F8;
  v11[3] = &unk_1004D8688;
  v11[4] = &v12;
  v8 = [v6 beginBackgroundTaskWithName:notification expirationHandler:v11];

  v13[3] = v8;
  v9 = +[MTFeedUpdateManager sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005C758;
  v10[3] = &unk_1004D86B0;
  v10[4] = &v12;
  v10[5] = notification;
  [v9 updatePodcastWithStoreId:notification triggerBy:byCopy userInitiated:0 forced:1 source:2 completion:v10];

  _Block_object_dispose(&v12, 8);
}

- (void)processSubscriptionSyncNotification
{
  if ((+[PFClientUtil isRunningOnHomepod]& 1) != 0)
  {
    siriDonator = [(MTAppDelegate_Shared *)self siriDonator];
    [siriDonator startDonation];
  }

  else
  {
    siriDonator = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
    [siriDonator syncAllBookkeeperKeys];
  }

  v4 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching UPP on subscription sync notification in case a UPP push was missed", v5, 2u);
  }

  [(MTAppDelegate_Shared *)self processUPPSyncNotification];
}

- (void)processUPPSyncNotification
{
  v2 = +[_TtC8Podcasts21SyncControllerFactory resolvedSyncController];
  [v2 performUniversalPlaybackPositionSync];
}

- (void)_setNeedsRetryFlagFromNotificationForStoreId:(int64_t)id
{
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  [MTPodcast predicateForPodcastStoreId:id];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10005CADC;
  v15 = &unk_1004D86D8;
  v17 = v16 = mainOrPrivateContext;
  idCopy = id;
  v6 = v17;
  v7 = mainOrPrivateContext;
  [v7 performBlockAndWaitWithSave:&v12];
  v8 = [MTFeedUpdateMetricsAction notificationSetRetryFlag:v12];
  v9 = +[MTFeedUpdateMetricsDataKey podcastStoreId];
  v19 = v9;
  v10 = [NSNumber numberWithLongLong:id];
  v20 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [IMMetrics recordUserAction:v8 dataSource:0 withData:v11];
}

- (MTSecureDownloadRenewalManager)secureDownloadRenewalManager
{
  v2 = +[MTLibrary sharedInstance];
  secureDownloadRenewalManager = [v2 secureDownloadRenewalManager];

  return secureDownloadRenewalManager;
}

- (_TtC18PodcastsFoundation11SiriDonator)siriDonator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CD0C;
  block[3] = &unk_1004D8358;
  block[4] = self;
  if (qword_100583A40 != -1)
  {
    dispatch_once(&qword_100583A40, block);
  }

  return self->_siriDonator;
}

@end