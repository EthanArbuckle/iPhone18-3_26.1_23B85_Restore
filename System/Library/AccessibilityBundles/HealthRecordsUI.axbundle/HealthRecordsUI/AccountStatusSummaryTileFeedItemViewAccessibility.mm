@interface AccountStatusSummaryTileFeedItemViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AccountStatusSummaryTileFeedItemViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AccountStatusSummaryTileFeedItemViewAccessibility;
  [(AccountStatusSummaryTileFeedItemViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AccountStatusSummaryTileFeedItemViewAccessibility *)self safeValueForKey:@"accessibilityActionLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end