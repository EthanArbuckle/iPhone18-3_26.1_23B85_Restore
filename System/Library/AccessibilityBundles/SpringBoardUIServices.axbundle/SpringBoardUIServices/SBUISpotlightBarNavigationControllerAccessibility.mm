@interface SBUISpotlightBarNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityNavigationControllerShouldSendScreenChange;
@end

@implementation SBUISpotlightBarNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUISpotlightBarNavigationController" isKindOfClass:@"UINavigationController"];
  [validationsCopy validateClass:@"UINavigationControllerAccessibility" hasInstanceMethod:@"_accessibilityNavigationControllerShouldSendScreenChange" withFullSignature:{"B", 0}];
}

- (BOOL)_accessibilityNavigationControllerShouldSendScreenChange
{
  v6.receiver = self;
  v6.super_class = SBUISpotlightBarNavigationControllerAccessibility;
  if ([(SBUISpotlightBarNavigationControllerAccessibility *)&v6 _accessibilityNavigationControllerShouldSendScreenChange])
  {
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    parentViewController = [v2 parentViewController];
    NSClassFromString(&cfstr_Sbtodayviewcon.isa);
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end