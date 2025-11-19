@interface ManeuverBannerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateFromBannerItem;
@end

@implementation ManeuverBannerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"leadingManeuverView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverAccessoryView" hasInstanceMethod:@"maneuverView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"minimalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"minimalManeuverView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"detachedMinimalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"detachedMinimalManeuverView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"trailingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"apertureDistanceLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DistanceAccessoryView" hasInstanceMethod:@"displayState" withFullSignature:{"q", 0}];
  [v3 validateClass:@"DistanceAccessoryView" hasInstanceMethod:@"previousDistanceString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ManeuverBannerView" hasInstanceMethod:@"updateFromBannerItem" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWindowScene" hasInstanceMethod:@"systemApertureElementContext" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"SBUISystemApertureElementContext" hasRequiredInstanceMethod:@"setElementNeedsUpdate"];
  [v3 validateClass:@"ManeuverBannerView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21.receiver = self;
  v21.super_class = ManeuverBannerViewAccessibility;
  [(ManeuverBannerViewAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  v3 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"leadingManeuverView"];
  v4 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"leadingView"];
  v5 = [v3 safeValueForKey:@"maneuverView"];
  v6 = [v5 accessibilityLabel];
  [v4 setAccessibilityLabel:v6];

  v7 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"minimalManeuverView"];
  v8 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"minimalView"];
  v9 = [v7 safeValueForKey:@"maneuverView"];
  v10 = [v9 accessibilityLabel];
  [v8 setAccessibilityLabel:v10];

  v11 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"detachedMinimalManeuverView"];
  v12 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"detachedMinimalView"];
  v13 = [v11 safeValueForKey:@"maneuverView"];
  v14 = [v13 accessibilityLabel];
  [v12 setAccessibilityLabel:v14];

  v15 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"apertureDistanceLabel"];
  v16 = [v15 safeIntegerForKey:@"displayState"];
  v17 = [(ManeuverBannerViewAccessibility *)self safeValueForKey:@"trailingView"];
  v18 = v17;
  if (v16 == 3)
  {
    v19 = AXMapsLocString(@"REROUTING_CELL");
  }

  else
  {
    if (v16 != 2)
    {
      [v17 setAccessibilityLabel:0];
      goto LABEL_7;
    }

    v19 = [v15 safeValueForKey:@"previousDistanceString"];
  }

  v20 = v19;
  [v18 setAccessibilityLabel:v19];

LABEL_7:
}

- (void)updateFromBannerItem
{
  v6.receiver = self;
  v6.super_class = ManeuverBannerViewAccessibility;
  [(ManeuverBannerViewAccessibility *)&v6 updateFromBannerItem];
  [(ManeuverBannerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3 = [(ManeuverBannerViewAccessibility *)self window];
  v4 = [v3 windowScene];

  v5 = [v4 safeValueForKey:@"systemApertureElementContext"];
  [v5 setElementNeedsUpdate];
}

@end