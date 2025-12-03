@interface TVRUIDirectionalControlViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation TVRUIDirectionalControlViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"selectIndicator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"upImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"rightImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"downImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"leftImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDirectionalControlView" hasInstanceMethod:@"directionControlsWrapperView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v35.receiver = self;
  v35.super_class = TVRUIDirectionalControlViewAccessibility;
  [(TVRUIDirectionalControlViewAccessibility *)&v35 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"selectIndicator"];
  v4 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"upImageView"];
  v5 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"rightImageView"];
  v6 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"downImageView"];
  v7 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"leftImageView"];
  [v3 setIsAccessibilityElement:1];
  [v4 setIsAccessibilityElement:1];
  [v5 setIsAccessibilityElement:1];
  [v6 setIsAccessibilityElement:1];
  [v7 setIsAccessibilityElement:1];
  v8 = accessibilityLocalizedString(@"tv.remote.touchpad.select.button");
  [v3 setAccessibilityLabel:v8];

  v9 = accessibilityLocalizedString(@"tv.remote.touchpad.up.button");
  [v4 setAccessibilityLabel:v9];

  v10 = accessibilityLocalizedString(@"tv.remote.touchpad.right.button");
  [v5 setAccessibilityLabel:v10];

  v11 = accessibilityLocalizedString(@"tv.remote.touchpad.down.button");
  [v6 setAccessibilityLabel:v11];

  v12 = accessibilityLocalizedString(@"tv.remote.touchpad.left.button");
  [v7 setAccessibilityLabel:v12];

  v13 = *MEMORY[0x29EDC7F70];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 setAccessibilityTraits:v13];
  [v5 setAccessibilityTraits:v13];
  [v6 setAccessibilityTraits:v13];
  [v7 setAccessibilityTraits:v13];
  [v3 _accessibilitySetScannerActivateBehavior:1];
  [v4 _accessibilitySetScannerActivateBehavior:1];
  [v5 _accessibilitySetScannerActivateBehavior:1];
  [v6 _accessibilitySetScannerActivateBehavior:1];
  [v7 _accessibilitySetScannerActivateBehavior:1];
  [v3 accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v18 = [(TVRUIDirectionalControlViewAccessibility *)self safeUIViewForKey:@"directionControlsWrapperView"];
  [v4 center];
  v34 = v19;
  [v4 center];
  v21 = v20;
  [v5 center];
  v23 = v22;
  [v5 center];
  v25 = v24;
  [v6 center];
  v27 = v26;
  [v6 center];
  v29 = v28;
  [v7 center];
  v31 = v30;
  [v7 center];
  if (v18)
  {
    v33 = v32 - v17 * 0.5;
    v36.origin.x = v34 - v15 * 0.5;
    v36.origin.y = v21 - v17 * 0.5;
    v36.size.width = v15;
    v36.size.height = v17;
    v37 = UIAccessibilityConvertFrameToScreenCoordinates(v36, v18);
    [v4 setAccessibilityFrame:{v37.origin.x, v37.origin.y, v37.size.width, v37.size.height}];
    v38.origin.x = v23 - v15 * 0.5;
    v38.origin.y = v25 - v17 * 0.5;
    v38.size.width = v15;
    v38.size.height = v17;
    v39 = UIAccessibilityConvertFrameToScreenCoordinates(v38, v18);
    [v5 setAccessibilityFrame:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];
    v40.origin.x = v27 - v15 * 0.5;
    v40.origin.y = v29 - v17 * 0.5;
    v40.size.width = v15;
    v40.size.height = v17;
    v41 = UIAccessibilityConvertFrameToScreenCoordinates(v40, v18);
    [v6 setAccessibilityFrame:{v41.origin.x, v41.origin.y, v41.size.width, v41.size.height}];
    v42.origin.y = v33;
    v42.origin.x = v31 - v15 * 0.5;
    v42.size.width = v15;
    v42.size.height = v17;
    v43 = UIAccessibilityConvertFrameToScreenCoordinates(v42, v18);
    [v7 setAccessibilityFrame:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVRUIDirectionalControlViewAccessibility;
  [(TVRUIDirectionalControlViewAccessibility *)&v3 layoutSubviews];
  [(TVRUIDirectionalControlViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end