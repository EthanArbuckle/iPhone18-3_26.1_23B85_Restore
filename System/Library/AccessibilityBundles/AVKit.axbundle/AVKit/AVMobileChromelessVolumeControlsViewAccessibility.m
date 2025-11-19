@interface AVMobileChromelessVolumeControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AVMobileChromelessVolumeControlsViewAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilitySliderVolume;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AVMobileChromelessVolumeControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceVariable:@"_volumeButton" withType:"AVMobileVolumeChromelessButtonControl"];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceVariable:@"_volumeSlider" withType:"AVMobileChromelessSlider"];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceMethod:@"volume" withFullSignature:{"d", 0}];
  [v3 validateClass:@"AVMobileChromelessControlsViewController" hasInstanceMethod:@"volumeControlsView:volumeDidChangeTo:" withFullSignature:{"v", "@", "d", 0}];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceMethod:@"_setVolume:forUpdateReason:" withFullSignature:{"v", "d", "Q", 0}];
  [v3 validateClass:@"AVMobileChromelessVolumeControlsView" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18.receiver = self;
  v18.super_class = AVMobileChromelessVolumeControlsViewAccessibility;
  [(AVMobileChromelessVolumeControlsViewAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(AVMobileChromelessVolumeControlsViewAccessibility *)self safeValueForKey:@"volumeButton"];
  objc_initWeak(&v16, v3);

  v4 = objc_loadWeakRetained(&v16);
  v5 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v5 | *MEMORY[0x29EDC7F60]];

  v6 = objc_loadWeakRetained(&v16);
  [v6 _setAccessibilityLabelBlock:&__block_literal_global_2];

  v7 = objc_loadWeakRetained(&v16);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v14[3] = &unk_29F299040;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  [v7 _setAccessibilityValueBlock:v14];

  v8 = objc_loadWeakRetained(&v16);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v12[3] = &unk_29F298E88;
  objc_copyWeak(&v13, &location);
  [v8 _setAccessibilityIncrementBlock:v12];

  v9 = objc_loadWeakRetained(&v16);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v10[3] = &unk_29F298E88;
  objc_copyWeak(&v11, &location);
  [v9 _setAccessibilityDecrementBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

id __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
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

void __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeCGFloatForKey:@"volume"];
  AXPerformSafeBlock();
}

void __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setVolume:0 forUpdateReason:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 volumeControlsView:*(a1 + 32) volumeDidChangeTo:*(a1 + 40)];
}

void __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained safeCGFloatForKey:@"volume"];
  AXPerformSafeBlock();
}

void __95__AVMobileChromelessVolumeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _setVolume:0 forUpdateReason:*(a1 + 40)];
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 volumeControlsView:*(a1 + 32) volumeDidChangeTo:*(a1 + 40)];
}

- (id)_accessibilitySliderVolume
{
  v3 = [(AVMobileChromelessVolumeControlsViewAccessibility *)self safeValueForKey:@"volumeSlider"];
  v4 = [v3 accessibilityUserDefinedValue];

  if (v4)
  {
    [v3 accessibilityUserDefinedValue];
  }

  else
  {
    [(AVMobileChromelessVolumeControlsViewAccessibility *)self safeFloatForKey:@"volume"];
    AXFormatFloatWithPercentage();
  }
  v5 = ;

  return v5;
}

- (AVMobileChromelessVolumeControlsViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessVolumeControlsViewAccessibility;
  v3 = [(AVMobileChromelessVolumeControlsViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AVMobileChromelessVolumeControlsViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end