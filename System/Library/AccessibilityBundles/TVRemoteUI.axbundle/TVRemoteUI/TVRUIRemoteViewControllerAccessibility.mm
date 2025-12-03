@interface TVRUIRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axSiriHintEnabled;
- (BOOL)_axVolumeHintEnabled;
- (id)_axButtonHintText;
- (id)_axHintsViewController;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)clearMessageContent;
- (void)showLoadingSpinner;
- (void)showSearchingSpinner;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRUIRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"devicePickerViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"touchpadViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"activeDevice" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"messageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRMessageView" hasInstanceMethod:@"currentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"showLoadingSpinner" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"showSearchingSpinner" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"clearMessageContent" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"tapToRadarButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIRemoteViewController" hasInstanceMethod:@"messageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUITouchpadViewController" hasInstanceMethod:@"touchpadView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"titleButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"isDevicePickerShowing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TVRUITouchpadViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"TVRUIHintsViewController" hasInstanceMethod:@"allowSiriHint" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TVRUIHintsViewController" hasInstanceMethod:@"allowVolumeHint" withFullSignature:{"B", 0}];
  if (NSClassFromString(&cfstr_Tvremoteviewco.isa))
  {
    [validationsCopy validateClass:@"TVRemoteViewController" hasInstanceMethod:@"hintsViewController" withFullSignature:{"@", 0}];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v23.receiver = self;
  v23.super_class = TVRUIRemoteViewControllerAccessibility;
  [(TVRUIRemoteViewControllerAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"devicePickerViewController"];
  v4 = [v3 safeUIViewForKey:@"titleView"];

  v5 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"touchpadViewController"];
  v6 = [v5 safeUIViewForKey:@"touchpadView"];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v17[3] = &unk_29F308F90;
  objc_copyWeak(&v19, &from);
  v7 = v4;
  v18 = v7;
  objc_copyWeak(&v20, &location);
  [v6 _setAccessibilityFrameBlock:v17];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v15[3] = &unk_29F308F68;
  objc_copyWeak(&v16, &location);
  [v6 _setIsAccessibilityElementBlock:v15];
  v8 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"tapToRadarButton"];
  [v8 setAccessibilityLabel:@"Tap to Radar"];

  v9 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKeyPath:@"devicePickerViewController.titleButton"];
  _axButtonHintText = [(TVRUIRemoteViewControllerAccessibility *)self _axButtonHintText];
  [v9 setAccessibilityHint:_axButtonHintText];

  v11 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"_messageView"];
  v12 = [v11 safeUIViewForKey:@"currentView"];

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v13[3] = &unk_29F308F40;
  objc_copyWeak(&v14, &location);
  [v12 _setAccessibilityLabelBlock:v13];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

double __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained frame];
  [a1[4] frame];
  AX_CGRectBySubtractingRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_loadWeakRetained(a1 + 6);
  v12 = [v11 safeValueForKey:@"touchpadViewController"];
  v13 = [v12 safeUIViewForKey:@"view"];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  *&v14 = UIAccessibilityConvertFrameToScreenCoordinates(v16, v13);

  return v14;
}

uint64_t __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"devicePickerViewController"];
  if ([v3 safeBoolForKey:@"isDevicePickerShowing"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 safeValueForKey:@"activeDevice"];
    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 safeValueForKey:@"_messageView"];
      v9 = [v8 safeValueForKey:@"currentView"];
      v4 = [v9 _accessibilityViewIsVisible] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_messageView"];
  v3 = [v2 safeUIViewForKey:@"currentView"];

  v4 = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
  v5 = MEMORY[0x29ED3BAD0]();

  return v5;
}

uint64_t __84__TVRUIRemoteViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uilabel.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 isAccessibilityElement])
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_axHintsViewController
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  parentViewController = [v2 parentViewController];
  v4 = [parentViewController safeValueForKey:@"hintsViewController"];

  return v4;
}

- (BOOL)_axSiriHintEnabled
{
  _axHintsViewController = [(TVRUIRemoteViewControllerAccessibility *)self _axHintsViewController];
  v3 = [_axHintsViewController safeBoolForKey:@"allowSiriHint"];

  return v3;
}

- (BOOL)_axVolumeHintEnabled
{
  _axHintsViewController = [(TVRUIRemoteViewControllerAccessibility *)self _axHintsViewController];
  v3 = [_axHintsViewController safeBoolForKey:@"allowVolumeHint"];

  return v3;
}

- (id)_axButtonHintText
{
  array = [MEMORY[0x29EDB8DE8] array];
  if ([(TVRUIRemoteViewControllerAccessibility *)self _axSiriHintEnabled])
  {
    v4 = accessibilityLocalizedString(@"tv.remote.hint.siri.text");
    [array addObject:v4];
  }

  if ([(TVRUIRemoteViewControllerAccessibility *)self _axVolumeHintEnabled])
  {
    v5 = accessibilityLocalizedString(@"tv.remote.hint.volume.text");
    [array addObject:v5];
  }

  v6 = MEMORY[0x29ED3BAD0](array);

  return v6;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVRUIRemoteViewControllerAccessibility;
  [(TVRUIRemoteViewControllerAccessibility *)&v3 viewWillLayoutSubviews];
  [(TVRUIRemoteViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)showLoadingSpinner
{
  v5.receiver = self;
  v5.super_class = TVRUIRemoteViewControllerAccessibility;
  [(TVRUIRemoteViewControllerAccessibility *)&v5 showLoadingSpinner];
  v3 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"_messageView"];
  v4 = [v3 safeUIViewForKey:@"currentView"];

  [v4 setIsAccessibilityElement:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
}

- (void)showSearchingSpinner
{
  v5.receiver = self;
  v5.super_class = TVRUIRemoteViewControllerAccessibility;
  [(TVRUIRemoteViewControllerAccessibility *)&v5 showSearchingSpinner];
  v3 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"_messageView"];
  v4 = [v3 safeUIViewForKey:@"currentView"];

  [v4 setIsAccessibilityElement:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
}

- (void)clearMessageContent
{
  v5.receiver = self;
  v5.super_class = TVRUIRemoteViewControllerAccessibility;
  [(TVRUIRemoteViewControllerAccessibility *)&v5 clearMessageContent];
  v3 = [(TVRUIRemoteViewControllerAccessibility *)self safeValueForKey:@"_messageView"];
  v4 = [v3 safeUIViewForKey:@"currentView"];

  [v4 setIsAccessibilityElement:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end