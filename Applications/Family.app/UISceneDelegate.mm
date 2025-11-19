@interface UISceneDelegate
- (BOOL)_handleFamilyURL:(id)a3;
- (BOOL)_handleFamilyURLComponents:(id)a3 eventType:(id)a4;
- (id)_currentSceneSession;
- (void)_destroyCurrentSceneSession;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation UISceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
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

    v12 = v7;
    v13 = [[UIWindow alloc] initWithWindowScene:v12];
    window = self->_window;
    self->_window = v13;

    v15 = objc_alloc_init(UIViewController);
    [(UIWindow *)self->_window setRootViewController:v15];

    v16 = [v8 URLContexts];
    v17 = [v16 anyObject];
    v18 = [v17 URL];

    v19 = _FALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 absoluteString];
      v21 = 138412290;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Received URL to open in willConnectToSession %@", &v21, 0xCu);
    }

    [(UISceneDelegate *)self _handleFamilyURL:v18];
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10000260C(v12);
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 anyObject];
  v6 = [v5 URL];

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 absoluteString];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received URL to open in openURLContexts %@", &v9, 0xCu);
  }

  [(UISceneDelegate *)self _handleFamilyURL:v6];
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidDisconnect", v4, 2u);
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidBecomeActive", v4, 2u);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneWillResignActive", v4, 2u);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneWillEnterForeground", v4, 2u);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Family UISceneDelegate - sceneDidEnterBackground", v4, 2u);
  }
}

- (BOOL)_handleFamilyURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v5 isEqualToString:@"family"];

  if (v6)
  {
    v7 = [NSURLComponents componentsWithURL:v4 resolvingAgainstBaseURL:1];
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
    sub_100002650(v4, v7);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)_handleFamilyURLComponents:(id)a3 eventType:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentFamilyCircleStateController = self->_currentFamilyCircleStateController;
  v9 = _FALogSystem();
  v10 = v9;
  if (currentFamilyCircleStateController)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v24 = v7;
      v25 = 2113;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring event of type (%{public}@) with components: %{private}@ because an URL is already being handled", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100002770();
    }

    v10 = [[FACircleContext alloc] initWithEventType:v7];
    v21 = @"requestParameters";
    v11 = [v6 fa_queryItemsDictionary];
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v10 setAdditionalParameters:v12];

    v13 = [FACircleStateController alloc];
    v14 = [(UISceneDelegate *)self window];
    v15 = [v14 rootViewController];
    v16 = [v13 initWithPresenter:v15];
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
  v2 = [(UISceneDelegate *)self _currentSceneSession];
  if (v2)
  {
    v4 = v2;
    v3 = +[UIApplication sharedApplication];
    [v3 requestSceneSessionDestruction:v4 options:0 errorHandler:&stru_1000082D0];

    v2 = v4;
  }
}

- (id)_currentSceneSession
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 openSessions];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 scene];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 scene];
          v13 = v12;
          if (self->_window)
          {
            v14 = [v12 windows];
            v15 = [v14 containsObject:self->_window];

            if (v15)
            {
              v16 = v9;

              goto LABEL_14;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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