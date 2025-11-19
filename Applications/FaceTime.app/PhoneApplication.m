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
- (BOOL)currentAppIsPhoneApp;
- (BOOL)dialVoicemailWithAccountID:(id)a3;
- (BOOL)faceTimeAudioIsAvailable;
- (BOOL)faceTimeInvitationExists;
- (BOOL)faceTimeVideoIsAvailable;
- (BOOL)hasEnhancedVoicemail;
- (BOOL)inCall;
- (BOOL)inFaceTime;
- (BOOL)isLowGraphicsPerformanceDevice;
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
- (id)callHistoryControllerWithCoalescingStrategy:(unint64_t)a3;
- (id)makeAudioOutputItemWithRoute:(id)a3;
- (id)makeAudioOutputItems;
- (id)nameOfDefaultImageToUpdateAtSuspension;
- (int)userInterfaceScreenType;
- (unint64_t)callHistoryControllerOptions;
- (void)_localeChangedNotification:(id)a3;
- (void)_resetCurrentViewController;
- (void)applicationDidFinishLaunching:(id)a3;
- (void)applicationOpenURL:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleApplicationFinishedSnapshottingNotification:(id)a3;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3;
- (void)modifyTopLevelMenuApplication:(id)a3;
- (void)modifyTopLevelMenuEdit:(id)a3;
- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4;
- (void)newFaceTimeMenuAction:(id)a3;
- (void)openURL:(id)a3 withCompletionHandler:(id)a4;
- (void)prepareForDefaultImageSnapshotForScreen:(id)a3;
- (void)removeAllRecents:(id)a3;
- (void)removeUnnecessarySubMenusEdit:(id)a3;
- (void)removeUnnecessarySubMenusWindow:(id)a3;
- (void)removeUnnecessaryTopLevelMenus:(id)a3;
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

- (void)warmInCallServiceIfNecessary
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:TUBundleIdentifierMobilePhoneApplication];

  v5 = sub_100003B9C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "asking to prewarm InCallService...", buf, 2u);
    }

    v5 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v5, &stru_10010ACE0);
  }

  else if (v6)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "prewarming InCallService...", v7, 2u);
  }
}

- (void)applicationDidFinishLaunching:(id)a3
{
  v12 = a3;
  if ((byte_1001268D0 & 1) == 0)
  {
    v4 = +[IDSServiceAvailabilityController sharedInstance];
    [v4 addListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameCalling];

    v5 = +[IDSServiceAvailabilityController sharedInstance];
    [v5 addListenerID:@"com.apple.mobilephone.FTCServiceAvailabilityListenerID" forService:IDSServiceNameFaceTime];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_localeChangedNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v6 addObserver:self selector:"handleIDSServiceAvailabilityDidChangeNotification:" name:IDSServiceAvailabilityDidChangeNotification object:0];
    [v6 addObserver:self selector:"handleApplicationFinishedSnapshottingNotification:" name:_UIApplicationDidFinishSuspensionSnapshotNotification object:0];
    [(PhoneApplication *)self setReceivesMemoryWarnings:1];
    v7 = +[UIApplication sharedApplication];
    [v7 setDelegate:self];

    getenv("LogPhoneTransitionTimes");
    self->_launchTime = CFAbsoluteTimeGetCurrent();
    byte_1001268D0 = 1;
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 registerDefaults:&off_100110F08];

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
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen:%@", &v14, 0xCu);
  }

  v6 = +[UIScreen mainScreen];

  if (v6 == v4)
  {
    v7 = [(PhoneApplication *)self shouldSnapshot];
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen: is considering snapshotting for main screen, shouldSnapshot=%d", &v14, 8u);
    }

    if (v7)
    {
      v9 = [(PhoneApplication *)self rootViewController];
      v10 = [v9 baseViewController];

      v11 = [v10 shouldSnapshot];
      v12 = sub_100003B9C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v10;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "-prepareForDefaultImageShapshotForScreen: view controller %@ should snapshot=%d", &v14, 0x12u);
      }

      if (v11)
      {
        [v10 prepareForSnapshot];
      }

      if ([(PhoneApplication *)self alwaysShowLocalVideo])
      {
        v13 = [(PhoneRootViewController *)self->_rootController localVideoViewController];
        [v13 fadeOutAnimated:0];
      }
    }
  }
}

- (void)handleApplicationFinishedSnapshottingNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "-handleApplicationFinishedSnapshottingNotification:%@", &v6, 0xCu);
  }

  [(PhoneApplication *)self _resetCurrentViewController];
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

- (void)_resetCurrentViewController
{
  if ([UIApp alwaysShowLocalVideo])
  {
    v3 = [(PhoneRootViewController *)self->_rootController localVideoViewController];
    [v3 fadeOutAnimated:0];
  }
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
  v3 = sub_100003B9C();
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

  v6 = sub_100003B9C();
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
  v8 = sub_100003B9C();
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
  v5 = sub_100003B9C();
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
      block[2] = sub_1000120E4;
      block[3] = &unk_10010AD48;
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
    v14 = sub_100003B9C();
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
    v11 = sub_100003B9C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000C41A4(v8, v11);
    }

    goto LABEL_16;
  }

  v11 = [v8 URL];
  if (!v11)
  {
    v16 = sub_100003B9C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000C421C(v8, v16);
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
  if (qword_1001268D8 != -1)
  {
    sub_1000C4294();
  }

  return byte_1001268D4;
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
  if (qword_1001268E8 != -1)
  {
    sub_1000C42A8();
  }

  return qword_1001268E0 == 10;
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

- (BOOL)application:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v4 = a4;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activity continuity - Will continue with type = %@", &v7, 0xCu);
  }

  return 1;
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

- (TUCallCenter)callCenter
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() sharedInstance];

  return v2;
}

- (BOOL)currentAppIsPhoneApp
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1000BDBC8();

  return v2 & 1;
}

- (void)removeUnnecessaryTopLevelMenus:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [swift_unknownObjectRetain() removeMenuForIdentifier:UIMenuFile];
  [a3 removeMenuForIdentifier:UIMenuView];
  [a3 removeMenuForIdentifier:UIMenuFormat];

  swift_unknownObjectRelease();
}

- (void)removeUnnecessarySubMenusEdit:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  [a3 removeMenuForIdentifier:UIMenuSpelling];
  [a3 removeMenuForIdentifier:UIMenuSpellingPanel];
  [a3 removeMenuForIdentifier:UIMenuSubstitutions];
  [a3 removeMenuForIdentifier:UIMenuTransformations];
  [a3 removeMenuForIdentifier:UIMenuSpeech];

  swift_unknownObjectRelease();
}

- (void)removeUnnecessarySubMenusWindow:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a3 removeMenuForIdentifier:UIMenuBringAllToFront];
}

- (void)modifyTopLevelMenuApplication:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)modifyTopLevelMenuEdit:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v5 = self;
  sub_1000BDD30(a3);

  swift_unknownObjectRelease();
}

- (void)modifyTopLevelMenuWindow:(id)a3 :(id)a4
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1000BDEDC(a3, a4);

  swift_unknownObjectRelease();
}

- (id)makeAudioOutputItems
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1000BCDE8();

  sub_100008BA0(0, &qword_1001256A0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)makeAudioOutputItemWithRoute:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_1000BD238(v5);

  return v7;
}

- (void)newFaceTimeMenuAction:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000BE0A0();
}

- (void)removeAllRecents:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1000BE204();
}

@end