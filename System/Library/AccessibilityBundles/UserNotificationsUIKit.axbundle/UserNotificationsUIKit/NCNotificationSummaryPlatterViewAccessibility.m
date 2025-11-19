@interface NCNotificationSummaryPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NCNotificationSummaryPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationSummaryPlatterView" hasInstanceVariable:@"_summaryContentView" withType:"NCNotificationSummaryContentView"];
  [v3 validateClass:@"NCNotificationSummaryContentView" hasInstanceVariable:@"_summaryDateLabel" withType:"UILabel<BSUIDateLabel>"];
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationSummaryPlatterViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"summaryTitle, summary"];
  v6 = [(NCNotificationSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryContentView._summaryDateLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end