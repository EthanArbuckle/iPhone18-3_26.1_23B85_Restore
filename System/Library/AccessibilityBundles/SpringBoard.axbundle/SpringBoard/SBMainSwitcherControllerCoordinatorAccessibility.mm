@interface SBMainSwitcherControllerCoordinatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsAppSwitcherPeeking;
- (BOOL)_axIsAppSwitcherPeekingSlideOver;
- (BOOL)_axIsAppSwitcherPeekingSplitView;
- (BOOL)_axIsChamoisSwitcherVisible;
- (BOOL)_axIsFloatingSwitcherVisible;
- (BOOL)_axIsMainSwitcherVisible;
- (BOOL)_axIsShelfSwitcherVisible;
- (BOOL)_axIsTypeOfMainSwitcherVisible;
- (id)_axFluidSwitcherViewController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetUpSwitcherViewControllers;
- (void)_axSetUpWrapperViews;
- (void)keyboardFocusController:(id)a3 externalSceneDidAcquireFocus:(id)a4;
@end

@implementation SBMainSwitcherControllerCoordinatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" isKindOfClass:@"NSObject"];
  [v3 validateClass:@"SBSwitcherViewController" hasInstanceVariable:@"_contentWrapperView" withType:"BSUIOrientationTransformWrapperView"];
  [v3 validateClass:@"SBSwitcherController" hasProperty:@"contentViewController" withType:"@"];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"isMainSwitcherVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"visibleShelves" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentLayoutState" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"isChamoisWindowingUIEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"isFloatingSwitcherVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIFocusSystem" hasInstanceMethod:@"_isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentMainAppLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"_currentFloatingAppLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"peekConfiguration" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBMainDisplayLayoutState" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"keyboardFocusController:externalSceneDidAcquireFocus:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SBMainSwitcherControllerCoordinatorAccessibility;
  [(SBMainSwitcherControllerCoordinatorAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axSetUpWrapperViews];
  [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axSetUpSwitcherViewControllers];
}

- (void)keyboardFocusController:(id)a3 externalSceneDidAcquireFocus:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBMainSwitcherControllerCoordinatorAccessibility;
  v5 = a4;
  [(SBMainSwitcherControllerCoordinatorAccessibility *)&v7 keyboardFocusController:a3 externalSceneDidAcquireFocus:v5];
  v6 = [v5 safeStringForKey:{@"identifier", v7.receiver, v7.super_class}];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7470], v6);
}

- (void)_axSetUpWrapperViews
{
  objc_initWeak(&location, self);
  v3 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v4 = [v3 safeValueForKey:@"switcherViewController"];
  v5 = [v4 safeUIViewForKey:@"_contentWrapperView"];

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __72__SBMainSwitcherControllerCoordinatorAccessibility__axSetUpWrapperViews__block_invoke;
  v6[3] = &unk_29F2FBB78;
  objc_copyWeak(&v7, &location);
  [v5 _setAccessibilityViewIsModalBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

uint64_t __72__SBMainSwitcherControllerCoordinatorAccessibility__axSetUpWrapperViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axIsTypeOfMainSwitcherVisible])
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v3 = [v4 _axIsFloatingSwitcherVisible];
  }

  return v3;
}

- (void)_axSetUpSwitcherViewControllers
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x29EDCA5F8];
  objc_copyWeak(&v5, &location);
  v3 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axFluidSwitcherViewController:v4];
  [v3 _setAXSwitcherType:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __83__SBMainSwitcherControllerCoordinatorAccessibility__axSetUpSwitcherViewControllers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axIsTypeOfMainSwitcherVisible])
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    if ([v4 _axIsFloatingSwitcherVisible])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_axFluidSwitcherViewController
{
  objc_opt_class();
  v3 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v4 = [v3 safeValueForKey:@"contentViewController"];
  v5 = __UIAccessibilityCastAsSafeCategory();

  return v5;
}

- (BOOL)_axIsTypeOfMainSwitcherVisible
{
  if ([(SBMainSwitcherControllerCoordinatorAccessibility *)self _axIsMainSwitcherVisible])
  {
    return 1;
  }

  return [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axIsAppSwitcherPeekingSplitView];
}

- (BOOL)_axIsMainSwitcherVisible
{
  if ([(SBMainSwitcherControllerCoordinatorAccessibility *)self _axIsChamoisSwitcherVisible])
  {
    return 1;
  }

  v4 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v5 = [v4 safeBoolForKey:@"isMainSwitcherVisible"];

  return v5;
}

- (BOOL)_axIsAppSwitcherPeeking
{
  if ([(SBMainSwitcherControllerCoordinatorAccessibility *)self _axIsAppSwitcherPeekingSlideOver])
  {
    return 1;
  }

  return [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axIsAppSwitcherPeekingSplitView];
}

- (BOOL)_axIsAppSwitcherPeekingSlideOver
{
  v3 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v4 = [v3 safeValueForKey:@"_currentMainAppLayout"];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
    v7 = [v6 safeValueForKey:@"_currentFloatingAppLayout"];
    v5 = v7 != 0;
  }

  return v5;
}

- (BOOL)_axIsAppSwitcherPeekingSplitView
{
  v2 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v3 = [v2 safeValueForKey:@"_currentLayoutState"];
  v4 = [v3 safeIntegerForKey:@"peekConfiguration"];

  return v4 > 1;
}

- (BOOL)_axIsFloatingSwitcherVisible
{
  v3 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v4 = [v3 safeValueForKey:@"_currentLayoutState"];
  v5 = ([v4 safeBoolForKey:@"isFloatingSwitcherVisible"] & 1) != 0 || -[SBMainSwitcherControllerCoordinatorAccessibility _axIsAppSwitcherPeekingSlideOver](self, "_axIsAppSwitcherPeekingSlideOver");

  return v5;
}

- (BOOL)_axIsShelfSwitcherVisible
{
  v2 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _axFluidSwitcherViewController];
  v3 = [v2 safeDictionaryForKey:@"visibleShelves"];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)_axIsChamoisSwitcherVisible
{
  v2 = [(SBMainSwitcherControllerCoordinatorAccessibility *)self _activeDisplaySwitcherController];
  v3 = [v2 safeValueForKey:@"_currentLayoutState"];
  v4 = [v3 safeIntegerForKey:@"unlockedEnvironmentMode"];

  v5 = [v2 safeBoolForKey:@"isChamoisWindowingUIEnabled"];
  if (v4 == 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end