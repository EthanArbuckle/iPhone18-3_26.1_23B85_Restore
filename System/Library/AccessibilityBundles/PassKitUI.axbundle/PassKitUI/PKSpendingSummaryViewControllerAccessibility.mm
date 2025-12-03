@interface PKSpendingSummaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKSpendingSummaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSpendingSummaryViewController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"PKSpendingSummaryViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PKSpendingSummaryViewControllerAccessibility;
  [(PKSpendingSummaryViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKSpendingSummaryViewControllerAccessibility *)self safeUIViewForKey:@"_scrollView"];
  [v3 _accessibilitySetScrollAcrossPageBoundaries:0];
  [v3 _accessibilitySetPagingEnabled:1];
  [v3 _accessibilitySetAllowedPagingOverlap:30.0];
}

@end