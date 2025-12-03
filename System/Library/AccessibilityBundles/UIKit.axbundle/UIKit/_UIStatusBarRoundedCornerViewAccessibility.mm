@interface _UIStatusBarRoundedCornerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityViewIsVisible;
@end

@implementation _UIStatusBarRoundedCornerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIStatusBarPillView"];
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityViewIsVisible
{
  selfCopy = self;
  v4 = a2;
  NSClassFromString(&cfstr_Uistatusbarpil_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIStatusBarRoundedCornerViewAccessibility;
  return [(_UIStatusBarRoundedCornerViewAccessibility *)&v3 _accessibilityViewIsVisible];
}

@end