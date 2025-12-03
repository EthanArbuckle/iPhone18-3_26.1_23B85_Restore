@interface SBHomeScreenOverlayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBHomeScreenOverlayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"isFromLeading" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHomeScreenOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBHLibraryViewController" hasInstanceMethod:@"popNestedViewControllerAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenOverlayViewControllerAccessibility;
  [(SBHomeScreenOverlayViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHomeScreenOverlayViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 _setAccessibilityElementsHiddenBlock:&__block_literal_global_21];
}

uint64_t __92__SBHomeScreenOverlayViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = +[AXSpringBoardGlue sharedInstance];
  v1 = [v0 _axIsAppLibraryOrTodayViewPresent];

  return v1 ^ 1u;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = AXSBHIconManagerFromSharedIconController();
  v4 = [v3 safeBoolForKey:@"isMainDisplayLibraryViewVisible"];

  if (v4)
  {
    v5 = AXLibraryViewController(@"activeDisplayWindowScene");
    if ([v5 safeBoolForKey:@"isPresentingFolder"])
    {
      v6 = v5;
      AXPerformSafeBlock();

      return 1;
    }
  }

  v8 = [(SBHomeScreenOverlayViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  accessibilityPerformEscape = [v8 accessibilityPerformEscape];

  return accessibilityPerformEscape;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = [(SBHomeScreenOverlayViewControllerAccessibility *)self safeBoolForKey:@"isFromLeading"];
  if (scroll == 1)
  {
    if (v5 && ![(SBHomeScreenOverlayViewControllerAccessibility *)self _accessibilityIsRTL])
    {
      return 0;
    }
  }

  else if (scroll != 2 || (v5 & 1) == 0 && ([(SBHomeScreenOverlayViewControllerAccessibility *)self _accessibilityIsRTL]& 1) == 0)
  {
    return 0;
  }

  return [(SBHomeScreenOverlayViewControllerAccessibility *)self accessibilityPerformEscape];
}

@end