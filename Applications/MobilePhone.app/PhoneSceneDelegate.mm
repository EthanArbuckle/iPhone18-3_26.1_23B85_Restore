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

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = optionsCopy;
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
      +[_TtC11MobilePhone26PhoneRecentsViewController preferredWindowMinSize];
      v14 = v13;
      v16 = v15;
      sizeRestrictions = [v10 sizeRestrictions];
      [sizeRestrictions setMinimumSize:{v14, v16}];
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
    window = [(PhoneSceneDelegate *)self window];
    [window orderFront:0];
  }

  shortcutItem = [optionsCopy shortcutItem];
  [(PhoneSceneDelegate *)self setShortcutItem:shortcutItem];

  rootViewController = [UIApp rootViewController];
  [rootViewController displayUIAnimated:0];

  uRLContexts = [optionsCopy URLContexts];
  v24 = [uRLContexts count];

  if (v24)
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
      v27 = [userActivities count];

      if (v27)
      {
        userActivities2 = [optionsCopy userActivities];
        anyObject = [userActivities2 anyObject];

        v30 = PHDefaultLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = anyObject;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: connectionOptions has userActivity: %@", buf, 0xCu);
        }

        [(PhoneSceneDelegate *)self scene:sceneCopy continueUserActivity:anyObject];
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

- (void)sceneWillEnterForeground:(id)foreground
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

- (void)sceneDidEnterBackground:(id)background
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

- (void)sceneDidBecomeActive:(id)active
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

  shortcutItem = [(PhoneSceneDelegate *)self shortcutItem];

  if (shortcutItem)
  {
    shortcutItem2 = [(PhoneSceneDelegate *)self shortcutItem];
    v9 = [(PhoneSceneDelegate *)self handleShortcutItem:shortcutItem2];

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

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v9 = PHDefaultLog();
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
  if (![flags phoneLargeFormatUIEnabled] || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = padCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPad %@", &v15, 0xCu);
    }

    rootViewController = [UIApp rootViewController];
    baseViewController = [rootViewController baseViewController];

    type = [padCopy type];
    if ([type isEqualToString:@"com.apple.mobilephone.search"])
    {
      [baseViewController makeSearchBarActive];
    }

    else if ([type isEqualToString:@"com.apple.mobilephone.recents"])
    {
      [baseViewController showRecents];
    }

    else
    {
      if (![type isEqualToString:@"com.apple.mobilephone.voicemail"])
      {
        v14 = PHDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [PhoneSceneDelegate openShortcutOnIPad:featureFlags:];
        }

        v12 = 0;
        goto LABEL_15;
      }

      [baseViewController showVoicemails];
    }

    v12 = 1;
LABEL_15:

    goto LABEL_16;
  }

  baseViewController = PHDefaultLog();
  if (os_log_type_enabled(baseViewController, OS_LOG_TYPE_ERROR))
  {
    [PhoneSceneDelegate openShortcutOnIPad:featureFlags:];
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (BOOL)openShortcutOnPhone:(id)phone featureFlags:(id)flags
{
  phoneCopy = phone;
  flagsCopy = flags;
  if (![flagsCopy phoneLargeFormatUIEnabled] || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 138412290;
      v39 = phoneCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: handling shortcut item on iPhone %@", &v38, 0xCu);
    }

    rootViewController = [UIApp rootViewController];
    baseViewController = [rootViewController baseViewController];

    selectedViewController = [baseViewController selectedViewController];
    presentedViewController = [selectedViewController presentedViewController];
    if (presentedViewController)
    {
      [selectedViewController dismissViewControllerAnimated:0 completion:0];
    }

    type = [phoneCopy type];
    if ([type isEqualToString:@"com.apple.mobilephone.contacts.create"])
    {
      +[CATransaction begin];
      +[CATransaction disableActions];
      [baseViewController switchToTab:3];
      contactsViewController = [baseViewController contactsViewController];
      [contactsViewController addContact:0 animated:0];
      +[CATransaction commit];

LABEL_40:
      v10 = 1;
      goto LABEL_41;
    }

    if ([type isEqualToString:@"com.apple.mobilephone.search"])
    {
      +[CATransaction begin];
      +[CATransaction disableActions];
      v17 = +[CAUILayoutManager shared];
      current = [v17 current];

      if (current == 1)
      {
        [baseViewController switchToTab:6];
        searchNavigationController = [baseViewController searchNavigationController];
        v20 = [searchNavigationController popToRootViewControllerAnimated:0];

        searchNavigationController2 = [baseViewController searchNavigationController];
        topViewController = [searchNavigationController2 topViewController];

        if (topViewController && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [topViewController startSearchingForText:0];
        }

        goto LABEL_38;
      }

      if ([flagsCopy callHistorySearchEnabled])
      {
        [baseViewController switchToTab:2];
        recentsNavigationController = [baseViewController recentsNavigationController];
        v28 = [recentsNavigationController popToRootViewControllerAnimated:0];

        topViewController = [baseViewController phoneRecentsController];
        if (topViewController && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [topViewController startSearchingForText:0 completion:0];
        }

        goto LABEL_38;
      }

      [baseViewController switchToTab:3];
      topViewController = [baseViewController contactsViewController];
      viewControllers = [topViewController viewControllers];
      contactListViewController = [topViewController contactListViewController];
      v33 = [viewControllers containsObject:contactListViewController];

      contactListViewController2 = [topViewController contactListViewController];
      if (v33)
      {
        v35 = [topViewController popToViewController:contactListViewController2 animated:0];
      }

      else
      {
        [topViewController pushViewController:contactListViewController2 animated:0];
      }

      contactListViewController3 = [topViewController contactListViewController];
      [contactListViewController3 startSearching];
    }

    else
    {
      if (![type isEqualToString:@"com.apple.mobilephone.recents"])
      {
        if ([type isEqualToString:@"com.apple.mobilephone.voicemail"])
        {
          if ([UIApp hasEnhancedVoicemail])
          {
            +[CATransaction begin];
            +[CATransaction disableActions];
            v29 = +[CAUILayoutManager shared];
            current2 = [v29 current];

            if (current2 == 1)
            {
              [baseViewController switchToTab:2];
              [baseViewController openVoicemails];
            }

            else
            {
              [baseViewController switchToTab:5];
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
      [baseViewController switchToTab:2];
      v23 = +[MPPreferences sharedPreferences];
      useSwiftUIRecents = [v23 useSwiftUIRecents];

      if (useSwiftUIRecents)
      {
LABEL_39:
        +[CATransaction commit];
        goto LABEL_40;
      }

      recentsTableViewController = [baseViewController recentsTableViewController];
      topViewController = [recentsTableViewController tableView];

      if ([topViewController numberOfRowsInSection:0] < 1)
      {
LABEL_38:

        goto LABEL_39;
      }

      contactListViewController3 = [NSIndexPath indexPathForRow:0 inSection:0];
      [topViewController scrollToRowAtIndexPath:contactListViewController3 atScrollPosition:1 animated:0];
    }

    goto LABEL_38;
  }

  baseViewController = PHDefaultLog();
  if (os_log_type_enabled(baseViewController, OS_LOG_TYPE_ERROR))
  {
    [PhoneSceneDelegate openShortcutOnPhone:featureFlags:];
  }

  v10 = 0;
LABEL_42:

  return v10;
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = PHDefaultLog();
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
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PhoneSceneDelegate: sceneWillResignActive:", v4, 2u);
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  contextsCopy = contexts;
  v5 = PHDefaultLog();
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

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  sceneCopy = scene;
  typeCopy = type;
  v7 = PHDefaultLog();
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
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = sceneCopy;
    v20 = 2112;
    v21 = activityCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Phone scene %@ is continuing user activity: %@", &v18, 0x16u);
  }

  activityType = [activityCopy activityType];
  v9 = TUCallPhoneAppHistoryActivityType();
  v10 = [activityType isEqualToString:v9];

  if (v10)
  {
    v11 = +[(PHApplicationServices *)MPApplicationServices];
    callProviderManager = [v11 callProviderManager];

    baseViewController = [TUDialRequest dialRequestForUserActivity:activityCopy callProviderManager:callProviderManager];
    if (baseViewController)
    {
      v14 = +[TUCallCenter sharedInstance];
      v15 = [v14 dialWithRequest:baseViewController];
    }

    goto LABEL_10;
  }

  activityType2 = [activityCopy activityType];
  v17 = [activityType2 isEqualToString:TUUserActivityTypeConversationHandoff];

  if (!v17)
  {
    callProviderManager = [UIApp rootViewController];
    baseViewController = [callProviderManager baseViewController];
    [baseViewController handleUserActivityContinuation:activityCopy];
    goto LABEL_10;
  }

  callProviderManager = PHDefaultLog();
  if (os_log_type_enabled(callProviderManager, OS_LOG_TYPE_DEFAULT))
  {
    baseViewController = [activityCopy tu_dynamicIdentifier];
    v18 = 138412290;
    v19 = baseViewController;
    _os_log_impl(&_mh_execute_header, callProviderManager, OS_LOG_TYPE_DEFAULT, "FaceTime call handoff dynamic identifier was: %@", &v18, 0xCu);
LABEL_10:
  }
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  sceneCopy = scene;
  typeCopy = type;
  errorCopy = error;
  v10 = PHDefaultLog();
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
  v7 = PHDefaultLog();
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