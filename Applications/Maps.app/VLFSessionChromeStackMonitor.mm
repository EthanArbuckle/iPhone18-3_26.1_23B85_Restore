@interface VLFSessionChromeStackMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (NSSet)allowedModeClasses;
- (NSString)debugDescription;
- (PlatformController)platformController;
- (VLFSessionChromeStackMonitor)initWithObserver:(id)a3 platformController:(id)a4;
- (void)_updateStateForTopMode:(id)a3;
- (void)chromeViewController:(id)a3 didMoveFromContextStack:(id)a4 toContextStack:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation VLFSessionChromeStackMonitor

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_platformController);
  v14 = WeakRetained;
  if (WeakRetained != v11)
  {

LABEL_15:
    v26.receiver = self;
    v26.super_class = VLFSessionChromeStackMonitor;
    [(VLFSessionChromeStackMonitor *)&v26 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_16;
  }

  v15 = NSStringFromSelector("chromeViewController");
  v16 = [v10 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
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

  v20 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
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
  v25 = [v22 topContext];
  [(VLFSessionChromeStackMonitor *)self _updateStateForTopMode:v25];

LABEL_16:
}

- (void)chromeViewController:(id)a3 didMoveFromContextStack:(id)a4 toContextStack:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_10098CB2C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 lastObject];
    v11 = [v8 lastObject];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Top mode changed from %@ to %@", &v13, 0x16u);
  }

  v12 = [v8 lastObject];
  [(VLFSessionChromeStackMonitor *)self _updateStateForTopMode:v12];
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
  v8 = [(VLFSessionMonitor *)self state];
  v9 = @"Hide";
  if (v8 == 1)
  {
    v9 = @"EnablePuck";
  }

  if (v8 == 2)
  {
    v10 = @"EnablePuckAndBanner";
  }

  else
  {
    v10 = v9;
  }

  v21 = [(VLFSessionChromeStackMonitor *)self platformController];
  v11 = [v21 chromeViewController];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [(VLFSessionChromeStackMonitor *)self platformController];
  v15 = [v14 chromeViewController];
  v16 = [v15 topContext];
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

- (void)_updateStateForTopMode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
    v6 = [v5 containsObject:objc_opt_class()];

    v7 = sub_10098CB2C();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
        v16 = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
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
        v15 = [(VLFSessionChromeStackMonitor *)self allowedModeClasses];
        v16 = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v15;
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
  v6 = [v5 chromeViewController];
  [v6 removeContextStackObserver:self];

  v7.receiver = self;
  v7.super_class = VLFSessionChromeStackMonitor;
  [(VLFSessionChromeStackMonitor *)&v7 dealloc];
}

- (VLFSessionChromeStackMonitor)initWithObserver:(id)a3 platformController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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

  if (!v7)
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
  v8 = [(VLFSessionMonitor *)&v27 initWithObserver:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_platformController, v7);
    v10 = sub_10098CB2C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&v9->_platformController);
      v12 = [WeakRetained chromeViewController];
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Registering for chrome VC stack changes: %@", buf, 0xCu);
    }

    v13 = objc_loadWeakRetained(&v9->_platformController);
    v14 = [v13 chromeViewController];
    [v14 addContextStackObserver:v9];

    v15 = objc_loadWeakRetained(&v9->_platformController);
    v16 = NSStringFromSelector("chromeViewController");
    [v15 addObserver:v9 forKeyPath:v16 options:3 context:0];

    v17 = objc_loadWeakRetained(&v9->_platformController);
    v18 = [v17 chromeViewController];
    v19 = [v18 topContext];
    [(VLFSessionChromeStackMonitor *)v9 _updateStateForTopMode:v19];
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