@interface UIViewController(AVAdditions)
- (void)avkit_setNeedsUpdatePreferencesIfNeeded;
@end

@implementation UIViewController(AVAdditions)

- (void)avkit_setNeedsUpdatePreferencesIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if ([self avkit_isEffectivelyFullScreen])
  {
    viewIfLoaded = [self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    statusBarManager = [windowScene statusBarManager];
    prefersStatusBarHidden = [self prefersStatusBarHidden];
    preferredStatusBarStyle = [self preferredStatusBarStyle];
    if (prefersStatusBarHidden != [statusBarManager isStatusBarHidden] || objc_msgSend(statusBarManager, "statusBarStyle") != preferredStatusBarStyle)
    {
      [self setNeedsStatusBarAppearanceUpdate];
      v8 = _AVLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "prefersStatusBarHidden";
        *&v20[12] = 2080;
        if (prefersStatusBarHidden)
        {
          v9 = "YES";
        }

        *&v20[22] = 2080;
        v21 = v9;
        _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %s %s", v20, 0x20u);
      }
    }

    preferredWhitePointAdaptivityStyle = [self preferredWhitePointAdaptivityStyle];
    _effectiveUIClientSettings = [windowScene _effectiveUIClientSettings];
    whitePointAdaptivityStyle = [_effectiveUIClientSettings whitePointAdaptivityStyle];

    if (whitePointAdaptivityStyle != preferredWhitePointAdaptivityStyle)
    {
      [self setNeedsWhitePointAdaptivityStyleUpdate];
      v13 = _AVLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "UIWhitePointAdaptivityStyleVideo == preferredWhitePointAdaptivityStyle";
        *&v20[12] = 2080;
        if (preferredWhitePointAdaptivityStyle == 3)
        {
          v14 = "YES";
        }

        *&v20[22] = 2080;
        v21 = v14;
        _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %s %s", v20, 0x20u);
      }
    }

    prefersHomeIndicatorAutoHidden = [self prefersHomeIndicatorAutoHidden];
    _effectiveUIClientSettings2 = [windowScene _effectiveUIClientSettings];
    homeIndicatorAutoHidden = [_effectiveUIClientSettings2 homeIndicatorAutoHidden];

    if (prefersHomeIndicatorAutoHidden != homeIndicatorAutoHidden)
    {
      [self setNeedsUpdateOfHomeIndicatorAutoHidden];
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "prefersHomeIndicatorAutoHidden";
        *&v20[12] = 2080;
        if (prefersHomeIndicatorAutoHidden)
        {
          v19 = "YES";
        }

        *&v20[22] = 2080;
        v21 = v19;
        _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s %s %s", v20, 0x20u);
      }
    }
  }
}

@end