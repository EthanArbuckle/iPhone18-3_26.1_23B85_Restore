@interface CarplayDisplayManager
- (id)_createAndSetupModel;
- (id)_rootViewControllerForCarScene;
- (void)_openURL:(id)a3;
- (void)_setUpSelectedCalendarsOnModel:(id)a3;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation CarplayDisplayManager

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v29 = 138412546;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "scene:%@ willConnectToSession: %@", &v29, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [v12 screen];
    if (([v13 _isCarScreen] & 1) != 0 && !self->_carWindow)
    {
      v14 = [v12 coordinateSpace];
      [v14 bounds];
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
      v24 = [(CarplayDisplayManager *)self _rootViewControllerForCarScene];
      [v23 setRootViewController:v24];

      if (CalSystemSolariumEnabled())
      {
        v25 = +[UIColor clearColor];
        [v23 setBackgroundColor:v25];
      }

      objc_storeStrong(&self->_carWindow, v23);
      v26 = [v10 URLContexts];
      if (v26)
      {
        v27 = kCalUILogCarplayHandle;
        if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "willConnectToSession has urlContexts", &v29, 2u);
        }

        [(CarplayDisplayManager *)self scene:v12 openURLContexts:v26];
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

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneDidDisconnect %@", &v8, 0xCu);
  }

  v6 = [(UIWindow *)self->_carWindow windowScene];

  if (v6 == v4)
  {
    [(UIWindow *)self->_carWindow setHidden:1];
    carWindow = self->_carWindow;
    self->_carWindow = 0;
  }
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v5 = [a4 anyObject];
  v6 = [v5 URL];

  v7 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "openURLContexts:%@", &v8, 0xCu);
  }

  [(CarplayDisplayManager *)self _openURL:v6];
}

- (void)_openURL:(id)a3
{
  carWindow = self->_carWindow;
  v4 = a3;
  v5 = [(UIWindow *)carWindow rootViewController];
  [v5 handleURL:v4];
}

- (id)_rootViewControllerForCarScene
{
  v2 = [(CarplayDisplayManager *)self _createAndSetupModel];
  v3 = [[CarplayNavigationController alloc] initWithModel:v2];

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

- (void)_setUpSelectedCalendarsOnModel:(id)a3
{
  v3 = a3;
  v4 = [EKCalendarVisibilityManager alloc];
  v5 = [v3 eventStore];
  v6 = [v3 sourceForSelectedIdentity];
  v7 = [v4 initWithEventStore:v5 limitedToSource:v6 visibilityChangedCallback:0 queue:0];

  v8 = [v7 visibleCalendarsForAllIdentities];
  if ([UIApp launchedToTest])
  {
    v22 = v7;
    v9 = [v8 mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v8;
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
          v16 = [v15 title];
          v17 = [v16 containsString:@"Legacy"];

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
    v9 = v8;
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
  [v3 setSelectedCalendars:v21];
}

@end