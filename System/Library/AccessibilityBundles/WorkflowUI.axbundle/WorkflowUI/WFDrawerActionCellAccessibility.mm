@interface WFDrawerActionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
@end

@implementation WFDrawerActionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"_TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell" hasSwiftField:@"infoButton" withSwiftType:"UIButton"];
}

- (id)accessibilityLabel
{
  v2 = [(WFDrawerActionCellAccessibility *)self safeSwiftValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(WFDrawerActionCellAccessibility *)self safeSwiftValueForKey:@"infoButton"];
  v5 = accessibilityLocalizedString(@"more.info");
  [v4 setAccessibilityLabel:v5];

  [array axSafelyAddObject:v4];

  return array;
}

@end