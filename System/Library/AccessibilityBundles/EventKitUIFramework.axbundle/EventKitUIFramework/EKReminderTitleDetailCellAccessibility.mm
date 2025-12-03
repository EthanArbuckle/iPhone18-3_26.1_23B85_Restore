@interface EKReminderTitleDetailCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation EKReminderTitleDetailCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_circle" withType:"UIButton"];
  [validationsCopy validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_title" withType:"UILabel"];
  [validationsCopy validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_subtitle" withType:"UILabel"];
  [validationsCopy validateClass:@"EKReminderTitleDetailCell" isKindOfClass:@"EKEventDetailCell"];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(EKReminderTitleDetailCellAccessibility *)self safeUIViewForKey:@"_circle"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(EKReminderTitleDetailCellAccessibility *)self safeUIViewForKey:@"_title"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(EKReminderTitleDetailCellAccessibility *)self safeUIViewForKey:@"_subtitle"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

- (id)accessibilityHint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  event = [v2 event];

  if ([event CUIK_reminderShouldBeEditable])
  {
    if ([event completed])
    {
      v4 = @"reminder.mark.incomplete.hint";
    }

    else
    {
      v4 = @"reminder.mark.complete.hint";
    }

    v5 = accessibilityLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end