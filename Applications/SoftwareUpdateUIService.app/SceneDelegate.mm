@interface SceneDelegate
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  v14 = 0;
  objc_storeStrong(&v14, session);
  v13 = 0;
  objc_storeStrong(&v13, options);
  v12 = SUSUILog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_100006BC8(v17, "[SceneDelegate scene:willConnectToSession:options:]", v13);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s connectionOptions:%@", v17, 0x16u);
  }

  objc_storeStrong(&v12, 0);
  v5 = [UIWindow alloc];
  v6 = [v5 initWithWindowScene:location[0]];
  window = selfCopy->_window;
  selfCopy->_window = v6;

  v8 = location[0];
  v9 = [NSArray arrayWithObject:selfCopy];
  [v8 _registerSceneActionsHandlerArray:? forKey:?];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actions);
  v31 = 0;
  objc_storeStrong(&v31, scene);
  v30 = 0;
  objc_storeStrong(&v30, iScene);
  v29 = 0;
  objc_storeStrong(&v29, context);
  v28 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  v19 = location[0];
  v20 = [v19 countByEnumeratingWithState:__b objects:v35 count:16];
  if (v20)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v20;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(v19);
      }

      v27 = *(__b[1] + 8 * v14);
      oslog = SUSUILog();
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v11 = type;
        sub_100006BC8(v34, "[SceneDelegate _respondToActions:forFBSScene:inUIScene:fromTransitionContext:]", v27);
        _os_log_impl(&_mh_execute_header, log, v11, " %s got new action:%@", v34, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v8 = [SUSUIAuthenticationAlertAction alloc];
      info = [v27 info];
      v23 = [v8 initWithInfo:? forBaseAction:?];

      if (v23)
      {
        [v28 removeObject:v27];
        v21 = objc_alloc_init(SUSUIRemoteAuthenticationContainerViewController);
        [(SUSUIRemoteAuthenticationContainerViewController *)v21 configureWithAction:v23];
        [(UIWindow *)selfCopy->_window setRootViewController:v21];
        [(UIWindow *)selfCopy->_window makeKeyAndVisible];
        objc_storeStrong(&v21, 0);
        v22 = 0;
      }

      else
      {
        v22 = 3;
      }

      objc_storeStrong(&v23, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [v19 countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  v7 = v28;
  v22 = 1;
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end