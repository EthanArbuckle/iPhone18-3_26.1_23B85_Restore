@interface NTKFaceLibraryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShouldSwipeBetweenPagesForPageScrollViewController:(id)a3;
- (BOOL)_axAddPageViewControllerIsActive;
- (BOOL)_axCanUseOverlayButton:(id)a3;
- (BOOL)_axStartEditing;
- (id)_accessibilityCustomActionsForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4;
- (id)_accessibilityHintForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4;
- (id)_accessibilityLabelForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4;
- (id)_accessibilityValueForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4;
@end

@implementation NTKFaceLibraryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKFaceCollection" hasInstanceMethod:@"faceAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_indexOfAddPage" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NTKFaceLibraryOverlayView" hasInstanceMethod:@"cancelButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceLibraryOverlayView" hasInstanceMethod:@"editButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_deactivateAddFaceAnimated: withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_startFaceEditing" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"face" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_libraryFaceCollection" withType:"NTKFaceCollection"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_addableFaceCollection" withType:"NTKFaceCollection"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_switcherController" withType:"NTKSwitcherViewController"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_libraryOverlayView" withType:"NTKFaceLibraryOverlayView"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_selectedFaceViewController" withType:"NTKFaceViewController"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_presented" withType:"B"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_isFaceEditing" withType:"B"];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceVariable:@"_addFaceViewController" withType:"NTKAddPageViewController"];
  [v3 validateClass:@"NTKAddPageViewController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NTKAddPageViewController" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_titleForAddFacePageAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"endInteractiveLibraryPresentationLatched:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_scrollToAndSetupFaceAtIndex: updateLibraryFaceCollection:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"NTKFaceLibraryViewController" hasInstanceMethod:@"_dismissSwitcherAnimated:withIndex:remainFrozen:completion:" withFullSignature:{"v", "B", "Q", "B", "@?", 0}];
  [v3 validateClass:@"NTKFace"];
  [v3 validateClass:@"NTKFace" hasInstanceMethod:@"faceStyle" withFullSignature:{"q", 0}];
  [v3 validateClass:@"NTKFace" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKPageScrollViewController"];
  [v3 validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"scrollEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NTKPageScrollViewController" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"Q", 0}];
}

- (BOOL)_accessibilityShouldSwipeBetweenPagesForPageScrollViewController:(id)a3
{
  v4 = a3;
  if (([(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_isFaceEditing"]& 1) != 0 || ![(NTKFaceLibraryViewControllerAccessibility *)self safeBoolForKey:@"_presented"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 safeBoolForKey:@"scrollEnabled"];
  }

  return v5;
}

- (id)_accessibilityValueForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v8 == v6 && [(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]!= a3)
  {
    v20 = 0;
    objc_opt_class();
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = 0;
    v13 = v7;
    AXPerformSafeBlock();
    v12 = v15[5];

    _Block_object_dispose(&v14, 8);
    v9 = __UIAccessibilityCastAsSafeCategory();

    if (v20 == 1)
    {
      abort();
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = AXNTKFaceComplicationOverviewDescription(v9);

  return v10;
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityValueForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (id)_accessibilityLabelForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v8 != v6)
  {
    [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_addableFaceCollection"];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v9 = v29 = 0;
    AXPerformSafeBlock();
    v10 = v25[5];

    _Block_object_dispose(&v24, 8);
    if (v10)
    {
      v11 = [v10 safeStringForKey:@"name"];
      v12 = [v11 localizedLowercaseString];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_8;
  }

  if ([(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]== a3)
  {
    v12 = accessibilityLocalizedString(@"add.new.face", v13);
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v30 = 0;
  objc_opt_class();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v23 = v7;
  AXPerformSafeBlock();
  v16 = v25[5];

  _Block_object_dispose(&v24, 8);
  v14 = __UIAccessibilityCastAsSafeCategory();

  if (v30 == 1)
  {
    abort();
  }

  if (v14)
  {
    v17 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryOverlayView"];
    v18 = [v17 safeValueForKey:@"editButton"];
    v19 = [v14 safeStringForKey:@"name"];
    v20 = [v19 localizedLowercaseString];

    if ([(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v18])
    {
      v22 = accessibilityLocalizedString(@"face.customizable.hint", v21);
      v12 = __UIAXStringForVariables();
    }

    else
    {
      v12 = v20;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityLabelForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t __107__NTKFaceLibraryViewControllerAccessibility__accessibilityLabelForPageAtIndex_forPageScrollViewController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) faceAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (id)_accessibilityHintForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];

  if (v7 == v6)
  {
    if ([(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"]== a3)
    {
      v8 = accessibilityLocalizedString(@"add.face.hint", v9);
    }

    else
    {
      v10 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryFaceCollection"];
      v24 = 0;
      objc_opt_class();
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__1;
      v22 = __Block_byref_object_dispose__1;
      v23 = 0;
      v11 = v10;
      AXPerformSafeBlock();
      v12 = v19[5];

      _Block_object_dispose(&v18, 8);
      v13 = __UIAccessibilityCastAsSafeCategory();

      if (v24 == 1)
      {
        abort();
      }

      v14 = [v13 _accessibilityFaceStyleDescription];
      v17 = accessibilityLocalizedString(@"face.hint", v15);
      v8 = __UIAXStringForVariables();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __106__NTKFaceLibraryViewControllerAccessibility__accessibilityHintForPageAtIndex_forPageScrollViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (BOOL)_axCanUseOverlayButton:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = [v4 isEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_axStartEditing
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __60__NTKFaceLibraryViewControllerAccessibility__axStartEditing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _startFaceEditing];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (BOOL)_axAddPageViewControllerIsActive
{
  v3 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];
  v4 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_addFaceViewController"];
  v5 = [v3 safeUnsignedIntegerForKey:@"currentPageIndex"];
  if (v5 == [(NTKFaceLibraryViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"_indexOfAddPage"])
  {
    v6 = [v4 safeBoolForKey:@"isActive"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityCustomActionsForPageAtIndex:(unint64_t)a3 forPageScrollViewController:(id)a4
{
  v6 = a4;
  v7 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_libraryOverlayView"];
  v8 = [(NTKFaceLibraryViewControllerAccessibility *)self safeValueForKey:@"_switcherController"];
  v9 = [(NTKFaceLibraryViewControllerAccessibility *)self _accessibilityShouldSwipeBetweenPagesForPageScrollViewController:v8];

  if (v9)
  {
    v10 = +[NSMutableArray array];
    if ([v6 safeBoolForKey:@"scrollEnabled"] && objc_msgSend(v6, "safeUnsignedIntegerForKey:", @"currentPageIndex") == a3)
    {
      v11 = [v7 safeValueForKey:@"editButton"];
      if (![(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v11])
      {
LABEL_10:

        goto LABEL_13;
      }

      v12 = [UIAccessibilityCustomAction alloc];
      v13 = [v11 titleForState:0];
      v14 = [v12 initWithName:v13 target:self selector:"_axStartEditing"];

      v15 = [UIImage systemImageNamed:@"pencil.circle.fill"];
      [v14 setImage:v15];

      [v10 addObject:v14];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    if ([(NTKFaceLibraryViewControllerAccessibility *)self _axAddPageViewControllerIsActive])
    {
      v11 = [v7 safeValueForKey:@"cancelButton"];
      if ([(NTKFaceLibraryViewControllerAccessibility *)self _axCanUseOverlayButton:v11])
      {
        v16 = [UIAccessibilityCustomAction alloc];
        v17 = [v11 titleForState:0];
        v14 = [v16 initWithName:v17 target:self selector:"_axDeactivateAddFace"];

        v19 = v14;
        v10 = [NSArray arrayWithObjects:&v19 count:1];
        goto LABEL_9;
      }
    }

    v10 = 0;
  }

LABEL_13:

  return v10;
}

void __87__NTKFaceLibraryViewControllerAccessibility__deactivateAddFaceAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 40) == 1)
  {
    v3 = UIAccessibilityScreenChangedNotification;

    UIAccessibilityPostNotification(v3, 0);
  }
}

uint64_t __104__NTKFaceLibraryViewControllerAccessibility__dismissSwitcherAnimated_withIndex_remainFrozen_completion___block_invoke(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = vars8;
  }

  a2.n128_u64[0] = 0.5;

  return _AXPerformBlockOnMainThreadAfterDelay(&__block_literal_global_441, a2);
}

@end