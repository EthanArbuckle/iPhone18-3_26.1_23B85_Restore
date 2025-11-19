@interface UIDictationLayoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIDictationLayoutViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIDictationLayoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIDictationLayoutView" hasInstanceVariable:@"_keyboardButton" withType:"UIButton"];
  [location[0] validateClass:@"UIDictationLayoutView" hasInstanceVariable:@"_waveTapEndpointButtonView" withType:"UIView"];
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIDictationView" hasInstanceVariable:@"_endpointButtonLandscape" withType:"UIButton"];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v28 = self;
  v27 = a2;
  v26.receiver = self;
  v26.super_class = UIDictationLayoutViewAccessibility;
  [(UIDictationLayoutViewAccessibility *)&v26 _accessibilityLoadAccessibilityInformation];
  v20 = [(UIDictationLayoutViewAccessibility *)v28 safeValueForKey:@"_globeButton"];
  v19 = accessibilityLocalizedString(@"dictate.globe.button");
  [v20 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v19);
  *&v2 = MEMORY[0x29EDC9740](v20).n128_u64[0];
  v22 = [(UIDictationLayoutViewAccessibility *)v28 safeValueForKey:@"_keyboardButton", v2];
  v21 = accessibilityLocalizedString(@"dictate.keyboard.button");
  [v22 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v21);
  MEMORY[0x29EDC9740](v22);
  if (AXDeviceIsPhone())
  {
    v25 = [(UIDictationLayoutViewAccessibility *)v28 safeValueForKey:@"_endpointButton"];
    v24 = [(UIDictationLayoutViewAccessibility *)v28 safeValueForKey:@"_endpointButtonLandscape"];
    [v25 setIsAccessibilityElement:1];
    [v25 setAccessibilityRespondsToUserInteraction:1];
    v12 = MEMORY[0x29EDC7F90];
    v13 = MEMORY[0x29EDC7578];
    v14 = MEMORY[0x29EDC7F70];
    [v25 setAccessibilityTraits:*MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7578] | *MEMORY[0x29EDC7F70]];
    v8 = v25;
    v9 = accessibilityLocalizedString(@"done.button");
    [v8 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v9);
    v10 = v25;
    v11 = accessibilityLocalizedString(@"end.quietly.hint");
    [v10 setAccessibilityHint:?];
    *&v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    [v24 setIsAccessibilityElement:{1, v3}];
    [v24 setAccessibilityRespondsToUserInteraction:1];
    [v24 setAccessibilityTraits:*v12 | *v13 | *v14];
    v15 = v24;
    v16 = accessibilityLocalizedString(@"done.button");
    [v15 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v16);
    v17 = v24;
    v18 = accessibilityLocalizedString(@"end.quietly.hint");
    [v17 setAccessibilityHint:?];
    MEMORY[0x29EDC9740](v18);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  v23 = [(UIDictationLayoutViewAccessibility *)v28 safeValueForKey:@"_waveTapEndpointButtonView"];
  [v23 setIsAccessibilityElement:1];
  [v23 setAccessibilityRespondsToUserInteraction:0];
  v4 = v23;
  v5 = accessibilityLocalizedString(@"dictation.key");
  [v4 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  v6 = v23;
  v7 = accessibilityLocalizedString(@"dictation.key.hint");
  [v6 setAccessibilityHint:?];
  MEMORY[0x29EDC9740](v7);
  objc_storeStrong(&v23, 0);
}

- (UIDictationLayoutViewAccessibility)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6[1] = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = UIDictationLayoutViewAccessibility;
  v7 = [(UIDictationLayoutViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6[0] = MEMORY[0x29EDC9748](v7);
  [v6[0] _accessibilityLoadAccessibilityInformation];
  v4 = MEMORY[0x29EDC9748](v6[0]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

@end