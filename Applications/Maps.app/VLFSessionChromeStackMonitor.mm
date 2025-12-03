@interface VLFSessionChromeStackMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSSet)allowedModeClasses;
- (NSString)debugDescription;
- (PlatformController)platformController;
- (VLFSessionChromeStackMonitor)initWithObserver:(id)observer platformController:(id)controller;
- (void)_updateStateForTopMode:(id)mode;
- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation VLFSessionChromeStackMonitor

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v14 = WeakRetained;
  if (WeakRetained != objectCopy)
  {

LABEL_15:
    v26.receiver = self;
    v26.super_class = VLFSessionChromeStackMonitor;
    [(VLFSessionChromeStackMonitor *)&v26 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_16;
  }

  v15 = NSStringFromSelector("chromeViewController");
  v16 = [pathCopy isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = sub_10098CB2C();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "De-registering from old chrome VC stack changes: %@", buf, 0xCu);
  }

  [v19 removeContextStackObserver:self];
  v24 = sub_10098CB2C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Registering for new chrome VC stack changes: %@", buf, 0xCu);
  }

  [v22 addContextStackObserver:self];
  topContext = [v22 topContext];
  [(VLFSessionChromeStackMonitor *)self _updateStateForTopMode:topContext];

LABEL_16:
}

- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack
{
  stackCopy = stack;
  contextStackCopy = contextStack;
  v9 = sub_10098CB2C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    lastObject = [stackCopy lastObject];
    lastObject2 = [contextStackCopy lastObject];
    v13 = 138412546;
    v14 = lastObject;
    v15 = 2112;
    v16 = lastObject2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Top mode changed from %@ to %@", &v13, 0x16u);
  }

  lastObject3 = [contextStackCopy lastObject];
  [(VLFSessionChromeStackMonitor *)self _updateStateForTopMode:lastObject3];
}

- (NSString)debugDescription
{
  v23 = objc_opt_class();
  if ([objc_opt_class() isEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v22 = v3;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  state = [(VLFSessionMonitor *)self state];
  v9 = @"Hide";
  if (state == 1)
  {
    v9 = @"EnablePuck";
  }

  if (state == 2)
  {
    v10 = @"EnablePuckAndBanner";
  }

  else
  {
    v10 = v9;
  }

  platformController = [(VLFSessionChromeStackMonitor *)self platformController];
  chromeViewController = [platformController chromeViewController];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  platformController2 = [(VLFSessionChromeStackMonitor *)self platformController];
  chromeViewController2 = [platformController2 chromeViewController];
  topContext = [chromeViewController2 topContext];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, currentChromeVC: %@, currentMode: %@", v23, v22, v5, v7, v10, v13, v18];

  return v19;
}

- (NSSet)allowedModeClasses
{
  allowedModeClasses = self->_allowedModeClasses;
  if (!allowedModeClasses)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v4, v5, objc_opt_class(), 0];
    v7 = self->_allowedModeClasses;
    self->_allowedModeClasses = v6;

    allowedModeClasses = self->_allowedModeClasses;
  }

  return allowedModeClasses;
}

- (void)_updateStateForTopMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    allowedModeClasses = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
    v6 = [allowedModeClasses containsObject:objc_opt_class()];

    v7 = sub_10098CB2C();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        allowedModeClasses2 = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
        v16 = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = allowedModeClasses2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Top mode (%@) is in the allowed set (%@); updating state", &v16, 0x16u);
      }

      v12 = 2;
    }

    else
    {
      if (v8)
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        allowedModeClasses3 = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = allowedModeClasses3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Top mode (%@) is NOT in the allowed set (%@); updating state", &v16, 0x16u);
      }

      v12 = 0;
    }

    [(VLFSessionMonitor *)self setState:v12];
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v4 = NSStringFromSelector("chromeViewController");
  [WeakRetained removeObserver:self forKeyPath:v4];

  v5 = objc_loadWeakRetained(&self->_platformController);
  chromeViewController = [v5 chromeViewController];
  [chromeViewController removeContextStackObserver:self];

  v7.receiver = self;
  v7.super_class = VLFSessionChromeStackMonitor;
  [(VLFSessionChromeStackMonitor *)&v7 dealloc];
}

- (VLFSessionChromeStackMonitor)initWithObserver:(id)observer platformController:(id)controller
{
  observerCopy = observer;
  controllerCopy = controller;
  if (!observerCopy)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "[VLFSessionChromeStackMonitor initWithObserver:platformController:]";
      v30 = 2080;
      v31 = "VLFSessionChromeStackMonitor.m";
      v32 = 1024;
      v33 = 38;
      v34 = 2080;
      v35 = "observer != nil";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!controllerCopy)
  {
    v24 = sub_10006D178();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v29 = "[VLFSessionChromeStackMonitor initWithObserver:platformController:]";
      v30 = 2080;
      v31 = "VLFSessionChromeStackMonitor.m";
      v32 = 1024;
      v33 = 39;
      v34 = 2080;
      v35 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v25 = sub_10006D178();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v29 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v27.receiver = self;
  v27.super_class = VLFSessionChromeStackMonitor;
  v8 = [(VLFSessionMonitor *)&v27 initWithObserver:observerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_platformController, controllerCopy);
    v10 = sub_10098CB2C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&v9->_platformController);
      chromeViewController = [WeakRetained chromeViewController];
      *buf = 138412290;
      v29 = chromeViewController;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Registering for chrome VC stack changes: %@", buf, 0xCu);
    }

    v13 = objc_loadWeakRetained(&v9->_platformController);
    chromeViewController2 = [v13 chromeViewController];
    [chromeViewController2 addContextStackObserver:v9];

    v15 = objc_loadWeakRetained(&v9->_platformController);
    v16 = NSStringFromSelector("chromeViewController");
    [v15 addObserver:v9 forKeyPath:v16 options:3 context:0];

    v17 = objc_loadWeakRetained(&v9->_platformController);
    chromeViewController3 = [v17 chromeViewController];
    topContext = [chromeViewController3 topContext];
    [(VLFSessionChromeStackMonitor *)v9 _updateStateForTopMode:topContext];
  }

  return v9;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionChromeStackMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionChromeStackMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end