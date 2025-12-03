@interface UITransitionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
- (id)_accessibilityDimmingView;
- (id)_accessibilityHitTestingObscuredScreenAllowedViews;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_accessibilityPresentationController;
- (id)_accessibilityRetrieveDelegate;
- (id)_axPresentationController;
- (id)axAdditionalElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetPresentationController:(uint64_t)controller;
- (void)_didCompleteTransition:(BOOL)transition;
@end

@implementation UITransitionViewAccessibility

- (id)_axPresentationController
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedNonRetainedObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetPresentationController:(uint64_t)controller
{
  controllerCopy = controller;
  location = 0;
  objc_storeStrong(&location, a2);
  if (controllerCopy)
  {
    __UIAccessibilitySetAssociatedNonRetainedObject();
  }

  objc_storeStrong(&location, 0);
}

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITransitionView";
  v5 = @"UIView";
  [location[0] validateClass:? isKindOfClass:?];
  v9 = "@";
  [location[0] validateClass:@"UITransitionView" hasInstanceVariable:@"_delegate" withType:?];
  [location[0] validateClass:@"_UIAlertControllerPresentationController" hasInstanceVariable:@"_dimmingView" withType:"UIView"];
  v7 = @"UIPresentationController";
  [location[0] validateClass:@"_UISearchPresentationController" isKindOfClass:?];
  [location[0] validateClass:@"UIDimmingView" hasInstanceMethod:@"passthroughViews" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"UIGestureRecognizer" hasInstanceVariable:@"_targets" withType:"NSMutableArray"];
  v4 = @"UIGestureRecognizerTarget";
  [location[0] validateClass:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"target" withFullSignature:{v9, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"_presentationControllerToNotifyOnLayoutSubviews" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"_UIPageSheetPresentationController"];
  v8 = @"UISheetPresentationController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"_layoutInfo" withFullSignature:{v9, 0}];
  v6 = @"_UISheetLayoutInfo";
  [location[0] validateProtocol:? hasRequiredInstanceMethod:?];
  [location[0] validateProtocol:v6 hasRequiredInstanceMethod:@"_indexOfCurrentActiveDetent"];
  [location[0] validateClass:v8 isKindOfClass:v7];
  [location[0] validateClass:v7 hasInstanceMethod:@"_shouldDismiss" withFullSignature:{"B", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"delegate" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UISheetPresentationControllerDetent" hasInstanceMethod:@"_type" withFullSignature:{"q", 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_childSheetPresentationController" withFullSignature:{v9, 0}];
  objc_storeStrong(v11, v10);
}

- (id)_accessibilityRetrieveDelegate
{
  if (self)
  {
    v2 = [self safeValueForKey:@"delegate"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_didCompleteTransition:(BOOL)transition
{
  selfCopy = self;
  v5 = a2;
  transitionCopy = transition;
  v3.receiver = self;
  v3.super_class = UITransitionViewAccessibility;
  [(UITransitionViewAccessibility *)&v3 _didCompleteTransition:transition];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (id)_accessibilityDimmingView
{
  v18 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    subviews = [v7 subviews];
    MEMORY[0x29EDC9740](v7);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](subviews);
    v9 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
    if (v9)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v9;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v5);
        NSClassFromString(&cfstr_Uidimmingview.isa);
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 _accessibilityViewIsVisible])
        {
          break;
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v6)
          {
            goto LABEL_12;
          }
        }
      }

      v16 = MEMORY[0x29EDC9748](v13);
      v11 = 1;
    }

    else
    {
LABEL_12:
      v11 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    if (!v11)
    {
      location = [(UITransitionViewAccessibility *)selfCopy _accessibilityRetrieveDelegate];
      if (objc_opt_respondsToSelector())
      {
        v16 = [location safeValueForKey:@"_dimmingView"];
      }

      else
      {
        v16 = 0;
      }

      v11 = 1;
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&subviews, 0);
  }

  else
  {
    v16 = 0;
  }

  v1 = v16;

  return v1;
}

- (id)_accessibilityPresentationController
{
  if (self)
  {
    v2 = [self safeValueForKey:@"_presentationControllerToNotifyOnLayoutSubviews"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  selfCopy = self;
  v43[1] = a2;
  v43[0] = [(UITransitionViewAccessibility *)self _axPresentationController];
  presentingViewController = [v43[0] presentingViewController];
  view = [presentingViewController view];
  MEMORY[0x29EDC9740](presentingViewController);
  v41 = objc_opt_new();
  if (view)
  {
    [view accessibilityFrame];
    *&v39 = v2;
    *(&v39 + 1) = v3;
    *&v40 = v4;
    *(&v40 + 1) = v5;
    superview = [(UITransitionViewAccessibility *)selfCopy superview];
    _accessibilitySubviews = [superview _accessibilitySubviews];
    reverseObjectEnumerator = [_accessibilitySubviews reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator);
    MEMORY[0x29EDC9740](_accessibilitySubviews);
    MEMORY[0x29EDC9740](superview);
    v17 = allObjects;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = -1073741824;
    v31 = 0;
    v32 = __73__UITransitionViewAccessibility__accessibilityObscuredScreenAllowedViews__block_invoke;
    v33 = &unk_29F30E130;
    v34 = MEMORY[0x29EDC9748](selfCopy);
    v35 = MEMORY[0x29EDC9748](view);
    v36 = v39;
    v37 = v40;
    v18 = [v17 ax_filteredArrayUsingBlock:&v29];
    v6 = [v18 mutableCopy];
    v7 = v41;
    v41 = v6;
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](v18);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&allObjects, 0);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = 1;
    v26 = 0;
    objc_opt_class();
    v13 = [v43[0] safeValueForKey:@"_childSheetPresentationController"];
    v25 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v13);
    v24 = MEMORY[0x29EDC9748](v25);
    objc_storeStrong(&v25, 0);
    v27 = v24;
    while ((v28 & 1) != 0)
    {
      v22 = 0;
      objc_opt_class();
      v12 = [v27 safeValueForKey:@"_childSheetPresentationController"];
      v21 = __UIAccessibilityCastAsSafeCategory();
      MEMORY[0x29EDC9740](v12);
      if (v22)
      {
        abort();
      }

      v20 = MEMORY[0x29EDC9748](v21);
      objc_storeStrong(&v21, 0);
      v23 = v20;
      if (v20)
      {
        objc_storeStrong(&v27, v23);
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong(&v23, 0);
    }

    if (v27 && ([v27 _accessibilityPresentationControllerModalizes] & 1) == 0)
    {
      v10 = v41;
      containerView = [v27 containerView];
      [v10 axSafelyAddObject:?];
      MEMORY[0x29EDC9740](containerView);
    }

    objc_storeStrong(&v27, 0);
  }

  v9 = MEMORY[0x29EDC9748](v41);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&view, 0);
  objc_storeStrong(v43, 0);

  return v9;
}

BOOL __73__UITransitionViewAccessibility__accessibilityObscuredScreenAllowedViews__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] == *(a1 + 32))
  {
    *a4 = 1;
    v13 = 0;
  }

  else if (location[0] != *(a1 + 40) && ([location[0] _accessibilityViewIsVisible] & 1) != 0)
  {
    [location[0] accessibilityFrame];
    rect2.origin.x = v4;
    rect2.origin.y = v5;
    rect2.size.width = v6;
    rect2.size.height = v7;
    v13 = !CGRectIntersectsRect(*(a1 + 48), rect2);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(location, 0);
  return v13;
}

- (id)_accessibilityHitTestingObscuredScreenAllowedViews
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITransitionViewAccessibility *)self _accessibilityDimmingView];
  NSClassFromString(&cfstr_Uidimmingview.isa);
  if (objc_opt_isKindOfClass())
  {
    _accessibilityObscuredScreenAllowedViews = [location[0] safeValueForKey:@"passthroughViews"];
  }

  else
  {
    _accessibilityObscuredScreenAllowedViews = [(UITransitionViewAccessibility *)selfCopy _accessibilityObscuredScreenAllowedViews];
  }

  objc_storeStrong(location, 0);
  v2 = _accessibilityObscuredScreenAllowedViews;

  return v2;
}

- (BOOL)accessibilityViewIsModal
{
  selfCopy = self;
  v17[1] = a2;
  v17[0] = [(UITransitionViewAccessibility *)self _accessibilityRetrieveDelegate];
  NSClassFromString(&cfstr_Uisearchpresen_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v7 = [v17[0] safeValueForKey:@"presentedViewController"];
    v6 = __UIAccessibilityCastAsClass();
    searchResultsController = [v6 searchResultsController];
    MEMORY[0x29EDC9740](searchResultsController);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
    if (!searchResultsController)
    {
      v19 = 0;
      v16 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0;
      v16 = 1;
      goto LABEL_21;
    }

    accessibilityIdentifier = [(UITransitionViewAccessibility *)selfCopy accessibilityIdentifier];
    v5 = [accessibilityIdentifier isEqualToString:@"UIColorPickerView"];
    MEMORY[0x29EDC9740](accessibilityIdentifier);
    if (v5)
    {
      v19 = 1;
      v16 = 1;
      goto LABEL_21;
    }
  }

  v14 = 0;
  objc_opt_class();
  _axPresentationController = [(UITransitionViewAccessibility *)selfCopy _axPresentationController];
  v11 = 0;
  if (!_axPresentationController)
  {
    _accessibilityPresentationController = [(UITransitionViewAccessibility *)selfCopy _accessibilityPresentationController];
    v11 = 1;
  }

  v13 = __UIAccessibilityCastAsSafeCategory();
  if (v11)
  {
    MEMORY[0x29EDC9740](_accessibilityPresentationController);
  }

  MEMORY[0x29EDC9740](_axPresentationController);
  v10 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v15 = v10;
  if (!v10 || ([v15 _accessibilityPresentationControllerModalizes] & 1) != 0)
  {
    storedAccessibilityViewIsModal = [(UITransitionViewAccessibility *)selfCopy storedAccessibilityViewIsModal];
    if (storedAccessibilityViewIsModal)
    {
      v19 = [storedAccessibilityViewIsModal BOOLValue] & 1;
    }

    else
    {
      v19 = 1;
    }

    v16 = 1;
    objc_storeStrong(&storedAccessibilityViewIsModal, 0);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v15, 0);
LABEL_21:
  objc_storeStrong(v17, 0);
  return v19 & 1;
}

- (BOOL)accessibilityPerformEscape
{
  v37 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v30[1] = a2;
  v29 = 0;
  objc_opt_class();
  v28 = __UIAccessibilityCastAsClass();
  v27 = MEMORY[0x29EDC9748](v28);
  objc_storeStrong(&v28, 0);
  v30[0] = v27;
  v34 = &accessibilityPerformEscape_onceToken;
  v33 = 0;
  objc_storeStrong(&v33, &__block_literal_global_52);
  if (*v34 != -1)
  {
    dispatch_once(v34, v33);
  }

  objc_storeStrong(&v33, 0);
  memset(__b, 0, sizeof(__b));
  obj = [v30[0] gestureRecognizers];
  v16 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v16)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(__b[1] + 8 * v13);
      v23 = 0;
      objc_opt_class();
      v10 = [v26 safeValueForKey:@"_targets"];
      v22 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v10);
      if (v23)
      {
        abort();
      }

      v21 = MEMORY[0x29EDC9748](v22);
      objc_storeStrong(&v22, 0);
      v24 = v21;
      memset(v19, 0, sizeof(v19));
      v8 = MEMORY[0x29EDC9748](v21);
      v9 = [v8 countByEnumeratingWithState:v19 objects:v35 count:16];
      if (v9)
      {
        v5 = *v19[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*v19[2] != v5)
          {
            objc_enumerationMutation(v8);
          }

          v20 = *(v19[1] + 8 * v6);
          v18 = [v20 safeValueForKey:@"target"];
          if (objc_opt_isKindOfClass())
          {
            v32 = [v18 accessibilityPerformEscape] & 1;
            v17 = 1;
          }

          else
          {
            v17 = 0;
          }

          objc_storeStrong(&v18, 0);
          if (v17)
          {
            break;
          }

          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [v8 countByEnumeratingWithState:v19 objects:v35 count:16];
            if (!v7)
            {
              goto LABEL_19;
            }
          }
        }
      }

      else
      {
LABEL_19:
        v17 = 0;
      }

      MEMORY[0x29EDC9740](v8);
      if (!v17)
      {
        v17 = 0;
      }

      objc_storeStrong(&v24, 0);
      if (v17)
      {
        break;
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v14)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v17 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v17)
  {
    _accessibilityDimmingView = [(UITransitionViewAccessibility *)selfCopy _accessibilityDimmingView];
    v32 = [_accessibilityDimmingView accessibilityActivate] & 1;
    MEMORY[0x29EDC9740](_accessibilityDimmingView);
  }

  objc_storeStrong(v30, 0);
  return v32 & 1;
}

Class __59__UITransitionViewAccessibility_accessibilityPerformEscape__block_invoke()
{
  result = NSClassFromString(&cfstr_Uipreviewprese_3.isa);
  accessibilityPerformEscape_UIPreviewPresentationControllerClass = result;
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UITransitionViewAccessibility;
  [(UITransitionViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _accessibilityPresentationController = [(UITransitionViewAccessibility *)selfCopy _accessibilityPresentationController];
  [_accessibilityPresentationController _accessibilityLoadAccessibilityInformation];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityPresentationController).n128_u64[0];
  v4 = selfCopy;
  axAdditionalElements = [(UITransitionViewAccessibility *)selfCopy axAdditionalElements];
  [(UITransitionViewAccessibility *)v4 _accessibilitySetAdditionalElements:?];
  MEMORY[0x29EDC9740](axAdditionalElements);
}

- (id)axAdditionalElements
{
  selfCopy = self;
  v39[1] = a2;
  v39[0] = [MEMORY[0x29EDB8DE8] array];
  v10 = v39[0];
  v38.receiver = selfCopy;
  v38.super_class = UITransitionViewAccessibility;
  accessibilityElements = [(UITransitionViewAccessibility *)&v38 accessibilityElements];
  [v10 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](accessibilityElements);
  _accessibilityPresentationController = [(UITransitionViewAccessibility *)selfCopy _accessibilityPresentationController];
  NSClassFromString(&cfstr_Uipagesheetpre.isa);
  v36 = 0;
  v34 = 0;
  _accessibilityShouldAttemptToAddDismissalElement = 0;
  if (objc_opt_isKindOfClass())
  {
    _accessibilityPresentationController2 = [(UITransitionViewAccessibility *)selfCopy _accessibilityPresentationController];
    v36 = 1;
    v35 = [_accessibilityPresentationController2 safeValueForKey:@"delegate"];
    v34 = 1;
    _accessibilityShouldAttemptToAddDismissalElement = [v35 _accessibilityShouldAttemptToAddDismissalElement];
  }

  if (v34)
  {
    MEMORY[0x29EDC9740](v35);
  }

  if (v36)
  {
    MEMORY[0x29EDC9740](_accessibilityPresentationController2);
  }

  MEMORY[0x29EDC9740](_accessibilityPresentationController);
  if (_accessibilityShouldAttemptToAddDismissalElement)
  {
    v2 = objc_alloc(MEMORY[0x29EDC78F8]);
    v33 = [v2 initWithAccessibilityContainer:selfCopy];
    objc_initWeak(&location, selfCopy);
    v9 = v33;
    v26 = MEMORY[0x29EDCA5F8];
    v27 = -1073741824;
    v28 = 0;
    v29 = __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke;
    v30 = &unk_29F30C7F0;
    objc_copyWeak(&v31, &location);
    [v9 _setIsAccessibilityElementBlock:&v26];
    v8 = v33;
    v20 = MEMORY[0x29EDCA5F8];
    v21 = -1073741824;
    v22 = 0;
    v23 = __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke_2;
    v24 = &unk_29F30CAE8;
    objc_copyWeak(&v25, &location);
    [v8 _setAccessibilityFrameBlock:&v20];
    v7 = v33;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke_3;
    v18 = &unk_29F30C7F0;
    objc_copyWeak(&v19, &location);
    [v7 _setAccessibilityActivateBlock:&v14];
    [v33 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v6 = accessibilityLocalizedString(@"popover.view.dimiss.region.hint");
    [v33 setAccessibilityLabel:?];
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    [v39[0] axSafelyAddObject:{v33, v3}];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_storeStrong(&v33, 0);
  }

  v5 = MEMORY[0x29EDC9748](v39[0]);
  objc_storeStrong(v39, 0);

  return v5;
}

BOOL __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v9[0] = objc_loadWeakRetained(a1 + 4);
  v4 = [(UITransitionViewAccessibility *)v9[0] _accessibilityPresentationController];
  v8 = [v4 safeValueForKey:@"_layoutInfo"];
  v7 = [v8 safeArrayForKey:{@"_detents", MEMORY[0x29EDC9740](v4).n128_f64[0]}];
  v6 = [v8 safeIntegerForKey:@"_indexOfCurrentActiveDetent"];
  if ((v6 & 0x8000000000000000) != 0 || v6 >= [v7 count])
  {
    v10 = 0;
  }

  else
  {
    location = [v7 objectAtIndex:v6];
    v2 = [(UITransitionViewAccessibility *)v9[0] _accessibilityPresentationController];
    v3 = 0;
    if ([v2 safeBoolForKey:@"_shouldDismiss"])
    {
      v3 = [location safeIntegerForKey:@"_type"] == 1;
    }

    v10 = v3;
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  return v10;
}

double __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke_2(id *a1)
{
  v16[2] = a1;
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained(a1 + 4);
  v14 = 0;
  objc_opt_class();
  v7 = [(UITransitionViewAccessibility *)v16[0] _accessibilityPresentationController];
  v6 = [v7 safeValueForKey:@"dropShadowView"];
  v13 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);
  v12 = MEMORY[0x29EDC9748](v13);
  objc_storeStrong(&v13, 0);
  v15 = v12;
  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v11 = v8;
  [v8 bounds];
  [v15 bounds];
  UIAccessibilityFrameForBounds();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  return v17;
}

uint64_t __53__UITransitionViewAccessibility_axAdditionalElements__block_invoke_3(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained(a1 + 4);
  [v2[0] accessibilityPerformEscape];
  objc_storeStrong(v2, 0);
  return 1;
}

@end