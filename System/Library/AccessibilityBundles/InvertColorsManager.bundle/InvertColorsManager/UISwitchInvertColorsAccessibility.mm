@interface UISwitchInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UISwitchInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(UISwitchInvertColorsAccessibility *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != &dword_4 + 1;

  return v3;
}

@end