@interface NCNotificationSummaryPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NCNotificationSummaryPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationSummaryPlatterView" hasInstanceVariable:@"_summaryContentView" withType:"NCNotificationSummaryContentView"];
  [validationsCopy validateClass:@"NCNotificationSummaryContentView" hasInstanceVariable:@"_summaryDateLabel" withType:"UILabel<BSUIDateLabel>"];
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationSummaryPlatterViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"summaryTitle, summary"];
  v6 = [(NCNotificationSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryContentView._summaryDateLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end