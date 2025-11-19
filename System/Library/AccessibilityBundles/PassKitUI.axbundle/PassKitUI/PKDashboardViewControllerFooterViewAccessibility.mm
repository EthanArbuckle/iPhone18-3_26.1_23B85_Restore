@interface PKDashboardViewControllerFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation PKDashboardViewControllerFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"leadingTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"leadingDetail" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"trailingTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"trailingDetail" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKDashboardViewControllerFooterView" hasInstanceVariable:@"_payButton" withType:"PKContinuousButton"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PKDashboardViewControllerFooterViewAccessibility *)self safeUIViewForKey:@"_payButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end