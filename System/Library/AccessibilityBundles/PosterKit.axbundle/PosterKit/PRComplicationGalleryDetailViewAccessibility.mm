@interface PRComplicationGalleryDetailViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PRComplicationGalleryDetailViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PRComplicationGalleryDetailViewAccessibility;
  [(PRComplicationGalleryDetailViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [(PRComplicationGalleryDetailViewAccessibility *)self safeValueForKey:@"titleView"];
  UIAccessibilityPostNotification(v3, v4);
}

@end