@interface UIViewMobileMailInvertColorsAccessibility
- (BOOL)accessibilityAppliesInvertColorsInDarkUI;
@end

@implementation UIViewMobileMailInvertColorsAccessibility

- (BOOL)accessibilityAppliesInvertColorsInDarkUI
{
  v2 = self;
  v3 = [(UIViewMobileMailInvertColorsAccessibility *)v2 backgroundColor];
  AXColorGetLuma();
  v5 = v4;

  if (v5 <= 0.8)
  {
    isKindOfClass = 0;
  }

  else
  {
    v6 = [(UIViewMobileMailInvertColorsAccessibility *)v2 subviews];
    v7 = [v6 firstObject];
    AXSafeClassFromString();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end