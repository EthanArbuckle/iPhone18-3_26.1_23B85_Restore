@interface MonthScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation MonthScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MonthScrollViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MonthScrollViewController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MonthScrollViewControllerAccessibility;
  [(MonthScrollViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(MonthScrollViewControllerAccessibility *)self safeValueForKey:@"_scrollView"];
  [v3 accessibilitySetIdentification:@"WorstScrollViewEver"];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MonthScrollViewControllerAccessibility;
  [(MonthScrollViewControllerAccessibility *)&v3 viewDidLoad];
  [(MonthScrollViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end