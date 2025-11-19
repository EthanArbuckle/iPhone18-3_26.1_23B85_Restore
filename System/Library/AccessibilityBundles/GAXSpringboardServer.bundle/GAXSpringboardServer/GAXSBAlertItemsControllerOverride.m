@interface GAXSBAlertItemsControllerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_gaxShouldAllowSpringBoardAlert:(id)a3;
- (BOOL)_gaxShouldAllowSpringBoardAlertWithClass:(Class)a3 allowedAlertClassNames:(id)a4;
- (void)activateAlertItem:(id)a3;
@end

@implementation GAXSBAlertItemsControllerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBAlertItem" hasInstanceMethod:@"didFailToActivate" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBAlertItemsController" hasInstanceMethod:@"activateAlertItem:" withFullSignature:{"v", "@", 0}];
}

- (void)activateAlertItem:(id)a3
{
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Guided Access will determine whether to allow the alert %{public}@.", buf, 0xCu);
  }

  v6 = +[GAXSpringboard sharedInstance];
  if (([v6 isActive] & 1) == 0 && !objc_msgSend(v6, "isInWorkspace"))
  {
    goto LABEL_10;
  }

  v7 = [(GAXSBAlertItemsControllerOverride *)self _gaxShouldAllowSpringBoardAlert:v4];
  v8 = GAXLogCommon();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Guided Access is allowing this alert: %{public}@.", buf, 0xCu);
    }

    if (([v6 allowsTouch] & 1) == 0)
    {
      [v6 notifyBackboardSBMiniAlertIsShowing:1];
    }

LABEL_10:
    v10.receiver = self;
    v10.super_class = GAXSBAlertItemsControllerOverride;
    [(GAXSBAlertItemsControllerOverride *)&v10 activateAlertItem:v4];
    goto LABEL_14;
  }

  if (v9)
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Guided Access not allowing this alert: %{public}@.  Will fail it now.", buf, 0xCu);
  }

  [v4 didFailToActivate];
LABEL_14:
}

- (BOOL)_gaxShouldAllowSpringBoardAlertWithClass:(Class)a3 allowedAlertClassNames:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (AXSafeClassFromString() == a3)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)_gaxShouldAllowSpringBoardAlert:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = +[GAXSpringboard sharedInstance];
  v7 = [[NSSet alloc] initWithObjects:{@"CKCarrierSMSAlertItem", @"CMASBBAlertItem", 0}];
  if ([(GAXSBAlertItemsControllerOverride *)self _gaxShouldAllowSpringBoardAlertWithClass:v5 allowedAlertClassNames:v7])
  {
    goto LABEL_2;
  }

  if ([v6 profileConfiguration] != 2)
  {
    goto LABEL_7;
  }

  v9 = [NSSet alloc];
  v10 = [v6 allowsTouch];
  v11 = @"SBLowPowerAlertItem";
  if (!v10)
  {
    v11 = 0;
  }

  v12 = [v9 initWithObjects:{@"SBPasscodeAlertItem", v11, 0}];
  v13 = [(GAXSBAlertItemsControllerOverride *)self _gaxShouldAllowSpringBoardAlertWithClass:v5 allowedAlertClassNames:v12];

  if (v13)
  {
LABEL_2:
    v8 = 1;
  }

  else
  {
LABEL_7:
    if (v5 == AXSafeClassFromString())
    {
      v14 = [v4 safeValueForKey:@"_soundPath"];
      v15 = [v4 safeValueForKey:@"_alertSource"];
      v16 = [v15 lowercaseString];

      v28 = v14;
      v17 = [v14 hasPrefix:@"/System/Library/PrivateFrameworks/FindMyDevice.framework/fmd_sound"];
      if ([v16 isEqualToString:@"mdmd"])
      {
        v18 = 1;
      }

      else
      {
        v18 = [v16 isEqualToString:@"dmd"];
      }

      v19 = [v16 isEqualToString:@"profiled"];
      v20 = [v16 isEqualToString:@"studentd"];
      v21 = v17 | v18;
      v26 = [v6 profileConfiguration];
      v27 = [v16 isEqualToString:@"locationd"];
      v22 = [v16 isEqualToString:@"tccd"];
      v23 = [v16 isEqualToString:@"nehelper"];
      v24 = [v16 isEqualToString:@"softwareupdateservicesd"];
      v8 = 1;
      if ((v21 & 1) == 0 && (v19 & 1) == 0 && (v20 & 1) == 0)
      {
        v8 = ((v27 | v22 | v23 | v24) & 1) != 0 && (v26 & 0xFFFFFFFE) == 2;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end