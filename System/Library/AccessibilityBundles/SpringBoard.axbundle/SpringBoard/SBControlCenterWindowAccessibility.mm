@interface SBControlCenterWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
@end

@implementation SBControlCenterWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBControlCenterController"];
  [validationsCopy validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBControlCenterController" hasInstanceMethod:@"handleMenuButtonTap" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SpringBoardAccessibility" hasInstanceMethod:@"_accessibilityIsShowingLongLookNotification" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [NSClassFromString(&cfstr_Sbcontrolcente.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v3 = [v2 safeBoolForKey:@"handleMenuButtonTap"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);

  return v3;
}

- (BOOL)accessibilityElementsHidden
{
  server = [MEMORY[0x29EDBDFA8] server];
  if ([server isControlCenterVisible] && (v3 = MEMORY[0x29EDC8008], (objc_msgSend(*MEMORY[0x29EDC8008], "safeBoolForKey:", @"_accessibilityIsShowingLongLookNotification") & 1) == 0))
  {
    v4 = [*v3 safeBoolForKey:@"_accessibilityIsShowingShortcutsUI"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)accessibilityViewIsModal
{
  server = [MEMORY[0x29EDBDFA8] server];
  isControlCenterVisible = [server isControlCenterVisible];

  return isControlCenterVisible;
}

@end