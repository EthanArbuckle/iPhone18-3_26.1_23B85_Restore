@interface UIViewController(AVAdditions)
- (void)avkit_setNeedsUpdatePreferencesIfNeeded;
@end

@implementation UIViewController(AVAdditions)

- (void)avkit_setNeedsUpdatePreferencesIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if ([a1 avkit_isEffectivelyFullScreen])
  {
    v2 = [a1 viewIfLoaded];
    v3 = [v2 window];
    v4 = [v3 windowScene];

    v5 = [v4 statusBarManager];
    v6 = [a1 prefersStatusBarHidden];
    v7 = [a1 preferredStatusBarStyle];
    if (v6 != [v5 isStatusBarHidden] || objc_msgSend(v5, "statusBarStyle") != v7)
    {
      [a1 setNeedsStatusBarAppearanceUpdate];
      v8 = _AVLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "prefersStatusBarHidden";
        *&v20[12] = 2080;
        if (v6)
        {
          v9 = "YES";
        }

        *&v20[22] = 2080;
        v21 = v9;
        _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %s %s", v20, 0x20u);
      }
    }

    v10 = [a1 preferredWhitePointAdaptivityStyle];
    v11 = [v4 _effectiveUIClientSettings];
    v12 = [v11 whitePointAdaptivityStyle];

    if (v12 != v10)
    {
      [a1 setNeedsWhitePointAdaptivityStyleUpdate];
      v13 = _AVLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "UIWhitePointAdaptivityStyleVideo == preferredWhitePointAdaptivityStyle";
        *&v20[12] = 2080;
        if (v10 == 3)
        {
          v14 = "YES";
        }

        *&v20[22] = 2080;
        v21 = v14;
        _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %s %s", v20, 0x20u);
      }
    }

    v15 = [a1 prefersHomeIndicatorAutoHidden];
    v16 = [v4 _effectiveUIClientSettings];
    v17 = [v16 homeIndicatorAutoHidden];

    if (v15 != v17)
    {
      [a1 setNeedsUpdateOfHomeIndicatorAutoHidden];
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "NO";
        *v20 = 136315650;
        *&v20[4] = "[UIViewController(AVAdditions) avkit_setNeedsUpdatePreferencesIfNeeded]";
        *&v20[14] = "prefersHomeIndicatorAutoHidden";
        *&v20[12] = 2080;
        if (v15)
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