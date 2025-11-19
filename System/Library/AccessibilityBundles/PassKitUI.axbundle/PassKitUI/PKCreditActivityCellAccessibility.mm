@interface PKCreditActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKCreditActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKCreditActivityCell" hasInstanceVariable:@"_labelTitle" withType:"UILabel"];
  [v3 validateClass:@"PKCreditActivityCell" hasInstanceVariable:@"_chartView" withType:"PKSpendingSummaryChartView"];
}

- (id)accessibilityLabel
{
  v3 = [(PKCreditActivityCellAccessibility *)self safeUIViewForKey:@"_labelTitle"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PKCreditActivityCellAccessibility *)self safeUIViewForKey:@"_chartView"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end