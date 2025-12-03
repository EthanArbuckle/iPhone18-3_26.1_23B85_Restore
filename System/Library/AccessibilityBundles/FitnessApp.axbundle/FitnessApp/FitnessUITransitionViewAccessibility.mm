@interface FitnessUITransitionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
@end

@implementation FitnessUITransitionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WorkoutUI.WorkoutSessionViewController"];
  [validationsCopy validateClass:@"FitnessApp.MirrorViewController"];
}

- (BOOL)accessibilityViewIsModal
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global];
  if (v4)
  {
    accessibilityViewIsModal = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FitnessUITransitionViewAccessibility;
    accessibilityViewIsModal = [(FitnessUITransitionViewAccessibility *)&v7 accessibilityViewIsModal];
  }

  return accessibilityViewIsModal;
}

BOOL __64__FitnessUITransitionViewAccessibility_accessibilityViewIsModal__block_invoke(id a1, UIView *a2)
{
  v2 = a2;
  v3 = [(UIView *)v2 _accessibilityViewController];
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(UIView *)v2 _accessibilityViewController];
    AXSafeClassFromString();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end