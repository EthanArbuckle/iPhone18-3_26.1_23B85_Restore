@interface _UIStatusBarRoundedCornerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityViewIsVisible;
@end

@implementation _UIStatusBarRoundedCornerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarPillView"];
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityViewIsVisible
{
  v5 = self;
  v4 = a2;
  NSClassFromString(&cfstr_Uistatusbarpil_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = _UIStatusBarRoundedCornerViewAccessibility;
  return [(_UIStatusBarRoundedCornerViewAccessibility *)&v3 _accessibilityViewIsVisible];
}

@end