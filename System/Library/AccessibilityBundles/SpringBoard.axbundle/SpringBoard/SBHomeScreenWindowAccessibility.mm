@interface SBHomeScreenWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityAppleIntelligenceSiriRequestsPresenting;
- (BOOL)_accessibilityCanAccessHomeScreenDuringOneness;
- (BOOL)_accessibilityIgnoresStatusBarFrame;
- (BOOL)_accessibilityIsInWidgetStack;
- (BOOL)_accessibilityIsIsolatedWindow;
- (BOOL)_accessibilityWindowVisible;
- (BOOL)accessibilityElementsHidden;
- (id)_accessibilityKeyCommands;
- (void)_axLeftArrowPressed;
- (void)_axRightArrowPressed;
@end

@implementation SBHomeScreenWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityScrollLeftPage:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"NSObject" hasInstanceMethod:@"_accessibilityScrollRightPage:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"SBIconController" hasInstanceMethod:@"_currentFolderController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHomeScreenWindow" hasInstanceMethod:@"homeScreenViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"rootFolderController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" isKindOfClass:@"SBFolderController"];
  [validationsCopy validateClass:@"SBFolderController" hasInstanceMethod:@"firstIconPageIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"isDisplayingWidgetIntroductionOnPage:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"SpringBoardAccessibility" hasInstanceMethod:@"_accessibilityIsShowingLongLookNotification" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBRootFolderController" hasInstanceMethod:@"stackConfigurationViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAssistantController" hasInstanceMethod:@"rootViewController" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsIsolatedWindow
{
  v2 = [(SBHomeScreenWindowAccessibility *)self safeValueForKeyPath:@"homeScreenViewController.iconManager.rootFolderController"];
  [v2 safeIntegerForKey:@"firstIconPageIndex"];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = v2;
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __65__SBHomeScreenWindowAccessibility__accessibilityIsIsolatedWindow__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDisplayingWidgetIntroductionOnPage:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  if ([(SBHomeScreenWindowAccessibility *)self _accessibilityCanAccessHomeScreenDuringOneness]|| [(SBHomeScreenWindowAccessibility *)self _accessibilityAppleIntelligenceSiriRequestsPresenting])
  {
    return 1;
  }

  server = [MEMORY[0x29EDBDFA8] server];
  if ([server isShowingHomescreen])
  {
    server2 = [MEMORY[0x29EDBDFA8] server];
    if ([server2 isControlCenterVisible])
    {
      v3 = 1;
    }

    else
    {
      v3 = [*MEMORY[0x29EDC8008] safeBoolForKey:@"_accessibilityIsShowingLongLookNotification"];
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_accessibilityWindowVisible
{
  if ([(SBHomeScreenWindowAccessibility *)self _accessibilityCanAccessHomeScreenDuringOneness]|| [(SBHomeScreenWindowAccessibility *)self _accessibilityAppleIntelligenceSiriRequestsPresenting])
  {
    return 0;
  }

  server = [MEMORY[0x29EDBDFA8] server];
  isShowingHomescreen = [server isShowingHomescreen];

  return isShowingHomescreen;
}

- (BOOL)_accessibilityCanAccessHomeScreenDuringOneness
{
  if (AXProcessIsCarPlay())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = AXRequestingClient() != 16 && AXRequestingClient() != 2;
    server = [MEMORY[0x29EDBDFA8] server];
    v2 = [server isContinuitySessionActive] & v3;
  }

  return v2;
}

- (BOOL)_accessibilityAppleIntelligenceSiriRequestsPresenting
{
  v2 = AXSBAssistantControllerSharedInstance();
  v3 = [v2 safeValueForKey:@"rootViewController"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_accessibilityIgnoresStatusBarFrame
{
  v3 = AXSBHIconManagerFromSharedIconController();
  v4 = [v3 safeBoolForKey:@"isEditing"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBHomeScreenWindowAccessibility;
  return [(SBHomeScreenWindowAccessibility *)&v6 _accessibilityIgnoresStatusBarFrame];
}

- (id)_accessibilityKeyCommands
{
  v9[2] = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = SBHomeScreenWindowAccessibility;
  _accessibilityKeyCommands = [(SBHomeScreenWindowAccessibility *)&v8 _accessibilityKeyCommands];
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

- (BOOL)_accessibilityIsInWidgetStack
{
  objc_opt_class();
  v3 = [(SBHomeScreenWindowAccessibility *)self safeValueForKey:@"rootViewController"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(&cfstr_Sbhomescreenvi.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 safeValueForKey:@"iconManager"];
    v6 = [v5 safeValueForKey:@"rootFolderController"];
    v7 = [v6 safeValueForKey:@"stackConfigurationViewController"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end