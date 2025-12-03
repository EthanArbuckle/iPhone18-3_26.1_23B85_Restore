@interface MTPushNotificationController
+ (BOOL)shouldProcessNotification:(id)notification;
+ (BOOL)shouldSyncFeedUpdateForNotification:(id)notification;
+ (BOOL)shouldSyncSubscriptionsForNotification:(id)notification;
+ (BOOL)shouldSyncUppForNotification:(id)notification;
- (BOOL)alreadyRegisteredWithActiveDsid;
- (BOOL)keyValueStoreController:(id)controller transaction:(id)transaction didFailWithError:(id)error;
- (BOOL)shouldShowAnnouncementNotification:(id)notification;
- (MTPushNotificationController)init;
- (void)_registerPushNotifications;
- (void)_setupMarketingPushHandlerWithBag:(id)bag;
- (void)_unregisterPushNotifications;
- (void)dealloc;
- (void)didChangeStoreAccount:(id)account;
- (void)didFailToRegisterWithError:(id)error;
- (void)didRegisterWithToken:(id)token;
- (void)executeAction:(id)action using:(id)using andToken:(id)token;
- (void)keyValueStoreController:(id)controller transaction:(id)transaction didCancelWithError:(id)error;
- (void)keyValueStoreController:(id)controller transactionDidFinish:(id)finish;
- (void)processAnnouncementNotification:(id)notification;
- (void)registerPushNotifications;
- (void)setKeyValueStoreControllerForUrl:(id)url;
- (void)unregisterPushNotifications;
@end

@implementation MTPushNotificationController

- (MTPushNotificationController)init
{
  v8.receiver = self;
  v8.super_class = MTPushNotificationController;
  v2 = [(MTPushNotificationController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(MTPushNotificationController *)v2 setSubscriptionState:0];
    v4 = +[IMURLBag sharedInstance];
    [(MTPushNotificationController *)v3 _setupMarketingPushHandlerWithBag:v4];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v3 selector:"didChangeStoreAccount:" name:ACDAccountStoreDidChangeNotification object:0];

    v6 = dispatch_queue_create("MTPushNotificationController", 0);
    [(MTPushNotificationController *)v3 setWorkQueue:v6];
  }

  return v3;
}

- (void)registerPushNotifications
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  subscriptionState = [(MTPushNotificationController *)selfCopy subscriptionState];
  if (subscriptionState > 1)
  {
    if (subscriptionState != 2)
    {
      if (subscriptionState != 3)
      {
        if (subscriptionState == 4)
        {
          v4 = _MTLogCategoryCloudSync();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to complete APNS unregistration. Reason: interrupted by registration request.", v11, 2u);
          }

          goto LABEL_18;
        }

        goto LABEL_23;
      }

      v8 = +[MTAccountController sharedInstance];
      activeAccount = [v8 activeAccount];

      if (activeAccount)
      {
        v10 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "User is now signed in, re-registering for APNS.", buf, 2u);
        }

        [(MTPushNotificationController *)selfCopy unregisterPushNotifications];
        goto LABEL_18;
      }

      v5 = _MTLogCategoryCloudSync();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        v6 = "Registered for APNS with no account. Early return";
        v7 = v13;
        goto LABEL_21;
      }

LABEL_22:

      goto LABEL_23;
    }

    v5 = _MTLogCategoryCloudSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v15 = 0;
    v6 = "Registered for APNS. Early return";
    v7 = &v15;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_22;
  }

  if (!subscriptionState)
  {
LABEL_18:
    [(MTPushNotificationController *)selfCopy setSubscriptionState:1];
    [(MTPushNotificationController *)selfCopy _registerPushNotifications];
    goto LABEL_23;
  }

  if (subscriptionState == 1)
  {
    v5 = _MTLogCategoryCloudSync();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    v12 = 0;
    v6 = "Registering for APNS. Early return";
    v7 = &v12;
    goto LABEL_21;
  }

LABEL_23:
  objc_sync_exit(selfCopy);
}

- (void)_registerPushNotifications
{
  v3 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registering push notification with RemoteNotification", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D318;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)unregisterPushNotifications
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  subscriptionState = [(MTPushNotificationController *)selfCopy subscriptionState];
  if (subscriptionState > 1)
  {
    if ((subscriptionState - 2) >= 2)
    {
      if (subscriptionState == 4)
      {
        v4 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v9 = 0;
          v5 = "Unregistering from APNS. Early return";
          v6 = &v9;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_11:
    [(MTPushNotificationController *)selfCopy setSubscriptionState:4];
    [(MTPushNotificationController *)selfCopy _unregisterPushNotifications];
    goto LABEL_16;
  }

  if (!subscriptionState)
  {
    v4 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Unregistered from APNS. Early return";
      v6 = buf;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (subscriptionState == 1)
  {
    v7 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: interrupted by unregistration request.", v8, 2u);
    }

    goto LABEL_11;
  }

LABEL_16:
  objc_sync_exit(selfCopy);
}

- (void)_unregisterPushNotifications
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F80C4;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didChangeStoreAccount:(id)account
{
  accountCopy = account;
  if (![(MTPushNotificationController *)self alreadyRegisteredWithActiveDsid]&& [MTAccountController iTunesAccountDidChangeForACAccountNotification:accountCopy])
  {
    v5 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iTunes account changed. Unregister and attempt to register device token.", v6, 2u);
    }

    [(MTPushNotificationController *)self unregisterPushNotifications];
    [(MTPushNotificationController *)self registerPushNotifications];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTPushNotificationController;
  [(MTPushNotificationController *)&v4 dealloc];
}

- (BOOL)alreadyRegisteredWithActiveDsid
{
  if ([(MTPushNotificationController *)self subscriptionState]!= 2)
  {
    return 0;
  }

  v2 = +[MTAccountController sharedInstance];
  activeDsid = [v2 activeDsid];
  v4 = activeDsid != 0;

  return v4;
}

- (void)setKeyValueStoreControllerForUrl:(id)url
{
  urlCopy = url;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyValueStoreController = [(MTPushNotificationController *)selfCopy keyValueStoreController];
  defaultSetURL = [keyValueStoreController defaultSetURL];
  absoluteString = [defaultSetURL absoluteString];
  absoluteString2 = [urlCopy absoluteString];
  v9 = [absoluteString isEqualToString:absoluteString2];

  if ((v9 & 1) == 0)
  {
    v10 = [MZKeyValueStoreController alloc];
    v11 = [(MZKeyValueStoreController *)v10 initWithDomain:kPodcastsBookkeeperPodcastsDomain baseURLForGETAll:urlCopy baseURLForPUTAll:urlCopy];
    [(MTPushNotificationController *)selfCopy setKeyValueStoreController:v11];

    keyValueStoreController2 = [(MTPushNotificationController *)selfCopy keyValueStoreController];
    [keyValueStoreController2 setDelegate:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)executeAction:(id)action using:(id)using andToken:(id)token
{
  actionCopy = action;
  usingCopy = using;
  tokenCopy = token;
  [(MTPushNotificationController *)self setKeyValueStoreControllerForUrl:usingCopy];
  v10 = [[_TtC18PodcastsFoundation23PushSubscriptionRequest alloc] initWithEndpointURL:usingCopy action:actionCopy apnsToken:tokenCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyValueStoreController = [(MTPushNotificationController *)selfCopy keyValueStoreController];
  v13 = [keyValueStoreController scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:v10];

  objc_sync_exit(selfCopy);
}

- (void)_setupMarketingPushHandlerWithBag:(id)bag
{
  bagCopy = bag;
  v7 = objc_alloc_init(AMSPushConfiguration);
  v5 = +[NSSet set];
  [v7 setEnabledActionTypes:v5];

  [v7 setUserNotificationExtensionId:@"com.apple.podcasts.announcement"];
  v6 = [[AMSPushHandler alloc] initWithConfiguration:v7 bag:bagCopy];

  [(MTPushNotificationController *)self setMarketingPushHandler:v6];
}

- (void)didRegisterWithToken:(id)token
{
  tokenCopy = token;
  v5 = +[MTAccountController sharedInstance];
  activeAccount = [v5 activeAccount];

  if (activeAccount)
  {
    objc_initWeak(location, self);
    v7 = +[IMURLBag sharedInstance];
    pushNotificationRegistration = [v7 pushNotificationRegistration];
    workQueue = [(MTPushNotificationController *)self workQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F87F0;
    v11[3] = &unk_1004DC340;
    objc_copyWeak(&v13, location);
    v12 = tokenCopy;
    [pushNotificationRegistration asyncValueOnQueue:workQueue withCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No account, not proceeding with bookkeeper push registration", location, 2u);
    }

    [(MTPushNotificationController *)self setSubscriptionState:3];
  }
}

- (void)didFailToRegisterWithError:(id)error
{
  errorCopy = error;
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: %@.", &v7, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MTPushNotificationController *)selfCopy subscriptionState]== 1)
  {
    [(MTPushNotificationController *)selfCopy setSubscriptionState:0];
  }

  objc_sync_exit(selfCopy);
}

+ (BOOL)shouldProcessNotification:(id)notification
{
  notificationCopy = notification;
  dsid = [notificationCopy dsid];
  v5 = +[MTAccountController sharedInstance];
  activeDsid = [v5 activeDsid];

  v7 = 0;
  if (dsid && activeDsid)
  {
    v7 = [dsid isEqualToNumber:activeDsid];
  }

  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    domain = [notificationCopy domain];
    domainVersion = [notificationCopy domainVersion];
    v11 = domainVersion;
    v14 = 138413314;
    v12 = @"NO";
    v15 = dsid;
    if (v7)
    {
      v12 = @"YES";
    }

    v16 = 2112;
    v17 = activeDsid;
    v18 = 2112;
    v19 = domain;
    v20 = 2112;
    v21 = domainVersion;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Push] Received APNS notification for DSID = %@, currentDsid = %@, domain = %@, version = %@, will process = %@", &v14, 0x34u);
  }

  return v7;
}

+ (BOOL)shouldSyncSubscriptionsForNotification:(id)notification
{
  notificationCopy = notification;
  domain = [notificationCopy domain];
  v5 = [domain isEqualToString:kPodcastsBookkeeperPodcastsDomain];

  if (v5)
  {
    domainVersion = [notificationCopy domainVersion];
    stringValue = [domainVersion stringValue];

    v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    podcastsDomainVersion = [v8 podcastsDomainVersion];

    if (stringValue)
    {
      v5 = [stringValue isEqualToString:podcastsDomainVersion] ^ 1;
    }

    else
    {
      v5 = 1;
    }

    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      domain2 = [notificationCopy domain];
      v12 = @"SKIP";
      v14 = 138413058;
      v15 = domain2;
      if (v5)
      {
        v12 = @"PROCESS";
      }

      v16 = 2112;
      v17 = stringValue;
      v18 = 2112;
      v19 = podcastsDomainVersion;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Push] Notification for domain %@, remote version = %@, local version = %@ --> %@", &v14, 0x2Au);
    }
  }

  return v5;
}

+ (BOOL)shouldSyncUppForNotification:(id)notification
{
  notificationCopy = notification;
  domain = [notificationCopy domain];
  v5 = [domain isEqualToString:kPodcastsBookkeeperUppDomain];

  if (v5)
  {
    domainVersion = [notificationCopy domainVersion];
    stringValue = [domainVersion stringValue];

    v8 = +[MTUniversalPlaybackPositionTransactionContext UPPDomainVersion];
    if (stringValue)
    {
      v5 = [stringValue isEqualToString:v8] ^ 1;
    }

    else
    {
      v5 = 1;
    }

    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      domain2 = [notificationCopy domain];
      v11 = @"SKIP";
      v13 = 138413058;
      v14 = domain2;
      if (v5)
      {
        v11 = @"PROCESS";
      }

      v15 = 2112;
      v16 = stringValue;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Push] Notification for domain %@, remote version = %@, local version = %@ --> %@", &v13, 0x2Au);
    }
  }

  return v5;
}

+ (BOOL)shouldSyncFeedUpdateForNotification:(id)notification
{
  type = [notification type];
  v4 = [type isEqualToString:kPodcastsPushNotificationTypeFeedUpdate];

  return v4;
}

- (void)keyValueStoreController:(id)controller transactionDidFinish:(id)finish
{
  controllerCopy = controller;
  finishCopy = finish;
  action = [finishCopy action];
  if ([action isEqualToString:kPodcastsPushNotificationRegisterValue])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(MTPushNotificationController *)selfCopy subscriptionState]!= 1)
    {
      objc_sync_exit(selfCopy);
      goto LABEL_9;
    }

    [(MTPushNotificationController *)selfCopy setSubscriptionState:2];
    objc_sync_exit(selfCopy);

    selfCopy = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v10 = "[Push] Registered for APNS.";
      v11 = &v15;
      v12 = selfCopy;
      v13 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, v13, v10, v11, 2u);
    }
  }

  else
  {
    selfCopy = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v10 = "[Push] Could not find a valid action for APNS registration transaction.";
      v11 = &v14;
      v12 = selfCopy;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (BOOL)keyValueStoreController:(id)controller transaction:(id)transaction didFailWithError:(id)error
{
  errorCopy = error;
  v6 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Push] APNS registration transaction failed with error %@. Will retry.", &v8, 0xCu);
  }

  return 0;
}

- (void)keyValueStoreController:(id)controller transaction:(id)transaction didCancelWithError:(id)error
{
  controllerCopy = controller;
  transactionCopy = transaction;
  errorCopy = error;
  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Push] APNS registration transaction was canceled with error %@.", &v14, 0xCu);
  }

  action = [transactionCopy action];
  if ([action isEqualToString:kPodcastsPushNotificationRegisterValue])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(MTPushNotificationController *)selfCopy subscriptionState]== 1)
    {
      [(MTPushNotificationController *)selfCopy setSubscriptionState:0];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, selfCopy, OS_LOG_TYPE_ERROR, "[Push] Could not find a valid action for APNS registration transaction.", &v14, 2u);
    }
  }
}

- (BOOL)shouldShowAnnouncementNotification:(id)notification
{
  notificationCopy = notification;
  marketingPushHandler = [(MTPushNotificationController *)self marketingPushHandler];
  v6 = [marketingPushHandler shouldHandleNotification:notificationCopy];

  return v6;
}

- (void)processAnnouncementNotification:(id)notification
{
  notificationCopy = notification;
  marketingPushHandler = [(MTPushNotificationController *)self marketingPushHandler];
  [marketingPushHandler handleNotification:notificationCopy];
}

@end