@interface MTAAlarmEditViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation MTAAlarmEditViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTAAlarmEditViewController" hasInstanceMethod:@"editedAlarm" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTAlarm" hasInstanceMethod:@"repeatSchedule" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MTAAlarmEditViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = MTAAlarmEditViewControllerAccessibility;
  v6 = a4;
  v7 = [(MTAAlarmEditViewControllerAccessibility *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [v6 row];
  v9 = [v6 section];

  if (v9 == 1 && !v8)
  {
    v10 = [(MTAAlarmEditViewControllerAccessibility *)self safeValueForKey:@"editedAlarm"];
    [v10 safeUnsignedIntegerForKey:@"repeatSchedule"];

    v11 = DateMaskToString();
    v12 = [v7 detailTextLabel];
    [v12 setAccessibilityLabel:v11];
  }

  return v7;
}

@end