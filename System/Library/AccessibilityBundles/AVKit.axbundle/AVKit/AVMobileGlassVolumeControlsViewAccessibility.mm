@interface AVMobileGlassVolumeControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySliderVolume;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleVolumeControlButtonTap;
@end

@implementation AVMobileGlassVolumeControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceVariable:@"_volumeButton" withType:"AVMobileGlassVolumeButtonControl"];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceVariable:@"_volumeSlider" withType:"AVMobileChromelessFluidSlider"];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceMethod:@"volume" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"AVMobileGlassControlsViewController" hasInstanceMethod:@"volumeControlsView:volumeDidChangeTo:" withFullSignature:{"v", "@", "d", 0}];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceMethod:@"_setVolume:forUpdateReason:" withFullSignature:{"v", "d", "Q", 0}];
  [validationsCopy validateClass:@"AVMobileGlassVolumeControlsView" hasInstanceMethod:@"_handleVolumeControlButtonTap" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = AVMobileGlassVolumeControlsViewAccessibility;
  [(AVMobileGlassVolumeControlsViewAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVMobileGlassVolumeControlsViewAccessibility *)self safeValueForKey:@"_volumeButton"];
  v4 = [(AVMobileGlassVolumeControlsViewAccessibility *)self safeValueForKey:@"_volumeSlider"];
  [v4 setIsAccessibilityElementBlock:&__block_literal_global_6];
  [v4 setAccessibilityValueBlock:&__block_literal_global_324];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | accessibilityTraits | *MEMORY[0x29EDC7F60]];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_326];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v10[3] = &unk_29F299040;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [v3 _setAccessibilityValueBlock:v10];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v8[3] = &unk_29F298E88;
  objc_copyWeak(&v9, &location);
  [v3 _setAccessibilityIncrementBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v6[3] = &unk_29F298E88;
  objc_copyWeak(&v7, &location);
  [v3 _setAccessibilityDecrementBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

id __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained safeBoolForKey:@"isMuted"])
  {
    accessibilityLocalizedString(@"volume.button.muted");
  }

  else
  {
    [*(a1 + 32) _accessibilitySliderVolume];
  }
  v3 = ;

  return v3;
}

void __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeCGFloatForKey:@"volume"];
  AXPerformSafeBlock();
}

void __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _setVolume:0 forUpdateReason:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 volumeControlsView:*(a1 + 32) volumeDidChangeTo:*(a1 + 40)];
}

void __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeCGFloatForKey:@"volume"];
  AXPerformSafeBlock();
}

void __90__AVMobileGlassVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _setVolume:0 forUpdateReason:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 volumeControlsView:*(a1 + 32) volumeDidChangeTo:*(a1 + 40)];
}

- (id)_accessibilitySliderVolume
{
  v3 = [(AVMobileGlassVolumeControlsViewAccessibility *)self safeValueForKey:@"_volumeSlider"];
  accessibilityUserDefinedValue = [v3 accessibilityUserDefinedValue];

  if (accessibilityUserDefinedValue)
  {
    [v3 accessibilityUserDefinedValue];
  }

  else
  {
    [(AVMobileGlassVolumeControlsViewAccessibility *)self safeFloatForKey:@"volume"];
    AXFormatFloatWithPercentage();
  }
  v5 = ;

  return v5;
}

- (void)_handleVolumeControlButtonTap
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassVolumeControlsViewAccessibility;
  [(AVMobileGlassVolumeControlsViewAccessibility *)&v5 _handleVolumeControlButtonTap];
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [(AVMobileGlassVolumeControlsViewAccessibility *)self safeUIViewForKey:@"_volumeButton"];
  UIAccessibilityPostNotification(v3, v4);
}

@end