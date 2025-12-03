@interface SBMainScreenActiveInterfaceOrientationWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityWindowVisible;
- (BOOL)_axIsFloatingDockWindow;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (id)_axFloatingDockController;
@end

@implementation SBMainScreenActiveInterfaceOrientationWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIconController"];
  [validationsCopy validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"floatingDockWindow" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isPresentingFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"dismissPresentedFolderAnimated:completion:" withFullSignature:{"v", "B", "@?", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  if ([(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axIsFloatingDockWindow])
  {
    server = [MEMORY[0x29EDBDFA8] server];
    if ([server isDockVisible])
    {
      server2 = [MEMORY[0x29EDBDFA8] server];
      isControlCenterVisible = [server2 isControlCenterVisible];
    }

    else
    {
      isControlCenterVisible = 1;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
    return [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v7 accessibilityElementsHidden];
  }

  return isControlCenterVisible;
}

- (BOOL)_accessibilityWindowVisible
{
  if ([(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axIsFloatingDockWindow])
  {
    server = [MEMORY[0x29EDBDFA8] server];
    isDockVisible = [server isDockVisible];

    return isDockVisible;
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
    _axFloatingDockController = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axFloatingDockController];
    if ([_axFloatingDockController safeBoolForKey:@"isPresentingFolder"])
    {
      v7 = MEMORY[0x29EDCA5F8];
      v8 = 3221225472;
      v9 = __87__SBMainScreenActiveInterfaceOrientationWindowAccessibility_accessibilityPerformEscape__block_invoke;
      v10 = &unk_29F2FBA40;
      v11 = _axFloatingDockController;
      AXPerformSafeBlock();

      accessibilityPerformEscape = 1;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
      accessibilityPerformEscape = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v6 accessibilityPerformEscape];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBMainScreenActiveInterfaceOrientationWindowAccessibility;
    return [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)&v12 accessibilityPerformEscape];
  }

  return accessibilityPerformEscape;
}

- (BOOL)_axIsFloatingDockWindow
{
  if (!AXDeviceIsPad())
  {
    return 0;
  }

  _axFloatingDockController = [(SBMainScreenActiveInterfaceOrientationWindowAccessibility *)self _axFloatingDockController];
  v4 = [_axFloatingDockController safeValueForKey:@"floatingDockWindow"];
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