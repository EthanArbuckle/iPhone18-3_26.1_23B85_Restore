@interface SBMainScreenActiveInterfaceOrientationWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityWindowVisible;
- (BOOL)_axIsFloatingDockWindow;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (id)_axFloatingDockController;
@end

@implementation SBMainScreenActiveInterfaceOrientationWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconController"];
  [v3 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"floatingDockWindow" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isPresentingFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"dismissPresentedFolderAnimated:completion:" withFullSignature:{"v", "B", "@?", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  if ([(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axIsFloatingDockWindow])
  {
    v3 = [MEMORY[0x29EDBDFA8] server];
    if ([v3 isDockVisible])
    {
      v4 = [MEMORY[0x29EDBDFA8] server];
      v5 = [v4 isControlCenterVisible];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
    return [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v7 accessibilityElementsHidden];
  }

  return v5;
}

- (BOOL)_accessibilityWindowVisible
{
  if ([(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axIsFloatingDockWindow])
  {
    v3 = [MEMORY[0x29EDBDFA8] server];
    v4 = [v3 isDockVisible];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
    return [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v6 _accessibilityWindowVisible];
  }
}

- (BOOL)accessibilityPerformEscape
{
  if ([(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axIsFloatingDockWindow])
  {
    v3 = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axFloatingDockController];
    if ([v3 safeBoolForKey:@"isPresentingFolder"])
    {
      v7 = MEMORY[0x29EDCA5F8];
      v8 = 3221225472;
      v9 = __87__SBMainScreenActiveInterfaceOrientationWindowAccessibility_accessibilityPerformEscape__block_invoke;
      v10 = &unk_29F2FBA40;
      v11 = v3;
      AXPerformSafeBlock();

      v4 = 1;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
      v4 = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v6 accessibilityPerformEscape];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
    return [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v12 accessibilityPerformEscape];
  }

  return v4;
}

- (BOOL)_axIsFloatingDockWindow
{
  if (!AXDeviceIsPad())
  {
    return 0;
  }

  v3 = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axFloatingDockController];
  v4 = [v3 safeValueForKey:@"floatingDockWindow"];
  v5 = v4 == self;

  return v5;
}

- (id)_axFloatingDockController
{
  v2 = AXWindowScene(@"activeDisplayWindowScene");
  v3 = [v2 safeValueForKey:@"floatingDockController"];

  return v3;
}

@end