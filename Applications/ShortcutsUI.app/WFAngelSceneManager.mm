@interface WFAngelSceneManager
+ (id)sharedManager;
- (WFAngelSceneManager)init;
- (void)dealloc;
- (void)getWindowWithCancellationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions;
- (void)requestSceneDeactivation;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)setActiveWindow:(id)window;
@end

@implementation WFAngelSceneManager

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_100001F54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[WFAngelSceneManager sceneDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Resetting...", &v7, 0xCu);
  }

  activeScene = [(WFAngelSceneManager *)self activeScene];

  if (activeScene == disconnectCopy)
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

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v11 = sceneCopy;
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
      _rootSheetPresentationController = [(WFAngelSecureWindow *)v14 _rootSheetPresentationController];
      [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

      [(WFAngelSecureWindow *)v14 makeKeyAndVisible];
      [(WFAngelSceneManager *)self setActiveWindow:v14];
      [(WFAngelSceneManager *)self setActiveScene:v11];
      windowActivationCompletionHandler = [(WFAngelSceneManager *)self windowActivationCompletionHandler];

      if (windowActivationCompletionHandler)
      {
        windowActivationCompletionHandler2 = [(WFAngelSceneManager *)self windowActivationCompletionHandler];
        (windowActivationCompletionHandler2)[2](windowActivationCompletionHandler2, v14, 0);

        [(WFAngelSceneManager *)self setWindowActivationCompletionHandler:0];
      }
    }
  }
}

- (void)remoteAlertScene:(id)scene handleButtonActions:(id)actions
{
  v5 = [actions if_compactMap:&stru_100028690];
  if ([v5 count])
  {
    v6 = sub_100001F54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[WFAngelSceneManager remoteAlertScene:handleButtonActions:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Home gesture invoked, invoking cancellation handler...", &v9, 0xCu);
    }

    cancellationHandler = [(WFAngelSceneManager *)self cancellationHandler];

    if (cancellationHandler)
    {
      cancellationHandler2 = [(WFAngelSceneManager *)self cancellationHandler];
      (*(cancellationHandler2 + 16))();
    }

    else
    {
      cancellationHandler2 = sub_100001F54();
      if (os_log_type_enabled(cancellationHandler2, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[WFAngelSceneManager remoteAlertScene:handleButtonActions:]";
        _os_log_impl(&_mh_execute_header, cancellationHandler2, OS_LOG_TYPE_DEFAULT, "%s Cancellation handler not found...", &v9, 0xCu);
      }
    }
  }
}

- (void)setActiveWindow:(id)window
{
  windowCopy = window;
  v5 = sub_100001F54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WFAngelSceneManager setActiveWindow:]";
    v9 = 2112;
    v10 = windowCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Setting active window to %@", &v7, 0x16u);
  }

  activeWindow = self->_activeWindow;
  self->_activeWindow = windowCopy;
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

- (void)getWindowWithCancellationHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
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
  [(WFAngelSceneManager *)self setWindowActivationCompletionHandler:completionHandlerCopy];
  [(WFAngelSceneManager *)self setCancellationHandler:handlerCopy];
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