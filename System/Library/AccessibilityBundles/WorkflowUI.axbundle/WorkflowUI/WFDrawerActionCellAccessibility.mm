@interface WFDrawerActionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation WFDrawerActionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [v3 validateClass:@"_TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell" hasSwiftField:@"infoButton" withSwiftType:"UIButton"];
}

- (id)accessibilityLabel
{
  v2 = [(WFDrawerActionCellAccessibility *)self safeSwiftValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(WFDrawerActionCellAccessibility *)self safeSwiftValueForKey:@"infoButton"];
  v5 = accessibilityLocalizedString(@"more.info");
  [v4 setAccessibilityLabel:v5];

  [v3 axSafelyAddObject:v4];

  return v3;
}

@end