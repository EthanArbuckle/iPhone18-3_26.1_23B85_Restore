@interface CCUIOverlayBackgroundViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation CCUIOverlayBackgroundViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  window = [(CCUIOverlayBackgroundViewInvertColorsAccessibility *)self window];
  traitCollection = [window traitCollection];
  v4 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

  return v4;
}

@end