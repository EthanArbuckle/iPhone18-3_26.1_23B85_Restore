@interface PhoneSceneDelegate
- (BOOL)handleShortcutItem:(id)a3;
- (BOOL)openShortcutOnIPad:(id)a3 featureFlags:(id)a4;
- (BOOL)openShortcutOnPhone:(id)a3 featureFlags:(id)a4;
- (id)_createWindowFromScene:(id)a3;
- (void)_initializeUI;
- (void)scene:(id)a3 continueUserActivity:(id)a4;
- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didUpdateUserActivity:(id)a4;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation PhoneSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: scene:willConnectToSession:options: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 1)
    {
      +[_TtC11MobilePhone26PhoneRecentsViewController preferredWindowMinSize];
      v14 = v13;
      v16 = v15;
      v17 = [v10 sizeRestrictions];
      [v17 setMinimumSize:{v14, v16}];
    }

    if (![(PhoneSceneDelegate *)self isUIInitialized])
    {
      if (!self->_window)
      {
        v18 = [(PhoneSceneDelegate *)self _createWindowFromScene:v10];
        window = self->_window;
        self->_window = v18;
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __57__PhoneSceneDelegate_scene_willConnectToSession_options___block_invoke;
      v31[3] = &unk_100284FD0;
      v31[4] = self;
      [UIView performWithoutAnimation:v31];
    }
  }

  else
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PhoneSceneDelegate scene:willConnectToSession:options:];
    }
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v20 = [(PhoneSceneDelegate *)self window];
    [v20 orderFront:0];
  }

  v21 = [v8 shortcutItem];
  [(PhoneSceneDelegate *)self setShortcutItem:v21];

  v22 = [UIApp rootViewController];
  [v22 displayUIAnimated:0];

  v23 = [v8 URLContexts];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [v8 URLContexts];
    [(PhoneSceneDelegate *)self scene:v7 openURLContexts:v25];
  }

  else
  {
    v25 = objc_alloc_init(TUFeatureFlags);
    if ([v25 callHistorySearchEnabled])
    {
      v26 = [v8 userActivities];
      v27 = [v26 count];

      if (v27)
      {
        v28 = [v8 userActivities];
        v29 = [v28 anyObject];

        v30 = PHDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: connectionOptions has userActivity: %@", buf, 0xCu);
        }

        [(PhoneSceneDelegate *)self scene:v7 continueUserActivity:v29];
      }
    }
  }
}

void __57__PhoneSceneDelegate_scene_willConnectToSession_options___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PhoneRootViewController);
  [UIApp setRootViewController:v2];

  v5 = [UIApp rootViewController];
  v3 = [v5 view];
  v4 = [v3 window];

  if (!v4)
  {
    [*(*(a1 + 32) + 16) setRootViewController:v5];
  }

  [*(a1 + 32) _initializeUI];
  [*(a1 + 32) setIsUIInitialized:1];
  [*(*(a1 + 32) + 16) makeKeyAndVisible];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneWillEnterForeground:", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PhoneApplicationActivatedNotification" object:0];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneDidEnterBackground:", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PhoneApplicationDeactivatedNotification" object:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneDidBecomeActive:", &v12, 2u);
  }

  v5 = PHPreferencesGetValueInDomain();
  v6 = v5;

  if (v6 != 2)
  {
    [UIApp warmInCallServiceIfNecessary];
  }

  v7 = [(PhoneSceneDelegate *)self shortcutItem];

  if (v7)
  {
    v8 = [(PhoneSceneDelegate *)self shortcutItem];
    v9 = [(PhoneSceneDelegate *)self handleShortcutItem:v8];

    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: did handle shortcut with success: %@", &v12, 0xCu);
    }

    [(PhoneSceneDelegate *)self setShortcutItem:0];
  }
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: windowScene:performActionForShortcutItem: %@", &v12, 0xCu);
  }

  [(PhoneSceneDelegate *)self setShortcutItem:v7];
  v10 = [(PhoneSceneDelegate *)self shortcutItem];
  v11 = [(PhoneSceneDelegate *)self handleShortcutItem:v10];

  [(PhoneSceneDelegate *)self setShortcutItem:0];
  v8[2](v8, v11);
}

- (BOOL)handleShortcutItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  if ([v5 phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = [(PhoneSceneDelegate *)self openShortcutOnIPad:v4 featureFlags:v5];
  }

  else
  {
    v8 = [(PhoneSceneDelegate *)self openShortcutOnPhone:v4 featureFlags:v5];
  }

  v9 = v8;

  return v9;
}

- (BOOL)openShortcutOnIPad:(id)a3 featureFlags:(id)a4
{
  v5 = a3;
  if (![a4 phoneLargeFormatUIEnabled] || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPad %@", &v15, 0xCu);
    }

    v9 = [UIApp rootViewController];
    v10 = [v9 baseViewController];

    v11 = [v5 type];
    if ([v11 isEqualToString:@"com.apple.mobilephone.search"])
    {
      [v10 makeSearchBarActive];
    }

    else if ([v11 isEqualToString:@"com.apple.mobilephone.recents"])
    {
      [v10 showRecents];
    }

    else
    {
      if (![v11 isEqualToString:@"com.apple.mobilephone.voicemail"])
      {
        v14 = PHDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [PhoneSceneDelegate openShortcutOnIPad:featureFlags:];
        }

        v12 = 0;
        goto LABEL_15;
      }

      [v10 showVoicemails];
    }

    v12 = 1;
LABEL_15:

    goto LABEL_16;
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PhoneSceneDelegate openShortcutOnIPad:featureFlags:];
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)openShortcutOnPhone:(id)a3 featureFlags:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 phoneLargeFormatUIEnabled] || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412290;
      v39 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPhone %@", &v38, 0xCu);
    }

    v12 = [UIApp rootViewController];
    v9 = [v12 baseViewController];

    v13 = [v9 selectedViewController];
    v14 = [v13 presentedViewController];
    if (v14)
    {
      [v13 dismissViewControllerAnimated:0 completion:0];
    }

    v15 = [v5 type];
    if ([v15 isEqualToString:@"com.apple.mobilephone.contacts.create"])
    {
      +[CATransaction begin];
      +[CATransaction disableActions];
      [v9 switchToTab:3];
      v16 = [v9 contactsViewController];
      [v16 addContact:0 animated:0];
      +[CATransaction commit];

LABEL_40:
      v10 = 1;
      goto LABEL_41;
    }

    if ([v15 isEqualToString:@"com.apple.mobilephone.search"])
    {
      +[CATransaction begin];
      +[CATransaction disableActions];
      v17 = +[CAUILayoutManager shared];
      v18 = [v17 current];

      if (v18 == 1)
      {
        [v9 switchToTab:6];
        v19 = [v9 searchNavigationController];
        v20 = [v19 popToRootViewControllerAnimated:0];

        v21 = [v9 searchNavigationController];
        v22 = [v21 topViewController];

        if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v22 startSearchingForText:0];
        }

        goto LABEL_38;
      }

      if ([v6 callHistorySearchEnabled])
      {
        [v9 switchToTab:2];
        v27 = [v9 recentsNavigationController];
        v28 = [v27 popToRootViewControllerAnimated:0];

        v22 = [v9 phoneRecentsController];
        if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v22 startSearchingForText:0 completion:0];
        }

        goto LABEL_38;
      }

      [v9 switchToTab:3];
      v22 = [v9 contactsViewController];
      v31 = [v22 viewControllers];
      v32 = [v22 contactListViewController];
      v33 = [v31 containsObject:v32];

      v34 = [v22 contactListViewController];
      if (v33)
      {
        v35 = [v22 popToViewController:v34 animated:0];
      }

      else
      {
        [v22 pushViewController:v34 animated:0];
      }

      v26 = [v22 contactListViewController];
      [v26 startSearching];
    }

    else
    {
      if (![v15 isEqualToString:@"com.apple.mobilephone.recents"])
      {
        if ([v15 isEqualToString:@"com.apple.mobilephone.voicemail"])
        {
          if ([UIApp hasEnhancedVoicemail])
          {
            +[CATransaction begin];
            +[CATransaction disableActions];
            v29 = +[CAUILayoutManager shared];
            v30 = [v29 current];

            if (v30 == 1)
            {
              [v9 switchToTab:2];
              [v9 openVoicemails];
            }

            else
            {
              [v9 switchToTab:5];
            }

            goto LABEL_39;
          }

          v36 = PHDefaultLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v38) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Voicemail shortcut was selected, but enhanced voicemail is unavailable", &v38, 2u);
          }
        }

        v10 = 0;
LABEL_41:

        goto LABEL_42;
      }

      +[CATransaction begin];
      +[CATransaction disableActions];
      [v9 switchToTab:2];
      v23 = +[MPPreferences sharedPreferences];
      v24 = [v23 useSwiftUIRecents];

      if (v24)
      {
LABEL_39:
        +[CATransaction commit];
        goto LABEL_40;
      }

      v25 = [v9 recentsTableViewController];
      v22 = [v25 tableView];

      if ([v22 numberOfRowsInSection:0] < 1)
      {
LABEL_38:

        goto LABEL_39;
      }

      v26 = [NSIndexPath indexPathForRow:0 inSection:0];
      [v22 scrollToRowAtIndexPath:v26 atScrollPosition:1 animated:0];
    }

    goto LABEL_38;
  }

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PhoneSceneDelegate openShortcutOnPhone:featureFlags:];
  }

  v10 = 0;
LABEL_42:

  return v10;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneDidDisconnect:", v10, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [UIApp rootViewController];
    v8 = [v6 keyWindow];
    v9 = [v8 rootViewController];

    if (v7 == v9)
    {
      [UIApp setRootViewController:0];
    }

    [(UIWindow *)self->_window setRootViewController:0];
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneWillResignActive:", v4, 2u);
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v4 = a4;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate openURLContexts: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = UIApp;
        v12 = [*(*(&v13 + 1) + 8 * v10) URL];
        [v11 applicationOpenURL:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)_createWindowFromScene:(id)a3
{
  v3 = a3;
  v4 = [[UIWindow alloc] initWithWindowScene:v3];

  v5 = [UIApp applicationTintColor];
  [v4 setTintColor:v5];

  v6 = +[UIColor clearColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

- (void)_initializeUI
{
  if (![UIApp isSuspended] || (objc_msgSend(UIApp, "alwaysShowLocalVideo") & 1) == 0)
  {
    v2 = UIApp;

    [v2 showInitialView];
  }
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ will continue user activity with type %@", &v10, 0x16u);
  }

  v8 = objc_alloc_init(TUFeatureFlags);
  if ([v8 conversationHandoffEnabled] && objc_msgSend(v6, "isEqualToString:", TUUserActivityTypeConversationHandoff))
  {
    v9 = +[TUCallCenter sharedInstance];
    [v9 continueHandoffEligibleConversation];
  }
}

- (void)scene:(id)a3 continueUserActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ is continuing user activity: %@", &v18, 0x16u);
  }

  v8 = [v6 activityType];
  v9 = TUCallPhoneAppHistoryActivityType();
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = +[(PHApplicationServices *)MPApplicationServices];
    v12 = [v11 callProviderManager];

    v13 = [TUDialRequest dialRequestForUserActivity:v6 callProviderManager:v12];
    if (v13)
    {
      v14 = +[TUCallCenter sharedInstance];
      v15 = [v14 dialWithRequest:v13];
    }

    goto LABEL_10;
  }

  v16 = [v6 activityType];
  v17 = [v16 isEqualToString:TUUserActivityTypeConversationHandoff];

  if (!v17)
  {
    v12 = [UIApp rootViewController];
    v13 = [v12 baseViewController];
    [v13 handleUserActivityContinuation:v6];
    goto LABEL_10;
  }

  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v6 tu_dynamicIdentifier];
    v18 = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FaceTime call handoff dynamic identifier was: %@", &v18, 0xCu);
LABEL_10:
  }
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone scene %@ did fail to continue user activity with type %@ due to error %@", &v11, 0x20u);
  }
}

- (void)scene:(id)a3 didUpdateUserActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ did update user activity %@", &v8, 0x16u);
  }
}

@end