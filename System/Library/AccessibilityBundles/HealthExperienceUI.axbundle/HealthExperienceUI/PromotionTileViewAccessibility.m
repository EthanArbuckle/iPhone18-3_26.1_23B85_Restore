@interface PromotionTileViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PromotionTileViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PromotionTileViewAccessibility;
  [(PromotionTileViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PromotionTileViewAccessibility *)self safeSwiftValueForKey:@"accessoryLabel"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"close");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end