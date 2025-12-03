@interface MTATimerControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation MTATimerControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_timePicker" withType:"MTATimerIntervalPickerView"];
  [validationsCopy validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_timeView" withType:"UILabel"];
  [validationsCopy validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_state" withType:"Q"];
  [validationsCopy validateClass:@"MTATimerControlsView" hasInstanceMethod:@"setState: animate:" withFullSignature:{"v", "Q", "B", 0}];
  [validationsCopy validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_tableView" withType:"UITableView"];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTATimerControlsViewAccessibility;
  [(MTATimerControlsViewAccessibility *)&v3 layoutSubviews];
  [(MTATimerControlsViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MTATimerControlsViewAccessibility;
  [(MTATimerControlsViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"alarm.selected");
  v4 = [(MTATimerControlsViewAccessibility *)self safeUIViewForKey:@"_expectedTimeView"];
  [v4 setAccessibilityLabel:v3];
}

@end