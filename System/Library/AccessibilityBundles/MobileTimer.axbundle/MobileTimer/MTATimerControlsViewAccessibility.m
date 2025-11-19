@interface MTATimerControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation MTATimerControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_timePicker" withType:"MTATimerIntervalPickerView"];
  [v3 validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_timeView" withType:"UILabel"];
  [v3 validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_state" withType:"Q"];
  [v3 validateClass:@"MTATimerControlsView" hasInstanceMethod:@"setState: animate:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"MTATimerControlsView" hasInstanceVariable:@"_tableView" withType:"UITableView"];
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