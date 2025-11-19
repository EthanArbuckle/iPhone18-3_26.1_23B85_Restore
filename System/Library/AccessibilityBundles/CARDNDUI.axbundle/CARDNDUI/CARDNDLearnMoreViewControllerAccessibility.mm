@interface CARDNDLearnMoreViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CARDNDLearnMoreViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_CARLearnMoreViewController"];
  [v3 validateClass:@"CARDNDLearnMoreViewController" isKindOfClass:@"_CARLearnMoreViewController"];
  [v3 validateClass:@"_CARLearnMoreViewController" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CARDNDLearnMoreViewControllerAccessibility;
  [(CARDNDLearnMoreViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(CARDNDLearnMoreViewControllerAccessibility *)self safeValueForKey:@"textView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 _accessibilitySetTextViewShouldBreakUpParagraphs:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CARDNDLearnMoreViewControllerAccessibility;
  [(CARDNDLearnMoreViewControllerAccessibility *)&v3 viewDidLoad];
  [(CARDNDLearnMoreViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end