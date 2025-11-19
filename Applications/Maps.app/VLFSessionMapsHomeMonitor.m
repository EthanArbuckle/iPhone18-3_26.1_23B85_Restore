@interface VLFSessionMapsHomeMonitor
+ (BOOL)affectsBannerVisibility;
+ (BOOL)affectsPuckVisibility;
- (VLFSessionMapsHomeMonitor)initWithObserver:(id)a3 platformController:(id)a4;
- (id)debugDescription;
- (void)searchTextFieldDidBeginEditingNotification:(id)a3;
- (void)searchTextFieldDidEndEditingNotification:(id)a3;
- (void)searchWillBecomeCurrentNotification:(id)a3;
- (void)searchWillResignCurrentNotification:(id)a3;
- (void)settingsViewControllerDidDisappearNotification:(id)a3;
- (void)settingsViewControllerWillAppearNotification:(id)a3;
- (void)updateState;
@end

@implementation VLFSessionMapsHomeMonitor

- (void)settingsViewControllerDidDisappearNotification:(id)a3
{
  [(VLFSessionMapsHomeMonitor *)self setSettingsIsPresent:0];
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Settings VC will disappear; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (void)settingsViewControllerWillAppearNotification:(id)a3
{
  [(VLFSessionMapsHomeMonitor *)self setSettingsIsPresent:1];
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Settings VC will appear; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (void)searchTextFieldDidEndEditingNotification:(id)a3
{
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User stopped searching; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self setUserIsSearching:0];
  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (void)searchTextFieldDidBeginEditingNotification:(id)a3
{
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User started searching; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self setUserIsSearching:1];
  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (void)searchWillResignCurrentNotification:(id)a3
{
  [(VLFSessionMapsHomeMonitor *)self setSearchIsCurrent:0];
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Search will resign current; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (void)searchWillBecomeCurrentNotification:(id)a3
{
  [(VLFSessionMapsHomeMonitor *)self setSearchIsCurrent:1];
  v4 = sub_100F2CFF4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Search will become current; updating state", v5, 2u);
  }

  [(VLFSessionMapsHomeMonitor *)self updateState];
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([objc_opt_class() isEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  if ([objc_opt_class() affectsPuckVisibility])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if ([objc_opt_class() affectsBannerVisibility])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v11 = [(VLFSessionMonitor *)self state];
  v12 = @"Hide";
  if (v11 == 1)
  {
    v12 = @"EnablePuck";
  }

  if (v11 == 2)
  {
    v13 = @"EnablePuckAndBanner";
  }

  else
  {
    v13 = v12;
  }

  if ([(VLFSessionMapsHomeMonitor *)self isSettingsPresent])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = v14;
  if ([(VLFSessionMapsHomeMonitor *)self isSearchCurrent])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v16;
  if ([(VLFSessionMapsHomeMonitor *)self isUserSearching])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"<%@: isEnabled: %@, affectsPuckVisibility: %@, affectsBannerVisibility: %@, currentState: %@, isSettingsPresent: %@, isSearchCurrent: %@, isUserSearching: %@>", v4, v6, v8, v10, v13, v15, v17, v18];

  return v19;
}

- (void)updateState
{
  if ([(VLFSessionMapsHomeMonitor *)self isSettingsPresent])
  {
    v3 = sub_100F2CFF4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v4 = "Settings is present; setting state to .Default";
      v5 = &v12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (![(VLFSessionMapsHomeMonitor *)self isSearchCurrent])
  {
    v3 = sub_100F2CFF4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = 0;
      v4 = "Search is not current; setting state to .Default";
      v5 = &v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = [(VLFSessionMapsHomeMonitor *)self isUserSearching];
  v3 = sub_100F2CFF4();
  v7 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v7)
    {
      v11 = 0;
      v4 = "Search is current and settings is not present, but user is searching; setting state to .Default";
      v5 = &v11;
      goto LABEL_10;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (v7)
  {
    *buf = 0;
    v8 = 2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Search is current, settings is not present, and user is not searching; setting state to .HighThreshold", buf, 2u);
  }

  else
  {
    v8 = 2;
  }

LABEL_12:

  [(VLFSessionMonitor *)self setState:v8];
}

- (VLFSessionMapsHomeMonitor)initWithObserver:(id)a3 platformController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v27 = sub_10006D178();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "[VLFSessionMapsHomeMonitor initWithObserver:platformController:]";
      v33 = 2080;
      v34 = "VLFSessionMapsHomeMonitor.m";
      v35 = 1024;
      v36 = 38;
      v37 = 2080;
      v38 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v28 = sub_10006D178();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v30.receiver = self;
  v30.super_class = VLFSessionMapsHomeMonitor;
  v8 = [(VLFSessionMonitor *)&v30 initWithObserver:v6];
  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v8 selector:"searchWillBecomeCurrentNotification:" name:@"SearchWillBecomeCurrentNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v8 selector:"searchWillResignCurrentNotification:" name:@"SearchWillResignCurrentNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"searchTextFieldDidBeginEditingNotification:" name:@"SearchTextFieldDidBeginEditingNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v8 selector:"searchTextFieldDidEndEditingNotification:" name:@"SearchTextFieldDidEndEditingNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v8 selector:"settingsViewControllerWillAppearNotification:" name:@"SettingsViewControllerWillAppearNotification" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v8 selector:"settingsViewControllerDidDisappearNotification:" name:@"SettingsViewControllerDidDisappearNotification" object:0];

    v15 = [v7 chromeViewController];
    v16 = [v15 _maps_mapsSceneDelegate];
    v17 = [v16 topMostPresentedViewController];

    objc_opt_class();
    LOBYTE(v15) = objc_opt_isKindOfClass();

    if ((v15 & 1) != 0 && v17)
    {
      [(VLFSessionMapsHomeMonitor *)v8 setSettingsIsPresent:1];
    }

    v18 = [v7 chromeViewController];
    v19 = [v18 topContext];

    if (objc_opt_respondsToSelector())
    {
      v20 = [v19 fullscreenViewController];
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

      v23 = [v22 currentViewController];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (v25)
      {
        [(VLFSessionMapsHomeMonitor *)v8 setSearchIsCurrent:1];
        -[VLFSessionMapsHomeMonitor setUserIsSearching:](v8, "setUserIsSearching:", [v25 _containsFirstResponder]);
      }
    }

    [(VLFSessionMapsHomeMonitor *)v8 updateState];
  }

  return v8;
}

+ (BOOL)affectsBannerVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionMapsHomeMonitorAffectsBannerVisibilityKey"];

  return v3;
}

+ (BOOL)affectsPuckVisibility
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"VLFSessionMapsHomeMonitorAffectsPuckVisibilityKey"];

  return v3;
}

@end