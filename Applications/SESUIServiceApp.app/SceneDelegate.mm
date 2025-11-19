@interface SceneDelegate
- (SceneDelegate)init;
- (id)viewControllerForUseCase:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
@end

@implementation SceneDelegate

- (SceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = SceneDelegate;
  return [(SceneDelegate *)&v3 init];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SESAngel - scene:willConnectToSession:options:", buf, 2u);
  }

  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_100002780;
  v32 = sub_100002790;
  v11 = v8;
  v33 = v11;
  v12 = *(v29 + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v29 + 5) setSwipeDismissalStyle:1];
    [*(v29 + 5) setDismissalAnimationStyle:2];
    [*(v29 + 5) setAllowsMenuButtonDismissal:1];
    v13 = [*(v29 + 5) configurationContext];
    v14 = [v13 userInfo];
    v15 = SESUIServiceAppConfigurationKey;
    v16 = [v14 objectForKeyedSubscript:SESUIServiceAppConfigurationKey];
    if (v16)
    {
      v17 = [(SceneDelegate *)self viewControllerForUseCase:v16];
      if (v17)
      {
        objc_initWeak(location, self);
        objc_initWeak(&from, v9);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100002798;
        v24[3] = &unk_100018918;
        objc_copyWeak(&v25, location);
        objc_copyWeak(&v26, &from);
        v24[4] = buf;
        v18 = objc_retainBlock(v24);
        [v17 setDismissHandler:v18];
        v19 = [UIWindow alloc];
        v20 = [v19 initWithWindowScene:*(v29 + 5)];
        [v20 setRootViewController:v17];
        [v20 makeKeyAndVisible];
        [(SceneDelegate *)self setWindow:v20];
        objc_storeStrong(&self->_viewController, v17);

        objc_destroyWeak(&v26);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }

      else
      {
        v22 = SESDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No ViewController for use case %@", location, 0xCu);
        }

        [*(v29 + 5) invalidate];
      }
    }

    else
    {
      v21 = SESDefaultLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No value for key %@ in alert scene configuration context", location, 0xCu);
      }

      [*(v29 + 5) invalidate];
    }
  }

  _Block_object_dispose(buf, 8);
}

- (id)viewControllerForUseCase:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SESStorageManagementUserInfo])
  {
    v4 = &off_1000185C0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_new();
    goto LABEL_7;
  }

  if ([v3 isEqualToString:SESGDPRSceneConfigurationUserInfo])
  {
    v4 = off_1000185B8;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = a3;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneDidDisconnect", v6, 2u);
  }

  v5 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 invalidate];
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneDidBecomeActive:", v5, 2u);
  }

  [(SESUIServiceBaseViewController *)self->_viewController present];
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = a3;
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Angel - sceneWillResignActive:", v6, 2u);
  }

  v5 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 invalidate];
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Angel - sceneWillEnterForeground:", v4, 2u);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Angel - sceneDidEnterBackground:", v7, 2u);
    }

    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 invalidate];
      [(SESUIServiceBaseViewController *)self->_viewController dismiss];
    }
  }
}

@end