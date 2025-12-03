@interface VIOSessionMonitor
- (ARConfiguration)configuration;
- (ARSession)session;
- (PlatformController)platformController;
- (VIOSessionMonitor)initWithStateManager:(id)manager platformController:(id)controller;
@end

@implementation VIOSessionMonitor

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (ARConfiguration)configuration
{
  stateManager = [(VIOSessionMonitor *)self stateManager];
  configuration = [stateManager configuration];

  return configuration;
}

- (ARSession)session
{
  stateManager = [(VIOSessionMonitor *)self stateManager];
  session = [stateManager session];

  return session;
}

- (VIOSessionMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  if (!managerCopy)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VIOSessionMonitor initWithStateManager:platformController:]";
      v21 = 2080;
      v22 = "VIOSessionMonitor.m";
      v23 = 1024;
      v24 = 22;
      v25 = 2080;
      v26 = "stateManager != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!controllerCopy)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[VIOSessionMonitor initWithStateManager:platformController:]";
      v21 = 2080;
      v22 = "VIOSessionMonitor.m";
      v23 = 1024;
      v24 = 23;
      v25 = 2080;
      v26 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = VIOSessionMonitor;
  v9 = [(VIOSessionMonitor *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stateManager, manager);
    objc_storeWeak(&v10->_platformController, controllerCopy);
    v10->_enabled = 1;
  }

  return v10;
}

@end