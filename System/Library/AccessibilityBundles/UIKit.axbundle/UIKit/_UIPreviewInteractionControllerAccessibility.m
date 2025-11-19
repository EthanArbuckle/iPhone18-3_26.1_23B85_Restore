@interface _UIPreviewInteractionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShowMoreActions;
- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)a3;
- (id)_accessibilityCustomActionsFromPresentedViewController:(uint64_t)a1;
- (uint64_t)_axPerformPreviewAction:(void *)a1;
- (void)_accessibilityDismissPresentation;
- (void)_accessibilityTeardownPresentationState;
- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)a3;
- (void)commitInteractivePreview;
@end

@implementation _UIPreviewInteractionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = "@";
  v4 = @"_UIPreviewInteractionController";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  v3 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"_dismissPreviewViewControllerIfNeededWithCompletion:" withFullSignature:{"@?", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"commitInteractivePreview" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"previewInteraction" withFullSignature:{v6, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_dismissPreviewViewControllerIfNeeded" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"currentPresentationController" withFullSignature:{v6, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"previewActionsController" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"_UIPreviewActionsController" hasInstanceMethod:@"previewActionsView" withFullSignature:{v6, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"currentPreviewingContext" withFullSignature:{v6, 0}];
  v5 = @"_UIViewControllerPreviewingContext";
  [location[0] validateClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"sourceView" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"_UIPreviewPresentationController2" hasInstanceMethod:@"contentPlatterView" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)_accessibilityCustomActionsFromPresentedViewController:(uint64_t)a1
{
  v32 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v32)
  {
    v29 = [MEMORY[0x29EDB8DE8] array];
    v15 = objc_alloc(MEMORY[0x29EDC78E0]);
    v16 = UIKitAccessibilityLocalizedString();
    v28 = [v15 initWithName:? target:? selector:?];
    [v29 addObject:{v28, MEMORY[0x29EDC9740](v16).n128_f64[0]}];
    v27 = [location leadingPreviewAction];
    if (v27)
    {
      v14 = [v27 accessibilityLabel];
      v24 = 0;
      if (v14)
      {
        v2 = MEMORY[0x29EDC9748](v14);
      }

      else
      {
        v25 = [v27 title];
        v24 = 1;
        v2 = MEMORY[0x29EDC9748](v25);
      }

      v26 = v2;
      if (v24)
      {
        MEMORY[0x29EDC9740](v25);
      }

      MEMORY[0x29EDC9740](v14);
      v3 = objc_alloc(MEMORY[0x29EDC78E0]);
      v23 = [v3 initWithName:v26 target:v32 selector:sel__accessibilityPerformLeadingAction];
      [v29 addObject:v23];
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, 0);
    }

    v22 = [location trailingPreviewAction];
    if (v22)
    {
      v13 = [v22 accessibilityLabel];
      v19 = 0;
      if (v13)
      {
        v4 = MEMORY[0x29EDC9748](v13);
      }

      else
      {
        v20 = [v22 title];
        v19 = 1;
        v4 = MEMORY[0x29EDC9748](v20);
      }

      v21 = v4;
      if (v19)
      {
        MEMORY[0x29EDC9740](v20);
      }

      if ([v21 length])
      {
        v5 = objc_alloc(MEMORY[0x29EDC78E0]);
        v18 = [v5 initWithName:v21 target:v32 selector:sel__accessibilityPerformTrailingAction];
        [v29 addObject:v18];
        objc_storeStrong(&v18, 0);
      }

      objc_storeStrong(&v21, 0);
    }

    v11 = [location previewActionItems];
    v12 = [v11 count];
    MEMORY[0x29EDC9740](v11);
    if (v12)
    {
      v9 = objc_alloc(MEMORY[0x29EDC78E0]);
      v10 = UIKitAccessibilityLocalizedString();
      v17 = [v9 initWithName:? target:? selector:?];
      *&v6 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      [v29 addObject:{v17, v6}];
      objc_storeStrong(&v17, 0);
    }

    v33 = MEMORY[0x29EDC9748](v29);
    v30 = 1;
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v33 = 0;
    v30 = 1;
  }

  objc_storeStrong(&location, 0);
  v7 = v33;

  return v7;
}

- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(_UIPreviewInteractionControllerAccessibility *)v17 safeValueForKey:@"currentPreviewingContext"];
  v14 = [v15 safeValueForKey:@"sourceView"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((v12 = 0, objc_opt_class(), v11 = __UIAccessibilityCastAsClass(), v10 = MEMORY[0x29EDC9748](v11), objc_storeStrong(&v11, 0), v13 = v10, ([v10 isEditing] & 1) == 0) ? (v8 = 0) : (v9.receiver = v17, v9.super_class = _UIPreviewInteractionControllerAccessibility, v18 = -[_UIPreviewInteractionControllerAccessibility _preparePreviewViewControllerPresentationFromPreviewInteraction:](&v9, sel__preparePreviewViewControllerPresentationFromPreviewInteraction_, location[0]), v8 = 1), objc_storeStrong(&v13, 0), !v8))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EB0]);
    v6.receiver = v17;
    v6.super_class = _UIPreviewInteractionControllerAccessibility;
    v7 = [(_UIPreviewInteractionControllerAccessibility *)&v6 _preparePreviewViewControllerPresentationFromPreviewInteraction:location[0]];
    if (v7)
    {
      v4 = [MEMORY[0x29EDBA068] defaultCenter];
      [v4 addObserver:v17 selector:sel__accessibilityDismissPresentation name:@"accessibilityDismissActionSheet" object:?];
      MEMORY[0x29EDC9740](v4);
      v5 = MEMORY[0x29EDC9748](v17);
      AXPerformBlockOnMainThreadAfterDelay();
      objc_storeStrong(&v5, 0);
    }

    else
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EA8]);
    }

    v18 = v7 & 1;
    v8 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (uint64_t)_axPerformPreviewAction:(void *)a1
{
  v21 = a1;
  v20 = a2;
  if (a1)
  {
    v18 = 0;
    objc_opt_class();
    v4 = [v21 safeValueForKey:@"currentPresentationController"];
    v17 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    v19 = v16;
    v15 = [v16 presentedViewController];
    v12 = 0;
    v10 = 0;
    if (v20)
    {
      v11 = [v15 trailingPreviewAction];
      v10 = 1;
      v2 = MEMORY[0x29EDC9748](v11);
    }

    else
    {
      v13 = [v15 leadingPreviewAction];
      v12 = 1;
      v2 = MEMORY[0x29EDC9748](v13);
    }

    v14 = v2;
    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }

    v9 = [v14 handler];
    if (v9)
    {
      v8 = MEMORY[0x29EDC9748](v9);
      v5 = MEMORY[0x29EDC9748](v14);
      v6 = MEMORY[0x29EDC9748](v15);
      v7 = MEMORY[0x29EDC9748](v21);
      AXPerformSafeBlock();
      v22 = 1;
      objc_storeStrong(&v7, 0);
      objc_storeStrong(&v6, 0);
      objc_storeStrong(&v5, 0);
      objc_storeStrong(&v8, 0);
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)_accessibilityShowMoreActions
{
  v9 = self;
  v8[1] = a2;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7430], 0);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIPreviewInteractionControllerAccessibility__accessibilityShowMoreActions__block_invoke;
  v7 = &unk_29F30C7C8;
  v8[0] = MEMORY[0x29EDC9748](v9);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v8, 0);
  return 1;
}

- (void)_accessibilityDismissPresentation
{
  v8 = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v2 = [(_UIPreviewInteractionControllerAccessibility *)v8 safeValueForKey:@"previewInteraction"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v2);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  [v4 cancelInteraction];
  MEMORY[0x29EDC9740](v4);
  v3 = MEMORY[0x29EDC9748](v8);
  AXPerformSafeBlock();
  [(_UIPreviewInteractionControllerAccessibility *)v8 _accessibilityTeardownPresentationState];
  objc_storeStrong(&v3, 0);
}

- (void)_accessibilityTeardownPresentationState
{
  if (a1)
  {
    v1 = [MEMORY[0x29EDBA068] defaultCenter];
    [v1 removeObserver:a1 name:@"accessibilityDismissActionSheet" object:0];
    MEMORY[0x29EDC9740](v1);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EA8]);
  }
}

- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = _UIPreviewInteractionControllerAccessibility;
  [(_UIPreviewInteractionControllerAccessibility *)&v3 _dismissPreviewViewControllerIfNeededWithCompletion:location[0]];
  [(_UIPreviewInteractionControllerAccessibility *)v5 _accessibilityTeardownPresentationState];
  objc_storeStrong(location, 0);
}

- (void)commitInteractivePreview
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIPreviewInteractionControllerAccessibility;
  [(_UIPreviewInteractionControllerAccessibility *)&v2 commitInteractivePreview];
  [(_UIPreviewInteractionControllerAccessibility *)v4 _accessibilityTeardownPresentationState];
}

@end