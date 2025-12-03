@interface VIOSessionThermalStateMonitor
- (BOOL)shouldDisableVIOSession;
- (VIOSessionThermalStateMonitor)initWithStateManager:(id)manager platformController:(id)controller;
- (void)dealloc;
- (void)processInfoThermalStateDidChangeNotification:(id)notification;
- (void)reportStateToStateManager;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation VIOSessionThermalStateMonitor

- (void)valueChangedForGEOConfigKey:(id)key
{
  v4 = sub_100935578();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Thermal state threshold value changed", &v5, 0xCu);
  }

  [(VIOSessionThermalStateMonitor *)self reportStateToStateManager];
}

- (void)processInfoThermalStateDidChangeNotification:(id)notification
{
  v4 = sub_100935578();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Detected thermal state changed", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100935730;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v6, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (void)reportStateToStateManager
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        selfCopy2 = "[VIOSessionThermalStateMonitor reportStateToStateManager]";
        v21 = 2080;
        v22 = "VIOSessionThermalStateMonitor.m";
        v23 = 1024;
        *v24 = 69;
        *&v24[4] = 2080;
        *&v24[6] = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v19, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v19 = 138412290;
          selfCopy2 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  shouldDisableVIOSession = [(VIOSessionThermalStateMonitor *)self shouldDisableVIOSession];
  v7 = sub_100935578();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (shouldDisableVIOSession)
  {
    if (v8)
    {
      v9 = +[NSProcessInfo processInfo];
      thermalState = [v9 thermalState];
      Integer = GEOConfigGetInteger();
      v19 = 134349568;
      selfCopy2 = self;
      v21 = 2048;
      v22 = thermalState;
      v23 = 2048;
      *v24 = Integer;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Will disable VIO with current thermal state: %ld, threshold: %ld", &v19, 0x20u);
    }

    stateManager = [(VIOSessionMonitor *)self stateManager];
    [stateManager recordSessionDisableEvent:5];
  }

  else
  {
    if (v8)
    {
      v13 = +[NSProcessInfo processInfo];
      thermalState2 = [v13 thermalState];
      v15 = GEOConfigGetInteger();
      v19 = 134349568;
      selfCopy2 = self;
      v21 = 2048;
      v22 = thermalState2;
      v23 = 2048;
      *v24 = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Will NOT disable VIO with current thermal state: %ld, threshold: %ld", &v19, 0x20u);
    }

    stateManager = [(VIOSessionMonitor *)self stateManager];
    [stateManager resetSessionDisableEvent:5];
  }
}

- (BOOL)shouldDisableVIOSession
{
  v2 = +[NSProcessInfo processInfo];
  thermalState = [v2 thermalState];
  LOBYTE(thermalState) = thermalState >= GEOConfigGetInteger();

  return thermalState;
}

- (void)dealloc
{
  v3 = sub_100935578();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v4.receiver = self;
  v4.super_class = VIOSessionThermalStateMonitor;
  [(VIOSessionThermalStateMonitor *)&v4 dealloc];
}

- (VIOSessionThermalStateMonitor)initWithStateManager:(id)manager platformController:(id)controller
{
  v8.receiver = self;
  v8.super_class = VIOSessionThermalStateMonitor;
  v4 = [(VIOSessionMonitor *)&v8 initWithStateManager:manager platformController:controller];
  if (v4)
  {
    v5 = sub_100935578();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"processInfoThermalStateDidChangeNotification:" name:NSProcessInfoThermalStateDidChangeNotification object:0];

    _GEOConfigAddDelegateListenerForKey();
    [(VIOSessionThermalStateMonitor *)v4 reportStateToStateManager];
  }

  return v4;
}

@end