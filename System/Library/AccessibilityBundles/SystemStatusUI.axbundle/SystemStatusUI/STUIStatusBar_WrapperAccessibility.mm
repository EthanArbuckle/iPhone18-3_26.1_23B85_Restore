@interface STUIStatusBar_WrapperAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityViewIsVisible;
- (int64_t)_accessibilitySortPriority;
@end

@implementation STUIStatusBar_WrapperAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBar" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"STUIStatusBar_Wrapper" hasInstanceMethod:@"statusBar" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityViewIsVisible
{
  v2 = [(STUIStatusBar_WrapperAccessibility *)self safeUIViewForKey:@"statusBar"];
  isHidden = [v2 isHidden];

  return isHidden ^ 1;
}

- (int64_t)_accessibilitySortPriority
{
  if (!AXProcessIsSpringBoard() || !AXDeviceHasJindo() || AXRequestingClient() != 3)
  {
    return 0x7FFFFFFFLL;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBar_WrapperAccessibility;
  return [(STUIStatusBar_WrapperAccessibility *)&v4 _accessibilitySortPriority];
}

@end