@interface AXInvertColorsManager
+ (BOOL)objectIsOnCarScreen:(id)a3;
+ (BOOL)toggleDarkModeWindowInvert:(id)a3;
+ (id)findSubviewDescendants:(id)a3 visitor:(id)a4;
+ (void)_initializeMonitoring;
+ (void)_traverseAppForInvertColors;
+ (void)initialize;
+ (void)toggleDarkModeWindowsInvert;
+ (void)toggleFirstLayerWindowInvert:(id)a3;
+ (void)toggleFirstLayerWindowsInvert;
+ (void)traverseAppForInvertColors:(id)a3;
+ (void)updateClassicInvertColors:(id)a3;
- (AXInvertColorsManager)init;
- (id)_invertColorHelperClasses;
- (void)_installCategories;
- (void)_installSpringBoardCategories;
- (void)_installUIKitCategories;
- (void)_installWebKitCategories;
@end

@implementation AXInvertColorsManager

+ (void)initialize
{
  if (qword_83570 != -1)
  {
    sub_20B98();
  }
}

+ (void)_initializeMonitoring
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E2B0;
  block[3] = &unk_446C0;
  block[4] = a1;
  if (qword_83580 != -1)
  {
    dispatch_once(&qword_83580, block);
  }
}

- (AXInvertColorsManager)init
{
  v11.receiver = self;
  v11.super_class = AXInvertColorsManager;
  v2 = [(AXInvertColorsManager *)&v11 init];
  if (v2)
  {
    _AXInitializeSafeSwiftValueSupport();
    if ([(AXInvertColorsManager *)v2 _shouldInstallCategories])
    {
      [(AXInvertColorsManager *)v2 _installUIKitCategories];
      if (AXProcessIsSpringBoard())
      {
        [(AXInvertColorsManager *)v2 _installSpringBoardCategories];
      }
    }

    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_1E4D4;
    location[4] = &unk_44540;
    v3 = v2;
    v10 = v3;
    AXPerformBlockAsynchronouslyOnMainThread();
    objc_initWeak(location, v3);
    v4 = +[AXSettings sharedInstance];
    WeakRetained = objc_loadWeakRetained(location);
    [v4 registerUpdateBlock:&stru_44B30 forRetrieveSelector:"classicInvertColors" withListener:WeakRetained];

    v8 = v3;
    AXPerformBlockOnMainThreadAfterDelay();
    v6 = v8;

    objc_destroyWeak(location);
  }

  return v2;
}

- (id)_invertColorHelperClasses
{
  v2 = +[NSMutableArray array];
  outCount = 0;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 executablePath];
  v5 = objc_copyClassNamesForImage([v4 UTF8String], &outCount);

  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v7 = [NSString stringWithUTF8String:v5[i]];
      if ([(NSString *)v7 hasPrefix:@"AXInvertColors_"])
      {
        [v2 addObject:NSClassFromString(v7)];
      }
    }
  }

  free(v5);
  [v2 sortUsingComparator:&stru_44BD0];

  return v2;
}

+ (id)findSubviewDescendants:(id)a3 visitor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_allocWithZone(NSMutableArray) init];
  [v7 addObject:v5];
  v8 = +[NSMutableArray array];
  if ([v7 count])
  {
    while (1)
    {
      v9 = [v7 lastObject];
      [v7 removeLastObject];
      v12 = 0;
      if (v6[2](v6, v9, &v12))
      {
        [v8 addObject:v9];
      }

      if (v12 == 1)
      {
        break;
      }

      v10 = [v9 subviews];
      [v7 addObjectsFromArray:v10];

      if (![v7 count])
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:

  return v8;
}

+ (void)traverseAppForInvertColors:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[UIApplication sharedApplication];
  [v4 axSafelyAddObject:v5];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 delegate];
  [v4 axSafelyAddObject:v7];

  v8 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  [v4 axSafelyAddObjectsFromArray:v8];

  v9 = AXLogInvertColorsTraversal();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_20CB8();
  }

  if ([v4 count])
  {
    *&v10 = 138477827;
    v17 = v10;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [v4 firstObject];
      v3[2](v3, v12);
      v13 = AXLogInvertColorsTraversal();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = v17;
        v19 = v12;
        _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "Call load %{private}@", buf, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v12 childViewControllers];
        [v4 axSafelyAddObjectsFromArray:v15];
        goto LABEL_11;
      }

LABEL_12:
      v16 = [v12 _accessibilityInvertColorAdditionalVisitors];
      [v4 axSafelyAddObjectsFromArray:v16];

      [v4 removeObjectAtIndex:0];
      objc_autoreleasePoolPop(v11);
      if (![v4 count])
      {
        goto LABEL_13;
      }
    }

    v14 = [v12 subviews];
    [v4 axSafelyAddObjectsFromArray:v14];

    v15 = [UIViewController viewControllerForView:v12];
    [v4 axSafelyAddObject:v15];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

+ (BOOL)objectIsOnCarScreen:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = [v3 screen];
  if ([v4 _isCarScreen])
  {
    v5 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v6 = [v3 screen];
  v7 = [v6 _isCarInstrumentsScreen];

  if (v7)
  {
    v5 = 1;
  }

  else
  {
LABEL_6:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 window];
      v8 = [v4 screen];
      if ([v8 _isCarScreen])
      {
        v5 = 1;
      }

      else
      {
        v9 = [v3 window];
        v10 = [v9 screen];
        v5 = [v10 _isCarInstrumentsScreen];
      }

      goto LABEL_12;
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

+ (void)_traverseAppForInvertColors
{
  v2 = objc_opt_class();

  [v2 traverseAppForInvertColors:&stru_44C30];
}

+ (void)updateClassicInvertColors:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 accessibilityIgnoresInvertColors])
  {
    v4 = [v3 layer];
    v5 = [v4 valueForKeyPath:@"filters.InvertColorsDoubleInvert"];

    if (v5)
    {
      v6 = [v4 valueForKeyPath:@"filters.InvertColorsDoubleInvert.enabled"];
      v7 = +[AXSettings sharedInstance];
      v8 = [v7 classicInvertColors];

      if ((v6 == 0) != v8)
      {
        v9 = +[AXSettings sharedInstance];
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 classicInvertColors] ^ 1);
        [v4 setValue:v10 forKeyPath:@"filters.InvertColorsDoubleInvert.enabled"];

        v11 = AXLogInvertColors();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = +[AXSettings sharedInstance];
          if ([v12 classicInvertColors])
          {
            v13 = @"Unapplied: %@";
          }

          else
          {
            v13 = @"Applied: %@";
          }

          v14 = [NSString stringWithFormat:v13, v4];
          *buf = 138412290;
          v16 = v14;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }
    }
  }
}

+ (void)toggleDarkModeWindowsInvert
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1F43C;
  v10[3] = &unk_44C58;
  v10[4] = &v11;
  [v2 enumerateObjectsUsingBlock:v10];

  if (*(v12 + 24) == 1)
  {
    v3 = AXLogInvertColors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = _AXSInvertColorsEnabled();
      v7 = +[NSBundle mainBundle];
      v8 = [v7 bundleIdentifier];
      IsSystemWideDarkModeEnabled = AXInvertColorsIsSystemWideDarkModeEnabled();
      *buf = 67109634;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      v19 = 1024;
      v20 = IsSystemWideDarkModeEnabled;
      _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Notify windows of style change: %d, by %@, dark mode: %d\n\n", buf, 0x18u);
    }

    v4 = +[UIScreen mainScreen];
    v5 = [v4 safeValueForKey:@"_notifyTraitsChangedAndPropagate"];
  }

  _Block_object_dispose(&v11, 8);
}

+ (BOOL)toggleDarkModeWindowInvert:(id)a3
{
  v3 = a3;
  v4 = _AXSInvertColorsEnabledGlobalCached();
  if (!v4)
  {
    v6 = [v3 layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v6];

    goto LABEL_5;
  }

  if (![v3 _accessibilityInvertColorsIsDarkWindow])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [v3 _accessibilityInvertColorsSupportsDarkWindowInvert];
LABEL_6:
  v7 = [v3 layer];
  [AXInvertColorsAppHelper toggleDarkModeWindowInvertFilterToLayer:v7 enabled:v5];

  return v4 == 0;
}

+ (void)toggleFirstLayerWindowsInvert
{
  if ((AXProcessIsSpringBoard() & 1) == 0 && (AXProcessIsSpotlight() & 1) == 0)
  {
    v2 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    [v2 enumerateObjectsUsingBlock:&stru_44C98];
  }
}

+ (void)toggleFirstLayerWindowInvert:(id)a3
{
  v3 = a3;
  if (_AXSInvertColorsEnabledGlobalCached() || !_AXSInvertColorsEnabled()) && (!_AXSInvertColorsEnabledGlobalCached() || _AXSInvertColorsEnabled()) || _AXSClassicInvertColorsEnabled() || ([v3 _accessibilityInvertColorsIsDarkWindow])
  {
    v4 = [v3 layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v4];

    [v3 setAccessibilityInvertColorsIsolatedTree:0];
    v5 = AXLogInvertColors();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_20DA0();
    }
  }

  else
  {
    v6 = [v3 layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v6];

    [v3 setAccessibilityInvertColorsIsolatedTree:1];
    v5 = AXLogInvertColors();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_20D2C();
    }
  }
}

- (void)_installUIKitCategories
{
  v2 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Installing UIKit categories in %@", &v5, 0xCu);
  }

  [AXSafeClassFromString() initializeOverridesImmediately];
}

- (void)_installSpringBoardCategories
{
  v2 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Installing SpringBoard categories in %@", &v5, 0xCu);
  }

  [AXSafeClassFromString() initializeOverridesImmediately];
}

- (void)_installWebKitCategories
{
  v2 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Installing WebKit categories in %@", &v5, 0xCu);
  }

  [AXSafeClassFromString() initializeOverridesImmediately];
}

- (void)_installCategories
{
  v3 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Installing categories in %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(AXInvertColorsManager *)self _invertColorHelperClasses];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = AXLogInvertColors();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v11;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Class: %@", buf, 0xCu);
        }

        [v11 initializeOverrides];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = +[AXBinaryMonitor sharedInstance];
  [v13 evaluateExistingBinaries];

  AXPerformBlockOnMainThreadAfterDelay();
}

@end