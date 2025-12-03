@interface PKDashboardViewControllerFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation PKDashboardViewControllerFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"leadingTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"leadingDetail" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"trailingTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceMethod:@"trailingDetail" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceVariable:@"_payButton" withType:"PKContinuousButton"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PKDashboardViewControllerFooterViewAccessibility *)self safeUIViewForKey:@"_payButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

@end