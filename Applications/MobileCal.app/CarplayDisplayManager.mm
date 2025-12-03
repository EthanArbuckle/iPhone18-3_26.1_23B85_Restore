@interface CarplayDisplayManager
- (id)_createAndSetupModel;
- (id)_rootViewControllerForCarScene;
- (void)_openURL:(id)l;
- (void)_setUpSelectedCalendarsOnModel:(id)model;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation CarplayDisplayManager

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v29 = 138412546;
    v30 = sceneCopy;
    v31 = 2112;
    v32 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "scene:%@ willConnectToSession: %@", &v29, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = sceneCopy;
    screen = [v12 screen];
    if (([screen _isCarScreen] & 1) != 0 && !self->_carWindow)
    {
      coordinateSpace = [v12 coordinateSpace];
      [coordinateSpace bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23 = objc_alloc_init(UIWindow);
      [v23 setAutoresizesSubviews:1];
      [v23 setAutoresizingMask:18];
      [v23 setWindowScene:v12];
      [v23 makeKeyAndVisible];
      [v23 setFrame:{v16, v18, v20, v22}];
      _rootViewControllerForCarScene = [(CarplayDisplayManager *)self _rootViewControllerForCarScene];
      [v23 setRootViewController:_rootViewControllerForCarScene];

      if (CalSystemSolariumEnabled())
      {
        v25 = +[UIColor clearColor];
        [v23 setBackgroundColor:v25];
      }

      objc_storeStrong(&self->_carWindow, v23);
      uRLContexts = [optionsCopy URLContexts];
      if (uRLContexts)
      {
        v27 = kCalUILogCarplayHandle;
        if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "willConnectToSession has urlContexts", &v29, 2u);
        }

        [(CarplayDisplayManager *)self scene:v12 openURLContexts:uRLContexts];
      }
    }
  }

  else
  {
    v28 = kCalUILogCarplayHandle;
    if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Scene connected, but it's not a window scene.", &v29, 2u);
    }
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneDidDisconnect %@", &v8, 0xCu);
  }

  windowScene = [(UIWindow *)self->_carWindow windowScene];

  if (windowScene == disconnectCopy)
  {
    [(UIWindow *)self->_carWindow setHidden:1];
    carWindow = self->_carWindow;
    self->_carWindow = 0;
  }
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  anyObject = [contexts anyObject];
  v6 = [anyObject URL];

  v7 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "openURLContexts:%@", &v8, 0xCu);
  }

  [(CarplayDisplayManager *)self _openURL:v6];
}

- (void)_openURL:(id)l
{
  carWindow = self->_carWindow;
  lCopy = l;
  rootViewController = [(UIWindow *)carWindow rootViewController];
  [rootViewController handleURL:lCopy];
}

- (id)_rootViewControllerForCarScene
{
  _createAndSetupModel = [(CarplayDisplayManager *)self _createAndSetupModel];
  v3 = [[CarplayNavigationController alloc] initWithModel:_createAndSetupModel];

  return v3;
}

- (id)_createAndSetupModel
{
  v3 = +[Application createNewCalendarModel];
  [v3 checkLocationAuthorizationAndAllowEventLocationPrediction];
  [(CarplayDisplayManager *)self _setUpSelectedCalendarsOnModel:v3];
  v4 = +[EKCalendarVisibilityManager unselectedCalendarIdentifiersForFocusMode];
  v5 = v4 != 0;

  [v3 setFocusFilterMode:v5];

  return v3;
}

- (void)_setUpSelectedCalendarsOnModel:(id)model
{
  modelCopy = model;
  v4 = [EKCalendarVisibilityManager alloc];
  eventStore = [modelCopy eventStore];
  sourceForSelectedIdentity = [modelCopy sourceForSelectedIdentity];
  v7 = [v4 initWithEventStore:eventStore limitedToSource:sourceForSelectedIdentity visibilityChangedCallback:0 queue:0];

  visibleCalendarsForAllIdentities = [v7 visibleCalendarsForAllIdentities];
  if ([UIApp launchedToTest])
  {
    v22 = v7;
    v9 = [visibleCalendarsForAllIdentities mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = visibleCalendarsForAllIdentities;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          title = [v15 title];
          v17 = [title containsString:@"Legacy"];

          if (v17)
          {
            [v9 removeObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v12);
    }

    v7 = v22;
  }

  else
  {
    v9 = visibleCalendarsForAllIdentities;
  }

  v18 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v19 = v18;
    v20 = [v9 count];
    *buf = 134217984;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Visible calendars: (%tu)", buf, 0xCu);
  }

  v21 = [[NSSet alloc] initWithArray:v9];
  [modelCopy setSelectedCalendars:v21];
}

@end