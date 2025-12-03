@interface UISwitchInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UISwitchInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  traitCollection = [(UISwitchInvertColorsAccessibility *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != &dword_4 + 1;

  return v3;
}

@end