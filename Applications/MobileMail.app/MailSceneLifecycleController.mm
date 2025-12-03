@interface MailSceneLifecycleController
+ (id)log;
- (id)stateRestorationActivityForScene:(id)scene;
- (void)_installDebugHandlerForScene:(id)scene;
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

@implementation MailSceneLifecycleController

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B514;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD150 != -1)
  {
    dispatch_once(&qword_1006DD150, block);
  }

  v2 = qword_1006DD148;

  return v2;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sessionCopy;
    v13 = a2;
    v14 = sceneCopy;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    session = [v14 session];
    persistentIdentifier = [session persistentIdentifier];
    v19 = [NSString stringWithFormat:@"%@:%@", v16, persistentIdentifier];

    *buf = 138543618;
    v31 = v19;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "scene: %{public}@ willConnectToSession: %@", buf, 0x16u);

    a2 = v13;
    sessionCopy = v12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v27 = +[NSAssertionHandler currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:33 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v20 = sceneCopy;
  v21 = [[MFWindow alloc] initWithWindowScene:v20];
  v22 = +[UIColor mailInteractiveColor];
  [(MFWindow *)v21 setTintColor:v22];

  layer = [(MFWindow *)v21 layer];
  [layer setHitTestsAsOpaque:1];

  [(MailSceneLifecycleController *)self setWindow:v21];
  [v20 mailSceneDidConnectWithOptions:optionsCopy];
  mf_rootViewController = [v20 mf_rootViewController];
  if (!mf_rootViewController)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:41 description:@"Scene must provide a root view controller after connection."];
  }

  v25 = objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v25 wantsDeferredConnectionActions])
  {
    [(MailSceneLifecycleController *)self setDeferredConnectionOptions:optionsCopy];
  }

  [(MailSceneLifecycleController *)self _installDebugHandlerForScene:v20];
  [(MFWindow *)v21 setRootViewController:mf_rootViewController];
  if ([v20 conformsToProtocol:&OBJC_PROTOCOL___MFWindowDelegate])
  {
    [(MFWindow *)v21 setDelegate:v20];
  }

  window = [(MailSceneLifecycleController *)self window];
  [window makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v6 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = disconnectCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    session = [v7 session];
    persistentIdentifier = [session persistentIdentifier];
    v12 = [NSString stringWithFormat:@"%@:%@", v9, persistentIdentifier];

    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sceneDidDisconnect: %{public}@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([disconnectCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:60 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v13 = disconnectCopy;
  [v13 mailSceneDidDisconnect];
  window = [(MailSceneLifecycleController *)self window];
  [window setRootViewController:0];

  [(MailSceneLifecycleController *)self setWindow:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v6 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = activeCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    session = [v7 session];
    persistentIdentifier = [session persistentIdentifier];
    v12 = [NSString stringWithFormat:@"%@:%@", v9, persistentIdentifier];

    *buf = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sceneDidBecomeActive: %{public}@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([activeCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:74 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  [activeCopy mailSceneDidBecomeActive];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v6 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = activeCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    session = [v7 session];
    persistentIdentifier = [session persistentIdentifier];
    v12 = [NSString stringWithFormat:@"%@:%@", v9, persistentIdentifier];

    *buf = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sceneWillResignActive: %{public}@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([activeCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:81 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  [activeCopy mailSceneWillResignActive];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v6 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = foregroundCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    session = [v7 session];
    persistentIdentifier = [session persistentIdentifier];
    v12 = [NSString stringWithFormat:@"%@:%@", v9, persistentIdentifier];

    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sceneWillEnterForeground: %{public}@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([foregroundCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:88 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v13 = foregroundCopy;
  [v13 mailSceneWillEnterForeground];
  deferredConnectionOptions = [(MailSceneLifecycleController *)self deferredConnectionOptions];
  [(MailSceneLifecycleController *)self setDeferredConnectionOptions:0];
  if (deferredConnectionOptions)
  {
    if (objc_opt_respondsToSelector())
    {
      uRLContexts = [deferredConnectionOptions URLContexts];
      if ([uRLContexts count])
      {
        [v13 mailSceneOpenURLContexts:uRLContexts];
LABEL_17:

        goto LABEL_18;
      }
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      userActivities = [deferredConnectionOptions userActivities];
      uRLContexts = [userActivities anyObject];

      if (uRLContexts)
      {
        activityType = [uRLContexts activityType];
        [v13 mailSceneWillContinueUserActivityWithType:activityType];

        [v13 mailSceneContinueUserActivity:uRLContexts];
        goto LABEL_17;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      uRLContexts = [deferredConnectionOptions shortcutItem];
      if (uRLContexts)
      {
        [v13 mailScenePerformActionForShortcutItem:uRLContexts completionHandler:&stru_100650FF0];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v6 = +[MailSceneLifecycleController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = backgroundCopy;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    session = [v7 session];
    persistentIdentifier = [session persistentIdentifier];
    v12 = [NSString stringWithFormat:@"%@:%@", v9, persistentIdentifier];

    *buf = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sceneDidEnterBackground: %{public}@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([backgroundCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:129 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  [backgroundCopy mailSceneDidEnterBackground];
}

- (void)scene:(id)scene willContinueUserActivityWithType:(id)type
{
  sceneCopy = scene;
  typeCopy = type;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:137 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v9 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      session = [v11 session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = [NSString stringWithFormat:@"%@:%@", v13, persistentIdentifier];

      *buf = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = typeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "scene: %{public}@ willContinueUserActivityWithType: %@", buf, 0x16u);
    }

    [v9 mailSceneWillContinueUserActivityWithType:typeCopy];
  }
}

- (void)scene:(id)scene continueUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:146 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v9 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      session = [v11 session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = [NSString stringWithFormat:@"%@:%@", v13, persistentIdentifier];

      v17 = v16;
      activityType = [activityCopy activityType];
      targetContentIdentifier = [activityCopy targetContentIdentifier];
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = activityType;
      v25 = 2112;
      v26 = targetContentIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "scene: %{public}@ continueUserActivity: %@, identifier: %@", buf, 0x20u);
    }

    [v9 mailSceneContinueUserActivity:activityCopy];
  }
}

- (void)scene:(id)scene didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  sceneCopy = scene;
  typeCopy = type;
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:155 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v12 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v13 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      session = [v14 session];
      persistentIdentifier = [session persistentIdentifier];
      v19 = [NSString stringWithFormat:@"%@:%@", v16, persistentIdentifier];

      v20 = v19;
      ef_publicDescription = [errorCopy ef_publicDescription];
      *buf = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = typeCopy;
      v27 = 2114;
      v28 = ef_publicDescription;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "scene: %{public}@ didFailToContinueUserActivityWithType: %@ error: %{public}@", buf, 0x20u);
    }

    [v12 mailSceneDidFailToContinueUserActivityWithType:typeCopy error:errorCopy];
  }
}

- (void)scene:(id)scene didUpdateUserActivity:(id)activity
{
  sceneCopy = scene;
  activityCopy = activity;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:164 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v9 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      session = [v11 session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = [NSString stringWithFormat:@"%@:%@", v13, persistentIdentifier];

      *buf = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = activityCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "scene: %{public}@ didUpdateUserActivity: %@", buf, 0x16u);
    }

    [v9 mailSceneDidUpdateUserActivity:activityCopy];
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  sceneCopy = scene;
  contextsCopy = contexts;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:175 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v9 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      session = [v11 session];
      persistentIdentifier = [session persistentIdentifier];
      v16 = [NSString stringWithFormat:@"%@:%@", v13, persistentIdentifier];

      *buf = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = contextsCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "scene: %{public}@ openURLContexts: %@", buf, 0x16u);
    }

    [v9 mailSceneOpenURLContexts:contextsCopy];
  }
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  sceneCopy = scene;
  itemCopy = item;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:186 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v12 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    v13 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      session = [v14 session];
      persistentIdentifier = [session persistentIdentifier];
      v19 = [NSString stringWithFormat:@"%@:%@", v16, persistentIdentifier];

      *buf = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = itemCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "windowScene: %{public}@ performActionForShortcutItems: %@", buf, 0x16u);
    }

    [v12 mailScenePerformActionForShortcutItem:itemCopy completionHandler:handlerCopy];
  }
}

- (id)stateRestorationActivityForScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([sceneCopy conformsToProtocol:&OBJC_PROTOCOL___MailSceneLifecycleResponder] & 1) == 0)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MailSceneLifecycleController.m" lineNumber:196 description:@"Scenes used with MailSceneLifecycleController should be instances of MailScene subclasses."];
  }

  v6 = sceneCopy;
  if (objc_opt_respondsToSelector())
  {
    stateRestorationActivityForMailScene = [v6 stateRestorationActivityForMailScene];
    v8 = +[MailSceneLifecycleController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v6;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      session = [v9 session];
      persistentIdentifier = [session persistentIdentifier];
      v14 = [NSString stringWithFormat:@"%@:%@", v11, persistentIdentifier];

      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "stateRestorationActivityForScene: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    stateRestorationActivityForMailScene = 0;
  }

  return stateRestorationActivityForMailScene;
}

- (void)_installDebugHandlerForScene:(id)scene
{
  sceneCopy = scene;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, sceneCopy);
    objc_copyWeak(&v6, &location);
    statusBarManager = [sceneCopy statusBarManager];
    [statusBarManager setDebugMenuHandler:&v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end