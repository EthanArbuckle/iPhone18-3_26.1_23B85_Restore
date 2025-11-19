@interface SceneDelegate
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation SceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_10000448C(v33, location[0], v28, v27);
    _os_log_debug_impl(&_mh_execute_header, v26, v25, "Scene (%@) will connect to session (%@) with options (%@)", v33, 0x20u);
  }

  objc_storeStrong(&v26, 0);
  v5 = objc_opt_class();
  v24 = sub_1000044F4(v5, location[0]);
  if (v24)
  {
    v20 = objc_alloc_init(AKRemoteBaseViewController);
    v6 = [UIWindow alloc];
    v19 = [v6 initWithWindowScene:v24];
    [v19 setRootViewController:v20];
    [v19 makeKeyAndVisible];
    objc_storeStrong(&v30->_window, v19);
    v7 = [AKRemoteViewSessionController alloc];
    v18 = [v7 initWithRootViewController:v20 sceneSession:v28];
    [v18 setNewAuthorizationViewController:&stru_1000144E0];
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10000471C;
    v16 = &unk_1000143C8;
    v17 = v19;
    [v18 setWindowBlock:&v12];
    objc_storeStrong(&v30->_viewSessionController, v18);
    v8 = v24;
    v31 = v18;
    v9 = [NSArray arrayWithObjects:&v31 count:1];
    [v8 _registerBSActionResponderArray:? forKey:?];

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  else
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100002238(v32, location[0], v28);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Failed to connect scene (%@) to the session: %@", v32, 0x16u);
    }

    objc_storeStrong(&v23, 0);
    v21 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneDidDisconnect:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_100001BA0(v6, v5->_viewSessionController);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "sceneDidDisconnect invalidating view session controller: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKRemoteViewSessionController *)v5->_viewSessionController invalidate];
  objc_storeStrong(&v5->_viewSessionController, 0);
  [(UIWindow *)v5->_window setRootViewController:0];
  objc_storeStrong(&v5->_window, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneDidBecomeActive:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    sub_100001814(v5);
    _os_log_debug_impl(&_mh_execute_header, log, type, "sceneDidBecomeActive", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneWillResignActive:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    sub_100001814(v5);
    _os_log_debug_impl(&_mh_execute_header, log, type, "sceneWillResignActive", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneWillEnterForeground:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    sub_100001814(v5);
    _os_log_debug_impl(&_mh_execute_header, log, type, "sceneWillEnterForeground", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneDidEnterBackground:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    sub_100001814(v5);
    _os_log_debug_impl(&_mh_execute_header, log, type, "sceneDidEnterBackground", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end