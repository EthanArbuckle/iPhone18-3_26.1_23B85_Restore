@interface MTPushNotificationController
+ (BOOL)shouldProcessNotification:(id)a3;
+ (BOOL)shouldSyncFeedUpdateForNotification:(id)a3;
+ (BOOL)shouldSyncSubscriptionsForNotification:(id)a3;
+ (BOOL)shouldSyncUppForNotification:(id)a3;
- (BOOL)alreadyRegisteredWithActiveDsid;
- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5;
- (BOOL)shouldShowAnnouncementNotification:(id)a3;
- (MTPushNotificationController)init;
- (void)_registerPushNotifications;
- (void)_setupMarketingPushHandlerWithBag:(id)a3;
- (void)_unregisterPushNotifications;
- (void)dealloc;
- (void)didChangeStoreAccount:(id)a3;
- (void)didFailToRegisterWithError:(id)a3;
- (void)didRegisterWithToken:(id)a3;
- (void)executeAction:(id)a3 using:(id)a4 andToken:(id)a5;
- (void)keyValueStoreController:(id)a3 transaction:(id)a4 didCancelWithError:(id)a5;
- (void)keyValueStoreController:(id)a3 transactionDidFinish:(id)a4;
- (void)processAnnouncementNotification:(id)a3;
- (void)registerPushNotifications;
- (void)setKeyValueStoreControllerForUrl:(id)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTPushNotificationController *)v2 subscriptionState];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 == 4)
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
      v9 = [v8 activeAccount];

      if (v9)
      {
        v10 = _MTLogCategoryCloudSync();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "User is now signed in, re-registering for APNS.", buf, 2u);
        }

        [(MTPushNotificationController *)v2 unregisterPushNotifications];
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

  if (!v3)
  {
LABEL_18:
    [(MTPushNotificationController *)v2 setSubscriptionState:1];
    [(MTPushNotificationController *)v2 _registerPushNotifications];
    goto LABEL_23;
  }

  if (v3 == 1)
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
  objc_sync_exit(v2);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTPushNotificationController *)v2 subscriptionState];
  if (v3 > 1)
  {
    if ((v3 - 2) >= 2)
    {
      if (v3 == 4)
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
    [(MTPushNotificationController *)v2 setSubscriptionState:4];
    [(MTPushNotificationController *)v2 _unregisterPushNotifications];
    goto LABEL_16;
  }

  if (!v3)
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

  if (v3 == 1)
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
  objc_sync_exit(v2);
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

- (void)didChangeStoreAccount:(id)a3
{
  v4 = a3;
  if (![(MTPushNotificationController *)self alreadyRegisteredWithActiveDsid]&& [MTAccountController iTunesAccountDidChangeForACAccountNotification:v4])
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
  v3 = [v2 activeDsid];
  v4 = v3 != 0;

  return v4;
}

- (void)setKeyValueStoreControllerForUrl:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MTPushNotificationController *)v4 keyValueStoreController];
  v6 = [v5 defaultSetURL];
  v7 = [v6 absoluteString];
  v8 = [v13 absoluteString];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [MZKeyValueStoreController alloc];
    v11 = [(MZKeyValueStoreController *)v10 initWithDomain:kPodcastsBookkeeperPodcastsDomain baseURLForGETAll:v13 baseURLForPUTAll:v13];
    [(MTPushNotificationController *)v4 setKeyValueStoreController:v11];

    v12 = [(MTPushNotificationController *)v4 keyValueStoreController];
    [v12 setDelegate:v4];
  }

  objc_sync_exit(v4);
}

- (void)executeAction:(id)a3 using:(id)a4 andToken:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  [(MTPushNotificationController *)self setKeyValueStoreControllerForUrl:v8];
  v10 = [[_TtC18PodcastsFoundation23PushSubscriptionRequest alloc] initWithEndpointURL:v8 action:v14 apnsToken:v9];
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(MTPushNotificationController *)v11 keyValueStoreController];
  v13 = [v12 scheduleApnSubscriptionTransactionWithPushSubscriptionRequest:v10];

  objc_sync_exit(v11);
}

- (void)_setupMarketingPushHandlerWithBag:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(AMSPushConfiguration);
  v5 = +[NSSet set];
  [v7 setEnabledActionTypes:v5];

  [v7 setUserNotificationExtensionId:@"com.apple.podcasts.announcement"];
  v6 = [[AMSPushHandler alloc] initWithConfiguration:v7 bag:v4];

  [(MTPushNotificationController *)self setMarketingPushHandler:v6];
}

- (void)didRegisterWithToken:(id)a3
{
  v4 = a3;
  v5 = +[MTAccountController sharedInstance];
  v6 = [v5 activeAccount];

  if (v6)
  {
    objc_initWeak(location, self);
    v7 = +[IMURLBag sharedInstance];
    v8 = [v7 pushNotificationRegistration];
    v9 = [(MTPushNotificationController *)self workQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F87F0;
    v11[3] = &unk_1004DC340;
    objc_copyWeak(&v13, location);
    v12 = v4;
    [v8 asyncValueOnQueue:v9 withCompletion:v11];

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

- (void)didFailToRegisterWithError:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to complete APNS registration. Reason: %@.", &v7, 0xCu);
  }

  v6 = self;
  objc_sync_enter(v6);
  if ([(MTPushNotificationController *)v6 subscriptionState]== 1)
  {
    [(MTPushNotificationController *)v6 setSubscriptionState:0];
  }

  objc_sync_exit(v6);
}

+ (BOOL)shouldProcessNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 dsid];
  v5 = +[MTAccountController sharedInstance];
  v6 = [v5 activeDsid];

  v7 = 0;
  if (v4 && v6)
  {
    v7 = [v4 isEqualToNumber:v6];
  }

  v8 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 domain];
    v10 = [v3 domainVersion];
    v11 = v10;
    v14 = 138413314;
    v12 = @"NO";
    v15 = v4;
    if (v7)
    {
      v12 = @"YES";
    }

    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Push] Received APNS notification for DSID = %@, currentDsid = %@, domain = %@, version = %@, will process = %@", &v14, 0x34u);
  }

  return v7;
}

+ (BOOL)shouldSyncSubscriptionsForNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:kPodcastsBookkeeperPodcastsDomain];

  if (v5)
  {
    v6 = [v3 domainVersion];
    v7 = [v6 stringValue];

    v8 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    v9 = [v8 podcastsDomainVersion];

    if (v7)
    {
      v5 = [v7 isEqualToString:v9] ^ 1;
    }

    else
    {
      v5 = 1;
    }

    v10 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v3 domain];
      v12 = @"SKIP";
      v14 = 138413058;
      v15 = v11;
      if (v5)
      {
        v12 = @"PROCESS";
      }

      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Push] Notification for domain %@, remote version = %@, local version = %@ --> %@", &v14, 0x2Au);
    }
  }

  return v5;
}

+ (BOOL)shouldSyncUppForNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:kPodcastsBookkeeperUppDomain];

  if (v5)
  {
    v6 = [v3 domainVersion];
    v7 = [v6 stringValue];

    v8 = +[MTUniversalPlaybackPositionTransactionContext UPPDomainVersion];
    if (v7)
    {
      v5 = [v7 isEqualToString:v8] ^ 1;
    }

    else
    {
      v5 = 1;
    }

    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 domain];
      v11 = @"SKIP";
      v13 = 138413058;
      v14 = v10;
      if (v5)
      {
        v11 = @"PROCESS";
      }

      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Push] Notification for domain %@, remote version = %@, local version = %@ --> %@", &v13, 0x2Au);
    }
  }

  return v5;
}

+ (BOOL)shouldSyncFeedUpdateForNotification:(id)a3
{
  v3 = [a3 type];
  v4 = [v3 isEqualToString:kPodcastsPushNotificationTypeFeedUpdate];

  return v4;
}

- (void)keyValueStoreController:(id)a3 transactionDidFinish:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 action];
  if ([v8 isEqualToString:kPodcastsPushNotificationRegisterValue])
  {
    v9 = self;
    objc_sync_enter(v9);
    if ([(MTPushNotificationController *)v9 subscriptionState]!= 1)
    {
      objc_sync_exit(v9);
      goto LABEL_9;
    }

    [(MTPushNotificationController *)v9 setSubscriptionState:2];
    objc_sync_exit(v9);

    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v10 = "[Push] Registered for APNS.";
      v11 = &v15;
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, v13, v10, v11, 2u);
    }
  }

  else
  {
    v9 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 0;
      v10 = "[Push] Could not find a valid action for APNS registration transaction.";
      v11 = &v14;
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5
{
  v5 = a5;
  v6 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[Push] APNS registration transaction failed with error %@. Will retry.", &v8, 0xCu);
  }

  return 0;
}

- (void)keyValueStoreController:(id)a3 transaction:(id)a4 didCancelWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _MTLogCategoryCloudSync();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[Push] APNS registration transaction was canceled with error %@.", &v14, 0xCu);
  }

  v12 = [v9 action];
  if ([v12 isEqualToString:kPodcastsPushNotificationRegisterValue])
  {
    v13 = self;
    objc_sync_enter(v13);
    if ([(MTPushNotificationController *)v13 subscriptionState]== 1)
    {
      [(MTPushNotificationController *)v13 setSubscriptionState:0];
    }

    objc_sync_exit(v13);
  }

  else
  {
    v13 = _MTLogCategoryCloudSync();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Push] Could not find a valid action for APNS registration transaction.", &v14, 2u);
    }
  }
}

- (BOOL)shouldShowAnnouncementNotification:(id)a3
{
  v4 = a3;
  v5 = [(MTPushNotificationController *)self marketingPushHandler];
  v6 = [v5 shouldHandleNotification:v4];

  return v6;
}

- (void)processAnnouncementNotification:(id)a3
{
  v4 = a3;
  v5 = [(MTPushNotificationController *)self marketingPushHandler];
  [v5 handleNotification:v4];
}

@end