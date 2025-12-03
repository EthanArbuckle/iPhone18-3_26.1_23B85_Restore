@interface SBStatusBarWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_wantsFocusEngine;
- (BOOL)accessibilityElementsHidden;
- (int64_t)_accessibilitySortPriority;
@end

@implementation SBStatusBarWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBStatusBarWindow" isKindOfClass:@"UIWindow"];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"_wantsFocusEngine" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  if (_UIApplicationIsExtension())
  {
    return 1;
  }

  storedAccessibilityElementsHidden = [(SBStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];

  if (!storedAccessibilityElementsHidden)
  {
    return 0;
  }

  storedAccessibilityElementsHidden2 = [(SBStatusBarWindowAccessibility *)self storedAccessibilityElementsHidden];
  bOOLValue = [storedAccessibilityElementsHidden2 BOOLValue];

  return bOOLValue;
}

- (int64_t)_accessibilitySortPriority
{
  if (!AXProcessIsSpringBoard() || !AXDeviceHasJindo() || AXRequestingClient() != 3)
  {
    return 0x7FFFFFFFLL;
  }

  v4.receiver = self;
  v4.super_class = SBStatusBarWindowAccessibility;
  return [(SBStatusBarWindowAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)_wantsFocusEngine
{
  if (([(SBStatusBarWindowAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBStatusBarWindowAccessibility;
  return [(SBStatusBarWindowAccessibility *)&v4 _wantsFocusEngine];
}

@end