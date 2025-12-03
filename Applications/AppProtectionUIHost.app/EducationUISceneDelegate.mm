@interface EducationUISceneDelegate
- (EducationUISceneDelegate)init;
- (void)connectToInvokerEndpoint:(id)endpoint;
- (void)dealloc;
- (void)remoteAlertScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)systemActionDelegate:(id)delegate requestsDismissalOfEducationController:(id)controller;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deallocate delegate %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = EducationUISceneDelegate;
  [(EducationUISceneDelegate *)&v4 dealloc];
}

- (void)connectToInvokerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connecting to presenter", v8, 2u);
  }

  v6 = xpc_connection_create_from_endpoint(endpointCopy);
  connectionToPresenter = self->_connectionToPresenter;
  self->_connectionToPresenter = v6;

  xpc_connection_set_event_handler(self->_connectionToPresenter, &stru_100008208);
  xpc_connection_resume(self->_connectionToPresenter);
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sub_100001F04();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v36 = "[EducationUISceneDelegate scene:willConnectToSession:options:]";
    v37 = 2112;
    v38 = sceneCopy;
    v39 = 2112;
    v40 = sessionCopy;
    v41 = 2112;
    v42 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ %@ %@", buf, 0x2Au);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = sceneCopy;
    configurationContext = [v12 configurationContext];
    xpcEndpoint = [configurationContext xpcEndpoint];

    if (xpcEndpoint)
    {
      [(EducationUISceneDelegate *)self connectToInvokerEndpoint:xpcEndpoint];
    }

    configurationContext2 = [v12 configurationContext];
    userInfo = [configurationContext2 userInfo];
    v17 = [userInfo objectForKey:kCFBundleIdentifierKey];

    if (v17)
    {
      v34 = xpcEndpoint;
      configurationContext3 = [v12 configurationContext];
      userInfo2 = [configurationContext3 userInfo];
      v20 = [userInfo2 objectForKey:@"feature"];
      unsignedIntegerValue = [v20 unsignedIntegerValue];

      v22 = sub_100001F04();
      v23 = v22;
      if ((unsignedIntegerValue - 4) > 0xFFFFFFFFFFFFFFFCLL)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v36 = v17;
          v37 = 2048;
          v38 = unsignedIntegerValue;
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
        if (unsignedIntegerValue != 2)
        {
          v29 = APEducationFlowViewController_ptr;
        }

        if (unsignedIntegerValue != 1)
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
        xpcEndpoint = v34;
      }

      else
      {
        xpcEndpoint = v34;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100002050(unsignedIntegerValue, v23);
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

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneDidDisconnect:]";
    v7 = 2112;
    v8 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    educationVC = self->_educationVC;
    v7 = 136315650;
    v8 = "[EducationUISceneDelegate sceneDidBecomeActive:]";
    v9 = 2112;
    v10 = activeCopy;
    v11 = 2112;
    v12 = educationVC;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@; presenting education VC %@", &v7, 0x20u);
  }

  [(APEducationVCPresentingViewController *)self->_presentingVC presentEducationViewController:self->_educationVC];
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneWillResignActive:]";
    v7 = 2112;
    v8 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneWillEnterForeground:]";
    v7 = 2112;
    v8 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate sceneDidEnterBackground:]";
    v7 = 2112;
    v8 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  sceneCopy = scene;
  v5 = sub_100001F04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[EducationUISceneDelegate remoteAlertScene:handleButtonActions:]";
    v8 = 2112;
    v9 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }
}

- (void)remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  v4 = sub_100001F04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[EducationUISceneDelegate remoteAlertSceneDidInvalidateForRemoteAlertServiceInvalidation:]";
    v7 = 2112;
    v8 = invalidationCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v5, 0x16u);
  }
}

- (void)remoteAlertScene:(id)scene didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  sceneCopy = scene;
  v6 = sub_100001F04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[EducationUISceneDelegate remoteAlertScene:didTransitionToAttachedToWindowedAccessory:windowedAccessoryCutoutFrameInScreen:]";
    v9 = 2112;
    v10 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }
}

- (void)systemActionDelegate:(id)delegate requestsDismissalOfEducationController:(id)controller
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001C0C;
  v4[3] = &unk_100008258;
  v4[4] = self;
  [controller dismissViewControllerAnimated:1 completion:v4];
}

@end