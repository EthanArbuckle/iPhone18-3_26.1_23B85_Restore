@interface SBMainSwitcherWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsAnySwitcherVisible;
- (BOOL)_axIsControlCenterVisible;
- (BOOL)_axIsVisible;
- (BOOL)_axMultiAppNubletsVisible;
- (id)_axMainSwitcher;
- (id)_axSideAppDivider;
- (id)_axTongueGrabber;
@end

@implementation SBMainSwitcherWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainSwitcherWindow" isKindOfClass:@"UIWindow"];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [v3 validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_slideOverTongue" withType:"SBSlideOverTongueView"];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFluidSwitcherSpaceUnderlayAccessoryView" hasInstanceVariable:@"_resizeGrabber" withType:"SBSeparatorView"];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"isAnySwitcherVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBControlCenterController"];
  [v3 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"isPresented" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBSwitcherViewController"];
  [v3 validateClass:@"SBSwitcherViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_axTongueGrabber
{
  v2 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v3 = AXSwitcherController(@"activeDisplayWindowScene", v2);

  v4 = [v3 safeValueForKey:@"contentViewController"];
  v5 = [v4 safeUIViewForKey:@"_slideOverTongue"];

  return v5;
}

- (id)_axSideAppDivider
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v3 = AXSwitcherController(@"activeDisplayWindowScene", v2);

  v4 = [v3 safeValueForKey:@"contentViewController"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 safeDictionaryForKey:{@"visibleUnderlayAccessoryViews", 0}];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v13 + 1) + 8 * v10) safeUIViewForKey:@"_resizeGrabber"];
      if ([v11 _accessibilityViewIsVisible])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (BOOL)_axMultiAppNubletsVisible
{
  v3 = [(SBMainSwitcherWindowAccessibility *)self _axTongueGrabber];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBMainSwitcherWindowAccessibility *)self _axSideAppDivider];
    v4 = [v5 _accessibilityViewIsVisible];
  }

  return v4;
}

- (BOOL)_axIsAnySwitcherVisible
{
  v3 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v4 = [v3 safeBoolForKey:@"isAnySwitcherVisible"];

  v5 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v6 = AXSwitcherController(@"activeDisplayWindowScene", v5);

  v7 = [v6 safeValueForKeyPath:@"_currentLayoutState"];
  v8 = [v7 safeIntegerForKey:@"unlockedEnvironmentMode"];

  v9 = 1;
  if ((v4 & 1) == 0 && v8 != 3)
  {
    v10 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
    if (([v10 _axIsShelfSwitcherVisible] & 1) == 0)
    {
      v11 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
      v9 = [v11 _axIsAppSwitcherPeeking];
    }
  }

  return v9;
}

- (BOOL)_axIsVisible
{
  if ([(SBMainSwitcherWindowAccessibility *)self _axIsAnySwitcherVisible])
  {
    return 1;
  }

  return [(SBMainSwitcherWindowAccessibility *)self _axMultiAppNubletsVisible];
}

- (BOOL)_axIsControlCenterVisible
{
  v2 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v3 = [v2 safeBoolForKey:@"isPresented"];

  return v3;
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end