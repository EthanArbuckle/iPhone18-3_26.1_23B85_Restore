@interface SBDeviceApplicationSceneClassicAccessoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateRotationButton;
- (void)_updateZoomButton;
@end

@implementation SBDeviceApplicationSceneClassicAccessoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceMethod:@"_updateZoomButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceMethod:@"_isZoomed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceMethod:@"_updateRotationButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceVariable:@"_zoomButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceVariable:@"_counterClockWiseRotationButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceVariable:@"_clockWiseRotationButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBDeviceApplicationSceneClassicAccessoryView" hasInstanceVariable:@"_buttonOrientation" withType:"NSInteger"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SBDeviceApplicationSceneClassicAccessoryViewAccessibility;
  [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self safeValueForKey:@"_zoomButton"];
  if ([(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self safeBoolForKey:@"_isZoomed"])
  {
    v4 = @"fullscreen.zoom";
  }

  else
  {
    v4 = @"normal.zoom";
  }

  v5 = accessibilityLocalizedString(v4);
  [v3 setAccessibilityLabel:v5];

  v6 = [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self safeValueForKey:@"_clockWiseRotationButton"];
  v7 = accessibilityLocalizedString(@"clockwise.rotation.button");
  [v6 setAccessibilityLabel:v7];

  v8 = [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self safeValueForKey:@"_counterClockWiseRotationButton"];
  v9 = accessibilityLocalizedString(@"counter.clockwise.rotation.button");
  [v8 setAccessibilityLabel:v9];
}

- (void)_updateRotationButton
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneClassicAccessoryViewAccessibility;
  [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)&v5 _updateRotationButton];
  [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3 = [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self safeIntegerForKey:@"buttonOrientation"]- 1;
  if (v3 > 3)
  {
    v4 = &stru_2A22F9D20;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2FC3C0[v3]);
  }

  if ([(__CFString *)v4 length])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v4);
  }
}

- (void)_updateZoomButton
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneClassicAccessoryViewAccessibility;
  [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)&v3 _updateZoomButton];
  [(SBDeviceApplicationSceneClassicAccessoryViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end