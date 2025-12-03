@interface CHListSummaryTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation CHListSummaryTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_CHWorkoutSummaryTabbedLabelContainer" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CHListSummaryTableViewCell" hasInstanceVariable:@"_numberOfWorkoutsLabel" withType:"_CHWorkoutSummaryTabbedLabelContainer"];
  [validationsCopy validateClass:@"CHListSummaryTableViewCell" hasInstanceVariable:@"_activeEnergyLabel" withType:"_CHWorkoutSummaryTabbedLabelContainer"];
  [validationsCopy validateClass:@"CHListSummaryTableViewCell" hasInstanceVariable:@"_durationLabel" withType:"_CHWorkoutSummaryTabbedLabelContainer"];
  [validationsCopy validateClass:@"CHListSummaryTableViewCell" hasInstanceVariable:@"_distanceLabel" withType:"_CHWorkoutSummaryTabbedLabelContainer"];
  [validationsCopy validateClass:@"CHListSummaryTableViewCell" hasInstanceVariable:@"_paceLabel" withType:"_CHWorkoutSummaryTabbedLabelContainer"];
}

- (id)accessibilityElements
{
  v3 = [(CHListSummaryTableViewCellAccessibility *)self safeUIViewForKey:@"_numberOfWorkoutsLabel"];
  v4 = [(CHListSummaryTableViewCellAccessibility *)self safeUIViewForKey:@"_durationLabel"];
  v5 = [(CHListSummaryTableViewCellAccessibility *)self safeUIViewForKey:@"_activeEnergyLabel"];
  v6 = [(CHListSummaryTableViewCellAccessibility *)self safeUIViewForKey:@"_distanceLabel"];
  v7 = [(CHListSummaryTableViewCellAccessibility *)self safeUIViewForKey:@"_paceLabel"];
  v8 = [NSArray axArrayByIgnoringNilElementsWithCount:5, v3, v4, v5, v6, v7];
  v9 = [v8 ax_filteredArrayUsingBlock:&__block_literal_global_6];

  return v9;
}

@end