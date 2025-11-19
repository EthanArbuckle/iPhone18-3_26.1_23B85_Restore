@interface SPUISecureWindowAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation SPUISecureWindowAccessibility

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 windowScene];

  if (v3)
  {
    v4 = [v3 activationState] != 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end