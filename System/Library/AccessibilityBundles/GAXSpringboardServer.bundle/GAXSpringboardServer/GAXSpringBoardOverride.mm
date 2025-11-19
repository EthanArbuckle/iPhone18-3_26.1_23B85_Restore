@interface GAXSpringBoardOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_gaxShouldAllowOpeningURL:(id)a3;
- (BOOL)allowCaseLatchLockAndUnlock;
- (BOOL)handleDoubleHeightStatusBarTapWithStyleOverride:(unint64_t)a3;
- (BOOL)handleEvent:(__GSEvent *)a3 withNewEvent:(id)a4;
- (BOOL)handleStatusBarHoverActionForRegion:(int64_t)a3;
- (void)_handleGotoHomeScreenShortcut:(id)a3;
- (void)_toggleAppLibraryVisibility:(id)a3;
- (void)_toggleSearch;
- (void)batteryStatusDidChange:(id)a3;
@end

@implementation GAXSpringBoardOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"batteryStatusDidChange:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilityIsSystemGestureActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilitySetSystemGesturesDisabledByAccessibility:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_accessibilitySystemGesturesDisabledByAccessibility" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"applicationOpenURL:withApplication:animating:activationSettings:origin:notifyLSOnFailure:withResult:" withFullSignature:{"v", "@", "@", "B", "@", "@", "B", "@?", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_toggleSearch" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"_toWindowOrientation" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"_handleGotoHomeScreenShortcut:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"allowCaseLatchLockAndUnlock" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"handleDoubleHeightStatusBarTapWithStyleOverride:" withFullSignature:{"B", "Q", 0}];
  [v3 validateClass:@"SpringBoard" hasInstanceMethod:@"handleStatusBarHoverActionForRegion:" withFullSignature:{"B", "q", 0}];
}

- (void)_toggleSearch
{
  v3 = +[GAXSpringboard sharedInstance];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Guided Accces is not allowing Spotlight search visibility", buf, 2u);
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GAXSpringBoardOverride;
    [(GAXSpringBoardOverride *)&v6 _toggleSearch];
  }
}

- (void)_toggleAppLibraryVisibility:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Guided Accces is not allowing App Library visibility", buf, 2u);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSpringBoardOverride;
    [(GAXSpringBoardOverride *)&v8 _toggleAppLibraryVisibility:v4];
  }
}

- (BOOL)_gaxShouldAllowOpeningURL:(id)a3
{
  v3 = a3;
  v4 = +[GAXSpringboard sharedInstance];
  if (![v4 isActive] || GAXURLSchemeIsPhoneRelated(v3) && (objc_msgSend(v4, "frontmostAppIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = GAXAppIsMobilePhoneOrFacetime(v5), v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "GuidedAccces (SB) returning NO for shouldAllowURL: %{public}@", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleDoubleHeightStatusBarTapWithStyleOverride:(unint64_t)a3
{
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Guided Access blocking double height status bar tap.", buf, 2u);
    }

    v7 = [v5 frontmostAppIdentifier];
    v8 = [v7 isEqualToString:@"com.apple.ContactlessUIService"];

    if (v8)
    {
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Informing Tap2Pay of double height status bar tap.", buf, 2u);
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v10 = qword_3B2D8;
      v23 = qword_3B2D8;
      if (!qword_3B2D8)
      {
        *buf = _NSConcreteStackBlock;
        v16 = 3221225472;
        v17 = sub_BD10;
        v18 = &unk_2C9C8;
        v19 = &v20;
        sub_BD10(buf);
        v10 = v21[3];
      }

      v11 = v10;
      _Block_object_dispose(&v20, 8);
      [v10 notifyIncomingCallAction:&stru_2F9C0];
    }

    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GAXSpringBoardOverride;
    v12 = [(GAXSpringBoardOverride *)&v14 handleDoubleHeightStatusBarTapWithStyleOverride:a3];
  }

  return v12;
}

- (BOOL)handleEvent:(__GSEvent *)a3 withNewEvent:(id)a4
{
  v6 = a4;
  v7 = +[GAXSpringboard sharedInstance];
  v8 = v7;
  if (a3 && [v7 isActive] && ((Type = GSEventGetType(), (Type - 5000) < 0x3E8) || (v10 = Type, (Type - 1018) < 6) && ((0x33u >> (Type + 6)) & 1) != 0 || (Type - 1025) <= 1 && !objc_msgSend(v8, "allowsLockButton") || (+[AXSpringBoardServer server](AXSpringBoardServer, "server"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isSystemSleeping"), v11, v10 == 1010) && (v12 & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GAXSpringBoardOverride;
    v13 = [(GAXSpringBoardOverride *)&v15 handleEvent:a3 withNewEvent:v6];
  }

  return v13;
}

- (void)_handleGotoHomeScreenShortcut:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  v6 = [v5 isActive];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = GAXSpringBoardOverride;
    [(GAXSpringBoardOverride *)&v7 _handleGotoHomeScreenShortcut:v4];
  }
}

- (void)batteryStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive] && (objc_msgSend(v4, "objectForKey:", @"AtCriticalLevel"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7))
  {
    [v5 systemDidRestartDueToLowBattery];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_BBB8;
    v12 = &unk_2C880;
    v13 = v4;
    v14 = self;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSpringBoardOverride;
    [(GAXSpringBoardOverride *)&v8 batteryStatusDidChange:v4];
  }
}

- (BOOL)allowCaseLatchLockAndUnlock
{
  v3 = +[GAXSpringboard sharedInstance];
  if (![v3 isActive] || (objc_msgSend(v3, "allowsLockButton") & 1) != 0 || objc_msgSend(v3, "allowsAutolock"))
  {
    v6.receiver = self;
    v6.super_class = GAXSpringBoardOverride;
    v4 = [(GAXSpringBoardOverride *)&v6 allowCaseLatchLockAndUnlock];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleStatusBarHoverActionForRegion:(int64_t)a3
{
  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive] & 1) != 0 || (objc_msgSend(v5, "isInWorkspace"))
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GAXSpringBoardOverride;
    v6 = [(GAXSpringBoardOverride *)&v8 handleStatusBarHoverActionForRegion:a3];
  }

  return v6;
}

@end