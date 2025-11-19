@interface EducationUISceneDelegate
- (EducationUISceneDelegate)init;
- (void)connectToInvokerEndpoint:(id)a3;
- (void)dealloc;
- (void)remoteAlertScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)systemActionDelegate:(id)a3 requestsDismissalOfEducationController:(id)a4;
@end

@implementation EducationUISceneDelegate

- (EducationUISceneDelegate)init
{
  v5.receiver = self;
  v5.super_class = EducationUISceneDelegate;
  v2 = [(EducationUISceneDelegate *)&v5 init];
  v3 = sub_100001F04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "init delegate %@", buf, 0xCu);
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100001F04();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deallocate delegate %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = EducationUISceneDelegate;
  [(EducationUISceneDelegate *)&v4 dealloc];
}

- (void)connectToInvokerEndpoint:(id)a3
{
  v4 = a3;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connecting to presenter", v8, 2u);
  }

  v6 = xpc_connection_create_from_endpoint(v4);
  connectionToPresenter = self->_connectionToPresenter;
  self->_connectionToPresenter = v6;

  xpc_connection_set_event_handler(self->_connectionToPresenter, &stru_100008208);
  xpc_connection_resume(self->_connectionToPresenter);
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001F04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v36 = "[EducationUISceneDelegate scene:willConnectToSession:options:]";
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ %@ %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [v12 configurationContext];
    v14 = [v13 xpcEndpoint];

    if (v14)
    {
      [(EducationUISceneDelegate *)self connectToInvokerEndpoint:v14];
    }

    v15 = [v12 configurationContext];
    v16 = [v15 userInfo];
    v17 = [v16 objectForKey:kCFBundleIdentifierKey];

    if (v17)
    {
      v34 = v14;
      v18 = [v12 configurationContext];
      v19 = [v18 userInfo];
      v20 = [v19 objectForKey:@"feature"];
      v21 = [v20 unsignedIntegerValue];

      v22 = sub_100001F04();
      v23 = v22;
      if ((v21 - 4) > 0xFFFFFFFFFFFFFFFCLL)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v36 = v17;
          v37 = 2048;
          v38 = v21;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "init education VC for %@ feature %lld", buf, 0x16u);
        }

        v24 = objc_alloc_init(APEducationViewControllerSystemActionDelegate);
        actionDelegate = self->_actionDelegate;
        self->_actionDelegate = v24;

        [(APEducationViewControllerSystemActionDelegate *)self->_actionDelegate setDelegate:self];
        v26 = [[UIWindow alloc] initWithWindowScene:v12];
        window = self->_window;
        self->_window = v26;

        v23 = [APApplication applicationWithBundleIdentifier:v17];
        v28 = APLockEducationViewController_ptr;
        v29 = APHideEducationViewController_ptr;
        if (v21 != 2)
        {
          v29 = APEducationFlowViewController_ptr;
        }

        if (v21 != 1)
        {
          v28 = v29;
        }

        v30 = [objc_alloc(*v28) initForApplication:v23];
        educationVC = self->_educationVC;
        self->_educationVC = v30;

        [(APEducationViewController *)self->_educationVC setDelegate:self->_actionDelegate];
        v32 = objc_alloc_init(APEducationVCPresentingViewController);
        presentingVC = self->_presentingVC;
        self->_presentingVC = v32;

        [(UIWindow *)self->_window setRootViewController:self->_presentingVC];
        [(UIWindow *)self->_window makeKeyAndVisible];
        [v12 setAllowsAlertStacking:1];
        v14 = v34;
      }

      else
      {
        v14 = v34;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100002050(v21, v23);
        }
      }
    }

    else
    {
      v23 = sub_100001F04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000020C8(v12, v23);
      }
    }
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = a3;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneDidDisconnect:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    educationVC = self->_educationVC;
    v7 = 136315650;
    v8 = "[EducationUISceneDelegate sceneDidBecomeActive:]";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = educationVC;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@; presenting education VC %@", &v7, 0x20u);
  }

  [(APEducationVCPresentingViewController *)self->_presentingVC presentEducationViewController:self->_educationVC];
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneWillResignActive:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v3 = a3;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneWillEnterForeground:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v3 = a3;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneDidEnterBackground:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  v4 = a3;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[EducationUISceneDelegate remoteAlertScene:handleButtonActions:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)a3
{
  v3 = a3;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)remoteAlertScene:(id)a3 didTransitionToAttachedToWindowedAccessory:(BOOL)a4 windowedAccessoryCutoutFrameInScreen:(CGRect)a5
{
  v5 = a3;
  v6 = sub_100001F04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[EducationUISceneDelegate remoteAlertScene:didTransitionToAttachedToWindowedAccessory:windowedAccessoryCutoutFrameInScreen:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }
}

- (void)systemActionDelegate:(id)a3 requestsDismissalOfEducationController:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001C0C;
  v4[3] = &unk_100008258;
  v4[4] = self;
  [a4 dismissViewControllerAnimated:1 completion:v4];
}

@end