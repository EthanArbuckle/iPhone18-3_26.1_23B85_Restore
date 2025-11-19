@interface _MKLocompassViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateLabels;
- (void)_updateControlsVisibility;
- (void)setMapView:(id)a3;
@end

@implementation _MKLocompassViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_MKLocompassView"];
  [v3 validateClass:@"_MKLocompassView" hasInstanceMethod:@"_updateControlsVisibility" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_MKLocompassView" hasInstanceMethod:@"setMapView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_MKLocompassView" hasInstanceVariable:@"_compassView" withType:"MKCompassView_watchos"];
  [v3 validateClass:@"_MKLocompassView" hasInstanceVariable:@"_userTrackingButton" withType:"_MKUserTrackingButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = _MKLocompassViewAccessibility;
  [(_MKLocompassViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(_MKLocompassViewAccessibility *)self _axUpdateLabels];
}

- (void)_updateControlsVisibility
{
  v3.receiver = self;
  v3.super_class = _MKLocompassViewAccessibility;
  [(_MKLocompassViewAccessibility *)&v3 _updateControlsVisibility];
  [(_MKLocompassViewAccessibility *)self _axUpdateLabels];
}

- (void)setMapView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKLocompassViewAccessibility;
  [(_MKLocompassViewAccessibility *)&v4 setMapView:a3];
  [(_MKLocompassViewAccessibility *)self _axUpdateLabels];
}

- (void)_axUpdateLabels
{
  v5 = [(_MKLocompassViewAccessibility *)self safeUIViewForKey:@"_userTrackingButton"];
  v3 = [v5 accessibilityLabel];
  [(_MKLocompassViewAccessibility *)self setAccessibilityLabel:v3];

  v4 = [v5 accessibilityValue];
  [(_MKLocompassViewAccessibility *)self setAccessibilityValue:v4];
}

@end