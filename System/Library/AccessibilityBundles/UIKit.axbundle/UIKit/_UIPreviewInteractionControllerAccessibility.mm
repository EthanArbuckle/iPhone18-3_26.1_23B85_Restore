@interface _UIPreviewInteractionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityShowMoreActions;
- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)interaction;
- (id)_accessibilityCustomActionsFromPresentedViewController:(uint64_t)controller;
- (uint64_t)_axPerformPreviewAction:(void *)action;
- (void)_accessibilityDismissPresentation;
- (void)_accessibilityTeardownPresentationState;
- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)completion;
- (void)commitInteractivePreview;
@end

@implementation _UIPreviewInteractionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (id)_accessibilityCustomActionsFromPresentedViewController:(uint64_t)controller
{
  controllerCopy = controller;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controllerCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v15 = objc_alloc(MEMORY[0x29EDC78E0]);
    v16 = UIKitAccessibilityLocalizedString();
    v28 = [v15 initWithName:? target:? selector:?];
    [array addObject:{v28, MEMORY[0x29EDC9740](v16).n128_f64[0]}];
    leadingPreviewAction = [location leadingPreviewAction];
    if (leadingPreviewAction)
    {
      accessibilityLabel = [leadingPreviewAction accessibilityLabel];
      v24 = 0;
      if (accessibilityLabel)
      {
        v2 = MEMORY[0x29EDC9748](accessibilityLabel);
      }

      else
      {
        title = [leadingPreviewAction title];
        v24 = 1;
        v2 = MEMORY[0x29EDC9748](title);
      }

      v26 = v2;
      if (v24)
      {
        MEMORY[0x29EDC9740](title);
      }

      MEMORY[0x29EDC9740](accessibilityLabel);
      v3 = objc_alloc(MEMORY[0x29EDC78E0]);
      v23 = [v3 initWithName:v26 target:controllerCopy selector:sel__accessibilityPerformLeadingAction];
      [array addObject:v23];
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, 0);
    }

    trailingPreviewAction = [location trailingPreviewAction];
    if (trailingPreviewAction)
    {
      accessibilityLabel2 = [trailingPreviewAction accessibilityLabel];
      v19 = 0;
      if (accessibilityLabel2)
      {
        v4 = MEMORY[0x29EDC9748](accessibilityLabel2);
      }

      else
      {
        title2 = [trailingPreviewAction title];
        v19 = 1;
        v4 = MEMORY[0x29EDC9748](title2);
      }

      v21 = v4;
      if (v19)
      {
        MEMORY[0x29EDC9740](title2);
      }

      if ([v21 length])
      {
        v5 = objc_alloc(MEMORY[0x29EDC78E0]);
        v18 = [v5 initWithName:v21 target:controllerCopy selector:sel__accessibilityPerformTrailingAction];
        [array addObject:v18];
        objc_storeStrong(&v18, 0);
      }

      objc_storeStrong(&v21, 0);
    }

    previewActionItems = [location previewActionItems];
    v12 = [previewActionItems count];
    MEMORY[0x29EDC9740](previewActionItems);
    if (v12)
    {
      v9 = objc_alloc(MEMORY[0x29EDC78E0]);
      v10 = UIKitAccessibilityLocalizedString();
      v17 = [v9 initWithName:? target:? selector:?];
      *&v6 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      [array addObject:{v17, v6}];
      objc_storeStrong(&v17, 0);
    }

    v33 = MEMORY[0x29EDC9748](array);
    v30 = 1;
    objc_storeStrong(&trailingPreviewAction, 0);
    objc_storeStrong(&leadingPreviewAction, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&array, 0);
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

- (BOOL)_preparePreviewViewControllerPresentationFromPreviewInteraction:(id)interaction
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  v15 = [(_UIPreviewInteractionControllerAccessibility *)selfCopy safeValueForKey:@"currentPreviewingContext"];
  v14 = [v15 safeValueForKey:@"sourceView"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((v12 = 0, objc_opt_class(), v11 = __UIAccessibilityCastAsClass(), v10 = MEMORY[0x29EDC9748](v11), objc_storeStrong(&v11, 0), v13 = v10, ([v10 isEditing] & 1) == 0) ? (v8 = 0) : (v9.receiver = selfCopy, v9.super_class = _UIPreviewInteractionControllerAccessibility, v18 = -[_UIPreviewInteractionControllerAccessibility _preparePreviewViewControllerPresentationFromPreviewInteraction:](&v9, sel__preparePreviewViewControllerPresentationFromPreviewInteraction_, location[0]), v8 = 1), objc_storeStrong(&v13, 0), !v8))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EB0]);
    v6.receiver = selfCopy;
    v6.super_class = _UIPreviewInteractionControllerAccessibility;
    v7 = [(_UIPreviewInteractionControllerAccessibility *)&v6 _preparePreviewViewControllerPresentationFromPreviewInteraction:location[0]];
    if (v7)
    {
      defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
      [defaultCenter addObserver:selfCopy selector:sel__accessibilityDismissPresentation name:@"accessibilityDismissActionSheet" object:?];
      MEMORY[0x29EDC9740](defaultCenter);
      v5 = MEMORY[0x29EDC9748](selfCopy);
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

- (uint64_t)_axPerformPreviewAction:(void *)action
{
  actionCopy = action;
  v20 = a2;
  if (action)
  {
    v18 = 0;
    objc_opt_class();
    v4 = [actionCopy safeValueForKey:@"currentPresentationController"];
    v17 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v4);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    v19 = v16;
    presentedViewController = [v16 presentedViewController];
    v12 = 0;
    v10 = 0;
    if (v20)
    {
      trailingPreviewAction = [presentedViewController trailingPreviewAction];
      v10 = 1;
      v2 = MEMORY[0x29EDC9748](trailingPreviewAction);
    }

    else
    {
      leadingPreviewAction = [presentedViewController leadingPreviewAction];
      v12 = 1;
      v2 = MEMORY[0x29EDC9748](leadingPreviewAction);
    }

    v14 = v2;
    if (v10)
    {
      MEMORY[0x29EDC9740](trailingPreviewAction);
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](leadingPreviewAction);
    }

    handler = [v14 handler];
    if (handler)
    {
      v8 = MEMORY[0x29EDC9748](handler);
      v5 = MEMORY[0x29EDC9748](v14);
      v6 = MEMORY[0x29EDC9748](presentedViewController);
      v7 = MEMORY[0x29EDC9748](actionCopy);
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

    objc_storeStrong(&handler, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&presentedViewController, 0);
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
  selfCopy = self;
  v8[1] = a2;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7430], 0);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77___UIPreviewInteractionControllerAccessibility__accessibilityShowMoreActions__block_invoke;
  v7 = &unk_29F30C7C8;
  v8[0] = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(v8, 0);
  return 1;
}

- (void)_accessibilityDismissPresentation
{
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v2 = [(_UIPreviewInteractionControllerAccessibility *)selfCopy safeValueForKey:@"previewInteraction"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v2);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  [v4 cancelInteraction];
  MEMORY[0x29EDC9740](v4);
  v3 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformSafeBlock();
  [(_UIPreviewInteractionControllerAccessibility *)selfCopy _accessibilityTeardownPresentationState];
  objc_storeStrong(&v3, 0);
}

- (void)_accessibilityTeardownPresentationState
{
  if (self)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter removeObserver:self name:@"accessibilityDismissActionSheet" object:0];
    MEMORY[0x29EDC9740](defaultCenter);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7438], MEMORY[0x29EDB8EA8]);
  }
}

- (void)_dismissPreviewViewControllerIfNeededWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3.receiver = selfCopy;
  v3.super_class = _UIPreviewInteractionControllerAccessibility;
  [(_UIPreviewInteractionControllerAccessibility *)&v3 _dismissPreviewViewControllerIfNeededWithCompletion:location[0]];
  [(_UIPreviewInteractionControllerAccessibility *)selfCopy _accessibilityTeardownPresentationState];
  objc_storeStrong(location, 0);
}

- (void)commitInteractivePreview
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIPreviewInteractionControllerAccessibility;
  [(_UIPreviewInteractionControllerAccessibility *)&v2 commitInteractivePreview];
  [(_UIPreviewInteractionControllerAccessibility *)selfCopy _accessibilityTeardownPresentationState];
}

@end