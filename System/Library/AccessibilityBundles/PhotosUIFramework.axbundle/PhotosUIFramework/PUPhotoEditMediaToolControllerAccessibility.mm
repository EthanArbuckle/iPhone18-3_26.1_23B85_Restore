@interface PUPhotoEditMediaToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateTrimControlAndToolbarButtons;
@end

@implementation PUPhotoEditMediaToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceVariable:@"_muteButton" withType:"PUPhotoEditToolbarButton"];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceVariable:@"_livePhotoButton" withType:"PUPhotoEditToolActivationButton"];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceVariable:@"_portraitVideoButton" withType:"PUPhotoEditToolActivationButton"];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceVariable:@"_autoFocusButton" withType:"PUPhotoEditToolbarButton"];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceVariable:@"_rateButton" withType:"PUPhotoEditToolbarButton"];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceMethod:@"_updateTrimControlAndToolbarButtons" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceMethod:@"reloadToolbarButtons:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceMethod:@"_updateLivePhotoButtonAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PUPhotoEditMediaToolController" hasInstanceMethod:@"_updateMuteButtonAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v35.receiver = self;
  v35.super_class = PUPhotoEditMediaToolControllerAccessibility;
  [(PUPhotoEditMediaToolControllerAccessibility *)&v35 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PUPhotoEditMediaToolControllerAccessibility *)self safeValueForKey:@"_muteButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_9];
  objc_initWeak(&location, v4);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v32[3] = &unk_29F2E8158;
  objc_copyWeak(&v33, &location);
  [v4 _setAccessibilityValueBlock:v32];
  v6 = [v4 accessibilityTraits];
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v30[3] = &unk_29F2E8408;
  objc_copyWeak(v31, &location);
  v31[1] = v6;
  [v4 _setAccessibilityTraitsBlock:v30];
  LOBYTE(from) = 0;
  objc_opt_class();
  v7 = [(PUPhotoEditMediaToolControllerAccessibility *)self safeValueForKey:@"_portraitVideoButton"];
  v8 = __UIAccessibilityCastAsClass();

  [v8 setAccessibilityTraits:v5];
  [v8 _setAccessibilityLabelBlock:&__block_literal_global_523];
  objc_initWeak(&from, v8);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 3221225472;
  v27[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v27[3] = &unk_29F2E8158;
  objc_copyWeak(&v28, &from);
  [v8 _setAccessibilityValueBlock:v27];
  v9 = [v8 accessibilityTraits];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
  v25[3] = &unk_29F2E8408;
  objc_copyWeak(v26, &from);
  v26[1] = v9;
  [v8 _setAccessibilityTraitsBlock:v25];
  LOBYTE(v24) = 0;
  objc_opt_class();
  v10 = [(PUPhotoEditMediaToolControllerAccessibility *)self safeValueForKey:@"_autoFocusButton"];
  v11 = __UIAccessibilityCastAsClass();

  [v11 setAccessibilityTraits:v5];
  [v11 _setAccessibilityLabelBlock:&__block_literal_global_534];
  objc_initWeak(&v24, v11);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
  v22[3] = &unk_29F2E8158;
  objc_copyWeak(&v23, &v24);
  [v11 _setAccessibilityValueBlock:v22];
  v12 = [v11 accessibilityTraits];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_9;
  v20[3] = &unk_29F2E8408;
  objc_copyWeak(v21, &v24);
  v21[1] = v12;
  [v11 _setAccessibilityTraitsBlock:v20];
  objc_opt_class();
  v13 = [(PUPhotoEditMediaToolControllerAccessibility *)self safeValueForKey:@"_rateButton"];
  v14 = __UIAccessibilityCastAsClass();

  [v14 setAccessibilityTraits:v5];
  [v14 _setAccessibilityLabelBlock:&__block_literal_global_545];
  LOBYTE(v19) = 0;
  objc_opt_class();
  v15 = [(PUPhotoEditMediaToolControllerAccessibility *)self safeValueForKey:@"_livePhotoButton"];
  v16 = __UIAccessibilityCastAsClass();

  [v16 setAccessibilityTraits:v5];
  [v16 _setAccessibilityLabelBlock:&__block_literal_global_550];
  objc_initWeak(&v19, v16);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_12;
  v17[3] = &unk_29F2E8158;
  objc_copyWeak(&v18, &v19);
  [v16 _setAccessibilityValueBlock:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v19);

  objc_destroyWeak(v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v24);

  objc_destroyWeak(v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);

  objc_destroyWeak(v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

id __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"volume.label.off";
  }

  else
  {
    v2 = @"volume.label.on";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

uint64_t __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isEnabled];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FA8];
  }

  return v4 | v5;
}

id __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"cinematic.on";
  }

  else
  {
    v2 = @"cinematic.off";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

uint64_t __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isEnabled];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FA8];
  }

  return v4 | v5;
}

id __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"cinematic.auto";
  }

  else
  {
    v2 = @"cinematic.manual";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

uint64_t __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isEnabled];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *MEMORY[0x29EDC7FA8];
  }

  return v4 | v5;
}

id __89__PUPhotoEditMediaToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSelected])
  {
    v2 = @"iris.tool.on";
  }

  else
  {
    v2 = @"iris.tool.off";
  }

  v3 = accessibilityPULocalizedString(v2);

  return v3;
}

- (void)_updateTrimControlAndToolbarButtons
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolControllerAccessibility;
  [(PUPhotoEditMediaToolControllerAccessibility *)&v3 _updateTrimControlAndToolbarButtons];
  [(PUPhotoEditMediaToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end