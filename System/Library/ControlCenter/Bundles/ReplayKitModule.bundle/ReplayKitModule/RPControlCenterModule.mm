@interface RPControlCenterModule
- (RPControlCenterModule)init;
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
- (void)dealloc;
- (void)setContentModuleContext:(id)context;
@end

@implementation RPControlCenterModule

- (RPControlCenterModule)init
{
  v6.receiver = self;
  v6.super_class = RPControlCenterModule;
  v2 = [(RPControlCenterModule *)&v6 init];
  if (v2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v8 = "[RPControlCenterModule init]";
      v9 = 1024;
      v10 = 21;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d  %p", buf, 0x1Cu);
    }

    v3 = +[RPControlCenterClient sharedInstance];
    client = v2->_client;
    v2->_client = v3;

    [(RPControlCenterClient *)v2->_client setPreferredExtension:0];
  }

  return v2;
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446978;
    v8 = "[RPControlCenterModule contentViewControllerForContext:]";
    v9 = 1024;
    v10 = 29;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    environment = [contextCopy environment];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p, presentationContext: %ld", &v7, 0x26u);
  }

  v5 = -[RPControlCenterMenuModuleViewController initWithClient:forBroadcastPicker:]([RPControlCenterMenuModuleViewController alloc], "initWithClient:forBroadcastPicker:", self->_client, [contextCopy environment] == &dword_0 + 2);
  objc_storeStrong(&self->_currentContentViewController, v5);
  [(RPControlCenterMenuModuleViewController *)self->_currentContentViewController setContentModuleContext:self->_contentModuleContext];

  return v5;
}

- (id)backgroundViewControllerForContext:(id)context
{
  contextCopy = context;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "[RPControlCenterModule backgroundViewControllerForContext:]";
    v14 = 1024;
    v15 = 47;
    v16 = 2048;
    selfCopy = self;
    v18 = 2048;
    environment = [contextCopy environment];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p, presentationContext: %ld", &v12, 0x26u);
  }

  v5 = [[RPControlCenterModuleBackgroundViewController alloc] initWithClient:self->_client];
  [(RPControlCenterModuleBackgroundViewController *)v5 setShowsMicrophoneButton:1];
  [(RPControlCenterModuleBackgroundViewController *)v5 setContentViewController:self->_currentContentViewController];
  if ([contextCopy environment] == &dword_0 + 2)
  {
    [(RPControlCenterModuleBackgroundViewController *)v5 setShowsMicrophoneButton:[(RPControlCenterClient *)self->_client shouldShowMicButton]];
    contentViewController = [(RPControlCenterModuleBackgroundViewController *)self->_currentBackgroundViewController contentViewController];
    v7 = contentViewController;
    if (self->_currentBackgroundViewController && [(RPControlCenterModule *)contentViewController isBroadcastPicker])
    {
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        currentBackgroundViewController = self->_currentBackgroundViewController;
        v12 = 136446978;
        v13 = "[RPControlCenterModule backgroundViewControllerForContext:]";
        v14 = 1024;
        v15 = 61;
        v16 = 2048;
        selfCopy = v7;
        v18 = 2048;
        environment = currentBackgroundViewController;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d removing view controllers: %p %p", &v12, 0x26u);
      }

      [(RPControlCenterClient *)self->_client removeDelegate:v7];
      [(RPControlCenterClient *)self->_client removeDelegate:self->_currentBackgroundViewController];
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:v7];

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self->_currentBackgroundViewController];
    }
  }

  objc_storeStrong(&self->_currentBackgroundViewController, v5);

  return v5;
}

- (void)setContentModuleContext:(id)context
{
  contextCopy = context;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[RPControlCenterModule setContentModuleContext:]";
    v8 = 1024;
    v9 = 76;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", &v6, 0x1Cu);
  }

  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = contextCopy;
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[RPControlCenterModule dealloc]";
    v8 = 1024;
    v9 = 85;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d  %p", buf, 0x1Cu);
  }

  client = self->_client;
  self->_client = 0;

  contentModuleContext = self->_contentModuleContext;
  self->_contentModuleContext = 0;

  v5.receiver = self;
  v5.super_class = RPControlCenterModule;
  [(RPControlCenterModule *)&v5 dealloc];
}

@end