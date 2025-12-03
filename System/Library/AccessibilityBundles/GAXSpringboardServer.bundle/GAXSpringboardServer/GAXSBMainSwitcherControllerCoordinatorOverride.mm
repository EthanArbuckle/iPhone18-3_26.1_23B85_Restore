@interface GAXSBMainSwitcherControllerCoordinatorOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_buildAppLayoutCache;
@end

@implementation GAXSBMainSwitcherControllerCoordinatorOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_buildAppLayoutCache" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"enumerateSwitcherControllersWithBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceVariable:@"_mainSwitcherModel" withType:"SBAppSwitcherModel"];
}

- (void)_buildAppLayoutCache
{
  v14 = 0;
  objc_opt_class();
  v3 = [(GAXSBMainSwitcherControllerCoordinatorOverride *)self safeValueForKey:@"_mainSwitcherModel"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  v5 = +[GAXSpringboard sharedInstance];
  if ([v5 isActive])
  {
    v6 = +[AXSettings sharedInstance];
    guidedAccessAllowsMultipleWindows = [v6 guidedAccessAllowsMultipleWindows];

    if (guidedAccessAllowsMultipleWindows)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_132D4;
      v12 = &unk_2C6A8;
      selfCopy = self;
      AXPerformSafeBlock();
      [v4 _gaxSetShouldLimitAppLayoutsToCurrentApp:1];
    }
  }

  else
  {
  }

  v8.receiver = self;
  v8.super_class = GAXSBMainSwitcherControllerCoordinatorOverride;
  [(GAXSBMainSwitcherControllerCoordinatorOverride *)&v8 _buildAppLayoutCache];
  AXPerformSafeBlock();
  [v4 _gaxSetShouldLimitAppLayoutsToCurrentApp:0];
}

@end