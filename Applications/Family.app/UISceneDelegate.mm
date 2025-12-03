@interface UISceneDelegate
- (BOOL)_handleFamilyURL:(id)l;
- (BOOL)_handleFamilyURLComponents:(id)components eventType:(id)type;
- (id)_currentSceneSession;
- (void)_destroyCurrentSceneSession;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
@end

@implementation UISceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v9 = _FALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connecting to session.", &v21, 2u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = _FALogSystem();
  v12 = v11;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connected to session.", &v21, 2u);
    }

    v12 = sceneCopy;
    v13 = [[UIWindow alloc] initWithWindowScene:v12];
    window = self->_window;
    self->_window = v13;

    v15 = objc_alloc_init(UIViewController);
    [(UIWindow *)self->_window setRootViewController:v15];

    uRLContexts = [optionsCopy URLContexts];
    anyObject = [uRLContexts anyObject];
    v18 = [anyObject URL];

    v19 = _FALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [v18 absoluteString];
      v21 = 138412290;
      v22 = absoluteString;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received URL to open in willConnectToSession %@", &v21, 0xCu);
    }

    [(UISceneDelegate *)self _handleFamilyURL:v18];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10000260C(v12);
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  anyObject = [contexts anyObject];
  v6 = [anyObject URL];

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [v6 absoluteString];
    v9 = 138412290;
    v10 = absoluteString;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received URL to open in openURLContexts %@", &v9, 0xCu);
  }

  [(UISceneDelegate *)self _handleFamilyURL:v6];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidDisconnect", v4, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidBecomeActive", v4, 2u);
  }
}

- (void)sceneWillResignActive:(id)active
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneWillResignActive", v4, 2u);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneWillEnterForeground", v4, 2u);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidEnterBackground", v4, 2u);
  }
}

- (BOOL)_handleFamilyURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v6 = [scheme isEqualToString:@"family"];

  if (v6)
  {
    v7 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    v8 = [v7 fa_valueForQueryItem:@"aaaction"];
    if ([v8 isEqualToString:@"showFamilyInvite"])
    {
      v9 = &FACircleEventTypeAcceptInvitation;
    }

    else if ([v8 isEqualToString:@"manageFamily"])
    {
      v9 = &FACircleEventTypeManageCircle;
    }

    else
    {
      if (![v8 isEqualToString:@"approveWithRestrictionsPIN"])
      {
        if ([v8 isEqualToString:@"cacheMugshotMarquee"])
        {
          v12 = objc_alloc_init(FAFetchFamilyCircleRequest);
          [v12 setCachePolicy:0];
          [v12 startRequestWithCompletionHandler:&stru_100008220];

          v10 = 1;
        }

        else
        {
          v13 = _FALogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1000026F4();
          }

          v10 = 0;
        }

        goto LABEL_12;
      }

      v9 = &FACircleEventTypeApproveWithRestrictionsPIN;
    }

    v10 = [(UISceneDelegate *)self _handleFamilyURLComponents:v7 eventType:*v9];
LABEL_12:

    goto LABEL_13;
  }

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100002650(lCopy, v7);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)_handleFamilyURLComponents:(id)components eventType:(id)type
{
  componentsCopy = components;
  typeCopy = type;
  currentFamilyCircleStateController = self->_currentFamilyCircleStateController;
  v9 = _FALogSystem();
  v10 = v9;
  if (currentFamilyCircleStateController)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v24 = typeCopy;
      v25 = 2113;
      v26 = componentsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring event of type (%{public}@) with components: %{private}@ because an URL is already being handled", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100002770();
    }

    v10 = [[FACircleContext alloc] initWithEventType:typeCopy];
    v21 = @"requestParameters";
    fa_queryItemsDictionary = [componentsCopy fa_queryItemsDictionary];
    v22 = fa_queryItemsDictionary;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v10 setAdditionalParameters:v12];

    v13 = [FACircleStateController alloc];
    window = [(UISceneDelegate *)self window];
    rootViewController = [window rootViewController];
    v16 = [v13 initWithPresenter:rootViewController];
    v17 = self->_currentFamilyCircleStateController;
    self->_currentFamilyCircleStateController = v16;

    [(FACircleStateController *)self->_currentFamilyCircleStateController setPresentationType:3];
    [(UIWindow *)self->_window makeKeyAndVisible];
    v18 = self->_currentFamilyCircleStateController;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001CF8;
    v20[3] = &unk_1000082B0;
    v20[4] = self;
    [(FACircleStateController *)v18 performWithContext:v10 completion:v20];
  }

  return currentFamilyCircleStateController == 0;
}

- (void)_destroyCurrentSceneSession
{
  _currentSceneSession = [(UISceneDelegate *)self _currentSceneSession];
  if (_currentSceneSession)
  {
    v4 = _currentSceneSession;
    v3 = +[UIApplication sharedApplication];
    [v3 requestSceneSessionDestruction:v4 options:0 errorHandler:&stru_1000082D0];

    _currentSceneSession = v4;
  }
}

- (id)_currentSceneSession
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[UIApplication sharedApplication];
  openSessions = [v3 openSessions];

  v5 = [openSessions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(openSessions);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        scene = [v9 scene];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          scene2 = [v9 scene];
          v13 = scene2;
          if (self->_window)
          {
            windows = [scene2 windows];
            v15 = [windows containsObject:self->_window];

            if (v15)
            {
              v16 = v9;

              goto LABEL_14;
            }
          }
        }
      }

      v6 = [openSessions countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

@end