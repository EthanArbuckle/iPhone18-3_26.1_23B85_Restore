@interface HUCameraControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)nextControlItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadAccessibilityInformationForDayOrTimeLabel:(id)label;
- (void)configureClipScrubberViewController;
- (void)viewDidLoad;
@end

@implementation HUCameraControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUCameraController" hasInstanceVariable:@"_dayLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HULegibilityLabel" hasInstanceVariable:@"_lookasideLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceVariable:@"_cameraStatusView" withType:"HUCameraStatusOverlayView"];
  [validationsCopy validateClass:@"HUCameraStatusOverlayView" hasInstanceMethod:@"statusLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceMethod:@"homeHasMultipleCameraProfiles" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceMethod:@"nextControlItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceVariable:@"_nextControlItem" withType:"AVHomeLoadingButtonControlItem"];
  [validationsCopy validateClass:@"AVHomeLoadingButtonControlItem" hasInstanceVariable:@"_loadingButtonView" withType:"AVLoadingButtonView"];
  [validationsCopy validateClass:@"AVLoadingButtonView" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"hu_dismissViewControllerAnimated:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"AVPlayerViewController" hasInstanceMethod:@"customControlItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVControlItem" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUCameraController" hasInstanceMethod:@"configureClipScrubberViewController" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v31 = *MEMORY[0x29EDCA608];
  v29.receiver = self;
  v29.super_class = HUCameraControllerAccessibility;
  [(HUCameraControllerAccessibility *)&v29 _accessibilityLoadAccessibilityInformation];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [(HUCameraControllerAccessibility *)self safeArrayForKey:@"customControlItems"];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = [v6 safeStringForKey:@"title"];
        v8 = [v7 isEqualToString:@"Settings"];

        if (v8)
        {
          v9 = accessibilityHomeUILocalizedString(@"settings.button");
          [v6 setAccessibilityLabel:v9];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v3);
  }

  v10 = [(HUCameraControllerAccessibility *)self safeValueForKey:@"_cameraStatusView"];
  objc_initWeak(&location, v10);

  v11 = objc_loadWeakRetained(&location);
  v12 = [v11 _accessibilityFindSubviewDescendant:&__block_literal_global_2];

  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v22[3] = &unk_29F2C6B48;
  objc_copyWeak(&v23, &location);
  [v12 _setAccessibilityLabelBlock:v22];
  objc_initWeak(&from, self);
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v19[3] = &unk_29F2C6BB8;
  objc_copyWeak(&v20, &from);
  [v12 _setAccessibilityTraitsBlock:v19];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v17[3] = &unk_29F2C6B48;
  objc_copyWeak(&v18, &from);
  [v12 _setAccessibilityHintBlock:v17];
  v13 = [(HUCameraControllerAccessibility *)self safeValueForKey:@"_dayLabel"];
  [(HUCameraControllerAccessibility *)self _axLoadAccessibilityInformationForDayOrTimeLabel:v13];

  v14 = [(HUCameraControllerAccessibility *)self safeValueForKey:@"_timeLabel"];
  [(HUCameraControllerAccessibility *)self _axLoadAccessibilityInformationForDayOrTimeLabel:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"statusLabel"];
  v3 = [v2 text];

  return v3;
}

uint64_t __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"homeHasMultipleCameraProfiles"];
  v3 = MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  v4 = *v3;

  return v4;
}

id __77__HUCameraControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"homeHasMultipleCameraProfiles"])
  {
    v2 = accessibilityHomeUILocalizedString(@"camera.picker.button");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axLoadAccessibilityInformationForDayOrTimeLabel:(id)label
{
  labelCopy = label;
  [labelCopy setIsAccessibilityElement:1];
  v4 = [labelCopy safeValueForKey:@"_lookasideLabel"];
  objc_initWeak(&location, v4);

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __84__HUCameraControllerAccessibility__axLoadAccessibilityInformationForDayOrTimeLabel___block_invoke;
  v7[3] = &unk_29F2C6B48;
  objc_copyWeak(&v8, &location);
  [labelCopy _setAccessibilityLabelBlock:v7];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __84__HUCameraControllerAccessibility__axLoadAccessibilityInformationForDayOrTimeLabel___block_invoke_2;
  v5[3] = &unk_29F2C6C00;
  objc_copyWeak(&v6, &location);
  [labelCopy _setAccessibilityFrameBlock:v5];
  [labelCopy _accessibilitySetBoolValue:1 forKey:AXHomeUIUseAccessibilityFrameForHitTest];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

id __84__HUCameraControllerAccessibility__axLoadAccessibilityInformationForDayOrTimeLabel___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7378];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityLabel];
  v4 = AXAttributedStringForBetterPronuciation();

  return v4;
}

double __84__HUCameraControllerAccessibility__axLoadAccessibilityInformationForDayOrTimeLabel___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;
  v5 = v4;

  return v3 + v5 * 0.4 * 0.5;
}

void __61__HUCameraControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v1 = [v2 hu_dismissViewControllerAnimated:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUCameraControllerAccessibility;
  [(HUCameraControllerAccessibility *)&v3 viewDidLoad];
  [(HUCameraControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)configureClipScrubberViewController
{
  v3.receiver = self;
  v3.super_class = HUCameraControllerAccessibility;
  [(HUCameraControllerAccessibility *)&v3 configureClipScrubberViewController];
  [(HUCameraControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)nextControlItem
{
  v6.receiver = self;
  v6.super_class = HUCameraControllerAccessibility;
  nextControlItem = [(HUCameraControllerAccessibility *)&v6 nextControlItem];
  MEMORY[0x29C2DA460](@"AVHomeLoadingButtonControlItem");
  if (objc_opt_isKindOfClass())
  {
    v3 = [nextControlItem safeValueForKeyPath:@"_loadingButtonView.button"];
    v4 = accessibilityHomeUILocalizedString(@"camera.clip.next.button.share");
    [v3 setAccessibilityHint:v4];
  }

  return nextControlItem;
}

@end