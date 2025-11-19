@interface SBControlCenterWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
@end

@implementation SBControlCenterWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBControlCenterController"];
  [v3 validateClass:@"SBControlCenterCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBControlCenterController" hasInstanceMethod:@"handleMenuButtonTap" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SpringBoardAccessibility" hasInstanceMethod:@"_accessibilityIsShowingLongLookNotification" withFullSignature:{"B", 0}];
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
  v2 = [MEMORY[0x29EDBDFA8] server];
  if ([v2 isControlCenterVisible] && (v3 = MEMORY[0x29EDC8008], (objc_msgSend(*MEMORY[0x29EDC8008], "safeBoolForKey:", @"_accessibilityIsShowingLongLookNotification") & 1) == 0))
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
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 isControlCenterVisible];

  return v3;
}

@end