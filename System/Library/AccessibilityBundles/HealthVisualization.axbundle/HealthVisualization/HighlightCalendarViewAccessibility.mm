@interface HighlightCalendarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HighlightCalendarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthVisualization.HighlightCalendarView" hasInstanceMethod:@"accessibilityWeekdayLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthVisualization.HighlightCalendarView" hasInstanceMethod:@"accessibilityMonthLabels" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = HighlightCalendarViewAccessibility;
  [(HighlightCalendarViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(HighlightCalendarViewAccessibility *)self safeArrayForKey:@"accessibilityWeekdayLabels"];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_0];

  v4 = [(HighlightCalendarViewAccessibility *)self safeArrayForKey:@"accessibilityMonthLabels"];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_296];
}

@end