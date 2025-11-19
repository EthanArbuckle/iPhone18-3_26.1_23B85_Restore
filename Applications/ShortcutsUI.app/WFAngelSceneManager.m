@interface WFAngelSceneManager
+ (id)sharedManager;
- (WFAngelSceneManager)init;
- (void)dealloc;
- (void)getWindowWithCancellationHandler:(id)a3 completionHandler:(id)a4;
- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4;
- (void)requestSceneDeactivation;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)setActiveWindow:(id)a3;
@end

@implementation WFAngelSceneManager

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = sub_100001F54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFAngelSceneManager sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Resetting...", &v7, 0xCu);
  }

  v6 = [(WFAngelSceneManager *)self activeScene];

  if (v6 == v4)
  {
    [(WFAngelSceneManager *)self setActiveScene:0];
    [(WFAngelSceneManager *)self setActiveWindow:0];
  }

  if (notify_is_valid_token(self->_displayStatusNotifyToken))
  {
    notify_cancel(self->_displayStatusNotifyToken);
  }

  self->_displayStatusNotifyToken = -1;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = sub_100001F54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[WFAngelSceneManager scene:willConnectToSession:options:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Scene will connect, preparing window...", &v18, 0xCu);
      }

      [v11 setDelegate:self];
      [v11 setAllowsAlertStacking:1];
      [v11 setSwipeDismissalStyle:0];
      [v11 setDismissalAnimationStyle:0];
      [v11 setContentOverlaysStatusBar:1 animationSettings:0];
      [v11 setDesiredHardwareButtonEvents:16];
      v13 = objc_alloc_init(WFAngelSecureViewController);
      v14 = [[WFAngelSecureWindow alloc] initWithWindowScene:v11];
      [(WFAngelSecureWindow *)v14 setRootViewController:v13];
      v15 = [(WFAngelSecureWindow *)v14 _rootSheetPresentationController];
      [v15 _setShouldScaleDownBehindDescendantSheets:0];

      [(WFAngelSecureWindow *)v14 makeKeyAndVisible];
      [(WFAngelSceneManager *)self setActiveWindow:v14];
      [(WFAngelSceneManager *)self setActiveScene:v11];
      v16 = [(WFAngelSceneManager *)self windowActivationCompletionHandler];

      if (v16)
      {
        v17 = [(WFAngelSceneManager *)self windowActivationCompletionHandler];
        (v17)[2](v17, v14, 0);

        [(WFAngelSceneManager *)self setWindowActivationCompletionHandler:0];
      }
    }
  }
}

- (void)remoteAlertScene:(id)a3 handleButtonActions:(id)a4
{
  v5 = [a4 if_compactMap:&stru_100028690];
  if ([v5 count])
  {
    v6 = sub_100001F54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[WFAngelSceneManager remoteAlertScene:handleButtonActions:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Home gesture invoked, invoking cancellation handler...", &v9, 0xCu);
    }

    v7 = [(WFAngelSceneManager *)self cancellationHandler];

    if (v7)
    {
      v8 = [(WFAngelSceneManager *)self cancellationHandler];
      (*(v8 + 16))();
    }

    else
    {
      v8 = sub_100001F54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[WFAngelSceneManager remoteAlertScene:handleButtonActions:]";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Cancellation handler not found...", &v9, 0xCu);
      }
    }
  }
}

- (void)setActiveWindow:(id)a3
{
  v4 = a3;
  v5 = sub_100001F54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WFAngelSceneManager setActiveWindow:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Setting active window to %@", &v7, 0x16u);
  }

  activeWindow = self->_activeWindow;
  self->_activeWindow = v4;
}

- (void)requestSceneDeactivation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002508;
  block[3] = &unk_1000288A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)getWindowWithCancellationHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = sub_100001F54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[WFAngelSceneManager getWindowWithCancellationHandler:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Getting window...", buf, 0xCu);
  }

  v9 = [SBSRemoteAlertDefinition alloc];
  v10 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.ShortcutsUI"];
  v11 = [v9 initWithSceneProvidingProcess:v10 configurationIdentifier:0];

  v12 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v13 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
  v14 = objc_alloc_init(SBSRemoteAlertActivationContext);
  [v13 activateWithContext:v14];
  [(WFAngelSceneManager *)self setWindowActivationCompletionHandler:v7];
  [(WFAngelSceneManager *)self setCancellationHandler:v6];
  if (self->_displayStatusNotifyToken == -1)
  {
    objc_initWeak(buf, self);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002848;
    handler[3] = &unk_100028650;
    objc_copyWeak(&v16, buf);
    notify_register_dispatch("com.apple.iokit.hid.displayStatus", &self->_displayStatusNotifyToken, &_dispatch_main_q, handler);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_displayStatusNotifyToken))
  {
    notify_cancel(self->_displayStatusNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = WFAngelSceneManager;
  [(WFAngelSceneManager *)&v3 dealloc];
}

- (WFAngelSceneManager)init
{
  v6.receiver = self;
  v6.super_class = WFAngelSceneManager;
  v2 = [(WFAngelSceneManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_displayStatusNotifyToken = -1;
    v4 = v2;
  }

  return v3;
}

+ (id)sharedManager
{
  if (qword_100030D78 != -1)
  {
    dispatch_once(&qword_100030D78, &stru_1000286B0);
  }

  v3 = qword_100030D80;

  return v3;
}

@end