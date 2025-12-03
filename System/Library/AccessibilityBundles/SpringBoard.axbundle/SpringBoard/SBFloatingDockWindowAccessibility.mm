@interface SBFloatingDockWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityKeyCommands;
- (void)_axLeftArrowPressed;
- (void)_axRightArrowPressed;
@end

@implementation SBFloatingDockWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityScrollLeftPage:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityScrollRightPage:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"SBIconController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockWindow" hasInstanceMethod:@"floatingDockRootViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockRootViewController" hasInstanceMethod:@"homeScreenContextProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBFloatingDockHomeScreenContextProviding" hasMethod:@"iconManager" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isIconStylePickerVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockController" hasInstanceMethod:@"isPresentingLibraryInFloatingDockWindow" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockRootViewController" hasInstanceMethod:@"isPresentingFolder" withFullSignature:{"B", 0}];
}

- (id)_accessibilityKeyCommands
{
  v9[2] = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = SBFloatingDockWindowAccessibility;
  _accessibilityKeyCommands = [(SBFloatingDockWindowAccessibility *)&v8 _accessibilityKeyCommands];
  v3 = [_accessibilityKeyCommands mutableCopy];

  v4 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8168] modifierFlags:0x100000 action:sel__axLeftArrowPressed];
  v9[0] = v4;
  v5 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:*MEMORY[0x29EDC8170] modifierFlags:0x100000 action:sel__axRightArrowPressed];
  v9[1] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (void)_axRightArrowPressed
{
  v5 = AXSBCurrentFolderController();
  v2 = [v5 safeValueForKey:@"_contentView"];
  v3 = [v2 safeArrayForKey:@"_iconListViews"];
  firstObject = [v3 firstObject];
  [firstObject _accessibilityScrollLeftPage:0];
}

- (void)_axLeftArrowPressed
{
  v5 = AXSBCurrentFolderController();
  v2 = [v5 safeValueForKey:@"_contentView"];
  v3 = [v2 safeArrayForKey:@"_iconListViews"];
  firstObject = [v3 firstObject];
  [firstObject _accessibilityScrollRightPage:0];
}

- (BOOL)accessibilityViewIsModal
{
  v3 = AXWindowScene(@"activeDisplayWindowScene");
  v4 = [v3 safeValueForKey:@"floatingDockController"];
  v5 = [(SBFloatingDockWindowAccessibility *)self safeValueForKey:@"floatingDockRootViewController"];
  if ([v4 safeBoolForKey:@"isPresentingLibraryInFloatingDockWindow"] & 1) != 0 || (objc_msgSend(v5, "safeBoolForKey:", @"isPresentingFolder"))
  {
    accessibilityViewIsModal = 1;
  }

  else
  {
    v7 = [v5 safeValueForKeyPath:@"homeScreenContextProvider.iconManager"];
    if ([v7 safeBoolForKey:@"isIconStylePickerVisible"])
    {
      accessibilityViewIsModal = 1;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = SBFloatingDockWindowAccessibility;
      accessibilityViewIsModal = [(SBFloatingDockWindowAccessibility *)&v9 accessibilityViewIsModal];
    }
  }

  return accessibilityViewIsModal;
}

@end