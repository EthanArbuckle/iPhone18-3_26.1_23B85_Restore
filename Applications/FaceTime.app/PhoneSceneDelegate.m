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

- (void)_initializeUI
{
  if (![UIApp isSuspended] || (objc_msgSend(UIApp, "alwaysShowLocalVideo") & 1) == 0)
  {
    v2 = UIApp;

    [v2 showInitialView];
  }
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = sub_100003B9C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
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
      v13 = +[UIScreen mainScreen];
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      if (v15 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v15;
      }

      v19 = v18 * 0.845;
      v20 = [v10 sizeRestrictions];
      [v20 setMinimumSize:{v19, 0.0}];
    }

    if (![(PhoneSceneDelegate *)self isUIInitialized])
    {
      if (!self->_window)
      {
        v21 = [(PhoneSceneDelegate *)self _createWindowFromScene:v10];
        window = self->_window;
        self->_window = v21;
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100018490;
      v34[3] = &unk_10010AD48;
      v34[4] = self;
      [UIView performWithoutAnimation:v34];
    }
  }

  else
  {
    v10 = sub_100003B9C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C430C(v7, v10);
    }
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    v23 = [(PhoneSceneDelegate *)self window];
    [v23 orderFront:0];
  }

  v24 = [v8 shortcutItem];
  [(PhoneSceneDelegate *)self setShortcutItem:v24];

  v25 = [UIApp rootViewController];
  [v25 displayUIAnimated:0];

  v26 = [v8 URLContexts];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [v8 URLContexts];
    [(PhoneSceneDelegate *)self scene:v7 openURLContexts:v28];
  }

  else
  {
    v28 = objc_alloc_init(TUFeatureFlags);
    if ([v28 callHistorySearchEnabled])
    {
      v29 = [v8 userActivities];
      v30 = [v29 count];

      if (v30)
      {
        v31 = [v8 userActivities];
        v32 = [v31 anyObject];

        v33 = sub_100003B9C();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v32;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: connectionOptions has userActivity: %@", buf, 0xCu);
        }

        [(PhoneSceneDelegate *)self scene:v7 continueUserActivity:v32];
      }
    }
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = sub_100003B9C();
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
  v3 = sub_100003B9C();
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
  v4 = sub_100003B9C();
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

    v10 = sub_100003B9C();
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
  v9 = sub_100003B9C();
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
  if ([a4 phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v10 = sub_100003B9C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4384(v10);
    }
  }

  else
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPad %@", &v12, 0xCu);
    }

    v9 = [UIApp rootViewController];
    v10 = [v9 baseViewController];
  }

  return 0;
}

- (BOOL)openShortcutOnPhone:(id)a3 featureFlags:(id)a4
{
  v5 = a3;
  if ([a4 phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C43C8(v8);
    }
  }

  else
  {
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPhone %@", &v14, 0xCu);
    }

    v10 = [UIApp rootViewController];
    v8 = [v10 baseViewController];

    v11 = [v8 selectedViewController];
    v12 = [v11 presentedViewController];
    if (v12)
    {
      [v11 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return 0;
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100003B9C();
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
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneWillResignActive:", v4, 2u);
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v4 = a4;
  v5 = sub_100003B9C();
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

  [v4 setOverrideUserInterfaceStyle:2];
  [v4 _accessibilitySetInterfaceStyleIntent:2];
  v6 = +[UIColor clearColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

- (void)scene:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100003B9C();
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
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ is continuing user activity: %@", &v15, 0x16u);
  }

  v8 = [v6 activityType];
  v9 = TUCallPhoneAppHistoryActivityType();
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v6 activityType];
    v12 = [v11 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v12)
    {
      v13 = sub_100003B9C();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      v14 = [v6 tu_dynamicIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FaceTime call handoff dynamic identifier was: %@", &v15, 0xCu);
    }

    else
    {
      v13 = [UIApp rootViewController];
      v14 = [v13 baseViewController];
      [v14 handleUserActivityContinuation:v6];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)scene:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100003B9C();
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
  v7 = sub_100003B9C();
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