@interface MTAAlarmEditViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation MTAAlarmEditViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAAlarmEditViewController" hasInstanceMethod:@"editedAlarm" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAlarm" hasInstanceMethod:@"repeatSchedule" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MTAAlarmEditViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = MTAAlarmEditViewControllerAccessibility;
  pathCopy = path;
  v7 = [(MTAAlarmEditViewControllerAccessibility *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1 && !v8)
  {
    v10 = [(MTAAlarmEditViewControllerAccessibility *)self safeValueForKey:@"editedAlarm"];
    [v10 safeUnsignedIntegerForKey:@"repeatSchedule"];

    v11 = DateMaskToString();
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setAccessibilityLabel:v11];
  }

  return v7;
}

@end