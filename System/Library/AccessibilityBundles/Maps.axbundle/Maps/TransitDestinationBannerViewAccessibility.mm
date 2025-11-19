@interface TransitDestinationBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TransitDestinationBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TransitDestinationBannerView" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TransitDestinationBannerView" hasInstanceMethod:@"minimalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TransitDestinationBannerView" hasInstanceMethod:@"detachedMinimalView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = TransitDestinationBannerViewAccessibility;
  [(TransitDestinationBannerViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(TransitDestinationBannerViewAccessibility *)self safeValueForKey:@"leadingView"];
  v4 = AXMapsLocString(@"MAPS_TRANSIT");
  [v3 setAccessibilityLabel:v4];

  v5 = [(TransitDestinationBannerViewAccessibility *)self safeValueForKey:@"minimalView"];
  v6 = AXMapsLocString(@"MAPS_TRANSIT");
  [v5 setAccessibilityLabel:v6];

  v7 = [(TransitDestinationBannerViewAccessibility *)self safeValueForKey:@"detachedMinimalView"];
  v8 = AXMapsLocString(@"MAPS_TRANSIT");
  [v7 setAccessibilityLabel:v8];
}

@end