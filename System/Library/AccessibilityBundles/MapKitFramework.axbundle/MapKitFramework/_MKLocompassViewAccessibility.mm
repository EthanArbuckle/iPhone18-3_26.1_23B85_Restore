@interface _MKLocompassViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateLabels;
- (void)_updateControlsVisibility;
- (void)setMapView:(id)view;
@end

@implementation _MKLocompassViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_MKLocompassView"];
  [validationsCopy validateClass:@"_MKLocompassView" hasInstanceMethod:@"_updateControlsVisibility" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_MKLocompassView" hasInstanceMethod:@"setMapView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_MKLocompassView" hasInstanceVariable:@"_compassView" withType:"MKCompassView_watchos"];
  [validationsCopy validateClass:@"_MKLocompassView" hasInstanceVariable:@"_userTrackingButton" withType:"_MKUserTrackingButton"];
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

- (void)setMapView:(id)view
{
  v4.receiver = self;
  v4.super_class = _MKLocompassViewAccessibility;
  [(_MKLocompassViewAccessibility *)&v4 setMapView:view];
  [(_MKLocompassViewAccessibility *)self _axUpdateLabels];
}

- (void)_axUpdateLabels
{
  v5 = [(_MKLocompassViewAccessibility *)self safeUIViewForKey:@"_userTrackingButton"];
  accessibilityLabel = [v5 accessibilityLabel];
  [(_MKLocompassViewAccessibility *)self setAccessibilityLabel:accessibilityLabel];

  accessibilityValue = [v5 accessibilityValue];
  [(_MKLocompassViewAccessibility *)self setAccessibilityValue:accessibilityValue];
}

@end