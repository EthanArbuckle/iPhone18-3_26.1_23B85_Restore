@interface NCNotificationSummaryExpandedHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureControlsViewIfNecessary;
@end

@implementation NCNotificationSummaryExpandedHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationSummaryExpandedHeaderView" hasInstanceVariable:@"_collapseControl" withType:"PLGlyphControl"];
  [validationsCopy validateClass:@"NCNotificationSummaryExpandedHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCNotificationSummaryExpandedHeaderView" hasInstanceMethod:@"_configureControlsViewIfNecessary" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = NCNotificationSummaryExpandedHeaderViewAccessibility;
  [(NCNotificationSummaryExpandedHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationSummaryExpandedHeaderViewAccessibility *)self safeValueForKey:@"_collapseControl"];
  v4 = accessibilityLocalizedString(@"collapse.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(NCNotificationSummaryExpandedHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)_configureControlsViewIfNecessary
{
  v3.receiver = self;
  v3.super_class = NCNotificationSummaryExpandedHeaderViewAccessibility;
  [(NCNotificationSummaryExpandedHeaderViewAccessibility *)&v3 _configureControlsViewIfNecessary];
  [(NCNotificationSummaryExpandedHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end