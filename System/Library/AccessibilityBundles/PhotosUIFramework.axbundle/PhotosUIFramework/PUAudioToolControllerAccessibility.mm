@interface PUAudioToolControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUAudioToolControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = PUAudioToolControllerAccessibility;
  [(PUAudioToolControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PUAudioToolControllerAccessibility *)self safeSwiftValueForKey:@"muteButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_1];
  objc_initWeak(&location, v4);
  v5 = MEMORY[0x29EDCA5F8];
  v6 = 3221225472;
  v7 = __80__PUAudioToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8 = &unk_29F2E8158;
  objc_copyWeak(&v9, &location);
  [v4 _setAccessibilityValueBlock:&v5];
  [v4 _setAccessibilityTraitsBlock:{&__block_literal_global_493, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __80__PUAudioToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
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

@end