@interface UISheetPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCanCollapseSheet;
- (BOOL)_accessibilityCanExpandSheet;
- (BOOL)_accessibilityCollapseSheet;
- (BOOL)_accessibilityExpandSheet;
- (BOOL)_accessibilityIsInverted;
- (BOOL)_accessibilityPresentationControllerModalizes;
- (id)_axActiveDetent;
- (id)_axGrabberStatusDescription;
- (int64_t)_axCurrentGrabberAction;
- (int64_t)_axSheetDetentType;
- (void)_accessibilityChangeSize:(BOOL)size;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupGrabber:(id)grabber;
- (void)_axMarkupGrabbers;
- (void)_containerViewLayoutSubviews;
@end

@implementation UISheetPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UISheetPresentationController";
  v3 = @"UIPresentationController";
  [location[0] validateClass:? isKindOfClass:?];
  v5 = "v";
  [location[0] validateClass:@"UISheetPresentationController" hasInstanceMethod:@"_containerViewLayoutSubviews" withFullSignature:0];
  v8 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"_layoutInfo" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"_currentPresentedViewFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"presentedView" withFullSignature:{v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"dropShadowView" withFullSignature:{v8, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_shouldDismiss" withFullSignature:{"B", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"delegate" withFullSignature:{v8, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"animateChanges:" withFullSignature:{v5, "@?", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_sendDidChangeSelectedDetentIdentifier" withFullSignature:{v5, 0}];
  v6 = @"UIDropShadowView";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"_bottomGrabber" withFullSignature:{v8, 0}];
  v7 = @"_UISheetLayoutInfo";
  [location[0] validateProtocol:? hasRequiredInstanceMethod:?];
  [location[0] validateProtocol:v7 hasRequiredInstanceMethod:@"_indexOfCurrentActiveDetent"];
  [location[0] validateProtocol:v7 hasRequiredInstanceMethod:@"_activeDetents"];
  [location[0] validateProtocol:v7 hasRequiredInstanceMethod:@"_presentedViewController"];
  [location[0] validateProtocol:v7 hasRequiredInstanceMethod:@"_setSelectedDetentIdentifier:"];
  [location[0] validateProtocol:v7 hasRequiredInstanceMethod:@"_isInverted"];
  [location[0] validateClass:@"_UISheetActiveDetent" hasInstanceMethod:@"_identifier" withFullSignature:{v8, 0}];
  v9 = @"UISheetPresentationControllerDetent";
  [location[0] validateClass:? hasProperty:? withType:?];
  [location[0] validateClass:v9 hasInstanceMethod:@"_type" withFullSignature:{"q", 0}];
  [location[0] validateClass:v9];
  objc_storeStrong(v11, v10);
}

- (void)_containerViewLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISheetPresentationControllerAccessibility;
  [(UISheetPresentationControllerAccessibility *)&v2 _containerViewLayoutSubviews];
  [(UISheetPresentationControllerAccessibility *)selfCopy _axMarkupGrabbers];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISheetPresentationControllerAccessibility;
  [(UISheetPresentationControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UISheetPresentationControllerAccessibility *)selfCopy _axMarkupGrabbers];
}

- (void)_axMarkupGrabbers
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"dropShadowView"];
  v3 = selfCopy;
  v4 = [v7[0] safeValueForKey:@"_topGrabber"];
  [(UISheetPresentationControllerAccessibility *)v3 _axMarkupGrabber:?];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5 = selfCopy;
  v6 = [v7[0] safeValueForKey:{@"_bottomGrabber", v2}];
  [(UISheetPresentationControllerAccessibility *)v5 _axMarkupGrabber:?];
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(v7, 0);
}

- (void)_axMarkupGrabber:(id)grabber
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, grabber);
  objc_initWeak(&v34, selfCopy);
  v27 = MEMORY[0x29EDCA5F8];
  v28 = -1073741824;
  v29 = 0;
  v30 = __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke;
  v31 = &unk_29F30C7F0;
  objc_copyWeak(&v32, &v34);
  v33 = MEMORY[0x29ED3E4C0](&v27);
  [location[0] _accessibilitySetSortPriority:1];
  v8 = location[0];
  CGSizeMake();
  v26[1] = v3;
  v26[2] = v4;
  [v8 _accessibilitySetFrameExpansion:{*&v3, *&v4}];
  [location[0] _setIsAccessibilityElementBlock:v33];
  v7 = location[0];
  v21 = MEMORY[0x29EDCA5F8];
  v22 = -1073741824;
  v23 = 0;
  v24 = __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_2;
  v25 = &unk_29F30CB80;
  v26[0] = MEMORY[0x29EDC9748](v33);
  [v7 _setAccessibilityTraitsBlock:&v21];
  v6 = location[0];
  v15 = MEMORY[0x29EDCA5F8];
  v16 = -1073741824;
  v17 = 0;
  v18 = __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_3;
  v19 = &unk_29F30C9E8;
  objc_copyWeak(&v20, &v34);
  [v6 _setAccessibilityHintBlock:&v15];
  v5 = location[0];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = -1073741824;
  v11 = 0;
  v12 = __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_4;
  v13 = &unk_29F30C9E8;
  objc_copyWeak(&v14, &v34);
  [v5 setAccessibilityValueBlock:&v9];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v20);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v33, 0);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_storeStrong(location, 0);
}

uint64_t __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (!location[0])
  {
    v10 = 0;
    goto LABEL_16;
  }

  v4 = [location[0] _axCurrentGrabberAction];
  if (!v4)
  {
LABEL_15:
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    if ((v4 - 2) > 1)
    {
      v10 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v3 = [location[0] safeValueForKey:@"delegate"];
  v7 = 0;
  v5 = 0;
  if (!v3 || (v8 = [location[0] safeValueForKey:@"delegate"], v7 = 1, v2 = 0, (objc_msgSend(v8, "_accessibilityShouldAttemptToAddDismissalElement") & 1) != 0))
  {
    v6 = [location[0] safeValueForKey:@"_shouldDismiss"];
    v5 = 1;
    v2 = v6 != 0;
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v3);
LABEL_16:
  objc_storeStrong(location, 0);
  return v10 & 1;
}

uint64_t __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    return *MEMORY[0x29EDC7F70];
  }

  else
  {
    return *MEMORY[0x29EDC7FA0];
  }
}

id __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_3(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v3 = [location[0] _axCurrentGrabberAction];
    if (v3)
    {
      switch(v3)
      {
        case 1:
          v5 = accessibilityLocalizedString(@"sheet.grabber.dismiss.sheet.hint");
          break;
        case 2:
          v5 = accessibilityLocalizedString(@"sheet.grabber.collapse.hint");
          break;
        case 3:
          v5 = accessibilityLocalizedString(@"sheet.grabber.expand.hint");
          break;
        default:
          v5 = 0;
          break;
      }
    }

    else
    {
      v5 = accessibilityLocalizedString(@"sheet.grabber.dismiss.keyboard.hint");
    }
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v1 = v5;

  return v1;
}

id __63__UISheetPresentationControllerAccessibility__axMarkupGrabber___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _axGrabberStatusDescription];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

- (id)_axGrabberStatusDescription
{
  _axSheetDetentType = [(UISheetPresentationControllerAccessibility *)self _axSheetDetentType];
  if (_axSheetDetentType)
  {
    switch(_axSheetDetentType)
    {
      case 1:
        goto LABEL_10;
      case 2:
        goto LABEL_13;
      case 3:
        goto LABEL_10;
    }

    if (_axSheetDetentType != 4)
    {
      goto LABEL_17;
    }
  }

  v8 = [(UISheetPresentationControllerAccessibility *)self safeUIViewForKey:@"presentedView"];
  window = [v8 window];
  [window frame];
  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  MEMORY[0x29EDC9740](window);
  MEMORY[0x29EDC9740](v8);
  [(UISheetPresentationControllerAccessibility *)self safeCGRectForKey:@"_currentPresentedViewFrame"];
  v16 = CGRectIntersection(v15, v11);
  v10 = v16.size.height / v11.size.height;
  if (v16.size.height / v11.size.height >= 0.7)
  {
LABEL_10:
    v13 = accessibilityLocalizedString(@"sheet.card.size.full");
    goto LABEL_18;
  }

  if (v10 >= 0.3 && v10 < 0.7)
  {
LABEL_13:
    v13 = accessibilityLocalizedString(@"sheet.card.size.medium");
    goto LABEL_18;
  }

  if (v10 > 0.1 && v10 < 0.3)
  {
    v13 = accessibilityLocalizedString(@"sheet.card.size.small");
    goto LABEL_18;
  }

LABEL_17:
  v13 = 0;
LABEL_18:

  return v13;
}

- (int64_t)_axCurrentGrabberAction
{
  v3 = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v4 = [v3 safeIntegerForKey:@"_grabberAction"];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)_axActiveDetent
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v9 = [v10[0] safeIntegerForKey:@"_indexOfCurrentActiveDetent"];
  v8 = [v10[0] safeArrayForKey:@"_activeDetents"];
  v5 = 0;
  if (v9 >= [v8 count])
  {
    v2 = MEMORY[0x29EDC9748](0);
  }

  else
  {
    v6 = [v8 objectAtIndexedSubscript:v9];
    v5 = 1;
    v2 = MEMORY[0x29EDC9748](v6);
  }

  v7 = v2;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  v4 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);

  return v4;
}

- (int64_t)_axSheetDetentType
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UISheetPresentationControllerAccessibility *)self _axActiveDetent];
  v3 = 0;
  NSClassFromString(&cfstr_Uisheetpresent_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] safeIntegerForKey:@"_type"];
  }

  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)_accessibilityPresentationControllerModalizes
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v9 = [v21[0] safeValueForKey:@"_containerTraitCollection"];
  v10 = [v9 verticalSizeClass] == 1;
  MEMORY[0x29EDC9740](v9);
  v20 = v10;
  v18 = 0;
  objc_opt_class();
  v11 = [v21[0] safeValueForKey:@"_presentedViewController"];
  v17 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19 = v16;
  _axActiveDetent = [(UISheetPresentationControllerAccessibility *)selfCopy _axActiveDetent];
  _axSheetDetentType = [(UISheetPresentationControllerAccessibility *)selfCopy _axSheetDetentType];
  v13 = [_axActiveDetent safeStringForKey:@"identifier"];
  if ([v13 isEqualToString:@"com.apple.UIKit.ColorPicker"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"ComplicationGalleryDodge") & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"homeScreenPickerDodge") & 1) != 0 || (objc_msgSend(v19, "_accessibilityPresentedControllerModalizes"))
  {
    v23 = 1;
  }

  else if (_axSheetDetentType == 1 || _axSheetDetentType == 3 || ([v13 isEqualToString:@"com.apple.UIKit.large"] & 1) != 0)
  {
    v23 = 1;
  }

  else if (_axSheetDetentType == 2 && v20)
  {
    v23 = 1;
  }

  else
  {
    v23 = (!_axSheetDetentType || _axSheetDetentType == 4) && ((v8 = -[UISheetPresentationControllerAccessibility safeUIViewForKey:](selfCopy, "safeUIViewForKey:", @"presentedView"), v7 = [v8 window], objc_msgSend(v7, "frame"), r2.origin.x = v2, r2.origin.y = v3, r2.size.width = v4, r2.size.height = v5, MEMORY[0x29EDC9740](v7), MEMORY[0x29EDC9740](v8), -[UISheetPresentationControllerAccessibility safeCGRectForKey:](selfCopy, "safeCGRectForKey:", @"_currentPresentedViewFrame"), v25 = CGRectIntersection(v24, r2), v25.size.height / r2.size.height >= 0.7) && v25.size.width / r2.size.width >= 0.4 || (AXProcessIsShortcuts() & 1) != 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&_axActiveDetent, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v21, 0);
  return v23;
}

- (BOOL)_accessibilityExpandSheet
{
  if (![(UISheetPresentationControllerAccessibility *)self _accessibilityCanExpandSheet])
  {
    return 0;
  }

  [(UISheetPresentationControllerAccessibility *)self _accessibilityChangeSize:1];
  return 1;
}

- (BOOL)_accessibilityCollapseSheet
{
  if (![(UISheetPresentationControllerAccessibility *)self _accessibilityCanCollapseSheet])
  {
    return 0;
  }

  [(UISheetPresentationControllerAccessibility *)self _accessibilityChangeSize:0];
  return 1;
}

- (BOOL)_accessibilityCanCollapseSheet
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v3 = [v6[0] safeIntegerForKey:@"_indexOfCurrentActiveDetent"] + 1;
  v4 = [v6[0] safeArrayForKey:@"_activeDetents"];
  v5 = v3 < [v4 count];
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(v6, 0);
  return v5;
}

- (BOOL)_accessibilityCanExpandSheet
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v3 = [v4[0] safeIntegerForKey:@"_indexOfCurrentActiveDetent"] - 1 >= 0;
  objc_storeStrong(v4, 0);
  return v3;
}

- (BOOL)_accessibilityIsInverted
{
  v3 = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v4 = [v3 safeBoolForKey:@"_isInverted"];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (void)_accessibilityChangeSize:(BOOL)size
{
  selfCopy = self;
  v12 = a2;
  sizeCopy = size;
  v10 = [(UISheetPresentationControllerAccessibility *)self safeValueForKey:@"_layoutInfo"];
  v9 = [v10 safeIntegerForKey:@"_indexOfCurrentActiveDetent"];
  if (sizeCopy)
  {
    v3 = -1;
  }

  else
  {
    v3 = 1;
  }

  v8 = v9 + v3;
  v7 = [v10 safeArrayForKey:@"_activeDetents"];
  if ((v8 & 0x8000000000000000) == 0 && v8 < [v7 count])
  {
    v4 = MEMORY[0x29EDC9748](selfCopy);
    v5 = MEMORY[0x29EDC9748](v10);
    v6[0] = MEMORY[0x29EDC9748](v7);
    v6[1] = v8;
    AXPerformSafeBlock();
    objc_storeStrong(v6, 0);
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
}

void __71__UISheetPresentationControllerAccessibility__accessibilityChangeSize___block_invoke(uint64_t a1)
{
  v10[3] = a1;
  v10[2] = a1;
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __71__UISheetPresentationControllerAccessibility__accessibilityChangeSize___block_invoke_2;
  v7 = &unk_29F30CBA8;
  v8 = MEMORY[0x29EDC9748](*(a1 + 40));
  v9 = MEMORY[0x29EDC9748](*(a1 + 48));
  v10[1] = *(a1 + 56);
  v10[0] = MEMORY[0x29EDC9748](*(a1 + 32));
  [v2 animateChanges:?];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void __71__UISheetPresentationControllerAccessibility__accessibilityChangeSize___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 56)];
  v2 = [v3 safeStringForKey:@"_identifier"];
  [v1 _setSelectedDetentIdentifier:?];
  MEMORY[0x29EDC9740](v2);
  [*(a1 + 48) _sendDidChangeSelectedDetentIdentifier];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end