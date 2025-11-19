@interface RecentsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyLabels;
- (void)viewDidLoad;
@end

@implementation RecentsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CallsAppUI.RecentsViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CallsAppUI.RecentsViewController" hasSwiftField:@"filterButtonItem" withSwiftType:"UIBarButtonItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = RecentsViewControllerAccessibility;
  [(RecentsViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(RecentsViewControllerAccessibility *)self _axApplyLabels];
}

- (void)_axApplyLabels
{
  objc_opt_class();
  v3 = [(RecentsViewControllerAccessibility *)self safeSwiftValueForKey:@"filterButtonItem"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLocalizedString(@"filter.button");
  [v4 setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  [(RecentsViewControllerAccessibility *)self _axApplyLabels];
  v3.receiver = self;
  v3.super_class = RecentsViewControllerAccessibility;
  [(RecentsViewControllerAccessibility *)&v3 viewDidLoad];
}

@end