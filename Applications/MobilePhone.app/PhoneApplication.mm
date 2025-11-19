@interface PhoneApplication
- (BOOL)_activeFaceTimeCallExists;
- (BOOL)_faceTimeInvitationExists;
- (BOOL)activeFaceTimeCallExists;
- (BOOL)alwaysShowLocalVideo;
- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4;
- (BOOL)applicationSuspendWithSettings:(id)a3;
- (BOOL)badgesMissedFaceTimeAudio;
- (BOOL)badgesMissedFaceTimeVideo;
- (BOOL)badgesMissedTelephonyCalls;
- (BOOL)contentViewCanRotate;
- (BOOL)dialVoicemailWithAccountID:(id)a3;
- (BOOL)faceTimeAudioIsAvailable;
- (BOOL)faceTimeInvitationExists;
- (BOOL)faceTimeVideoIsAvailable;
- (BOOL)hasEnhancedVoicemail;
- (BOOL)inCall;
- (BOOL)inFaceTime;
- (BOOL)isLowGraphicsPerformanceDevice;
- (BOOL)runTest:(id)a3 options:(id)a4;
- (BOOL)showSplashScreenOnSignin;
- (BOOL)showsCallsFromService:(int)a3;
- (BOOL)showsFaceTimeAudio;
- (BOOL)showsFaceTimeAudioFavorites;
- (BOOL)showsFaceTimeAudioRecents;
- (BOOL)showsFaceTimeVideo;
- (BOOL)showsFaceTimeVideoFavorites;
- (BOOL)showsFaceTimeVideoRecents;
- (BOOL)showsPhoneDialer;
- (BOOL)showsPhoneVoicemail;
- (BOOL)showsTelephonyCalls;
- (BOOL)showsTelephonyFavorites;
- (BOOL)showsTelephonyRecents;
- (BOOL)showsThirdPartyRecents;
- (BOOL)tabBarCanSlide;
- (BOOL)tabBarFillsScreen;
- (BOOL)usesBlendModes;
- (CGRect)phoneViewTabBarContentFrame;
- (PhoneApplication)init;
- (TUCallCenter)callCenter;
- (UIMenu)menuAudioOutput;
- (UIMenu)menuItemRemoveAllRecents;
- (id)_createRecentCallWithCallerId:(id)a3;
- (id)_tableFromViewController:(id)a3;
- (id)callHistoryControllerWithCoalescingStrategy:(unint64_t)a3;
- (id)firstScrollViewInView:(id)a3;
- (id)makeAudioOutputItemWithRoute:(id)a3;
- (id)makeAudioOutputItems;
- (id)nameOfDefaultImageToUpdateAtSuspension;
- (id)scrollTestsWithCount:(int64_t)a3 forScrollView:(id)a4;
- (int)userInterfaceScreenType;
- (unint64_t)callHistoryControllerOptions;
- (void)TestAddUnknownFavorite;
- (void)_localeChangedNotification:(id)a3;
- (void)_scroll;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)applicationOpenURL:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)failTestOnMainThread:(id)a3 reason:(id)a4;
- (void)finishTestOnMainThread:(id)a3;
- (void)handleApplicationFinishedSnapshottingNotification:(id)a3;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3;
- (void)modifyTopLevelMenuEdit:(id)a3;
- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4;
- (void)openURL:(id)a3 withCompletionHandler:(id)a4;
- (void)prepareForDefaultImageSnapshotForScreen:(id)a3;
- (void)removeAllRecents:(id)a3;
- (void)removeUnnecessarySubMenusEdit:(id)a3;
- (void)removeUnnecessaryTopLevelMenus:(id)a3;
- (void)runSwitchTabTestWithTabViewController:(id)a3 fromTab:(int)a4 switchTo:(int)a5 numberOfIterations:(int64_t)a6 testNameReference:(const void *)a7;
- (void)setIgnoresInteractionEvents:(BOOL)a3;
- (void)startScrollTest;
- (void)startScrollVoicemailWithInteractionTest;
- (void)startScrollWithInteractionTest;
- (void)startSwitchTest:(int)a3;
- (void)startTestOnMainThread:(id)a3;
- (void)switchToTabWaitingForViewDidLoad:(PhoneTabBarController *)a3 to:(int)a4 completionHandler:(id)a5;
- (void)tabBarControllerViewDidAppear:(id)a3;
- (void)warmInCallServiceIfNecessary;
@end

@implementation PhoneApplication

- (PhoneApplication)init
{
  v6.receiver = self;
  v6.super_class = PhoneApplication;
  v2 = [(PhoneApplication *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v3;
  }

  return v2;
}

- (void)applicationDidFinishLaunching:(id)a3
{
  v12 = a3;
  if ((__HasInitialized & 1) == 0)
  {
    v4 = +[IDSServiceAvailabilityController sharedInstance];
    [v4 addListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameCalling];

    v5 = +[IDSServiceAvailabilityController sharedInstance];
    [v5 addListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameFaceTime];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_localeChangedNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v6 addObserver:self selector:"handleIDSServiceAvailabilityDidChangeNotification:" name:IDSServiceAvailabilityDidChangeNotification object:0];
    [v6 addObserver:self selector:"handleApplicationFinishedSnapshottingNotification:" name:_UIApplicationDidFinishSuspensionSnapshotNotification object:0];
    [v6 addObserver:self selector:"tabBarControllerViewDidAppear:" name:@"PHPhoneTabBarControllerViewDidAppearNotification" object:0];
    [(PhoneApplication *)self setReceivesMemoryWarnings:1];
    v7 = +[UIApplication sharedApplication];
    [v7 setDelegate:self];

    getenv("LogPhoneTransitionTimes");
    self->_launchTime = CFAbsoluteTimeGetCurrent();
    __HasInitialized = 1;
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 registerDefaults:&off_100295558];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    ABAddressBookSetAutorotationEnabled();
  }

  if ([UIApp userInterfaceStyle] == 1)
  {
    v11 = +[UIColor clearColor];
    [(PhoneApplication *)self _setDefaultTopNavBarTintColor:v11];
  }
}

- (id)nameOfDefaultImageToUpdateAtSuspension
{
  if ([(PhoneApplication *)self shouldSnapshot])
  {
    v3 = [(PhoneApplication *)self rootViewController];
    v4 = [v3 baseViewController];

    if ([v4 shouldSnapshot])
    {
      v5 = [objc_opt_class() defaultPNGName];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen:%@", &v13, 0xCu);
  }

  v6 = +[UIScreen mainScreen];

  if (v6 == v4)
  {
    v7 = [(PhoneApplication *)self shouldSnapshot];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen: is considering snapshotting for main screen, shouldSnapshot=%d", &v13, 8u);
    }

    if (v7)
    {
      v9 = [(PhoneApplication *)self rootViewController];
      v10 = [v9 baseViewController];

      v11 = [v10 shouldSnapshot];
      v12 = PHDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v10;
        v15 = 1024;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen: view controller %@ should snapshot=%d", &v13, 0x12u);
      }

      if (v11)
      {
        [v10 prepareForSnapshot];
      }
    }
  }
}

- (void)handleApplicationFinishedSnapshottingNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-handleApplicationFinishedSnapshottingNotification:%@", &v6, 0xCu);
  }

  [(PhoneApplication *)self _resetCurrentViewController];
}

- (void)warmInCallServiceIfNecessary
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:TUBundleIdentifierMobilePhoneApplication];

  v5 = PHDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asking to prewarm InCallService...", buf, 2u);
    }

    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v5, &__block_literal_global_0);
  }

  else if (v6)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prewarming InCallService...", v7, 2u);
  }
}

void __48__PhoneApplication_warmInCallServiceIfNecessary__block_invoke(id a1)
{
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "prewarming InCallService...", buf, 2u);
  }

  v2 = objc_alloc_init(CUTWeakLinkClass());
  v3 = TUBundleIdentifierInCallServiceApplication;
  if ([v2 pidForApplication:TUBundleIdentifierInCallServiceApplication] == -1)
  {
    [v2 openApplication:v3 options:&__NSDictionary0__struct withResult:&__block_literal_global_143];
  }

  else
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InCallService is already running...", v5, 2u);
    }
  }
}

void __48__PhoneApplication_warmInCallServiceIfNecessary__block_invoke_140(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__PhoneApplication_warmInCallServiceIfNecessary__block_invoke_140_cold_1(v2, v3);
    }
  }
}

- (BOOL)applicationSuspendWithSettings:(id)a3
{
  v4 = a3;
  if ([UIApp usesUnifiedInterface])
  {
    v5 = @"Default";
  }

  else
  {
    v6 = [(PhoneRootViewController *)self->_rootController baseViewController];
    v5 = [objc_opt_class() defaultPNGName];

    if (!v5)
    {
      [v4 removeObjectForKey:kUISuspendedDefaultPNGKey];
      goto LABEL_5;
    }
  }

  [v4 setObject:v5 forKey:kUISuspendedDefaultPNGKey];

LABEL_5:
  return 0;
}

- (CGRect)phoneViewTabBarContentFrame
{
  v2 = [(PhoneRootViewController *)self->_rootController contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)dealloc
{
  [(PhoneApplication *)self _resetCurrentViewController];
  v3 = +[IDSServiceAvailabilityController sharedInstance];
  [v3 removeListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameCalling];

  v4 = +[IDSServiceAvailabilityController sharedInstance];
  [v4 removeListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameFaceTime];

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveObserver();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = PhoneApplication;
  [(PhoneApplication *)&v7 dealloc];
}

- (void)_localeChangedNotification:(id)a3
{
  ResetSharedNumberFormatter();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PhoneApplicationLocaleChangedNotification" object:0];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3
{
  v4 = [(PhoneApplication *)self callHistoryControllerOptions];
  v5 = [(PhoneApplication *)self callHistoryController];
  [v5 setOptions:v4];

  if ((![(PhoneApplication *)self showsTelephonyCalls]|| ![(PhoneApplication *)self telephonyCallingIsAvailable]) && (![(PhoneApplication *)self showsFaceTimeAudio]|| ![(PhoneApplication *)self faceTimeAudioIsAvailable]) && (![(PhoneApplication *)self showsFaceTimeVideo]|| ![(PhoneApplication *)self faceTimeVideoIsAvailable]))
  {
    rootController = self->_rootController;

    [(PhoneRootViewController *)rootController showFaceTimeFirstRunViewIfNeeded];
  }
}

- (void)didReceiveMemoryWarning
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneApplication didReceiveMemoryWarning", v4, 2u);
  }

  if ([(PhoneApplication *)self isSuspended])
  {
    if (([(PhoneApplication *)self isSuspendedEventsOnly]& 1) == 0)
    {
      ResetSharedNumberFormatter();
    }
  }
}

- (void)tabBarControllerViewDidAppear:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 currentTabViewType];

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "tabBarControllerViewDidAppear with tab: %d", v7, 8u);
  }

  if (v5 == 2)
  {
    [(PhoneApplication *)self warmInCallServiceIfNecessary];
  }
}

- (void)openURL:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"non-nil";
    if (!v7)
    {
      v9 = @"nil";
    }

    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = PhoneApplication;
  [(PhoneApplication *)&v10 openURL:v6 withCompletionHandler:v7];
}

- (void)applicationOpenURL:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "applicationOpenURL %@", buf, 0xCu);
  }

  v6 = [v4 scheme];
  v7 = [v6 lowercaseString];

  v8 = [(PhoneApplication *)self rootViewController];
  v9 = [v8 baseViewController];

  if ([v7 isEqualToString:@"vmshow"])
  {
    v10 = [v4 voicemailMessageUUID];
    if (![(PhoneApplication *)self hasEnhancedVoicemail]&& !v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __39__PhoneApplication_applicationOpenURL___block_invoke;
      block[3] = &unk_100284FD0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);

      v9 = 0;
    }
  }

  if (v9)
  {
    v11 = [(PhoneApplication *)self rootViewController];
    v12 = [v11 view];
    [v12 setAlpha:1.0];

    if (objc_opt_respondsToSelector())
    {
      [v9 handleURL:v4];
    }
  }
}

- (BOOL)dialVoicemailWithAccountID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUCallProviderManager);
  v6 = [TUDialRequest alloc];
  v7 = [v5 telephonyProvider];
  v8 = [v6 initWithProvider:v7];

  [v8 setDialType:2];
  if (v4)
  {
    [v8 setLocalSenderIdentityAccountUUID:v4];
  }

  [v8 setOriginatingUIType:41];
  [v8 dialType];
  v9 = [v8 localSenderIdentityUUID];
  v10 = PHShouldAttemptTelephonyCallWithDialTypeAndSenderIdentityUUID();

  if ((v10 & 1) == 0)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Aborting voicemail call, the device is in airplane mode", v18, 2u);
    }

    v15 = [v8 provider];
    v11 = +[UIAlertController networkUnavailableAlertControllerWithCallProvider:dialType:senderIdentityUUID:](UIAlertController, "networkUnavailableAlertControllerWithCallProvider:dialType:senderIdentityUUID:", v15, [v8 dialType], 0);

    if (!v11)
    {
      goto LABEL_16;
    }

    v16 = [(PhoneApplication *)self rootViewController];
    [v16 presentViewController:v11 animated:1 completion:0];
    goto LABEL_15;
  }

  if (![v8 isValid])
  {
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PhoneApplication *)v8 dialVoicemailWithAccountID:v11];
    }

    goto LABEL_16;
  }

  v11 = [v8 URL];
  if (!v11)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PhoneApplication *)v8 dialVoicemailWithAccountID:v16];
    }

LABEL_15:

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v12 = +[UIApplication sharedApplication];
  [v12 openURL:v11 withCompletionHandler:0];

  v13 = 1;
LABEL_17:

  return v13;
}

- (int)userInterfaceScreenType
{
  if (userInterfaceScreenType_onceToken != -1)
  {
    [PhoneApplication userInterfaceScreenType];
  }

  return userInterfaceScreenType_cachedUserInterfaceScreenType;
}

void __43__PhoneApplication_userInterfaceScreenType__block_invoke(id a1)
{
  v1 = +[UIDevice currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if ((v2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 480.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;

  userInterfaceScreenType_cachedUserInterfaceScreenType = v6 > v3;
}

- (BOOL)faceTimeVideoIsAvailable
{
  if (![(PhoneApplication *)self isDeviceCapableOfFaceTimeVideo])
  {
    return 0;
  }

  v2 = +[IDSServiceAvailabilityController sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameFaceTime] == 1;

  return v3;
}

- (BOOL)faceTimeAudioIsAvailable
{
  if (![(PhoneApplication *)self isDeviceCapableOfFaceTimeAudio])
  {
    return 0;
  }

  v2 = +[IDSServiceAvailabilityController sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameCalling] == 1;

  return v3;
}

- (BOOL)isLowGraphicsPerformanceDevice
{
  if (isLowGraphicsPerformanceDevice_onceToken != -1)
  {
    [PhoneApplication isLowGraphicsPerformanceDevice];
  }

  return isLowGraphicsPerformanceDevice_graphicsQuality == 10;
}

void __50__PhoneApplication_isLowGraphicsPerformanceDevice__block_invoke(id a1)
{
  v1 = +[UIDevice currentDevice];
  isLowGraphicsPerformanceDevice_graphicsQuality = [v1 _graphicsQuality];
}

- (BOOL)showsCallsFromService:(int)a3
{
  if (a3 == 2)
  {
    return [UIApp showsFaceTimeAudio];
  }

  if (a3 == 1)
  {
    return [UIApp showsTelephonyCalls];
  }

  return 0;
}

- (BOOL)usesBlendModes
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("usesBlendModes");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:533 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)alwaysShowLocalVideo
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("alwaysShowLocalVideo");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:534 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)contentViewCanRotate
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("contentViewCanRotate");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:535 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)tabBarFillsScreen
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("tabBarFillsScreen");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:536 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)tabBarCanSlide
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("tabBarCanSlide");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:537 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showSplashScreenOnSignin
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showSplashScreenOnSignin");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:538 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsTelephonyCalls
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsTelephonyCalls");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:539 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeAudio
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeAudio");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:540 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeVideo
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeVideo");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:541 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsTelephonyFavorites
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsTelephonyFavorites");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:542 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeAudioFavorites
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeAudioFavorites");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:543 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeVideoFavorites
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeVideoFavorites");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:544 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsTelephonyRecents
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsTelephonyRecents");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:545 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsThirdPartyRecents
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsThirdPartyRecents");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:546 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeAudioRecents
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeAudioRecents");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:547 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsFaceTimeVideoRecents
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsFaceTimeVideoRecents");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:548 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)badgesMissedTelephonyCalls
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("badgesMissedTelephonyCalls");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:549 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)badgesMissedFaceTimeAudio
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("badgesMissedFaceTimeAudio");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:550 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)badgesMissedFaceTimeVideo
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("badgesMissedFaceTimeVideo");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:551 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsPhoneDialer
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsPhoneDialer");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:552 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)showsPhoneVoicemail
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("showsPhoneVoicemail");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:553 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (BOOL)hasEnhancedVoicemail
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("hasEnhancedVoicemail");
  [v4 handleFailureInMethod:a2 object:self file:@"PhoneApplication.m" lineNumber:554 description:{@"Subclass of PhoneApplication should implement %@", v5}];

  return 0;
}

- (id)callHistoryControllerWithCoalescingStrategy:(unint64_t)a3
{
  v4 = [(PhoneApplication *)self callHistoryControllerOptions];

  return [TUCallHistoryController sharedControllerWithCoalescingStrategy:a3 options:v4];
}

- (unint64_t)callHistoryControllerOptions
{
  v3 = [(PhoneApplication *)self showsFaceTimeAudioRecents];
  if ([(PhoneApplication *)self showsFaceTimeVideoRecents])
  {
    v3 |= 2uLL;
  }

  if ([(PhoneApplication *)self showsTelephonyRecents])
  {
    v3 |= 4uLL;
  }

  if ([(PhoneApplication *)self showsThirdPartyRecents])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity continuity - Will continue with type = %@", &v7, 0xCu);
  }

  return 1;
}

- (BOOL)inCall
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 displayedCalls];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([UIApp showsCallsFromService:{objc_msgSend(*(*(&v8 + 1) + 8 * i), "service")}])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)scrollTestsWithCount:(int64_t)a3 forScrollView:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  if (a3 >= 2)
  {
    v7 = 0;
    do
    {
      v8 = [RPTScrollViewTestParameters alloc];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __64__PhoneApplication_Testing__scrollTestsWithCount_forScrollView___block_invoke;
      v14[3] = &__block_descriptor_40_e5_v8__0l;
      v14[4] = v7;
      v9 = [v8 initWithTestName:__CurrentTestName scrollView:v5 completionHandler:v14];
      [v9 setShouldFlick:0];
      [v6 addObject:v9];

      ++v7;
    }

    while (a3 - 1 != v7);
  }

  v10 = [RPTScrollViewTestParameters alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __64__PhoneApplication_Testing__scrollTestsWithCount_forScrollView___block_invoke_96;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = a3;
  v11 = [v10 initWithTestName:__CurrentTestName scrollView:v5 completionHandler:v13];
  [v6 addObject:v11];

  return v6;
}

void __64__PhoneApplication_Testing__scrollTestsWithCount_forScrollView___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32) + 1;
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished test %ld", &v4, 0xCu);
  }
}

void __64__PhoneApplication_Testing__scrollTestsWithCount_forScrollView___block_invoke_96(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished test %ld", &v4, 0xCu);
  }
}

- (void)_scroll
{
  v3 = [UIApp rootViewController];
  v4 = [v3 baseViewController];

  if ([__CurrentTestName rangeOfString:@"ScrollFavorites"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 favoritesViewController];
  }

  if ([__CurrentTestName rangeOfString:@"ScrollRecents"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 recentsTableViewController];

    v5 = v6;
  }

  if ([__CurrentTestName rangeOfString:@"ScrollRecents"] != 0x7FFFFFFFFFFFFFFFLL && !v5)
  {
    v5 = [v4 phoneRecentsController];
  }

  if ([__CurrentTestName rangeOfString:@"ScrollVoicemail"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 voicemailViewController];
    v8 = [v7 viewControllers];
    v9 = [v8 firstObject];

    v5 = v9;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v5 collectionView];
  }

  else
  {
    v10 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v5 tableView];

    v10 = v11;
  }

  if (v10 || ([v5 view], v12 = objc_claimAutoreleasedReturnValue(), -[PhoneApplication firstScrollViewInView:](self, "firstScrollViewInView:", v12), v10 = objc_claimAutoreleasedReturnValue(), v12, v10))
  {
    [(PhoneApplication *)self startedTest:__CurrentTestName];
    v13 = [__CurrentTestOptions objectForKey:@"recapBased"];
    if ([v13 BOOLValue])
    {
      v14 = +[RPTTestRunner isRecapAvailable];

      if (v14)
      {
        v15 = PHDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Running recap based scroll view test", &v19, 2u);
        }

        v16 = __CurrentTestName;
        v17 = [(PhoneApplication *)self scrollTestsWithCount:__TestIterations forScrollView:v10];
        v18 = [RPTGroupScrollTestParameters newWithTestName:v16 parameters:v17 completionHandler:&__block_literal_global_1];

        [RPTTestRunner runTestWithParameters:v18];
        goto LABEL_25;
      }
    }

    else
    {
    }

    [v10 _performScrollTest:__CurrentTestName iterations:__TestIterations delta:__YDelta];
    goto LABEL_25;
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not perform the scroll test, a scroll view does not exist for view controller (%@).", &v19, 0xCu);
  }

LABEL_25:
}

void __36__PhoneApplication_Testing___scroll__block_invoke(id a1)
{
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Finished test", v2, 2u);
  }
}

- (void)startScrollTest
{
  v3 = [__CurrentTestOptions objectForKey:@"offset"];
  __YDelta = [v3 intValue];

  v4 = [__CurrentTestOptions objectForKey:@"iterations"];
  __TestIterations = [v4 intValue];

  if ([__CurrentTestName rangeOfString:@"ScrollFavorites"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(PhoneRootViewController *)self->_rootController baseViewController];
    [v5 switchToTab:1];
  }

  if ([__CurrentTestName rangeOfString:@"ScrollRecents"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(PhoneRootViewController *)self->_rootController baseViewController];
    [v6 switchToTab:2];
  }

  if ([__CurrentTestName rangeOfString:@"ScrollVoicemail"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PhoneRootViewController *)self->_rootController baseViewController];
    [v7 switchToTab:5];
  }

  [(PhoneApplication *)self performSelector:"_scroll" withObject:0 afterDelay:0.5];
}

- (void)startScrollWithInteractionTest
{
  if ([__CurrentTestName rangeOfString:@"ScrollVoicemail"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(PhoneApplication(Testing) *)v3 startScrollWithInteractionTest];
    }
  }

  else
  {

    [(PhoneApplication *)self startScrollVoicemailWithInteractionTest];
  }
}

- (void)startScrollVoicemailWithInteractionTest
{
  v3 = [(PhoneApplication *)self rootViewController];
  v4 = [v3 baseViewController];

  v5 = [v4 voicemailViewController];
  v6 = [v5 voicemailTabViewController];
  v7 = [v6 viewController];

  [v4 switchToTab:5];
  v8 = dispatch_time(0, 5000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke;
  v10[3] = &unk_1002852E0;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

void __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 indexPathsForVisibleItems];

  if ([v3 count] < 2)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) collectionView];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not perform the scroll test, the voicemail collectionView has no visible rows (%@)", buf, 0xCu);
    }
  }

  else
  {
    v4 = dispatch_time(0, 2000000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke_2;
    v9[3] = &unk_1002852E0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    dispatch_after(v4, &_dispatch_main_q, v9);
    v7 = v10;
  }
}

void __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke_2(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) collectionView];
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creating scroll view test parameters with view: %@", buf, 0xCu);
  }

  v4 = [RPTScrollViewTestParameters alloc];
  v5 = __CurrentTestName;
  v6 = [*(a1 + 32) collectionView];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke_121;
  v12[3] = &unk_100284FD0;
  v12[4] = *(a1 + 40);
  v7 = [v4 initWithTestName:v5 scrollView:v6 completionHandler:v12];

  v8 = dispatch_time(0, 1000000000);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __68__PhoneApplication_Testing__startScrollVoicemailWithInteractionTest__block_invoke_2_122;
  v10[3] = &unk_100284FD0;
  v11 = v7;
  v9 = v7;
  dispatch_after(v8, &_dispatch_main_q, v10);
}

- (id)firstScrollViewInView:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(PhoneApplication *)self firstScrollViewInView:*(*(&v13 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  return v5;
}

- (void)startSwitchTest:(int)a3
{
  if ([__CurrentTestName rangeOfString:@"Favorites"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 1;
LABEL_13:
    v8 = 4;
LABEL_14:
    v5 = [(PhoneRootViewController *)self->_rootController baseViewController];
    [(PhoneApplication *)self startedTest:__CurrentTestName];
    [(PhoneApplication *)self runSwitchTabTestWithTabViewController:v5 fromTab:v8 switchTo:v6 numberOfIterations:a3 testNameReference:&__CurrentTestName];
    goto LABEL_15;
  }

  if ([__CurrentTestName rangeOfString:@"Recents"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startSwitchTest - switch to recents", &v9, 2u);
    }

    v6 = 2;
    goto LABEL_13;
  }

  if ([__CurrentTestName rangeOfString:@"Voicemail"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 5;
    goto LABEL_13;
  }

  if ([__CurrentTestName rangeOfString:@"Keypad"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 4;
    v8 = 2;
    goto LABEL_14;
  }

  if ([__CurrentTestName rangeOfString:@"Contacts"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 3;
    goto LABEL_13;
  }

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = __CurrentTestName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a valid view type for test name %@", &v9, 0xCu);
  }

LABEL_15:
}

- (id)_createRecentCallWithCallerId:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHRecentCall);
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];
  [v4 setUniqueId:v6];

  v7 = +[NSDate date];
  [v4 setDate:v7];

  [v4 setMediaType:1];
  [v4 setTtyType:0];
  [v4 setServiceProvider:kCHServiceProviderTelephony];
  [v4 setDuration:1.0];
  [v4 setCallStatus:kCHCallStatusConnectedOutgoing];
  [v4 setCallerId:v3];

  [v4 setRead:1];

  return v4;
}

- (void)TestAddUnknownFavorite
{
  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke;
  v5[3] = &unk_1002852B8;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke(uint64_t a1)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = dispatch_semaphore_create(0);
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(*(a1 + 40));
  [v2 startTestOnMainThread:v3];

  v4 = [*(*(a1 + 32) + 8) baseViewController];
  v5 = [v4 favoritesNavigationController];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke_142;
  block[3] = &unk_1002852E0;
  v31 = v4;
  v40 = v31;
  v6 = v5;
  v41 = v6;
  dispatch_sync(&_dispatch_main_q, block);
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[NSOperationQueue mainQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke_2;
  v38[3] = &unk_100285378;
  v38[4] = &v42;
  v9 = [v7 addObserverForName:TPFavoritesControllerFavoritesEntriesDidChangeNotification object:0 queue:v8 usingBlock:v38];

  v10 = objc_alloc_init(CNMutableContact);
  v11 = [CNPhoneNumber phoneNumberWithStringValue:@"+14089619342"];
  v12 = [CNLabeledValue labeledValueWithLabel:0 value:v11];

  v48 = v12;
  v13 = [NSArray arrayWithObjects:&v48 count:1];
  [v10 setValue:v13 forKey:CNContactPhoneNumbersKey];

  v14 = [CNFavoritesEntry alloc];
  v15 = [v12 identifier];
  v16 = [v14 initWithContact:v10 propertyKey:CNContactPhoneNumbersKey labeledValueIdentifier:v15 actionType:CNActionTypeAudioCall bundleIdentifier:CNActionBundleIdentifierPhone store:0];

  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke_3;
  v36 = &unk_100284FD0;
  v17 = v16;
  v37 = v17;
  dispatch_sync(&_dispatch_main_q, &v33);

  v18 = v43[5];
  v19 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v18, v19))
  {
    v20 = 0;
    v21 = @"TimeoutOccured";
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, &__block_literal_global_159);

    v22 = [v6 visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
      v24 = [v23 favoritesEntries];
      v25 = [v24 firstObject];
    }

    else
    {
      v25 = 0;
    }

    v26 = [v25 isEqual:v17];
    v20 = v26;
    v27 = @"IncorrectFavoriteEntry";
    if (!v25)
    {
      v27 = @"NoFavorites";
    }

    if (v26)
    {
      v21 = 0;
    }

    else
    {
      v21 = v27;
    }
  }

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 removeObserver:v9];

  v29 = *(a1 + 32);
  v30 = NSStringFromSelector(*(a1 + 40));
  if (v20)
  {
    [v29 finishTestOnMainThread:v30];
  }

  else
  {
    [v29 failTestOnMainThread:v30 reason:v21];
  }

  _Block_object_dispose(&v42, 8);
}

void __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke_3(uint64_t a1)
{
  v2 = +[CNFavorites sharedInstance];
  [v2 addEntry:*(a1 + 32)];
}

void __51__PhoneApplication_Testing__TestAddUnknownFavorite__block_invoke_4(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:TPFavoritesControllerFavoritesEntriesDidChangeNotification object:0];
}

- (id)_tableFromViewController:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v13 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__PhoneApplication_Testing___tableFromViewController___block_invoke;
  block[3] = &unk_1002853C0;
  v8 = self;
  v9 = &v10;
  v7 = a3;
  v3 = v7;
  dispatch_sync(&_dispatch_main_q, block);
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);

  return v4;
}

id __54__PhoneApplication_Testing___tableFromViewController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) table];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)startTestOnMainThread:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __51__PhoneApplication_Testing__startTestOnMainThread___block_invoke;
  v4[3] = &unk_1002852E0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)finishTestOnMainThread:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __52__PhoneApplication_Testing__finishTestOnMainThread___block_invoke;
  v4[3] = &unk_1002852E0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)failTestOnMainThread:(id)a3 reason:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__PhoneApplication_Testing__failTestOnMainThread_reason___block_invoke;
  block[3] = &unk_1002853E8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&__CurrentTestName, a3);
  objc_storeStrong(&__CurrentTestOptions, a4);
  if ([v7 rangeOfString:@"Favorites"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"Voicemail") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[CAUILayoutManager shared];
    [v9 setLayout:0];
  }

  if ([v7 rangeOfString:@"Scroll"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v7 rangeOfString:@"Switch"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![v7 isEqualToString:@"TestAddUnknownFavorite"])
      {
        v14.receiver = self;
        v14.super_class = PhoneApplication;
        v12 = [(PhoneApplication *)&v14 runTest:v7 options:v8];
        goto LABEL_13;
      }

      [(PhoneApplication *)self TestAddUnknownFavorite];
    }

    else
    {
      v10 = [v8 objectForKey:@"iterations"];
      v11 = [v10 intValue];

      [(PhoneApplication *)self startSwitchTest:v11];
    }
  }

  else if ([v7 rangeOfString:@"Interaction"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PhoneApplication *)self startScrollTest];
  }

  else
  {
    [(PhoneApplication *)self startScrollWithInteractionTest];
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (void)setIgnoresInteractionEvents:(BOOL)a3
{
  v3 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Called setIgnoresInteractionEvents: %d", buf, 8u);
  }

  v6.receiver = self;
  v6.super_class = PhoneApplication;
  [(PhoneApplication *)&v6 setIgnoresInteractionEvents:v3];
}

- (BOOL)_faceTimeInvitationExists
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 incomingVideoCall];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_activeFaceTimeCallExists
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 activeVideoCall];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)inFaceTime
{
  v2 = [UIApp showsFaceTimeVideo];
  if (v2)
  {
    if ([UIApp _faceTimeInvitationExists])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v3 = UIApp;

      LOBYTE(v2) = [v3 _activeFaceTimeCallExists];
    }
  }

  return v2;
}

- (BOOL)faceTimeInvitationExists
{
  v2 = [UIApp showsFaceTimeVideo];
  if (v2)
  {
    v3 = UIApp;

    LOBYTE(v2) = [v3 _faceTimeInvitationExists];
  }

  return v2;
}

- (BOOL)activeFaceTimeCallExists
{
  v2 = [UIApp showsFaceTimeVideo];
  if (v2)
  {
    v3 = UIApp;

    LOBYTE(v2) = [v3 _activeFaceTimeCallExists];
  }

  return v2;
}

- (void)switchToTabWaitingForViewDidLoad:(PhoneTabBarController *)a3 to:(int)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PhoneApplication.switchToTabWaitingForViewDidLoad(_:to:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTATu;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

- (void)runSwitchTabTestWithTabViewController:(id)a3 fromTab:(int)a4 switchTo:(int)a5 numberOfIterations:(int64_t)a6 testNameReference:(const void *)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = a3;
  v18 = self;
  v19 = v17;
  v20 = v18;
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  *(v22 + 32) = a6;
  *(v22 + 40) = v19;
  *(v22 + 48) = v20;
  *(v22 + 56) = a4;
  *(v22 + 64) = 0x6154686374697753;
  *(v22 + 72) = 0xE900000000000062;
  *(v22 + 80) = a7;
  *(v22 + 88) = a5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &closure #1 in PhoneApplication.runSwitchTabTest(_:initial:to:numberOfIterations:testNameRef:)partial apply, v22);
}

- (TUCallCenter)callCenter
{
  v2 = [objc_opt_self() sharedInstance];

  return v2;
}

- (void)removeUnnecessaryTopLevelMenus:(id)a3
{
  swift_unknownObjectRetain();
  [a3 removeMenuForIdentifier:UIMenuFile];
  [a3 removeMenuForIdentifier:UIMenuView];
  [a3 removeMenuForIdentifier:UIMenuFormat];

  swift_unknownObjectRelease();
}

- (void)removeUnnecessarySubMenusEdit:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  [a3 removeMenuForIdentifier:UIMenuSpelling];
  [a3 removeMenuForIdentifier:UIMenuSpellingPanel];
  [a3 removeMenuForIdentifier:UIMenuSubstitutions];
  [a3 removeMenuForIdentifier:UIMenuTransformations];
  [a3 removeMenuForIdentifier:UIMenuSpeech];
  swift_unknownObjectRelease();
}

- (void)modifyTopLevelMenuEdit:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  specialized PhoneApplication.modifyTopLevelMenuEdit(_:)(a3);
  swift_unknownObjectRelease();
}

- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  specialized PhoneApplication.modifyTopLevelMenuWindow(_:_:)(a3, a4);
  swift_unknownObjectRelease();
}

- (UIMenu)menuItemRemoveAllRecents
{
  v2 = self;
  v3.super.super.isa = PhoneApplication.menuItemRemoveAllRecents.getter().super.super.isa;

  return v3.super.super.isa;
}

- (UIMenu)menuAudioOutput
{
  v2 = self;
  v3.super.super.isa = PhoneApplication.menuAudioOutput.getter().super.super.isa;

  return v3.super.super.isa;
}

- (id)makeAudioOutputItems
{
  v2 = self;
  PhoneApplication.makeAudioOutputItems()();

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)makeAudioOutputItemWithRoute:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PhoneApplication.makeAudioOutputItem(route:)(v4);

  return v6;
}

- (void)removeAllRecents:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PhoneApplication.removeAllRecents(_:)();
}

void __48__PhoneApplication_warmInCallServiceIfNecessary__block_invoke_140_cold_1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error launching InCallService: %@", &v4, 0xCu);
}

- (void)dialVoicemailWithAccountID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not initiate a voicemail call due to an invalid dial request (%@).", &v2, 0xCu);
}

- (void)dialVoicemailWithAccountID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not initiate a voicemail call due to a nil URL from the dial request (%@).", &v2, 0xCu);
}

@end