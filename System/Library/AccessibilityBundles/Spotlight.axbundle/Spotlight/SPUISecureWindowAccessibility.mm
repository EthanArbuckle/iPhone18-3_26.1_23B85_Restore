@interface SPUISecureWindowAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation SPUISecureWindowAccessibility

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  windowScene = [v2 windowScene];

  if (windowScene)
  {
    v4 = [windowScene activationState] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end