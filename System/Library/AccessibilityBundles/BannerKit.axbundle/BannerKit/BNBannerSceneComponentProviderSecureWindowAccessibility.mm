@interface BNBannerSceneComponentProviderSecureWindowAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BNBannerSceneComponentProviderSecureWindowAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = BNBannerSceneComponentProviderSecureWindowAccessibility;
  [(BNBannerSceneComponentProviderSecureWindowAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end