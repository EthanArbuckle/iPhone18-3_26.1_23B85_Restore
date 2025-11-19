@interface LargeReminderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation LargeReminderViewAccessibility

- (id)accessibilityLabel
{
  v2 = accessibilityLocalizedString(@"reminder.title");
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v6 = accessibilityLabelFromSortedLabelsInsideView(v3);
  v4 = __UIAXStringForVariables();

  return v4;
}

@end