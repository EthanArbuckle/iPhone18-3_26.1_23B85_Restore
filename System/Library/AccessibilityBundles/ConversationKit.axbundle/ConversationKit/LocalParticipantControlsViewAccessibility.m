@interface LocalParticipantControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (int64_t)_axDevicePosition;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation LocalParticipantControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"effectsButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"cameraBlurButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"cinematicFramingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"cameraFlipButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.LocalParticipantControlsView" hasInstanceMethod:@"collapseButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19.receiver = self;
  v19.super_class = LocalParticipantControlsViewAccessibility;
  [(LocalParticipantControlsViewAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v3 = [(LocalParticipantControlsViewAccessibility *)self safeValueForKey:@"effectsButton"];
  v4 = accessibilityLocalizedString(@"camera.effects");
  [v3 setAccessibilityLabel:v4];

  v5 = [(LocalParticipantControlsViewAccessibility *)self safeValueForKey:@"cameraBlurButton"];
  v6 = accessibilityLocalizedString(@"camera.blur.background");
  [v5 setAccessibilityLabel:v6];

  v7 = [(LocalParticipantControlsViewAccessibility *)self safeValueForKey:@"cinematicFramingButton"];
  v8 = accessibilityLocalizedString(@"camera.center.stage");
  [v7 setAccessibilityLabel:v8];

  objc_initWeak(&location, self);
  v9 = [(LocalParticipantControlsViewAccessibility *)self safeValueForKey:@"collapseButton"];
  v10 = accessibilityLocalizedString(@"minimize.video");
  [v9 setAccessibilityLabel:v10];

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v16[3] = &unk_29F2B7D20;
  objc_copyWeak(&v17, &location);
  [v9 _setAccessibilityActivateBlock:v16];
  v11 = [(LocalParticipantControlsViewAccessibility *)self safeValueForKey:@"cameraFlipButton"];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v14[3] = &unk_29F2B7B80;
  objc_copyWeak(&v15, &location);
  [v11 _setAccessibilityLabelBlock:v14];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v12[3] = &unk_29F2B7D20;
  objc_copyWeak(&v13, &location);
  [v11 _setAccessibilityActivateBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

uint64_t __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"collapseButton"];
  [v2 sendActionsForControlEvents:64];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

id __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axDevicePosition] == 2)
  {
    v2 = @"camera.show.back";
  }

  else
  {
    v2 = @"camera.show.front";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

uint64_t __87__LocalParticipantControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"cameraFlipButton"];
  [v2 sendActionsForControlEvents:64];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

- (int64_t)_axDevicePosition
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformBlockSynchronouslyOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __62__LocalParticipantControlsViewAccessibility__axDevicePosition__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x29EDC6F78] sharedInstance];
  v2 = [v4 videoDeviceController];
  v3 = [v2 currentInputDevice];
  *(*(*(a1 + 32) + 8) + 24) = [v3 position];
}

@end