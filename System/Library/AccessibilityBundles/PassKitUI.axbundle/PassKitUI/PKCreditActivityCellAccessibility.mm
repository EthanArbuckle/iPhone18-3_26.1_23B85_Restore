@interface PKCreditActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKCreditActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKCreditActivityCell" hasInstanceVariable:@"_labelTitle" withType:"UILabel"];
  [validationsCopy validateClass:@"PKCreditActivityCell" hasInstanceVariable:@"_chartView" withType:"PKSpendingSummaryChartView"];
}

- (id)accessibilityLabel
{
  v3 = [(PKCreditActivityCellAccessibility *)self safeUIViewForKey:@"_labelTitle"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PKCreditActivityCellAccessibility *)self safeUIViewForKey:@"_chartView"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end