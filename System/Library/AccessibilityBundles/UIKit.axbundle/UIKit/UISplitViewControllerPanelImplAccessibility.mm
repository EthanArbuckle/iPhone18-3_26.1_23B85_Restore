@interface UISplitViewControllerPanelImplAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisViewController;
- (id)displayModeButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdatePanelController;
- (void)_accessibilityUpdateSecondaryOnlyShortcutButtonItem;
- (void)_accessibilityUpdateSideBarToggleButtonItem;
- (void)_axApplyDisplayModeLabelToButtonItem:(void *)item;
- (void)_updateDisplayModeButtonItem;
- (void)loadView;
- (void)setViewControllers:(id)controllers;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation UISplitViewControllerPanelImplAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = @"UISplitViewControllerPanelImpl";
  v8 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = @"panelController";
  [location[0] validateClass:v5 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"_unspecifiedCompositionDisplayModeButtonItem" withFullSignature:{v8, 0}];
  v4 = "q";
  [location[0] validateClass:v5 hasInstanceMethod:@"_effectiveTargetDisplayMode" withFullSignature:0];
  v6 = "v";
  [location[0] validateClass:v5 hasInstanceMethod:@"loadView" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"setViewControllers:" withFullSignature:{v6, v8, 0}];
  [location[0] validateClass:v5 hasInstanceVariable:@"_svc" withType:"UISplitViewController"];
  [location[0] validateClass:v5 hasInstanceVariable:@"_sidebarToggleButtonItem" withType:"_UIFloatableBarButtonItem"];
  [location[0] validateClass:v5 hasInstanceVariable:@"_secondaryOnlyShortcutButtonItem" withType:"UIBarButtonItem"];
  v9 = "B";
  [location[0] validateClass:v5 hasInstanceMethod:@"viewDidAppear:" withFullSignature:{v6, "B", 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"displayMode" withFullSignature:{v4, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"style" withFullSignature:{v4, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:v3 withFullSignature:{v8, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"_handleFocusMovementDidFail:" withFullSignature:{v6, v8, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"showColumn:" withFullSignature:{v6, v4, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"hideColumn:" withFullSignature:{v6, v4, 0}];
  v7 = @"UIPanelController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"mainViewController" withFullSignature:{v8, 0}];
  [location[0] validateClass:@"UIBarButtonItem" hasInstanceMethod:@"_showsChevron" withFullSignature:{v9, 0}];
  objc_storeStrong(v11, v10);
}

- (void)loadView
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UISplitViewControllerPanelImplAccessibility;
  [(UISplitViewControllerPanelImplAccessibility *)&v4 loadView];
  objc_opt_class();
  v2 = [(UISplitViewControllerPanelImplAccessibility *)selfCopy safeValueForKey:@"_svc"];
  v3 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v2);
  [(UISplitViewControllerAccessibility *)v3 _axModalizeViewControllerViews];
  objc_storeStrong(&v3, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = UISplitViewControllerPanelImplAccessibility;
  [(UISplitViewControllerPanelImplAccessibility *)&v3 viewDidAppear:appear];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _accessibilityUpdatePanelController];
}

- (void)setViewControllers:(id)controllers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controllers);
  v5.receiver = selfCopy;
  v5.super_class = UISplitViewControllerPanelImplAccessibility;
  [(UISplitViewControllerPanelImplAccessibility *)&v5 setViewControllers:location[0]];
  objc_opt_class();
  v3 = [(UISplitViewControllerPanelImplAccessibility *)selfCopy safeValueForKey:@"_svc"];
  v4 = __UIAccessibilityCastAsSafeCategory();
  if ([v4 isViewLoaded])
  {
    [(UISplitViewControllerAccessibility *)v4 _axModalizeViewControllerViews];
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (id)displayModeButtonItem
{
  selfCopy = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UISplitViewControllerPanelImplAccessibility;
  v5[0] = [(UISplitViewControllerPanelImplAccessibility *)&v4 displayModeButtonItem];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _axApplyDisplayModeLabelToButtonItem:?];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)_axApplyDisplayModeLabelToButtonItem:(void *)item
{
  itemCopy = item;
  location = 0;
  objc_storeStrong(&location, a2);
  if (itemCopy && location)
  {
    v7 = 0;
    if ([itemCopy safeIntegerForKey:@"style"] == 1)
    {
      v5 = [itemCopy safeValueForKey:@"_effectiveTargetDisplayMode"];
      integerValue = [v5 integerValue];
      MEMORY[0x29EDC9740](v5);
      if (integerValue == 1)
      {
        v3 = location;
        v4 = accessibilityUIKitLocalizedString();
        [v3 setAccessibilityLabel:?];
        *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
        [location accessibilitySetIdentification:{@"DisplayMode", v2}];
        [location setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
        v7 = 1;
      }
    }

    if ((v7 & 1) == 0)
    {
      [location setAccessibilityLabel:?];
      [location accessibilitySetIdentification:0];
      [location setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7500]];
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)_updateDisplayModeButtonItem
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISplitViewControllerPanelImplAccessibility;
  [(UISplitViewControllerPanelImplAccessibility *)&v2 _updateDisplayModeButtonItem];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _accessibilityUpdatePanelController];
}

- (void)_accessibilityUpdateSideBarToggleButtonItem
{
  selfCopy = self;
  if (self)
  {
    v15 = 0;
    objc_opt_class();
    v5 = [selfCopy safeValueForKey:@"_sidebarToggleButtonItem"];
    v14 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v13 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    v16 = v13;
    if ([v13 safeBoolForKey:@"_showsChevron"])
    {
      [v16 _setAccessibilityLabelBlock:?];
      [v16 setAccessibilityIdentifier:0];
      [v16 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7500]];
    }

    else
    {
      objc_initWeak(&v12, selfCopy);
      v4 = v16;
      v6 = MEMORY[0x29EDCA5F8];
      v7 = -1073741824;
      v8 = 0;
      v9 = __90__UISplitViewControllerPanelImplAccessibility__accessibilityUpdateSideBarToggleButtonItem__block_invoke;
      v10 = &unk_29F30C9E8;
      objc_copyWeak(&v11, &v12);
      [v4 _setAccessibilityLabelBlock:&v6];
      v3 = v16;
      v2 = AXNoLoc_0(@"ToggleSidebar");
      [v3 setAccessibilityIdentifier:?];
      *&v1 = MEMORY[0x29EDC9740](v2).n128_u64[0];
      [v16 setAccessibilityTraits:{*MEMORY[0x29EDC7F70], v1}];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v12);
    }

    objc_storeStrong(&v16, 0);
  }
}

id __90__UISplitViewControllerPanelImplAccessibility__accessibilityUpdateSideBarToggleButtonItem__block_invoke(uint64_t a1)
{
  v22 = a1;
  v21 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained safeUnsignedIntegerForKey:@"displayMode"];
  MEMORY[0x29EDC9740](WeakRetained);
  v20 = v10;
  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 safeIntegerForKey:@"style"];
  MEMORY[0x29EDC9740](v12);
  v19 = v13;
  v18 = v13 == 1;
  v17 = v13 == 2;
  if (v13 != 1 || (v8 = 1, v20 != 2))
  {
    v7 = 0;
    if (v17)
    {
      v6 = 1;
      if (v20 != 4)
      {
        v6 = v20 == 5;
      }

      v7 = v6;
    }

    v8 = v7;
  }

  v16 = v8;
  if (!v18 || (v5 = 1, v20 != 1))
  {
    v4 = 0;
    if (v17)
    {
      v3 = 1;
      if (v20 != 2)
      {
        v3 = 1;
        if (v20 != 1)
        {
          v3 = 1;
          if (v20 != 3)
          {
            v3 = v20 == 6;
          }
        }
      }

      v4 = v3;
    }

    v5 = v4;
  }

  v15 = v5;
  location = 0;
  if (v16)
  {
    objc_storeStrong(&location, @"hide.sidebar");
  }

  else if (v15)
  {
    objc_storeStrong(&location, @"show.sidebar");
  }

  v2 = UIKitAccessibilityLocalizedString();
  objc_storeStrong(&location, 0);

  return v2;
}

- (void)_accessibilityUpdateSecondaryOnlyShortcutButtonItem
{
  selfCopy = self;
  if (self)
  {
    v15 = 0;
    objc_opt_class();
    v5 = [selfCopy safeValueForKey:@"_secondaryOnlyShortcutButtonItem"];
    v14 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v5);
    v13 = MEMORY[0x29EDC9748](v14);
    objc_storeStrong(&v14, 0);
    v16 = v13;
    objc_initWeak(&v12, selfCopy);
    v4 = v16;
    v6 = MEMORY[0x29EDCA5F8];
    v7 = -1073741824;
    v8 = 0;
    v9 = __98__UISplitViewControllerPanelImplAccessibility__accessibilityUpdateSecondaryOnlyShortcutButtonItem__block_invoke;
    v10 = &unk_29F30C9E8;
    objc_copyWeak(&v11, &v12);
    [v4 _setAccessibilityLabelBlock:&v6];
    v3 = v16;
    v2 = AXNoLoc_0(@"ToggleFullscreen");
    [v3 setAccessibilityIdentifier:?];
    *&v1 = MEMORY[0x29EDC9740](v2).n128_u64[0];
    [v16 setAccessibilityTraits:{*MEMORY[0x29EDC7F70], v1}];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v12);
    objc_storeStrong(&v16, 0);
  }
}

id __98__UISplitViewControllerPanelImplAccessibility__accessibilityUpdateSecondaryOnlyShortcutButtonItem__block_invoke(id *a1)
{
  v6[3] = a1;
  v6[2] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained safeUnsignedIntegerForKey:@"displayMode"];
  MEMORY[0x29EDC9740](WeakRetained);
  v6[1] = v4;
  if (v4 == 1)
  {
    v1 = @"exit.fullscreen";
  }

  else
  {
    v1 = @"enter.fullscreen";
  }

  v6[0] = MEMORY[0x29EDC9748](v1);
  v5 = UIKitAccessibilityLocalizedString();
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UISplitViewControllerPanelImplAccessibility;
  [(UISplitViewControllerPanelImplAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _accessibilityUpdateSideBarToggleButtonItem];
  [(UISplitViewControllerPanelImplAccessibility *)selfCopy _accessibilityUpdateSecondaryOnlyShortcutButtonItem];
  v2 = selfCopy;
  v3 = [(UISplitViewControllerPanelImplAccessibility *)selfCopy safeValueForKey:@"_unspecifiedCompositionDisplayModeButtonItem"];
  [(UISplitViewControllerPanelImplAccessibility *)v2 _axApplyDisplayModeLabelToButtonItem:v3];
  MEMORY[0x29EDC9740](v3);
}

- (id)_accessibilitySpeakThisViewController
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UISplitViewControllerPanelImplAccessibility *)self safeValueForKeyPath:@"panelController.collapsedViewController"];
  if (!v7[0])
  {
    v7[0] = [(UISplitViewControllerPanelImplAccessibility *)selfCopy safeValueForKeyPath:@"panelController.mainViewController"];
    MEMORY[0x29EDC9740](0);
  }

  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsSafeCategory();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  _accessibilitySpeakThisViewController = [v4 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(v7, 0);

  return _accessibilitySpeakThisViewController;
}

- (void)_accessibilityUpdatePanelController
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UISplitViewControllerPanelImplAccessibility *)self safeValueForKey:@"panelController"];
  NSClassFromString(&cfstr_Uipanelcontrol_0.isa);
  if (objc_opt_isKindOfClass())
  {
    [location[0] _accessibilityLoadAccessibilityInformation];
  }

  objc_storeStrong(location, 0);
}

@end