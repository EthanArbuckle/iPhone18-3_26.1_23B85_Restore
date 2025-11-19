@interface EKReminderTitleDetailCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation EKReminderTitleDetailCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_circle" withType:"UIButton"];
  [v3 validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_title" withType:"UILabel"];
  [v3 validateClass:@"EKReminderTitleDetailCell" hasInstanceVariable:@"_subtitle" withType:"UILabel"];
  [v3 validateClass:@"EKReminderTitleDetailCell" isKindOfClass:@"EKEventDetailCell"];
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
  v4 = [v3 accessibilityLabel];
  v5 = [(EKReminderTitleDetailCellAccessibility *)self safeUIViewForKey:@"_subtitle"];
  v8 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

- (id)accessibilityHint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 event];

  if ([v3 CUIK_reminderShouldBeEditable])
  {
    if ([v3 completed])
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