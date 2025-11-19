@interface _UIPreviewPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axPerformLeadingAction;
- (BOOL)_axPerformTrailingAction;
- (BOOL)_axShowMoreActions:(id)a3;
- (_UIPreviewPresentationControllerAccessibility)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (id)_axTitleForPreviewAction:(uint64_t)a1;
- (void)_accessibilityDismissPresentation;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupContainerView;
- (void)_layoutForRevealTransition;
- (void)_presentSubActionSheetForPreviewActionGroup:(id)a3;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)presentationTransitionWillBegin;
@end

@implementation _UIPreviewPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIPreviewActionSheetItemView";
  [location[0] validateClass:?];
  v6 = "@";
  [location[0] validateClass:@"_UIPreviewActionSheetView" hasInstanceMethod:@"actions" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"action" withFullSignature:{v6, 0}];
  v7 = @"_UIPreviewPresentationController";
  v8 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"presentationContainerView" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_hasPreviewActions" withFullSignature:{"B", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"leadingQuickActionView" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"trailingQuickActionView" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"_UIPreviewQuickActionView" hasInstanceMethod:@"quickAction" withFullSignature:{v6, 0}];
  v4 = @"UIPreviewMenuItem";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"handler" withFullSignature:{"@?", 0}];
  v5 = @"UIPresentationController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v7 isKindOfClass:v5];
  [location[0] validateClass:v7 hasInstanceMethod:@"_presentSubActionSheetForPreviewActionGroup:" withFullSignature:{v8, v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"presentationTransitionWillBegin" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"actionSheetContainerView" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"platterView" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"previewActionSheet" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"_layoutForRevealTransition" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (void)_axSetupContainerView
{
  v23 = a1;
  if (a1)
  {
    v22 = [v23 safeValueForKey:@"presentationContainerView"];
    v21 = [v22 safeValueForKey:@"platterView"];
    [v21 setIsAccessibilityElement:1];
    v9 = UIKitAccessibilityLocalizedString();
    [v21 setAccessibilityLabel:?];
    [v21 setAccessibilityIdentifier:{@"PreviewContainerElement", MEMORY[0x29EDC9740](v9).n128_f64[0]}];
    v20 = [MEMORY[0x29EDB8DE8] array];
    if ([v23 safeBoolForKey:@"_hasPreviewActions"])
    {
      v7 = objc_alloc(MEMORY[0x29EDC78E0]);
      v8 = UIKitAccessibilityLocalizedString();
      v19 = [v7 initWithName:? target:? selector:?];
      *&v1 = MEMORY[0x29EDC9740](v8).n128_u64[0];
      [v20 addObject:{v19, v1}];
      objc_storeStrong(&v19, 0);
    }

    v18 = [v23 safeValueForKey:@"leadingQuickActionView"];
    v17 = [v23 safeValueForKey:@"trailingQuickActionView"];
    if (v18)
    {
      v16 = [v18 safeValueForKey:@"quickAction"];
      v15 = [(_UIPreviewPresentationControllerAccessibility *)v23 _axTitleForPreviewAction:v16];
      if ([v15 length])
      {
        v2 = objc_alloc(MEMORY[0x29EDC78E0]);
        v14 = [v2 initWithName:v15 target:v23 selector:sel__axPerformLeadingAction];
        [v20 addObject:v14];
        objc_storeStrong(&v14, 0);
      }

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    if (v17)
    {
      v13 = [v17 safeValueForKey:@"quickAction"];
      v12 = [(_UIPreviewPresentationControllerAccessibility *)v23 _axTitleForPreviewAction:v13];
      if ([v12 length])
      {
        v3 = objc_alloc(MEMORY[0x29EDC78E0]);
        v11 = [v3 initWithName:v12 target:v23 selector:sel__axPerformTrailingAction];
        [v20 addObject:v11];
        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = UIKitAccessibilityLocalizedString();
    v10 = [v5 initWithName:? target:? selector:?];
    *&v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    [v20 addObject:{v10, v4}];
    if ([v20 count])
    {
      [v21 setAccessibilityCustomActions:v20];
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }
}

- (id)_axTitleForPreviewAction:(uint64_t)a1
{
  v13 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v13)
  {
    v9 = 0;
    objc_opt_class();
    v6 = [location safeValueForKey:@"title"];
    v8 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v6);
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    v10 = v7;
    if (![v7 length])
    {
      v2 = [location accessibilityLabel];
      v3 = v10;
      v10 = v2;
      MEMORY[0x29EDC9740](v3);
    }

    v14 = MEMORY[0x29EDC9748](v10);
    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v14 = 0;
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  v4 = v14;

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UIPreviewPresentationControllerAccessibility *)v4 _axSetupContainerView];
}

- (BOOL)_axShowMoreActions:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] name];
  v4 = UIKitAccessibilityLocalizedString();
  v6 = [v5 isEqualToString:?];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  if (v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7430], 0);
    v7 = MEMORY[0x29EDC9748](v9);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)_axPerformLeadingAction
{
  v14 = self;
  v13[1] = a2;
  v3 = [(_UIPreviewPresentationControllerAccessibility *)self safeValueForKey:@"leadingQuickActionView"];
  v13[0] = [v3 safeValueForKey:@"quickAction"];
  v12 = [v13[0] safeValueForKey:{@"handler", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
  if (v12)
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __72___UIPreviewPresentationControllerAccessibility__axPerformLeadingAction__block_invoke;
    v8 = &unk_29F30D6D0;
    v11 = MEMORY[0x29EDC9748](v12);
    v9 = MEMORY[0x29EDC9748](v13[0]);
    v10 = MEMORY[0x29EDC9748](v14);
    AXPerformSafeBlock();
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  return 1;
}

- (BOOL)_axPerformTrailingAction
{
  v14 = self;
  v13[1] = a2;
  v3 = [(_UIPreviewPresentationControllerAccessibility *)self safeValueForKey:@"trailingQuickActionView"];
  v13[0] = [v3 safeValueForKey:@"quickAction"];
  v12 = [v13[0] safeValueForKey:{@"handler", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
  if (v12)
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = -1073741824;
    v6 = 0;
    v7 = __73___UIPreviewPresentationControllerAccessibility__axPerformTrailingAction__block_invoke;
    v8 = &unk_29F30D6D0;
    v11 = MEMORY[0x29EDC9748](v12);
    v9 = MEMORY[0x29EDC9748](v13[0]);
    v10 = MEMORY[0x29EDC9748](v14);
    AXPerformSafeBlock();
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  return 1;
}

- (void)_accessibilityDismissPresentation
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __82___UIPreviewPresentationControllerAccessibility__accessibilityDismissPresentation__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v7, 0);
}

- (void)_presentSubActionSheetForPreviewActionGroup:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9.receiver = v11;
  v9.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v9 _presentSubActionSheetForPreviewActionGroup:location[0]];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __93___UIPreviewPresentationControllerAccessibility__presentSubActionSheetForPreviewActionGroup___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v11);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)containerViewWillLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v2 containerViewWillLayoutSubviews];
  [(_UIPreviewPresentationControllerAccessibility *)v4 _axSetupContainerView];
}

- (void)_layoutForRevealTransition
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v2 _layoutForRevealTransition];
  [(_UIPreviewPresentationControllerAccessibility *)v4 _axSetupContainerView];
}

- (_UIPreviewPresentationControllerAccessibility)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v9.receiver = v4;
  v9.super_class = _UIPreviewPresentationControllerAccessibility;
  v13 = [(_UIPreviewPresentationControllerAccessibility *)&v9 initWithPresentedViewController:location[0] presentingViewController:v11];
  v10 = MEMORY[0x29EDC9748](v13);
  v7 = [MEMORY[0x29EDBA068] defaultCenter];
  [v7 addObserver:v13 selector:sel__accessibilityDismissPresentation name:@"accessibilityDismissActionSheet" object:0];
  MEMORY[0x29EDC9740](v7);
  v8 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (void)presentationTransitionWillBegin
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v3 presentationTransitionWillBegin];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    v2 = [(_UIPreviewPresentationControllerAccessibility *)v5 safeValueForKey:@"actionSheetContainerView"];
    [v2 setAccessibilityViewIsModal:1];
    MEMORY[0x29EDC9740](v2);
  }
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v6];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = _UIPreviewPresentationControllerAccessibility;
  [(_UIPreviewPresentationControllerAccessibility *)&v4 dealloc];
}

@end