@interface SBMainSwitcherWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAnySwitcherVisible;
- (BOOL)_axIsControlCenterVisible;
- (BOOL)_axIsVisible;
- (BOOL)_axMultiAppNubletsVisible;
- (id)_axMainSwitcher;
- (id)_axSideAppDivider;
- (id)_axTongueGrabber;
@end

@implementation SBMainSwitcherWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainSwitcherWindow" isKindOfClass:@"UIWindow"];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator"];
  [validationsCopy validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_slideOverTongue" withType:"SBSlideOverTongueView"];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleUnderlayAccessoryViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherSpaceUnderlayAccessoryView" hasInstanceVariable:@"_resizeGrabber" withType:"SBSeparatorView"];
  [validationsCopy validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"isAnySwitcherVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBControlCenterController"];
  [validationsCopy validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBControlCenterCoordinator" hasInstanceMethod:@"isPresented" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBSwitcherViewController"];
  [validationsCopy validateClass:@"SBSwitcherViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_axTongueGrabber
{
  _axMainSwitcher = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v3 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher);

  v4 = [v3 safeValueForKey:@"contentViewController"];
  v5 = [v4 safeUIViewForKey:@"_slideOverTongue"];

  return v5;
}

- (id)_axSideAppDivider
{
  v18 = *MEMORY[0x29EDCA608];
  _axMainSwitcher = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v3 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher);

  v4 = [v3 safeValueForKey:@"contentViewController"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 safeDictionaryForKey:{@"visibleUnderlayAccessoryViews", 0}];
  allValues = [v5 allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(allValues);
      }

      v11 = [*(*(&v13 + 1) + 8 * v10) safeUIViewForKey:@"_resizeGrabber"];
      if ([v11 _accessibilityViewIsVisible])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  _axTongueGrabber = [(SBMainSwitcherWindowAccessibility *)self _axTongueGrabber];
  if ([_axTongueGrabber _accessibilityViewIsVisible])
  {
    _accessibilityViewIsVisible = 1;
  }

  else
  {
    _axSideAppDivider = [(SBMainSwitcherWindowAccessibility *)self _axSideAppDivider];
    _accessibilityViewIsVisible = [_axSideAppDivider _accessibilityViewIsVisible];
  }

  return _accessibilityViewIsVisible;
}

- (BOOL)_axIsAnySwitcherVisible
{
  _axMainSwitcher = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v4 = [_axMainSwitcher safeBoolForKey:@"isAnySwitcherVisible"];

  _axMainSwitcher2 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
  v6 = AXSwitcherController(@"activeDisplayWindowScene", _axMainSwitcher2);

  v7 = [v6 safeValueForKeyPath:@"_currentLayoutState"];
  v8 = [v7 safeIntegerForKey:@"unlockedEnvironmentMode"];

  _axIsAppSwitcherPeeking = 1;
  if ((v4 & 1) == 0 && v8 != 3)
  {
    _axMainSwitcher3 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
    if (([_axMainSwitcher3 _axIsShelfSwitcherVisible] & 1) == 0)
    {
      _axMainSwitcher4 = [(SBMainSwitcherWindowAccessibility *)self _axMainSwitcher];
      _axIsAppSwitcherPeeking = [_axMainSwitcher4 _axIsAppSwitcherPeeking];
    }
  }

  return _axIsAppSwitcherPeeking;
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