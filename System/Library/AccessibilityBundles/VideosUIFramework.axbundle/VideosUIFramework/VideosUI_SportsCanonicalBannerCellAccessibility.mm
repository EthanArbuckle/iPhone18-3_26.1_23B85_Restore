@interface VideosUI_SportsCanonicalBannerCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosUI_SportsCanonicalBannerCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = VideosUI_SportsCanonicalBannerCellAccessibility;
  [(VideosUI_SportsCanonicalBannerCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(VideosUI_SportsCanonicalBannerCellAccessibility *)self safeSwiftValueForKey:@"newBannerAccessoryView"];
  v4 = MEMORY[0x29ED3FF70](@"SwiftUI.AccessibilityNode");
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __93__VideosUI_SportsCanonicalBannerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F31C378;
  objc_copyWeak(v6, &location);
  v6[1] = v4;
  [v3 _setAccessibilityElementsHiddenBlock:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

@end