@interface AVTransportControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AVTransportControlsViewAccessibility)initWithFrame:(CGRect)frame styleSheet:(id)sheet;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVTransportControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceMethod:@"elapsedTimeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceMethod:@"timeRemainingLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceMethod:@"scrubber" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceVariable:@"_standardPlayPauseButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceVariable:@"_skipBackButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceVariable:@"_skipForwardButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceVariable:@"_startRightwardContentTransitionButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceVariable:@"_startLeftwardContentTransitionButton" withType:"AVButton"];
  [validationsCopy validateClass:@"AVLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"AVTransportControlsView" hasInstanceMethod:@"initWithFrame:styleSheet:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
}

- (AVTransportControlsViewAccessibility)initWithFrame:(CGRect)frame styleSheet:(id)sheet
{
  v6.receiver = self;
  v6.super_class = AVTransportControlsViewAccessibility;
  v4 = [(AVTransportControlsViewAccessibility *)&v6 initWithFrame:sheet styleSheet:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AVTransportControlsViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v40.receiver = self;
  v40.super_class = AVTransportControlsViewAccessibility;
  [(AVTransportControlsViewAccessibility *)&v40 _accessibilityLoadAccessibilityInformation];
  v3 = [(AVTransportControlsViewAccessibility *)self safeUIViewForKey:@"elapsedTimeLabel"];
  objc_initWeak(&location, v3);

  v4 = objc_loadWeakRetained(&location);
  v5 = accessibilityLocalizedString(@"elapsed.label");
  [v4 setAccessibilityLabel:v5];

  v6 = *MEMORY[0x29EDC7FD0];
  v7 = *MEMORY[0x29EDC7FF0];
  v8 = objc_loadWeakRetained(&location);
  [v8 setAccessibilityTraits:v7 | v6];

  v9 = objc_loadWeakRetained(&location);
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3221225472;
  v37[2] = __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v37[3] = &unk_29F298F00;
  objc_copyWeak(&v38, &location);
  [v9 _setAccessibilityValueBlock:v37];

  v10 = [(AVTransportControlsViewAccessibility *)self safeUIViewForKey:@"timeRemainingLabel"];
  objc_initWeak(&from, v10);

  v11 = objc_loadWeakRetained(&from);
  [v11 setAccessibilityTraits:v7 | v6];

  v12 = objc_loadWeakRetained(&from);
  v13 = accessibilityLocalizedString(@"remaining.label");
  [v12 setAccessibilityLabel:v13];

  v14 = objc_loadWeakRetained(&from);
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v34[3] = &unk_29F298F00;
  objc_copyWeak(&v35, &from);
  [v14 _setAccessibilityValueBlock:v34];

  v15 = [(AVTransportControlsViewAccessibility *)self safeValueForKey:@"scrubber"];
  v29 = MEMORY[0x29EDCA5F8];
  v30 = 3221225472;
  v31 = __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v32 = &unk_29F298F00;
  objc_copyWeak(&v33, &location);
  [v15 _setAccessibilityValueBlock:&v29];

  v16 = [(AVTransportControlsViewAccessibility *)self safeValueForKey:@"_standardPlayPauseButton"];
  [v16 accessibilitySetIdentification:@"axPlayPauseButton"];

  v17 = [(AVTransportControlsViewAccessibility *)self safeValueForKey:@"_skipBackButton"];
  v18 = MEMORY[0x29EDBA0F8];
  v19 = accessibilityLocalizedString(@"media.skip.backwards");
  v20 = [v18 localizedStringWithFormat:v19, 0x402E000000000000, v29, v30, v31, v32];
  [v17 setAccessibilityLabel:v20];

  v21 = [(AVTransportControlsViewAccessibility *)self safeValueForKey:@"_skipForwardButton"];
  v22 = MEMORY[0x29EDBA0F8];
  v23 = accessibilityLocalizedString(@"media.skip.forward");
  0x402E000000000000 = [v22 localizedStringWithFormat:v23, 0x402E000000000000];
  [v21 setAccessibilityLabel:0x402E000000000000];

  v25 = accessibilityLocalizedString(@"next.track");
  v26 = [(AVTransportControlsViewAccessibility *)self safeUIViewForKey:@"_startRightwardContentTransitionButton"];
  [v26 setAccessibilityLabel:v25];

  v27 = accessibilityLocalizedString(@"previous.track");
  v28 = [(AVTransportControlsViewAccessibility *)self safeUIViewForKey:@"_startLeftwardContentTransitionButton"];
  [v28 setAccessibilityLabel:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

id __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"text"];

  return v2;
}

id __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"text"];

  return v2;
}

id __82__AVTransportControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"text"];

  return v2;
}

@end