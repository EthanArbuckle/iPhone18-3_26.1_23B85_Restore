@interface NCDigestOnboardingIntroductionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation NCDigestOnboardingIntroductionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer1Container" withType:"UIView"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer1Title" withType:"UILabel"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer1Label" withType:"UILabel"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer2Container" withType:"UIView"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer2Title" withType:"UILabel"];
  [validationsCopy validateClass:@"NCDigestOnboardingIntroductionViewController" hasInstanceVariable:@"_explainer2Label" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = NCDigestOnboardingIntroductionViewControllerAccessibility;
  [(NCDigestOnboardingIntroductionViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCDigestOnboardingIntroductionViewControllerAccessibility *)self safeValueForKey:@"_explainer1Container"];
  [v3 setIsAccessibilityElement:1];
  v4 = [(NCDigestOnboardingIntroductionViewControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"_explainer1Title, _explainer1Label"];
  [v3 setAccessibilityLabel:v4];

  v5 = [(NCDigestOnboardingIntroductionViewControllerAccessibility *)self safeValueForKey:@"_explainer2Container"];
  [v5 setIsAccessibilityElement:1];
  v6 = [(NCDigestOnboardingIntroductionViewControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"_explainer2Title, _explainer2Label"];
  [v5 setAccessibilityLabel:v6];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NCDigestOnboardingIntroductionViewControllerAccessibility;
  [(NCDigestOnboardingIntroductionViewControllerAccessibility *)&v3 viewDidLoad];
  [(NCDigestOnboardingIntroductionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end