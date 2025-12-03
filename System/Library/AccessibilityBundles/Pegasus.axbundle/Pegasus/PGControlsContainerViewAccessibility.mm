@interface PGControlsContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_controlsShouldAutoHide;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PGControlsContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceMethod:@"_setPrefersControlsHidden:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceMethod:@"_controlsShouldAutoHide" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PGControlsView"];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceVariable:@"_controlsView" withType:"PGControlsView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceMethod:@"prefersControlsHidden" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PGControlsViewModel"];
  [validationsCopy validateClass:@"PGControlsContainerView" hasInstanceVariable:@"_viewModel" withType:"PGControlsViewModel"];
  [validationsCopy validateClass:@"PGControlsViewModelValues"];
  [validationsCopy validateClass:@"PGControlsViewModel" hasInstanceVariable:@"_values" withType:"PGControlsViewModelValues"];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"restoreButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"cancelButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"actionButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"skipBackButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGControlsViewModelValues" hasInstanceMethod:@"skipForwardButtonAccessibilityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_restoreButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_cancelButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_skipBackButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_actionButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_skipForwardButton" withType:"PGButtonView"];
  [validationsCopy validateClass:@"PGControlsView" hasInstanceVariable:@"_liveIndicatorBadgeButton" withType:"PGButtonView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v41 = *MEMORY[0x29EDCA608];
  v39.receiver = self;
  v39.super_class = PGControlsContainerViewAccessibility;
  [(PGControlsContainerViewAccessibility *)&v39 _accessibilityLoadAccessibilityInformation];
  v3 = [(PGControlsContainerViewAccessibility *)self safeValueForKey:@"_controlsView"];
  objc_initWeak(&location, self);
  v4 = [v3 safeValueForKey:@"_cancelButton"];
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v36[3] = &unk_29F2E3B18;
  objc_copyWeak(&v37, &location);
  [v4 _setAccessibilityLabelBlock:v36];

  v5 = [v3 safeValueForKey:@"_skipBackButton"];
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v34[3] = &unk_29F2E3B18;
  objc_copyWeak(&v35, &location);
  [v5 _setAccessibilityLabelBlock:v34];

  v6 = [v3 safeValueForKey:@"_skipForwardButton"];
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v32[3] = &unk_29F2E3B18;
  objc_copyWeak(&v33, &location);
  [v6 _setAccessibilityLabelBlock:v32];

  v7 = [v3 safeValueForKey:@"_restoreButton"];
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v30[3] = &unk_29F2E3B18;
  objc_copyWeak(&v31, &location);
  [v7 _setAccessibilityLabelBlock:v30];

  v8 = [v3 safeValueForKey:@"_actionButton"];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v28[3] = &unk_29F2E3B18;
  objc_copyWeak(&v29, &location);
  [v8 _setAccessibilityLabelBlock:v28];

  v9 = [v3 safeValueForKey:@"_liveIndicatorBadgeButton"];
  v10 = accessibilityLocalizedString(@"pip.live");
  [v9 setAccessibilityLabel:v10];

  v11 = MEMORY[0x29EDB8D80];
  v12 = [v3 safeValueForKey:@"_cancelButton"];
  v13 = [v3 safeValueForKey:@"_skipBackButton"];
  v14 = [v3 safeValueForKey:@"_skipForwardButton"];
  v15 = [v3 safeValueForKey:@"_restoreButton"];
  v16 = [v3 safeValueForKey:@"_actionButton"];
  v17 = [v11 axArrayByIgnoringNilElementsWithCount:{5, v12, v13, v14, v15, v16}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v19)
  {
    v20 = *v25;
    v21 = *MEMORY[0x29EDC7F70];
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * v22) setAccessibilityTraits:{v21 | objc_msgSend(*(*(&v24 + 1) + 8 * v22), "accessibilityTraits")}];
        ++v22;
      }

      while (v19 != v22);
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v19);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x29EDCA608];
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"cancelButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"skipBackButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"skipForwardButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"restoreButtonAccessibilityIdentifier"];

  return v4;
}

id __82__PGControlsContainerViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_viewModel"];
  v3 = [v2 safeValueForKey:@"_values"];
  v4 = [v3 safeStringForKey:@"actionButtonAccessibilityIdentifier"];

  return v4;
}

- (BOOL)_controlsShouldAutoHide
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0 || _AXSCommandAndControlEnabled())
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PGControlsContainerViewAccessibility;
  return [(PGControlsContainerViewAccessibility *)&v4 _controlsShouldAutoHide];
}

@end