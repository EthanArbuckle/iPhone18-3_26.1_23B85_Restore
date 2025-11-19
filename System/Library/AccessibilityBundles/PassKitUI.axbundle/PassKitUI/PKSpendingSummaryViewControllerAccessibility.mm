@interface PKSpendingSummaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKSpendingSummaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKSpendingSummaryViewController" hasInstanceVariable:@"_scrollView" withType:"UIScrollView"];
  [v3 validateClass:@"PKSpendingSummaryViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
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