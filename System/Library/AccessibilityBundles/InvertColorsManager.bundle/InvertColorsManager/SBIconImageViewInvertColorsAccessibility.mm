@interface SBIconImageViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation SBIconImageViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  objc_opt_class();
  v3 = [(SBIconImageViewInvertColorsAccessibility *)self safeValueForKey:@"window"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(@"SPUISecureWindow");
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 rootViewController];
    NSClassFromString(@"SPUIPlatterContainerViewController");
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = 1;
    }
  }

  return v7;
}

@end