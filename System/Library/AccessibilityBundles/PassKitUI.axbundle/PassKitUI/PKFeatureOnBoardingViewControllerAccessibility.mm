@interface PKFeatureOnBoardingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PKFeatureOnBoardingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKFeatureOnBoardingViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKFeatureOnBoardingViewController" hasInstanceVariable:@"_featureIdentifier" withType:"Q"];
  [v3 validateClass:@"PKFeatureOnBoardingViewController" isKindOfClass:@"PKExplanationViewController"];
  [v3 validateClass:@"PKExplanationViewController" hasInstanceMethod:@"explanationView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKFeatureOnBoardingViewControllerAccessibility;
  [(PKFeatureOnBoardingViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  if ([(PKFeatureOnBoardingViewControllerAccessibility *)self safeIntegerForKey:@"featureIdentifier"]== 2)
  {
    v3 = [(PKFeatureOnBoardingViewControllerAccessibility *)self safeUIViewForKey:@"explanationView"];
    v4 = [v3 safeValueForKey:@"titleImage"];
    v5 = accessibilityLocalizedString(@"apple.card");
    [v4 setAccessibilityLabel:v5];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKFeatureOnBoardingViewControllerAccessibility;
  [(PKFeatureOnBoardingViewControllerAccessibility *)&v3 viewDidLoad];
  [(PKFeatureOnBoardingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end