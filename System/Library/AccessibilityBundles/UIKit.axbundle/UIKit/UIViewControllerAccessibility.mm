@interface UIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)_accessibilityPresentsAsPopup;
- (BOOL)accessibilityPostScreenChangedForChildViewController:(id)controller isAddition:(BOOL)addition;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_accessibilitySpeakThisViewController;
- (id)_accessibilitySpeakThisViews;
- (id)_accessibilityUserTestingViewControllerInfo;
- (id)_overridingPreferredFocusEnvironment;
- (uint64_t)_accessibilityDidLoadAccessibilityInformation;
- (uint64_t)_setAccessibilityDidLoadAccessibilityInformation:(uint64_t)result;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_presentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animationController:(id)animationController interactionController:(id)interactionController handoffData:(id)data completion:(id)completion;
- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment;
- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)performSegueWithIdentifier:(id)identifier sender:(id)sender;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller withTransition:(int)transition completion:(id)completion;
- (void)setAccessibilityLabel:(id)label;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation UIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v8 = @"UIViewController";
  v9 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"_existingTabBarItem" withFullSignature:{v9, 0}];
  v3 = "i";
  v6 = "@?";
  v7 = "v";
  [location[0] validateClass:v8 hasInstanceMethod:@"presentViewController: withTransition: completion:" withFullSignature:{v9, "i", "@?", 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"dismissViewControllerWithTransition: completion:" withFullSignature:{v7, v3, v6, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"presentingViewController" withFullSignature:{v9, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"modalPresentationStyle" withFullSignature:{"q", 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"popoverPresentationController" withFullSignature:{v9, 0}];
  v4 = "B";
  [location[0] validateClass:v8 hasInstanceMethod:@"presentViewController: animated: completion:" withFullSignature:{v7, v9, "B", v6, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"dismissViewControllerAnimated: completion:" withFullSignature:{v7, v4, v6, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"performSegueWithIdentifier: sender:" withFullSignature:{v7, v9, v9, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"setEditing: animated:" withFullSignature:{v7, v4, v4, 0}];
  v5 = "{UIEdgeInsets=dddd}";
  [location[0] validateClass:v8 hasInstanceMethod:@"_primitiveSetNavigationControllerContentInsetAdjustment:" withFullSignature:{v7, "{UIEdgeInsets=dddd}", 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_setNavigationControllerContentInsetAdjustment:" withFullSignature:{v7, v5, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_presentViewController:modalSourceViewController:presentationController:animationController:interactionController:handoffData:completion:" withFullSignature:{v7, v9, v9, v9, v9, v9, v9, v6, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"contentScrollView" withFullSignature:{v9, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_overridingPreferredFocusEnvironment" withFullSignature:{v9, 0}];
  objc_storeStrong(v11, v10);
}

- (BOOL)accessibilityPostScreenChangedForChildViewController:(id)controller isAddition:(BOOL)addition
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  _accessibilityShouldPostScreenChangedOnPresentation = [location[0] _accessibilityShouldPostScreenChangedOnPresentation];
  objc_storeStrong(location, 0);
  return _accessibilityShouldPostScreenChangedOnPresentation;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  location = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"contentScrollView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"_navigationControllerContentInsetAdjustment"];
    [v6 UIEdgeInsetsValue];
    [location _accessibilitySetNavigationControllerInset:{v2, v3, v4, v5}];
    MEMORY[0x29EDC9740](v6);
  }

  objc_storeStrong(&location, 0);
}

- (void)_primitiveSetNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment
{
  adjustmentCopy = adjustment;
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v4 _primitiveSetNavigationControllerContentInsetAdjustment:adjustment.top, adjustment.left, adjustment.bottom, adjustment.right];
  location = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"contentScrollView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location _accessibilitySetNavigationControllerInset:{adjustmentCopy.top, adjustmentCopy.left, adjustmentCopy.bottom, adjustmentCopy.right}];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setNavigationControllerContentInsetAdjustment:(UIEdgeInsets)adjustment
{
  adjustmentCopy = adjustment;
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v4 _setNavigationControllerContentInsetAdjustment:adjustment.top, adjustment.left, adjustment.bottom, adjustment.right];
  location = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"contentScrollView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [location _accessibilitySetNavigationControllerInset:{adjustmentCopy.top, adjustmentCopy.left, adjustmentCopy.bottom, adjustmentCopy.right}];
  }

  objc_storeStrong(&location, 0);
}

- (void)setAccessibilityLabel:(id)label
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  v6.receiver = selfCopy;
  v6.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v6 setAccessibilityLabel:location[0]];
  v4 = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"_existingNavigationItem"];
  [v4 setAccessibilityLabel:location[0]];
  *&v3 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5 = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"_existingTabBarItem", v3];
  [v5 setAccessibilityLabel:location[0]];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v20 = 0;
  if ([location[0] _accessibilityPresentsAsPopup])
  {
    objc_storeStrong(&v20, *MEMORY[0x29EDBDB60]);
  }

  if ([(UIViewControllerAccessibility *)selfCopy accessibilityPostScreenChangedForChildViewController:location[0] isAddition:1])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], v20);
  }

  objc_initWeak(&v19, selfCopy);
  objc_initWeak(&v18, location[0]);
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__UIViewControllerAccessibility_presentViewController_animated_completion___block_invoke;
  v12 = &unk_29F30E2F0;
  objc_copyWeak(&v15, &v18);
  v14 = MEMORY[0x29EDC9748](v21);
  objc_copyWeak(&v16, &v19);
  v13 = MEMORY[0x29EDC9748](v20);
  v17 = MEMORY[0x29ED3E4C0](&v8);
  v7.receiver = selfCopy;
  v7.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v7 presentViewController:location[0] animated:animatedCopy completion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v16);
  objc_storeStrong(&v14, 0);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __75__UIViewControllerAccessibility_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = [WeakRetained safeValueForKey:@"view"];
    [v4 setAccessibilityViewIsModal:1];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](WeakRetained);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  v1 = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  v7 = 0;
  LOBYTE(v3) = 0;
  if ([v1 accessibilityPostScreenChangedForChildViewController:? isAddition:?])
  {
    v10 = objc_loadWeakRetained((a1 + 48));
    v9 = 1;
    v8 = [v10 view];
    v7 = 1;
    v3 = [v8 accessibilityElementsHidden] ^ 1;
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  if (v9)
  {
    MEMORY[0x29EDC9740](v10);
  }

  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v1);
  if (v3)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *(a1 + 32));
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  v9 = a2;
  animatedCopy = animated;
  location = 0;
  objc_storeStrong(&location, completion);
  v6 = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"presentedViewController"];
  v5.receiver = selfCopy;
  v5.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v5 dismissViewControllerAnimated:animatedCopy completion:location];
  v4 = [v6 safeValueForKey:@"view"];
  [v4 setAccessibilityViewIsModal:0];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

- (void)presentViewController:(id)controller withTransition:(int)transition completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  transitionCopy = transition;
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = 0;
  if ([location[0] _accessibilityPresentsAsPopup])
  {
    objc_storeStrong(&v18, *MEMORY[0x29EDBDB60]);
  }

  if ([(UIViewControllerAccessibility *)selfCopy accessibilityPostScreenChangedForChildViewController:location[0] isAddition:1])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], v18);
  }

  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__UIViewControllerAccessibility_presentViewController_withTransition_completion___block_invoke;
  v12 = &unk_29F30E318;
  v13 = MEMORY[0x29EDC9748](location[0]);
  v16 = MEMORY[0x29EDC9748](v19);
  v14 = MEMORY[0x29EDC9748](selfCopy);
  v15 = MEMORY[0x29EDC9748](v18);
  v17 = MEMORY[0x29ED3E4C0](&v8);
  v7.receiver = selfCopy;
  v7.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v7 presentViewController:location[0] withTransition:transitionCopy completion:v17];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

void __81__UIViewControllerAccessibility_presentViewController_withTransition_completion___block_invoke(uint64_t a1)
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v1 = [*(a1 + 32) safeValueForKey:@"view"];
    [v1 setAccessibilityViewIsModal:1];
    MEMORY[0x29EDC9740](v1);
  }

  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  if ([*(a1 + 40) accessibilityPostScreenChangedForChildViewController:*(a1 + 32) isAddition:1])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], *(a1 + 48));
  }
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  selfCopy = self;
  v39 = a2;
  transitionCopy = transition;
  location = 0;
  objc_storeStrong(&location, completion);
  v15 = [(UIViewControllerAccessibility *)selfCopy safeValueForKey:@"presentedViewController"];
  objc_initWeak(&from, v15);
  MEMORY[0x29EDC9740](v15);
  v16 = objc_loadWeakRetained(&from);
  v33 = 0;
  v28 = 0;
  v26 = 0;
  v14 = [v16 safeValueForKey:@"view"];
  v13 = 1;
  if (([v14 accessibilityElementsHidden] & 1) == 0)
  {
    v34 = objc_loadWeakRetained(&from);
    v33 = 1;
    accessibilityElementsHidden = 0;
    if (!v34)
    {
      v32 = 0;
      objc_opt_class();
      v31 = __UIAccessibilityCastAsClass();
      v30 = MEMORY[0x29EDC9748](v31);
      objc_storeStrong(&v31, 0);
      v29 = v30;
      v28 = 1;
      view = [v30 view];
      v26 = 1;
      accessibilityElementsHidden = [view accessibilityElementsHidden];
    }

    v13 = accessibilityElementsHidden;
  }

  if (v26)
  {
    MEMORY[0x29EDC9740](view);
  }

  if (v28)
  {
    MEMORY[0x29EDC9740](v29);
  }

  if (v33)
  {
    MEMORY[0x29EDC9740](v34);
  }

  MEMORY[0x29EDC9740](v14);
  MEMORY[0x29EDC9740](v16);
  v35 = v13 & 1;
  v10 = selfCopy;
  v11 = objc_loadWeakRetained(&from);
  v9 = 0;
  if ([UIViewControllerAccessibility accessibilityPostScreenChangedForChildViewController:v10 isAddition:"accessibilityPostScreenChangedForChildViewController:isAddition:"])
  {
    v9 = v35 ^ 1;
  }

  *&v4 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v9)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], 0);
    v7 = selfCopy;
    v8 = transitionCopy;
    v19 = MEMORY[0x29EDCA5F8];
    v20 = -1073741824;
    v21 = 0;
    v22 = __80__UIViewControllerAccessibility_dismissViewControllerWithTransition_completion___block_invoke;
    v23 = &unk_29F30E340;
    objc_copyWeak(&v25, &from);
    v24 = MEMORY[0x29EDC9748](location);
    v18.receiver = v7;
    v18.super_class = UIViewControllerAccessibility;
    [(UIViewControllerAccessibility *)&v18 dismissViewControllerWithTransition:v8 completion:&v19];
    objc_storeStrong(&v24, 0);
    objc_destroyWeak(&v25);
  }

  else
  {
    v17.receiver = selfCopy;
    v17.super_class = UIViewControllerAccessibility;
    [(UIViewControllerAccessibility *)&v17 dismissViewControllerWithTransition:transitionCopy completion:location, v4];
    v6 = objc_loadWeakRetained(&from);
    v5 = [v6 safeValueForKey:@"view"];
    [v5 setAccessibilityViewIsModal:0];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
  }

  objc_destroyWeak(&from);
  objc_storeStrong(&location, 0);
}

uint64_t __80__UIViewControllerAccessibility_dismissViewControllerWithTransition_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained safeValueForKey:@"view"];
  [v2 setAccessibilityViewIsModal:0];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](WeakRetained);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  result = a1;
  if (*(a1 + 32))
  {
    return (*(*(a1 + 32) + 16))();
  }

  return result;
}

- (void)_presentViewController:(id)controller modalSourceViewController:(id)viewController presentationController:(id)presentationController animationController:(id)animationController interactionController:(id)interactionController handoffData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v35 = 0;
  objc_storeStrong(&v35, viewController);
  v34 = 0;
  objc_storeStrong(&v34, presentationController);
  v33 = 0;
  objc_storeStrong(&v33, animationController);
  v32 = 0;
  objc_storeStrong(&v32, interactionController);
  v31 = 0;
  objc_storeStrong(&v31, data);
  v30 = 0;
  objc_storeStrong(&v30, completion);
  if ([(UIViewControllerAccessibility *)selfCopy accessibilityPostScreenChangedForChildViewController:location[0] isAddition:0])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], 0);
  }

  objc_initWeak(&v29, v34);
  v9 = selfCopy;
  v10 = location[0];
  v11 = v35;
  v12 = v34;
  v13 = v33;
  v14 = v32;
  v15 = v31;
  v22 = MEMORY[0x29EDCA5F8];
  v23 = -1073741824;
  v24 = 0;
  v25 = __170__UIViewControllerAccessibility__presentViewController_modalSourceViewController_presentationController_animationController_interactionController_handoffData_completion___block_invoke;
  v26 = &unk_29F30E368;
  objc_copyWeak(&v28, &v29);
  v27 = MEMORY[0x29EDC9748](v30);
  v21.receiver = v9;
  v21.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v21 _presentViewController:v10 modalSourceViewController:v11 presentationController:v12 animationController:v13 interactionController:v14 handoffData:v15 completion:&v22];
  objc_storeStrong(&v27, 0);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v29);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

uint64_t __170__UIViewControllerAccessibility__presentViewController_modalSourceViewController_presentationController_animationController_interactionController_handoffData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = [WeakRetained safeValueForKey:@"_accessibilityModalizePresentationView"];
  v2 = MEMORY[0x29EDC9740](WeakRetained);
  return (*(*(a1 + 32) + 16))(v2);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v20 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v16 = a2;
  scrollCopy = scroll;
  if (scroll != 2 && scrollCopy != 1)
  {
    goto LABEL_15;
  }

  location = [(UIViewControllerAccessibility *)selfCopy childViewControllers];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](location);
  v9 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }

    v18 = [v13 accessibilityScroll:scrollCopy] & 1;
    v11 = 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v11)
  {
    v11 = 0;
  }

  objc_storeStrong(&location, 0);
  if (!v11)
  {
LABEL_15:
    v10.receiver = selfCopy;
    v10.super_class = UIViewControllerAccessibility;
    v18 = [(UIViewControllerAccessibility *)&v10 accessibilityScroll:scrollCopy];
  }

  return v18 & 1;
}

- (void)performSegueWithIdentifier:(id)identifier sender:(id)sender
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v6 = 0;
  objc_storeStrong(&v6, sender);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74B8], 0);
  v5.receiver = selfCopy;
  v5.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v5 performSegueWithIdentifier:location[0] sender:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  v7 = a2;
  editingCopy = editing;
  animatedCopy = animated;
  v4.receiver = self;
  v4.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v4 setEditing:editing animated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_accessibilityPresentsAsPopup
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIViewControllerAccessibility *)self safeValueForKey:@"popoverPresentationController"];
  v3 = location[0] != 0;
  objc_storeStrong(location, 0);
  return v3;
}

- (id)_accessibilitySpeakThisViewController
{
  selfCopy = self;
  location[1] = a2;
  presentedViewController = [(UIViewControllerAccessibility *)self presentedViewController];
  location[0] = [presentedViewController _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](presentedViewController);
  if (!location[0])
  {
    objc_storeStrong(location, selfCopy);
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_accessibilitySpeakThisViews
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7[2] = self;
  v7[1] = a2;
  v7[0] = 0;
  location = [(UIViewControllerAccessibility *)self _accessibilitySpeakThisView];
  if (location)
  {
    v8[0] = location;
    v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
    v3 = v7[0];
    v7[0] = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v5 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

- (id)_accessibilityUserTestingViewControllerInfo
{
  selfCopy = self;
  if (self)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    v1 = objc_opt_class();
    v14 = NSStringFromClass(v1);
    [dictionary setObject:? forKeyedSubscript:?];
    title = [selfCopy title];
    *&v2 = MEMORY[0x29EDC9740](title).n128_u64[0];
    if (title)
    {
      title2 = [selfCopy title];
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x29EDC9740](title2);
    }

    v22 = 0;
    objc_opt_class();
    v12 = [selfCopy safeValueForKey:@"_existingTabBarItem"];
    v21 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v12);
    v20 = MEMORY[0x29EDC9748](v21);
    objc_storeStrong(&v21, 0);
    v23 = v20;
    v18 = 0;
    objc_opt_class();
    v11 = [selfCopy safeValueForKey:@"_existingNavigationItem"];
    v17 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v11);
    v16 = MEMORY[0x29EDC9748](v17);
    objc_storeStrong(&v17, 0);
    v19 = v16;
    title3 = [v16 title];
    *&v3 = MEMORY[0x29EDC9740](title3).n128_u64[0];
    if (title3)
    {
      title4 = [v19 title];
      [dictionary setObject:? forKeyedSubscript:?];
      MEMORY[0x29EDC9740](title4);
    }

    else
    {
      title5 = [v23 title];
      *&v4 = MEMORY[0x29EDC9740](title5).n128_u64[0];
      if (title5)
      {
        title6 = [v23 title];
        [dictionary setObject:? forKeyedSubscript:?];
        MEMORY[0x29EDC9740](title6);
      }
    }

    v26 = MEMORY[0x29EDC9748](dictionary);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&dictionary, 0);
  }

  else
  {
    v26 = 0;
  }

  v5 = v26;

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v13 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v8 viewDidAppear:appear];
  oslog = AXLogUIA();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v4 = selfCopy;
    v3 = _AXSAutomationEnabled();
    __os_log_helper_16_2_2_8_64_4_0(v12, v4, v3);
    _os_log_debug_impl(&dword_29C4D6000, oslog, type, "View did appear: %@ %d", v12, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (_AXSAutomationEnabled())
  {
    argument = [(UIViewControllerAccessibility *)selfCopy _accessibilityUserTestingViewControllerInfo];
    [argument setObject:@"ViewDidAppear" forKeyedSubscript:@"event"];
    UIAccessibilityPostNotification(0xFA2u, argument);
    objc_storeStrong(&argument, 0);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v10 = a2;
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v8 viewDidDisappear:disappear];
  oslog = AXLogUIA();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v4 = selfCopy;
    v3 = _AXSAutomationEnabled();
    __os_log_helper_16_2_2_8_64_4_0(v12, v4, v3);
    _os_log_debug_impl(&dword_29C4D6000, oslog, type, "View did disappear: %@ %d", v12, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (_AXSAutomationEnabled())
  {
    argument = [(UIViewControllerAccessibility *)selfCopy _accessibilityUserTestingViewControllerInfo];
    [argument setObject:@"ViewDidDisappear" forKeyedSubscript:@"event"];
    UIAccessibilityPostNotification(0xFA2u, argument);
    objc_storeStrong(&argument, 0);
  }
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = [(UIViewControllerAccessibility *)selfCopy _accessibilitySpeakThisViews];
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = v15[0];
      _accessibilitySpeakThisElementsAndStrings = [v14 _accessibilitySpeakThisElementsAndStrings];
      [v5 addObjectsFromArray:?];
      *&v2 = MEMORY[0x29EDC9740](_accessibilitySpeakThisElementsAndStrings).n128_u64[0];
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v17 count:{16, v2}];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v4 = MEMORY[0x29EDC9748](v15[0]);
  objc_storeStrong(v15, 0);

  return v4;
}

- (uint64_t)_accessibilityDidLoadAccessibilityInformation
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_setAccessibilityDidLoadAccessibilityInformation:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIViewControllerAccessibility;
  [(UIViewControllerAccessibility *)&v2 viewDidLoad];
  if (([(UIViewControllerAccessibility *)selfCopy _accessibilityDidLoadAccessibilityInformation]& 1) == 0)
  {
    [(UIViewControllerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
    [UIViewControllerAccessibility _setAccessibilityDidLoadAccessibilityInformation:selfCopy];
  }
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  view = [(UIViewControllerAccessibility *)self view];
  _accessibilityIsFKARunningForFocusItem = [view _accessibilityIsFKARunningForFocusItem];
  MEMORY[0x29EDC9740](view);
  return _accessibilityIsFKARunningForFocusItem;
}

- (id)_overridingPreferredFocusEnvironment
{
  selfCopy = self;
  v17[1] = a2;
  v16.receiver = self;
  v16.super_class = UIViewControllerAccessibility;
  v17[0] = [(UIViewControllerAccessibility *)&v16 _overridingPreferredFocusEnvironment];
  if (v17[0] && [(UIViewControllerAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem])
  {
    presentedViewController = [(UIViewControllerAccessibility *)selfCopy presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
      objc_opt_class();
      v12 = __UIAccessibilityCastAsClass();
      v11 = MEMORY[0x29EDC9748](v12);
      objc_storeStrong(&v12, 0);
      v14 = v11;
      searchResultsController = [v11 searchResultsController];
      view = [searchResultsController view];
      v9 = 0;
      v7 = 0;
      isHidden = 0;
      if (view)
      {
        searchResultsController2 = [v14 searchResultsController];
        v9 = 1;
        view2 = [searchResultsController2 view];
        v7 = 1;
        isHidden = [view2 isHidden];
      }

      if (v7)
      {
        MEMORY[0x29EDC9740](view2);
      }

      if (v9)
      {
        MEMORY[0x29EDC9740](searchResultsController2);
      }

      MEMORY[0x29EDC9740](view);
      MEMORY[0x29EDC9740](searchResultsController);
      if (isHidden)
      {
        objc_storeStrong(v17, 0);
      }

      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&presentedViewController, 0);
  }

  v3 = MEMORY[0x29EDC9748](v17[0]);
  objc_storeStrong(v17, 0);

  return v3;
}

@end