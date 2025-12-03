@interface PhoneSceneDelegate
- (BOOL)handleShortcutItem:(id)item;
- (BOOL)openShortcutOnIPad:(id)pad featureFlags:(id)flags;
- (BOOL)openShortcutOnPhone:(id)phone featureFlags:(id)flags;
- (id)_createWindowFromScene:(id)scene;
- (void)_initializeUI;
- (void)scene:(id)scene continueUserActivity:(id)activity;
- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)scene:(id)scene didUpdateUserActivity:(id)activity;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)scene:(id)scene willContinueUserActivityWithType:(id)type;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
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

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v9 = sub_100003B9C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: scene:willConnectToSession:options: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = sceneCopy;
    v11 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v11 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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
      sizeRestrictions = [v10 sizeRestrictions];
      [sizeRestrictions setMinimumSize:{v19, 0.0}];
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
      sub_1000C430C(sceneCopy, v10);
    }
  }

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    window = [(PhoneSceneDelegate *)self window];
    [window orderFront:0];
  }

  shortcutItem = [optionsCopy shortcutItem];
  [(PhoneSceneDelegate *)self setShortcutItem:shortcutItem];

  rootViewController = [UIApp rootViewController];
  [rootViewController displayUIAnimated:0];

  uRLContexts = [optionsCopy URLContexts];
  v27 = [uRLContexts count];

  if (v27)
  {
    uRLContexts2 = [optionsCopy URLContexts];
    [(PhoneSceneDelegate *)self scene:sceneCopy openURLContexts:uRLContexts2];
  }

  else
  {
    uRLContexts2 = objc_alloc_init(TUFeatureFlags);
    if ([uRLContexts2 callHistorySearchEnabled])
    {
      userActivities = [optionsCopy userActivities];
      v30 = [userActivities count];

      if (v30)
      {
        userActivities2 = [optionsCopy userActivities];
        anyObject = [userActivities2 anyObject];

        v33 = sub_100003B9C();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = anyObject;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: connectionOptions has userActivity: %@", buf, 0xCu);
        }

        [(PhoneSceneDelegate *)self scene:sceneCopy continueUserActivity:anyObject];
      }
    }
  }
}

- (void)sceneWillEnterForeground:(id)foreground
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

- (void)sceneDidEnterBackground:(id)background
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

- (void)sceneDidBecomeActive:(id)active
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

  shortcutItem = [(PhoneSceneDelegate *)self shortcutItem];

  if (shortcutItem)
  {
    shortcutItem2 = [(PhoneSceneDelegate *)self shortcutItem];
    v9 = [(PhoneSceneDelegate *)self handleShortcutItem:shortcutItem2];

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

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v9 = sub_100003B9C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = itemCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: windowScene:performActionForShortcutItem: %@", &v12, 0xCu);
  }

  [(PhoneSceneDelegate *)self setShortcutItem:itemCopy];
  shortcutItem = [(PhoneSceneDelegate *)self shortcutItem];
  v11 = [(PhoneSceneDelegate *)self handleShortcutItem:shortcutItem];

  [(PhoneSceneDelegate *)self setShortcutItem:0];
  handlerCopy[2](handlerCopy, v11);
}

- (BOOL)handleShortcutItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(TUFeatureFlags);
  if ([v5 phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = [(PhoneSceneDelegate *)self openShortcutOnIPad:itemCopy featureFlags:v5];
  }

  else
  {
    v8 = [(PhoneSceneDelegate *)self openShortcutOnPhone:itemCopy featureFlags:v5];
  }

  v9 = v8;

  return v9;
}

- (BOOL)openShortcutOnIPad:(id)pad featureFlags:(id)flags
{
  padCopy = pad;
  if ([flags phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    baseViewController = sub_100003B9C();
    if (os_log_type_enabled(baseViewController, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4384(baseViewController);
    }
  }

  else
  {
    v8 = sub_100003B9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = padCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPad %@", &v12, 0xCu);
    }

    rootViewController = [UIApp rootViewController];
    baseViewController = [rootViewController baseViewController];
  }

  return 0;
}

- (BOOL)openShortcutOnPhone:(id)phone featureFlags:(id)flags
{
  phoneCopy = phone;
  if ([flags phoneLargeFormatUIEnabled] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    baseViewController = sub_100003B9C();
    if (os_log_type_enabled(baseViewController, OS_LOG_TYPE_ERROR))
    {
      sub_1000C43C8(baseViewController);
    }
  }

  else
  {
    v9 = sub_100003B9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = phoneCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPhone %@", &v14, 0xCu);
    }

    rootViewController = [UIApp rootViewController];
    baseViewController = [rootViewController baseViewController];

    selectedViewController = [baseViewController selectedViewController];
    presentedViewController = [selectedViewController presentedViewController];
    if (presentedViewController)
    {
      [selectedViewController dismissViewControllerAnimated:0 completion:0];
    }
  }

  return 0;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneDidDisconnect:", v10, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = disconnectCopy;
    rootViewController = [UIApp rootViewController];
    keyWindow = [v6 keyWindow];
    rootViewController2 = [keyWindow rootViewController];

    if (rootViewController == rootViewController2)
    {
      [UIApp setRootViewController:0];
    }

    [(UIWindow *)self->_window setRootViewController:0];
  }
}

- (void)sceneWillResignActive:(id)active
{
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneWillResignActive:", v4, 2u);
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v5 = sub_100003B9C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = contextsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate openURLContexts: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = contextsCopy;
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

- (id)_createWindowFromScene:(id)scene
{
  sceneCopy = scene;
  v4 = [[UIWindow alloc] initWithWindowScene:sceneCopy];

  applicationTintColor = [UIApp applicationTintColor];
  [v4 setTintColor:applicationTintColor];

  [v4 setOverrideUserInterfaceStyle:2];
  [v4 _accessibilitySetInterfaceStyleIntent:2];
  v6 = +[UIColor clearColor];
  [v4 setBackgroundColor:v6];

  return v4;
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  sceneCopy = scene;
  typeCopy = type;
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = sceneCopy;
    v12 = 2112;
    v13 = typeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ will continue user activity with type %@", &v10, 0x16u);
  }

  v8 = objc_alloc_init(TUFeatureFlags);
  if ([v8 conversationHandoffEnabled] && objc_msgSend(typeCopy, "isEqualToString:", TUUserActivityTypeConversationHandoff))
  {
    v9 = +[TUCallCenter sharedInstance];
    [v9 continueHandoffEligibleConversation];
  }
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = sceneCopy;
    v17 = 2112;
    v18 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ is continuing user activity: %@", &v15, 0x16u);
  }

  activityType = [activityCopy activityType];
  v9 = TUCallPhoneAppHistoryActivityType();
  v10 = [activityType isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    activityType2 = [activityCopy activityType];
    v12 = [activityType2 isEqualToString:TUUserActivityTypeConversationHandoff];

    if (v12)
    {
      rootViewController = sub_100003B9C();
      if (!os_log_type_enabled(rootViewController, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      tu_dynamicIdentifier = [activityCopy tu_dynamicIdentifier];
      v15 = 138412290;
      v16 = tu_dynamicIdentifier;
      _os_log_impl(&_mh_execute_header, rootViewController, OS_LOG_TYPE_DEFAULT, "FaceTime call handoff dynamic identifier was: %@", &v15, 0xCu);
    }

    else
    {
      rootViewController = [UIApp rootViewController];
      tu_dynamicIdentifier = [rootViewController baseViewController];
      [tu_dynamicIdentifier handleUserActivityContinuation:activityCopy];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  sceneCopy = scene;
  typeCopy = type;
  errorCopy = error;
  v10 = sub_100003B9C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = sceneCopy;
    v13 = 2112;
    v14 = typeCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone scene %@ did fail to continue user activity with type %@ due to error %@", &v11, 0x20u);
  }
}

- (void)scene:(id)scene didUpdateUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  v7 = sub_100003B9C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sceneCopy;
    v10 = 2112;
    v11 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ did update user activity %@", &v8, 0x16u);
  }
}

@end