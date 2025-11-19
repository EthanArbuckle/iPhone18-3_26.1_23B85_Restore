@interface CCUIOverlayBackgroundViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation CCUIOverlayBackgroundViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(CCUIOverlayBackgroundViewInvertColorsAccessibility *)self window];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle] == &dword_0 + 2;

  return v4;
}

@end