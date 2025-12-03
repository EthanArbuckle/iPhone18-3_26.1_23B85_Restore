@interface PHVoicemailNavigationController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (id)_telephonyClient;
- (BOOL)isAccountProvisioningRequired;
- (PHVoicemailListProtocol)blockedViewController;
- (PHVoicemailListProtocol)inboxViewController;
- (PHVoicemailListProtocol)trashViewController;
- (PHVoicemailNavigationController)init;
- (PHVoicemailNoContentViewController)noContentViewController;
- (VMAccountProvisioningViewController)accountProvisioningViewController;
- (VoicemailTabViewController)voicemailTabViewController;
- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)liveVoicemailWelcomeViewController;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)tabBarIconName;
- (id)targetViewControllerForAction:(SEL)action sender:(id)sender;
- (void)_checkMailboxUsage;
- (void)_handleMessageWaitingStateChanged:(id)changed;
- (void)_handleOnlineStateChanged:(id)changed;
- (void)_handlePhoneActivationChangedNotification:(id)notification;
- (void)_handleVoicemailsChangedNotification:(id)notification;
- (void)_updateUIStateForce:(BOOL)force;
- (void)accountsViewControllerDidFinish:(id)finish;
- (void)addNotificationObservers;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)playMessageWithID:(id)d;
- (void)presentOnboardingIfNeeded;
- (void)removeNotificationObservers;
- (void)showViewController:(id)controller playingMessage:(id)message;
- (void)startObservingPreferences;
- (void)stopObservingPreferences;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHVoicemailNavigationController

- (id)tabBarIconName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"VOICEMAIL" value:&stru_10028F310 table:@"General"];

  return v3;
}

+ (id)_telephonyClient
{
  if (_telephonyClient_onceToken_0 != -1)
  {
    +[PHVoicemailNavigationController _telephonyClient];
  }

  v3 = _telephonyClient_staticTelephonyClient_0;

  return v3;
}

void __51__PHVoicemailNavigationController__telephonyClient__block_invoke(id a1)
{
  v3 = dispatch_queue_create("com.apple.mobilephone.voicemail", 0);
  v1 = [[CoreTelephonyClient alloc] initWithQueue:v3];
  v2 = _telephonyClient_staticTelephonyClient_0;
  _telephonyClient_staticTelephonyClient_0 = v1;
}

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  if (__PHVoicemailNavigationControllerCachedBadgeIsCurrent == 1)
  {
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] returning cached value", buf, 2u);
    }
  }

  else
  {
    v4 = objc_opt_new();
    uUIDString = [v4 UUIDString];

    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = uUIDString;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ fetching fresh value on queue with QOS_CLASS_UTILITY", buf, 0xCu);
    }

    v7 = dispatch_get_global_queue(17, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __40__PHVoicemailNavigationController_badge__block_invoke;
    v10[3] = &unk_1002852B8;
    v11 = uUIDString;
    selfCopy = self;
    v2 = uUIDString;
    dispatch_async(v7, v10);
  }

  v9 = *(&__PHVoicemailNavigationControllerCachedBadge + 1);
  v8 = __PHVoicemailNavigationControllerCachedBadge;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

void __40__PHVoicemailNavigationController_badge__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ running on QOS_CLASS_UTILITY", &buf, 0xCu);
  }

  v38 = __PHVoicemailNavigationControllerCachedBadge;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3010000000;
  v45 = "";
  v46 = PhoneBadgeKnownZero;
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  v5 = [v4 accountManager];

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *v39 = 138543362;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ Retrieved accountManager", v39, 0xCu);
  }

  v8 = [v5 isAnyAccountSubscribed];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v11 = *(a1 + 32);
    if (v8)
    {
      v10 = @"YES";
    }

    *v39 = 138543618;
    v40 = v11;
    v41 = 2114;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ isSubscribed: %{public}@", v39, 0x16u);
  }

  v12 = +[(PHApplicationServices *)MPApplicationServices];
  v13 = [v12 voicemailController];
  v14 = [v13 audioMessagesPassingTest:&__block_literal_global_118];
  v15 = [v14 count];
  *(*(&buf + 1) + 40) = v15;

  v16 = PHDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = [NSNumber numberWithUnsignedLongLong:*(*(&buf + 1) + 40)];
    *v39 = 138543618;
    v40 = v17;
    v41 = 2114;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ badgeCount: %{public}@", v39, 0x16u);
  }

  if (v8)
  {
    if (([v5 isOnline] & 1) == 0)
    {
      v19 = PHDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        *v39 = 138543362;
        v40 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ accountManager is offline", v39, 0xCu);
      }

      if ([v5 isMessageWaiting])
      {
        v21 = PHDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          *v39 = 138543362;
          v40 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ message is waiting, setting unknown badge", v39, 0xCu);
        }

        *(*(&buf + 1) + 32) = 0;
      }
    }

    v23 = PHDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      *v39 = 138543362;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ dispatching to main queue", v39, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __40__PHVoicemailNavigationController_badge__block_invoke_120;
    block[3] = &unk_1002860B8;
    v35[1] = &buf;
    v25 = v35;
    v35[0] = *(a1 + 32);
    v36 = v38;
    v37 = *(a1 + 40);
    dispatch_sync(&_dispatch_main_q, block);
  }

  else
  {
    v26 = PHDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      *v39 = 138543362;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ getSubscriptionInfo from telephony client", v39, 0xCu);
    }

    v28 = [*(a1 + 40) _telephonyClient];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __40__PHVoicemailNavigationController_badge__block_invoke_121;
    v31[3] = &unk_100286108;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v32[0] = v29;
    v32[1] = &buf;
    v32[2] = v30;
    v33 = v38;
    [v28 getSubscriptionInfo:v31];

    v25 = v32;
  }

  _Block_object_dispose(&buf, 8);
}

BOOL __40__PHVoicemailNavigationController_badge__block_invoke_115(id a1, MPMessage *a2)
{
  v2 = a2;
  v3 = ([(MPMessage *)v2 isRead]& 1) == 0 && [(MPMessage *)v2 folder]== 1;

  return v3;
}

void __40__PHVoicemailNavigationController_badge__block_invoke_120(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 32);
  if ((v3 & 1) == 0)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ badge is unknown, setting badge to PhoneBadgeKnownZero", &v10, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 32) = *PhoneBadgeKnownZero;
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 32);
  }

  __PHVoicemailNavigationControllerCachedBadgeIsCurrent = 1;
  __PHVoicemailNavigationControllerCachedBadge = *(v2 + 32);
  if (v3 != *(a1 + 48) || *(v2 + 40) != *(a1 + 56))
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = PhoneStringForBadgeValue();
      v9 = PhoneStringForBadgeValue();
      v10 = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ badge is being updated with %{public}@ from %{public}@", &v10, 0x20u);
    }

    PhoneBadgeChanged(*(a1 + 64));
  }
}

void __40__PHVoicemailNavigationController_badge__block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__PHVoicemailNavigationController_badge__block_invoke_121_cold_1();
    }
  }

  else
  {
    v20 = 0;
    v7 = dispatch_group_create();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v5;
    v8 = [v5 subscriptionsInUse];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          if (([v13 isSimHidden] & 1) == 0)
          {
            v14 = PHDefaultLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              *buf = 138543362;
              v36 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ Starting dispatch groups for subscription contexts.", buf, 0xCu);
            }

            dispatch_group_enter(v7);
            v16 = [*(a1 + 48) _telephonyClient];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = __40__PHVoicemailNavigationController_badge__block_invoke_122;
            v27[3] = &unk_1002860E0;
            v28 = *(a1 + 32);
            v17 = v7;
            v18 = *(a1 + 40);
            v29 = v17;
            v30 = v18;
            [v16 getVoicemailInfo:v13 completion:v27];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __40__PHVoicemailNavigationController_badge__block_invoke_124;
    block[3] = &unk_1002860B8;
    v25 = *(a1 + 56);
    v22 = *(a1 + 32);
    v19 = v22;
    v24 = v22;
    v26 = *(a1 + 48);
    dispatch_group_notify(v7, &_dispatch_main_q, block);

    v6 = v20;
    v5 = v21;
  }
}

void __40__PHVoicemailNavigationController_badge__block_invoke_122(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __40__PHVoicemailNavigationController_badge__block_invoke_122_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      if (a2)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 1024;
      v20 = [v8 intValue];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ Voicemail info returned available=%@, count=%d", &v15, 0x1Cu);
    }

    if (a2)
    {
      v14 = [v8 intValue];
      *(*(*(a1 + 48) + 8) + 40) += v14 & ~(v14 >> 31);
      *(*(*(a1 + 48) + 8) + 32) = *(*(*(a1 + 48) + 8) + 40) != 0;
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

__n128 __40__PHVoicemailNavigationController_badge__block_invoke_124(uint64_t a1)
{
  __PHVoicemailNavigationControllerCachedBadgeIsCurrent = 1;
  v2 = *(*(a1 + 40) + 8);
  result = v2[2];
  __PHVoicemailNavigationControllerCachedBadge = result;
  if (v2[2].n128_u8[0] != *(a1 + 48) || v2[2].n128_u64[1] != *(a1 + 56))
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = PhoneStringForBadgeValue();
      v7 = PhoneStringForBadgeValue();
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ badge is being updated with %{public}@ from %{public}@", &v10, 0x20u);
    }

    PhoneBadgeChanged(*(a1 + 64));
  }

  if ((__PHVoicemailNavigationControllerCachedBadge & 1) == 0)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "+[VoicemailNavigationController badge] %{public}@ Zeroing out badge while we wait for the correct answer.", &v10, 0xCu);
    }

    result = PhoneBadgeKnownZero;
    __PHVoicemailNavigationControllerCachedBadge = PhoneBadgeKnownZero;
  }

  return result;
}

- (PHVoicemailNavigationController)init
{
  v4.receiver = self;
  v4.super_class = PHVoicemailNavigationController;
  v2 = [(PHVoicemailNavigationController *)&v4 init];
  if (v2)
  {
    InitializeIconAndTitle();
    v2->_active = 1;
    [(PHVoicemailNavigationController *)v2 addNotificationObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(PHVoicemailNavigationController *)self removeNotificationObservers];
  v3.receiver = self;
  v3.super_class = PHVoicemailNavigationController;
  [(PhoneNavigationController *)&v3 dealloc];
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  +[CATransaction begin];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __67__PHVoicemailNavigationController_popToRootViewControllerAnimated___block_invoke;
  v8[3] = &unk_100284FD0;
  v8[4] = self;
  [CATransaction setCompletionBlock:v8];
  v7.receiver = self;
  v7.super_class = PHVoicemailNavigationController;
  v5 = [(PHVoicemailNavigationController *)&v7 popToRootViewControllerAnimated:animatedCopy];
  +[CATransaction commit];

  return v5;
}

void __67__PHVoicemailNavigationController_popToRootViewControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = [v3 hasContentToDisplay];
    v2 = *(a1 + 32);
    if ((v4 & 1) == 0)
    {
      v5 = *(v2 + 72);
      *(v2 + 72) = 0;

      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 80) && ([*(v2 + 72) hasContentToDisplay] & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = 0;
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PHVoicemailNavigationController;
  [(PHVoicemailNavigationController *)&v7 viewDidLoad];
  navigationBar = [(PHVoicemailNavigationController *)self navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  [(PHVoicemailNavigationController *)self _updateUIStateForce:1];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  [(PHVoicemailNavigationController *)self _checkMailboxUsage];
  v5 = objc_opt_new();
  tabBarItem = [(PHVoicemailNavigationController *)self tabBarItem];
  [tabBarItem setStandardAppearance:v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PHVoicemailNavigationController;
  [(PHVoicemailNavigationController *)&v8 viewDidAppear:appear];
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "VoicemailNavigationController viewDidAppear:", v7, 2u);
  }

  v5 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(5, self);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHVoicemailNavigationController;
  [(PHVoicemailNavigationController *)&v4 viewWillAppear:appear];
  [(PHVoicemailNavigationController *)self presentOnboardingIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PHVoicemailNavigationController;
  [(PHVoicemailNavigationController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)presentOnboardingIfNeeded
{
  if (+[_TtC11MobilePhone34LiveVoicemailWelcomeViewController shouldShowVoicemailOnboarding])
  {
    presentedViewController = [(PHVoicemailNavigationController *)self presentedViewController];
    liveVoicemailWelcomeViewController = [(PHVoicemailNavigationController *)self liveVoicemailWelcomeViewController];

    if (presentedViewController != liveVoicemailWelcomeViewController)
    {
      liveVoicemailWelcomeViewController2 = [(PHVoicemailNavigationController *)self liveVoicemailWelcomeViewController];
      [(PhoneNavigationController *)self presentViewController:liveVoicemailWelcomeViewController2 animated:1 completion:0];
    }
  }
}

- (id)targetViewControllerForAction:(SEL)action sender:(id)sender
{
  if ("showDetailViewController:sender:" == action)
  {
    selfCopy = self;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PHVoicemailNavigationController;
    selfCopy = [PHVoicemailNavigationController targetViewControllerForAction:"targetViewControllerForAction:sender:" sender:?];
  }

  return selfCopy;
}

- (void)showViewController:(id)controller playingMessage:(id)message
{
  messageCopy = message;
  v6 = [controller copy];
  [(PhoneNavigationController *)self setViewControllers:v6];

  topViewController = [(PHVoicemailNavigationController *)self topViewController];
  if (messageCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [topViewController playMessage:messageCopy];
    }
  }
}

- (void)playMessageWithID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  phoneClassicEnabled = [v5 phoneClassicEnabled];

  if (phoneClassicEnabled)
  {
    messageUUID = [dCopy messageUUID];

    if (messageUUID)
    {
      voicemailTabViewController = [(PHVoicemailNavigationController *)self voicemailTabViewController];
      messageUUID2 = [dCopy messageUUID];
      [voicemailTabViewController presentVoicemailDetailsForUUID:messageUUID2];
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__2;
    v15[4] = __Block_byref_object_dispose__2;
    inboxViewController = [(PHVoicemailNavigationController *)self inboxViewController];
    v16 = [NSMutableArray arrayWithObject:inboxViewController];

    voicemailController = [(PhoneNavigationController *)self voicemailController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __53__PHVoicemailNavigationController_playMessageWithID___block_invoke;
    v12[3] = &unk_100286158;
    v14 = v15;
    v12[4] = self;
    v13 = dCopy;
    [voicemailController messageForIdentifier:v13 completionBlock:v12];

    _Block_object_dispose(v15, 8);
  }
}

void __53__PHVoicemailNavigationController_playMessageWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSOperationQueue mainQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__PHVoicemailNavigationController_playMessageWithID___block_invoke_2;
  v9[3] = &unk_100286130;
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [v4 addOperationWithBlock:v9];
}

id __53__PHVoicemailNavigationController_playMessageWithID___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 folder] == 4)
    {
      v3 = *(*(*(a1 + 56) + 8) + 40);
      v4 = [*(a1 + 40) blockedViewController];
    }

    else
    {
      if ([*(a1 + 32) folder] != 2)
      {
LABEL_10:
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to play message %@", &v11, 0xCu);
        }

        return [*(a1 + 40) showViewController:*(*(*(a1 + 56) + 8) + 40) playingMessage:*(a1 + 32)];
      }

      v3 = *(*(*(a1 + 56) + 8) + 40);
      v4 = [*(a1 + 40) trashViewController];
    }

    v8 = v4;
    [v3 addObject:v4];

    goto LABEL_10;
  }

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not find message from ID %@", &v11, 0xCu);
  }

  return [*(a1 + 40) setQueuedMessage:*(a1 + 48)];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  voicemailRecordID = [lCopy voicemailRecordID];
  voicemailMessageUUID = [lCopy voicemailMessageUUID];
  if (voicemailMessageUUID)
  {
    v7 = objc_opt_new();
    callScreeningEnabled = [v7 callScreeningEnabled];

    if ((callScreeningEnabled & 1) == 0)
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(PHVoicemailNavigationController *)lCopy handleURL:v9];
      }
    }

    v10 = [[MPMessageID alloc] initWithUuid:voicemailMessageUUID];
  }

  else
  {
    if (voicemailRecordID < 1)
    {
LABEL_15:
      inboxViewController = [(PHVoicemailNavigationController *)self inboxViewController];
      v16 = inboxViewController;
      v15 = [NSArray arrayWithObjects:&v16 count:1];
      [(PHVoicemailNavigationController *)self showViewController:v15 playingMessage:0];

      goto LABEL_16;
    }

    v11 = objc_opt_new();
    callScreeningEnabled2 = [v11 callScreeningEnabled];

    if (callScreeningEnabled2)
    {
      v13 = PHDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(PHVoicemailNavigationController *)lCopy handleURL:v13];
      }
    }

    v10 = [[MPMessageID alloc] initWithValue:voicemailRecordID];
  }

  inboxViewController = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  [(PHVoicemailNavigationController *)self playMessageWithID:v10];
LABEL_16:
}

- (void)_updateUIStateForce:(BOOL)force
{
  if ([(PHVoicemailNavigationController *)self isViewLoaded])
  {
    v5 = PHPreferencesGetValue();
    bOOLValue = [v5 BOOLValue];

    isAccountProvisioningRequired = [(PHVoicemailNavigationController *)self isAccountProvisioningRequired];
    voicemailController = [(PhoneNavigationController *)self voicemailController];
    accountManager = [voicemailController accountManager];
    if ([accountManager isAnyAccountSubscribed])
    {
      launchedToTest = 1;
    }

    else
    {
      launchedToTest = [UIApp launchedToTest];
    }

    if ([UIApp hasEnhancedVoicemail])
    {
      v11 = 0;
      if (force)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = TUCallScreeningEnabled() ^ 1;
      if (force)
      {
        goto LABEL_12;
      }
    }

    if (isAccountProvisioningRequired != [(PHVoicemailNavigationController *)self previousAccountProvisioningRequired]|| ((launchedToTest ^ [(PHVoicemailNavigationController *)self sharedServiceIsSubscribedPreviousValue]| bOOLValue) & 1) != 0 || TUCallScreeningEnabled())
    {
LABEL_12:
      if (isAccountProvisioningRequired | bOOLValue)
      {
        viewControllers = [(PHVoicemailNavigationController *)self viewControllers];
        accountProvisioningViewController = [(PHVoicemailNavigationController *)self accountProvisioningViewController];
        v14 = [viewControllers containsObject:accountProvisioningViewController];

        if ((v14 & 1) == 0)
        {
          [(PHVoicemailNavigationController *)self setAccountProvisioningViewController:0];
          accountProvisioningViewController2 = [(PHVoicemailNavigationController *)self accountProvisioningViewController];
          v35 = accountProvisioningViewController2;
          v16 = &v35;
LABEL_24:
          viewController2 = [NSArray arrayWithObjects:v16 count:1];
          [(PhoneNavigationController *)self setViewControllers:viewController2];
          goto LABEL_25;
        }
      }

      else
      {
        voicemailController2 = [(PhoneNavigationController *)self voicemailController];
        accountManager2 = [voicemailController2 accountManager];
        if ([accountManager2 isAnyAccountSubscribed] & 1) != 0 || (objc_msgSend(UIApp, "launchedToTest") & 1) != 0 || (TUCallScreeningEnabled())
        {
        }

        else
        {

          if ((v11 & 1) == 0)
          {
            viewControllers2 = [(PHVoicemailNavigationController *)self viewControllers];
            noContentViewController = [(PHVoicemailNavigationController *)self noContentViewController];
            v31 = [viewControllers2 containsObject:noContentViewController];

            if (v31)
            {
              goto LABEL_26;
            }

            accountProvisioningViewController2 = [(PHVoicemailNavigationController *)self noContentViewController];
            v32 = accountProvisioningViewController2;
            v16 = &v32;
            goto LABEL_24;
          }
        }

        v19 = objc_opt_new();
        phoneClassicEnabled = [v19 phoneClassicEnabled];

        viewControllers3 = [(PHVoicemailNavigationController *)self viewControllers];
        if (phoneClassicEnabled)
        {
          voicemailTabViewController = [(PHVoicemailNavigationController *)self voicemailTabViewController];
          viewController = [voicemailTabViewController viewController];
          v24 = [viewControllers3 containsObject:viewController];

          if ((v24 & 1) == 0)
          {
            accountProvisioningViewController2 = [(PHVoicemailNavigationController *)self voicemailTabViewController];
            viewController2 = [accountProvisioningViewController2 viewController];
            v34 = viewController2;
            v26 = [NSArray arrayWithObjects:&v34 count:1];
            [(PhoneNavigationController *)self setViewControllers:v26];

LABEL_25:
          }
        }

        else
        {
          inboxViewController = [(PHVoicemailNavigationController *)self inboxViewController];
          v28 = [viewControllers3 containsObject:inboxViewController];

          if ((v28 & 1) == 0)
          {
            accountProvisioningViewController2 = [(PHVoicemailNavigationController *)self inboxViewController];
            v33 = accountProvisioningViewController2;
            v16 = &v33;
            goto LABEL_24;
          }
        }
      }

LABEL_26:
      [(PHVoicemailNavigationController *)self setPreviousAccountProvisioningRequired:isAccountProvisioningRequired];
      [(PHVoicemailNavigationController *)self setSharedServiceIsSubscribedPreviousValue:launchedToTest];
    }
  }
}

- (void)_checkMailboxUsage
{
  v3 = +[MPVoicemailUsageService shared];
  [v3 checkUsageAndPresentIfNeededWithHost:self];
}

- (void)addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handlePhoneActivationChangedNotification:" name:@"PhoneApplicationActivatedNotification" object:0];
  [v3 addObserver:self selector:"_handlePhoneActivationChangedNotification:" name:@"PhoneApplicationDeactivatedNotification" object:0];
  [v3 addObserver:self selector:"_handleVoicemailsChangedNotification:" name:@"MPVoicemailControllerMessagesDidChangeNotification" object:0];
  [v3 addObserver:self selector:"_handleApplicationResumeNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  objc_initWeak(&location, self);
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  accountManager = [v4 accountManager];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __59__PHVoicemailNavigationController_addNotificationObservers__block_invoke;
  v10 = &unk_100285148;
  objc_copyWeak(&v11, &location);
  v6 = [accountManager listenForChangesWithHandler:&v7];
  [(PHVoicemailNavigationController *)self setListeners:v6, v7, v8, v9, v10];

  TUAddTelephonyCenterObserver();
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__PHVoicemailNavigationController_addNotificationObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHVoicemailNavigationController - handling account manager updates %@", &v12, 0xCu);
    }

    v6 = +[MPVoicemailAccountManagerUpdate accounts];
    v7 = [v3 contains:v6];

    if (v7)
    {
      [WeakRetained _handleVoicemailManagerAccountsDidChange];
    }

    v8 = +[MPVoicemailAccountManagerUpdate storageUsage];
    v9 = [v3 contains:v8];

    if (v9)
    {
      [WeakRetained _handleStorageUsageChanged];
    }

    v10 = +[MPVoicemailAccountManagerUpdate subscriptionStatus];
    v11 = [v3 contains:v10];

    if (v11)
    {
      [WeakRetained _handleVoicemailSubscriptionStatusChanged];
    }
  }
}

- (void)removeNotificationObservers
{
  TURemoveEveryTelephonyCenterObserver();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)_handleVoicemailsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUGuaranteeExecutionOnMainThreadAsync();
}

void __72__PHVoicemailNavigationController__handleVoicemailsChangedNotification___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_handleVoicemailsChangedNotification: %@", &v6, 0xCu);
  }

  [*(a1 + 40) _invalidateBadge];
  [*(a1 + 40) _updateUIState];
  v4 = [*(a1 + 40) queuedMessage];

  if (v4)
  {
    v5 = [*(a1 + 40) queuedMessage];
    [*(a1 + 40) setQueuedMessage:0];
    [*(a1 + 40) playMessageWithID:v5];
  }
}

id __76__PHVoicemailNavigationController__handleVoicemailSubscriptionStatusChanged__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling: VoicemailSubscriptionStatusChanged", &v5, 0xCu);
  }

  [*(a1 + 32) _invalidateBadge];
  return [*(a1 + 32) _updateUIState];
}

- (void)_handleOnlineStateChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  TUGuaranteeExecutionOnMainThreadAsync();
}

id __61__PHVoicemailNavigationController__handleOnlineStateChanged___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_handleOnlineStateChanged: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateBadge];
}

- (void)_handleMessageWaitingStateChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  TUGuaranteeExecutionOnMainThreadAsync();
}

id __69__PHVoicemailNavigationController__handleMessageWaitingStateChanged___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_handleMessageWaitingStateChanged: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateBadge];
}

- (void)_handlePhoneActivationChangedNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
  TUGuaranteeExecutionOnMainThreadAsync();
}

void __77__PHVoicemailNavigationController__handlePhoneActivationChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [v2 isEqualToString:@"PhoneApplicationActivatedNotification"];

  if (v3)
  {
    *(*(a1 + 40) + 50) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) name];
    v5 = [v4 isEqualToString:@"PhoneApplicationDeactivatedNotification"];

    if (v5)
    {
      v6 = +[PHVoicemailPlayerController sharedPlayerController];
      [v6 pause];

      *(*(a1 + 40) + 50) = 0;
    }

    else
    {
      v7 = [NSString stringWithFormat:@"Received active notification I don't understand: %@", *(a1 + 32)];
      NSLog(@"** TUAssertion failure: %@", v7);

      if (_TUAssertShouldCrashApplication())
      {
        v8 = +[NSAssertionHandler currentHandler];
        [v8 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PHVoicemailNavigationController.m" lineNumber:535 description:{@"Received active notification I don't understand: %@", *(a1 + 32)}];
      }
    }
  }
}

id __76__PHVoicemailNavigationController__handleCTIndicatorsVoicemailNotification___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling CT indicators notification by invalidating badge count", v4, 2u);
  }

  return [*(a1 + 32) _invalidateBadge];
}

id __75__PHVoicemailNavigationController__handleVoicemailManagerAccountsDidChange__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailManagerAccountsDidChange", &v5, 0xCu);
  }

  return [*(a1 + 32) _updateUIState];
}

- (void)accountsViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  accountProvisioningViewController = [(PHVoicemailNavigationController *)self accountProvisioningViewController];

  if (accountProvisioningViewController == finishCopy)
  {
    [(PHVoicemailNavigationController *)self setAccountProvisioningViewController:0];

    [(PHVoicemailNavigationController *)self _updateUIStateForce:1];
  }
}

- (VoicemailTabViewController)voicemailTabViewController
{
  voicemailTabViewController = self->_voicemailTabViewController;
  if (!voicemailTabViewController)
  {
    v4 = objc_alloc_init(VoicemailTabViewController);
    v5 = self->_voicemailTabViewController;
    self->_voicemailTabViewController = v4;

    voicemailTabViewController = self->_voicemailTabViewController;
  }

  return voicemailTabViewController;
}

- (PHVoicemailListProtocol)inboxViewController
{
  inboxViewController = self->_inboxViewController;
  if (!inboxViewController)
  {
    v4 = [PHVoicemailInboxListViewController alloc];
    voicemailController = [(PhoneNavigationController *)self voicemailController];
    v6 = [(PHVoicemailInboxListViewController *)v4 initWithNavigationController:self voicemailController:voicemailController];
    v7 = self->_inboxViewController;
    self->_inboxViewController = v6;

    inboxViewController = self->_inboxViewController;
  }

  return inboxViewController;
}

- (PHVoicemailListProtocol)trashViewController
{
  trashViewController = self->_trashViewController;
  if (!trashViewController)
  {
    v4 = [PHVoicemailTrashListViewController alloc];
    voicemailController = [(PhoneNavigationController *)self voicemailController];
    v6 = [(MPVoicemailTableViewController *)v4 initWithNavigationController:self voicemailController:voicemailController];
    v7 = self->_trashViewController;
    self->_trashViewController = v6;

    trashViewController = self->_trashViewController;
  }

  return trashViewController;
}

- (PHVoicemailListProtocol)blockedViewController
{
  blockedViewController = self->_blockedViewController;
  if (!blockedViewController)
  {
    v4 = [PHVoicemailBlockedListViewController alloc];
    voicemailController = [(PhoneNavigationController *)self voicemailController];
    v6 = [(MPVoicemailTableViewController *)v4 initWithNavigationController:self voicemailController:voicemailController];
    v7 = self->_blockedViewController;
    self->_blockedViewController = v6;

    blockedViewController = self->_blockedViewController;
  }

  return blockedViewController;
}

- (_TtC11MobilePhone34LiveVoicemailWelcomeViewController)liveVoicemailWelcomeViewController
{
  liveVoicemailWelcomeViewController = self->_liveVoicemailWelcomeViewController;
  if (!liveVoicemailWelcomeViewController)
  {
    v4 = [[_TtC11MobilePhone34LiveVoicemailWelcomeViewController alloc] initWithDelegate:self];
    v5 = self->_liveVoicemailWelcomeViewController;
    self->_liveVoicemailWelcomeViewController = v4;

    liveVoicemailWelcomeViewController = self->_liveVoicemailWelcomeViewController;
  }

  return liveVoicemailWelcomeViewController;
}

- (PHVoicemailNoContentViewController)noContentViewController
{
  noContentViewController = self->_noContentViewController;
  if (!noContentViewController)
  {
    v4 = objc_alloc_init(PHVoicemailNoContentViewController);
    v5 = self->_noContentViewController;
    self->_noContentViewController = v4;

    noContentViewController = self->_noContentViewController;
  }

  return noContentViewController;
}

- (VMAccountProvisioningViewController)accountProvisioningViewController
{
  accountProvisioningViewController = self->_accountProvisioningViewController;
  if (!accountProvisioningViewController)
  {
    v4 = [VMAccountProvisioningViewController alloc];
    voicemailController = [(PhoneNavigationController *)self voicemailController];
    accountManager = [voicemailController accountManager];
    v7 = [(VMViewController *)v4 initWithManager:accountManager];
    v8 = self->_accountProvisioningViewController;
    self->_accountProvisioningViewController = v7;

    [(VMAccountsViewController *)self->_accountProvisioningViewController setDelegate:self];
    accountProvisioningViewController = self->_accountProvisioningViewController;
  }

  return accountProvisioningViewController;
}

- (void)startObservingPreferences
{
  selfCopy = self;
  PHVoicemailNavigationController.startObservingPreferences()();
}

- (void)stopObservingPreferences
{
  type metadata accessor for NSMutableArray();
  selfCopy = self;
  v3 = NSArray.init(arrayLiteral:)();
  [(PHVoicemailNavigationController *)selfCopy setObservations:v3];
}

- (BOOL)isAccountProvisioningRequired
{
  selfCopy = self;
  v3 = PHVoicemailNavigationController.isAccountProvisioningRequired.getter();

  return v3 & 1;
}

- (void)handleURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Received unsupported vmshow action. URL=%{PUBLIC}@ please clone a radar for originator of URL. Expected format vmshow:?recordID=", &v2, 0xCu);
}

- (void)handleURL:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Received unsupported vmshow action. URL=%{PUBLIC}@ please clone a radar for originator of URL. Expected format vmshow:?uuid=", &v2, 0xCu);
}

@end