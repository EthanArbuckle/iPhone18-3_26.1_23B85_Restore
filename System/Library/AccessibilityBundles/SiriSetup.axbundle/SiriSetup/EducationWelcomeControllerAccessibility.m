@interface EducationWelcomeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityHideVideoPlayer;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EducationWelcomeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriSetup.EducationWelcomeController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SiriSetup.EducationWelcomeController" isKindOfClass:@"OBWelcomeController"];
}

- (void)_accessibilityHideVideoPlayer
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 contentView];
  [v3 setAccessibilityElementsHidden:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EducationWelcomeControllerAccessibility;
  [(EducationWelcomeControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EducationWelcomeControllerAccessibility *)self _accessibilityHideVideoPlayer];
}

@end