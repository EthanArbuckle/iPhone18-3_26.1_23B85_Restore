@interface UINavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityNavigationControllerShouldSendScreenChange;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityOutermostNavigationController;
- (id)_accessibilitySpeakThisViewController;
- (uint64_t)_accessibilityPostScreenChangeForAppearingView:(uint64_t)a1;
- (uint64_t)_accessibilityVoiceOverFocusIsInView:(uint64_t)a1;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHandleTransitionEndFromView:(id)a3 toView:(id)a4;
- (void)_setupFloatingToolbarAccessibility;
- (void)transitionConductor:(id)a3 beginPinningInputViewsForTransitionFromViewController:(id)a4 toViewController:(id)a5 forTransitionType:(int)a6;
- (void)transitionConductor:(id)a3 didEndCustomTransitionWithContext:(id)a4 didComplete:(BOOL)a5;
- (void)transitionConductor:(id)a3 didEndTransitionFromView:(id)a4 toView:(id)a5;
@end

@implementation UINavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@";
  [location[0] validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:0];
  v6 = @"UINavigationController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UINavigationItem" hasInstanceMethod:@"_titleView" withFullSignature:{v3, 0}];
  v5 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"transitionConductor:beginPinningInputViewsForTransitionFromViewController:toViewController:forTransitionType:" withFullSignature:{v3, v3, v3, "i", 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"transitionConductor:didEndTransitionFromView:toView:" withFullSignature:{v5, v3, v3, v3, 0}];
  v4 = "B";
  [location[0] validateClass:v6 hasInstanceMethod:@"_isNestedNavigationController" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"navigationTransitionView" withFullSignature:{v3, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"disappearingViewController" withFullSignature:{v3, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"topViewController" withFullSignature:{v3, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"transitionConductor:didEndCustomTransitionWithContext:didComplete:" withFullSignature:{v5, v3, v3, v4, 0}];
  [location[0] validateClass:v6 hasInstanceVariable:@"_floatingBarContainerView" withType:"UIView<_UIFloatingBarContainer>"];
  [location[0] validateClass:@"_UIFloatingBarContainerView" hasSwiftField:@"hostingView" withSwiftType:"FloatingBarHostingView<FloatingBarContainer>"];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UINavigationControllerAccessibility;
  [(UINavigationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  if (_UISolariumEnabled())
  {
    [(UINavigationControllerAccessibility *)v4 _setupFloatingToolbarAccessibility];
  }
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  v8 = self;
  v7 = a2;
  v4 = [(UINavigationControllerAccessibility *)self safeValueForKey:@"visibleViewController"];
  v5 = [v4 _accessibilityCanPerformEscapeAction];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    return 1;
  }

  v6.receiver = v8;
  v6.super_class = UINavigationControllerAccessibility;
  return [(UINavigationControllerAccessibility *)&v6 _accessibilityCanPerformEscapeAction];
}

- (BOOL)accessibilityPerformEscape
{
  v8 = self;
  v7 = a2;
  v4 = [(UINavigationControllerAccessibility *)self safeValueForKey:@"visibleViewController"];
  v5 = [v4 accessibilityPerformEscape];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5)
  {
    return 1;
  }

  v6.receiver = v8;
  v6.super_class = UINavigationControllerAccessibility;
  return [(UINavigationControllerAccessibility *)&v6 accessibilityPerformEscape];
}

- (id)_accessibilitySpeakThisViewController
{
  v9 = self;
  v8 = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(UINavigationControllerAccessibility *)v9 topViewController];
  v6 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v3 = [v5 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v5);

  return v3;
}

- (id)_accessibilityOutermostNavigationController
{
  v6 = a1;
  if (a1)
  {
    v5 = MEMORY[0x29EDC9748](v6);
    while (([v5 safeBoolForKey:@"_isNestedNavigationController"] & 1) != 0)
    {
      v1 = [v5 navigationController];
      v2 = v5;
      v5 = v1;
      MEMORY[0x29EDC9740](v2);
    }

    v7 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v7 = 0;
  }

  v3 = v7;

  return v3;
}

- (uint64_t)_accessibilityVoiceOverFocusIsInView:(uint64_t)a1
{
  v18 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v18)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x20000000;
    v14 = 32;
    v15 = 0;
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v10 = UIAccessibilityFocusedElement(*MEMORY[0x29EDC7EE8]);
      v3 = v10;
      v4 = MEMORY[0x29EDCA5F8];
      v5 = -1073741824;
      v6 = 0;
      v7 = __76__UINavigationControllerAccessibility__accessibilityVoiceOverFocusIsInView___block_invoke;
      v8 = &unk_29F30D968;
      v9[0] = MEMORY[0x29EDC9748](location);
      v9[1] = &v11;
      [v3 accessibilityEnumerateAncestorsUsingBlock:&v4];
      objc_storeStrong(v9, 0);
      objc_storeStrong(&v10, 0);
    }

    v19 = v12[3] & 1;
    v16 = 1;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
  return v19 & 1;
}

void __76__UINavigationControllerAccessibility__accessibilityVoiceOverFocusIsInView___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  objc_storeStrong(location, 0);
}

- (uint64_t)_accessibilityPostScreenChangeForAppearingView:(uint64_t)a1
{
  v16[3] = *MEMORY[0x29EDCA608];
  v13 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v13)
  {
    v10 = [location _accessibilityElementToFocusForAppearanceScreenChange];
    if (!v10)
    {
      v9 = [location _accessibilityViewController];
      v2 = [v9 _accessibilityElementToFocusForAppearanceScreenChange];
      v3 = v10;
      v10 = v2;
      MEMORY[0x29EDC9740](v3);
      objc_storeStrong(&v9, 0);
    }

    if (v10)
    {
      v15[0] = *MEMORY[0x29EDBDB28];
      v16[0] = MEMORY[0x29EDB8EB0];
      v15[1] = *MEMORY[0x29EDBDB68];
      v5 = MEMORY[0x29EDBA070];
      v7 = [(UINavigationControllerAccessibility *)v13 _accessibilityOutermostNavigationController];
      v6 = [v5 numberWithUnsignedLongLong:?];
      v16[1] = v6;
      v15[2] = *MEMORY[0x29EDC7490];
      v16[2] = v10;
      argument = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
      v14 = 1;
      v11 = 1;
      objc_storeStrong(&argument, 0);
    }

    else
    {
      v14 = 0;
      v11 = 1;
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v14 = 0;
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  return v14 & 1;
}

- (void)transitionConductor:(id)a3 beginPinningInputViewsForTransitionFromViewController:(id)a4 toViewController:(id)a5 forTransitionType:(int)a6
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v26 = a6;
  v6 = [(UINavigationControllerAccessibility *)v30 safeValueForKey:@"navigationTransitionView"];
  v15 = v6 != 0;
  *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v25 = v15;
  v24 = 0;
  if (v15)
  {
    v11 = [(UINavigationControllerAccessibility *)v30 safeValueForKey:@"disappearingViewController", v7];
    v23 = [v11 safeUIViewForKey:@"view"];
    MEMORY[0x29EDC9740](v11);
    v24 = [(UINavigationControllerAccessibility *)v30 _accessibilityVoiceOverFocusIsInView:v23];
    objc_storeStrong(&v23, 0);
  }

  v22.receiver = v30;
  v22.super_class = UINavigationControllerAccessibility;
  [(UINavigationControllerAccessibility *)&v22 transitionConductor:location[0] beginPinningInputViewsForTransitionFromViewController:v28 toViewController:v27 forTransitionType:v26, v7];
  if (v25 && (v24 & 1) != 0)
  {
    v9 = MEMORY[0x29EDCA578];
    v8 = MEMORY[0x29EDCA578];
    queue = v9;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = -1073741824;
    v18 = 0;
    v19 = __148__UINavigationControllerAccessibility_transitionConductor_beginPinningInputViewsForTransitionFromViewController_toViewController_forTransitionType___block_invoke;
    v20 = &unk_29F30C7C8;
    v21 = MEMORY[0x29EDC9748](v30);
    dispatch_async(queue, &v16);
    MEMORY[0x29EDC9740](queue);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __148__UINavigationControllerAccessibility_transitionConductor_beginPinningInputViewsForTransitionFromViewController_toViewController_forTransitionType___block_invoke(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [a1[4] safeValueForKey:@"topViewController"];
  v2 = [v3[0] safeValueForKey:@"view"];
  [(UINavigationControllerAccessibility *)a1[4] _accessibilityPostScreenChangeForAppearingView:v2];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

- (void)transitionConductor:(id)a3 didEndCustomTransitionWithContext:(id)a4 didComplete:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v10.receiver = v14;
  v10.super_class = UINavigationControllerAccessibility;
  [(UINavigationControllerAccessibility *)&v10 transitionConductor:location[0] didEndCustomTransitionWithContext:v12 didComplete:a5];
  v7 = v14;
  v9 = [v12 _fromView];
  v8 = [v12 _toView];
  [(UINavigationControllerAccessibility *)v7 _axHandleTransitionEndFromView:v9 toView:?];
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)transitionConductor:(id)a3 didEndTransitionFromView:(id)a4 toView:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7.receiver = v11;
  v7.super_class = UINavigationControllerAccessibility;
  [(UINavigationControllerAccessibility *)&v7 transitionConductor:location[0] didEndTransitionFromView:v9 toView:v8];
  [(UINavigationControllerAccessibility *)v11 _axHandleTransitionEndFromView:v9 toView:v8];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_axHandleTransitionEndFromView:(id)a3 toView:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v4 = [(UINavigationControllerAccessibility *)v17 safeValueForKey:@"navigationTransitionView"];
  v9 = v4 != 0;
  *&v5 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v14 = v9;
  if (v15 && v14)
  {
    v7 = [(UINavigationControllerAccessibility *)v17 viewControllers];
    v13 = [v7 lastObject];
    MEMORY[0x29EDC9740](v7);
    v12 = 0;
    if (objc_opt_respondsToSelector())
    {
      v12 = [v13 _accessibilityHandleNavigationControllerDidEndTransition];
    }

    if ((v12 & 1) == 0)
    {
      v11 = 0;
      if (([(UINavigationControllerAccessibility *)v17 _accessibilityVoiceOverFocusIsInView:?]& 1) != 0)
      {
        v6 = [v15 _accessibilitySortedElementsWithin];
        v10 = [v6 firstObject];
        MEMORY[0x29EDC9740](v6);
        v11 = [(UINavigationControllerAccessibility *)v17 _accessibilityPostScreenChangeForAppearingView:v10];
        objc_storeStrong(&v10, 0);
      }

      if ((v11 & 1) == 0 && ([(UINavigationControllerAccessibility *)v17 _accessibilityVoiceOverFocusIsInView:v15]& 1) == 0)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *MEMORY[0x29EDBDB28]);
      }
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityNavigationControllerShouldSendScreenChange
{
  v9 = self;
  v8 = a2;
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v3 = [v5 view];
  v4 = [v3 isHiddenOrHasHiddenAncestor] ^ 1;
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v5);
  return v4;
}

- (void)_setupFloatingToolbarAccessibility
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = [(UINavigationControllerAccessibility *)self safeUIViewForKey:@"_floatingBarContainerView"];
  v12 = 0;
  objc_opt_class();
  v8 = [v14[0] safeSwiftValueForKey:@"hostingView"];
  v11 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13 = v10;
  v3 = [v10 subviews];
  v9 = [v3 firstObject];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  [v9 setAccessibilityContainerType:{4, v2}];
  [v9 _setAccessibilityAutomationType:24];
  v4 = v9;
  v5 = AXNoLoc(@"Toolbar");
  [v4 setAccessibilityIdentifier:?];
  MEMORY[0x29EDC9740](v5);
  v6 = v9;
  v7 = accessibilityLocalizedString(@"toolbar.label");
  [v6 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
}

@end