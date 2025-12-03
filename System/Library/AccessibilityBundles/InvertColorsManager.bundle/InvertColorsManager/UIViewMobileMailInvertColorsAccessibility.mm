@interface UIViewMobileMailInvertColorsAccessibility
- (BOOL)accessibilityAppliesInvertColorsInDarkUI;
@end

@implementation UIViewMobileMailInvertColorsAccessibility

- (BOOL)accessibilityAppliesInvertColorsInDarkUI
{
  selfCopy = self;
  backgroundColor = [(UIViewMobileMailInvertColorsAccessibility *)selfCopy backgroundColor];
  AXColorGetLuma();
  v5 = v4;

  if (v5 <= 0.8)
  {
    isKindOfClass = 0;
  }

  else
  {
    subviews = [(UIViewMobileMailInvertColorsAccessibility *)selfCopy subviews];
    firstObject = [subviews firstObject];
    AXSafeClassFromString();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end