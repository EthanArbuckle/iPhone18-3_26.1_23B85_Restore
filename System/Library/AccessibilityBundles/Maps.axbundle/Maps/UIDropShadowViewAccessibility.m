@interface UIDropShadowViewAccessibility
@end

@implementation UIDropShadowViewAccessibility

id __87__UIDropShadowViewAccessibility_Maps_AppKit__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityContaineeLayout];

  return AXMapsStringForContaineeLayout(v2);
}

@end