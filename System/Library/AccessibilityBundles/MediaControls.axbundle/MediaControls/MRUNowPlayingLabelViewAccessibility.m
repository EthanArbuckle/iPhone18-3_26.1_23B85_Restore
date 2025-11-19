@interface MRUNowPlayingLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUNowPlayingLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"routeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"titleMarqueeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingLabelView" hasInstanceMethod:@"subtitleMarqueeView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MRUNowPlayingLabelViewAccessibility;
  [(MRUNowPlayingLabelViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MRUNowPlayingLabelViewAccessibility *)self safeValueForKey:@"routeLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(MRUNowPlayingLabelViewAccessibility *)self safeValueForKey:@"titleMarqueeView"];
  [v4 setIsAccessibilityElement:0];

  v5 = [(MRUNowPlayingLabelViewAccessibility *)self safeValueForKey:@"subtitleMarqueeView"];
  [v5 setIsAccessibilityElement:0];
}

@end