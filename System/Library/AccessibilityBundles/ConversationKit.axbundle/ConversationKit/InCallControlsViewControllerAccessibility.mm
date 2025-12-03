@interface InCallControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (int64_t)_axDevicePosition;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation InCallControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasSwiftField:@"delegate" withSwiftType:"Optional<InCallControlsViewControllerDelegate>"];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityHotdog" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityJoinLeaveButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityEffectsButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityCameraButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityCameraLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"accessibilityDisableVideoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"shouldShowLeaveButton" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MultiwayViewControllerAccessibility" hasInstanceMethod:@"_accessibilityExpandControls" withFullSignature:{"v", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  if (([(InCallControlsViewControllerAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
  {
    return 0;
  }

  v4 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityEffectsButton"];
  accessibilityTraits = [v4 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & ~accessibilityTraits) != 0)
  {
    accessibilityActivate = 0;
  }

  else
  {
    accessibilityActivate = [v4 accessibilityActivate];
  }

  return accessibilityActivate;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v31.receiver = self;
  v31.super_class = InCallControlsViewControllerAccessibility;
  [(InCallControlsViewControllerAccessibility *)&v31 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"view"];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v28[3] = &unk_29F2B7D20;
  objc_copyWeak(&v29, &location);
  [v3 _setAccessibilityViewIsModalBlock:v28];

  v4 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityHotdog"];
  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5 = accessibilityLocalizedString(@"controls.grabber");
  [v4 setAccessibilityLabel:v5];

  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v26[3] = &unk_29F2B7B80;
  objc_copyWeak(&v27, &location);
  [v4 _setAccessibilityValueBlock:v26];
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v24[3] = &unk_29F2B7B80;
  objc_copyWeak(&v25, &location);
  [v4 _setAccessibilityHintBlock:v24];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v22[3] = &unk_29F2B7D20;
  objc_copyWeak(&v23, &location);
  [v4 _setAccessibilityActivateBlock:v22];
  v6 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityJoinLeaveButton"];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
  v20[3] = &unk_29F2B7B80;
  objc_copyWeak(&v21, &location);
  [v6 _setAccessibilityLabelBlock:v20];

  v7 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityCameraButton"];
  objc_initWeak(&from, v7);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v16[3] = &unk_29F2B7D98;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  [v7 _setAccessibilityLabelBlock:v16];
  v8 = [(InCallControlsViewControllerAccessibility *)self safeValueForKey:@"accessibilityDisableVideoButton"];
  objc_initWeak(&v15, v8);
  v9 = accessibilityLocalizedString(@"camera");
  [v8 setAccessibilityLabel:v9];

  v10 = MEMORY[0x29EDCA5F8];
  v11 = 3221225472;
  v12 = __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
  v13 = &unk_29F2B7B80;
  objc_copyWeak(&v14, &v15);
  [v8 _setAccessibilityValueBlock:&v10];
  [v8 _setAccessibilityTraitsBlock:{&__block_literal_global_3, v10, v11, v12, v13}];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

uint64_t __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isExpanded"];

  return v2;
}

id __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isExpanded"])
  {
    v2 = @"grabber.expanded";
  }

  else
  {
    v2 = @"grabber.minimized";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

id __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isExpanded"])
  {
    v2 = @"controls.grabber.hide.hint";
  }

  else
  {
    v2 = @"controls.grabber.expand.hint";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

uint64_t __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeSwiftValueForKey:@"delegate"];

  v4 = objc_loadWeakRetained((a1 + 32));
  LODWORD(WeakRetained) = [v4 safeBoolForKey:@"isExpanded"];

  if (WeakRetained)
  {
    v5 = [v3 accessibilityPerformEscape];
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = v3;
    AXPerformSafeBlock();

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"shouldShowLeaveButton"])
  {
    v2 = @"join.call";
  }

  else
  {
    v2 = @"leave.call";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

id __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityTraits];
  v4 = *MEMORY[0x29EDC7FA8] & v3;

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v4)
  {
    v7 = [v5 safeValueForKey:@"accessibilityCameraLabel"];
    v8 = [v7 accessibilityLabel];
  }

  else
  {
    if ([v5 _axDevicePosition] == 2)
    {
      v9 = @"camera.show.back";
    }

    else
    {
      v9 = @"camera.show.front";
    }

    v8 = accessibilityLocalizedString(v9);
  }

  return v8;
}

id __87__InCallControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isSelected"])
  {
    v2 = @"off";
  }

  else
  {
    v2 = @"on";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = InCallControlsViewControllerAccessibility;
  [(InCallControlsViewControllerAccessibility *)&v3 viewDidLoad];
  [(InCallControlsViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
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

void __62__InCallControlsViewControllerAccessibility__axDevicePosition__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x29EDC6F78] sharedInstance];
  v2 = [v4 videoDeviceController];
  v3 = [v2 currentInputDevice];
  *(*(*(a1 + 32) + 8) + 24) = [v3 position];
}

@end