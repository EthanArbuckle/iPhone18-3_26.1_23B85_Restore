@interface UIWindowCompassAppAccessibility
- (BOOL)_accessibilityInvertColorsIsDarkWindow;
@end

@implementation UIWindowCompassAppAccessibility

- (BOOL)_accessibilityInvertColorsIsDarkWindow
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  NSClassFromString(@"CompassAppDelegate");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end