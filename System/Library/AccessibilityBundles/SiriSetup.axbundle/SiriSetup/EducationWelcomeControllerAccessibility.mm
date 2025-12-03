@interface EducationWelcomeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityHideVideoPlayer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EducationWelcomeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SiriSetup.EducationWelcomeController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SiriSetup.EducationWelcomeController" isKindOfClass:@"OBWelcomeController"];
}

- (void)_accessibilityHideVideoPlayer
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  contentView = [v2 contentView];
  [contentView setAccessibilityElementsHidden:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EducationWelcomeControllerAccessibility;
  [(EducationWelcomeControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EducationWelcomeControllerAccessibility *)self _accessibilityHideVideoPlayer];
}

@end