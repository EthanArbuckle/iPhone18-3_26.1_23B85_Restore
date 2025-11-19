@interface HKTimeScopeControlBarAccessibility
@end

@implementation HKTimeScopeControlBarAccessibility

void __81___HKTimeScopeControlBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) objectAtIndex:*(a1 + 48)];
  v2 = AXLocalizedStringFromTimeScope([*(a1 + 40) _timeScopeForIndex:*(a1 + 48)]);
  [v3 setAccessibilityLabel:v2];
}

@end