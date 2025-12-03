@interface SFCapsuleNavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsOverlayShowing;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_accessibilityBrowserController;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (int64_t)_accessibilitySortPriority;
- (void)setTrailingButtons:(id)buttons;
@end

@implementation SFCapsuleNavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFCapsuleCollectionView"];
  [validationsCopy validateClass:@"SFCapsuleCollectionView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  if (AXProcessIsSafari())
  {
    [validationsCopy validateClass:@"CapsuleNavigationBarViewController"];
    [validationsCopy validateClass:@"CapsuleNavigationBarViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"BrowserRootViewController"];
    [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"browserController" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"showTabView" withFullSignature:{"v", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"nextTabKeyPressed:" withFullSignature:{"v", "@", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"previousTabKeyPressed:" withFullSignature:{"v", "@", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"navigationBarReaderButtonWasTapped:" withFullSignature:{"v", "@", 0}];
    [validationsCopy validateClass:@"SFCapsuleNavigationBar" hasInstanceMethod:@"setTrailingButtons:" withFullSignature:{"v", "@", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceVariable:@"_tabController" withType:"TabController"];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"canReadThis" withFullSignature:{"B", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"isReaderAvailable" withFullSignature:{"B", 0}];
    [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"currentTabs" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"indexOfSelectedTab" withFullSignature:{"Q", 0}];
    [validationsCopy validateClass:@"TabController" hasInstanceMethod:@"tabDocumentBeingActivated" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"TabDocument" hasInstanceMethod:@"suggestedTitleForCurrentURL" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"BrowserController" hasInstanceMethod:@"isShowingReader" withFullSignature:{"B", 0}];
    [validationsCopy validateClass:@"_SFReaderController" hasInstanceMethod:@"isReaderAvailable" withFullSignature:{"B", 0}];
    [validationsCopy validateClass:@"SFCapsuleNavigationBar" hasInstanceVariable:@"_overlayView" withType:"SFURLFieldOverlayView"];
    [validationsCopy validateClass:@"SFURLFieldOverlayView" hasInstanceVariable:@"_isShowing" withType:"B"];
    [validationsCopy validateProtocol:@"CollectionViewTab" hasMethod:@"titleForNewBookmark" isInstanceMethod:1 isRequired:1];
  }
}

- (id)_accessibilityBrowserController
{
  v2 = [(SFCapsuleNavigationBarAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2E0540](@"SFCapsuleCollectionView", a2)];
  v3 = [v2 safeValueForKey:@"delegate"];
  MEMORY[0x29C2E0540](@"CapsuleNavigationBarViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"delegate"];
    MEMORY[0x29C2E0540](@"BrowserRootViewController");
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 safeValueForKey:@"browserController"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accessibilityCustomActions
{
  if ([(SFCapsuleNavigationBarAccessibility *)self _axIsOverlayShowing])
  {
    v3 = 0;
  }

  else
  {
    _accessibilityBrowserController = [(SFCapsuleNavigationBarAccessibility *)self _accessibilityBrowserController];
    v5 = _accessibilityBrowserController;
    if (_accessibilityBrowserController)
    {
      v6 = [_accessibilityBrowserController safeValueForKey:@"_tabController"];
      v7 = [v6 safeArrayForKey:@"currentTabs"];
      v40 = v6;
      v8 = [v6 safeIntForKey:@"indexOfSelectedTab"];
      v51[0] = MEMORY[0x29EDCA5F8];
      v51[1] = 3221225472;
      v51[2] = __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke;
      v51[3] = &unk_29F2D6980;
      v9 = v7;
      v52 = v9;
      v10 = MEMORY[0x29C2E0840](v51);
      v11 = v10[2](v10, v8 + 1);
      v12 = v10[2](v10, v8 - 1);
      v13 = v12;
      if (v11 == v8 && v12 == v8)
      {
        v3 = 0;
      }

      else
      {
        v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        objc_initWeak(&location, v5);
        if ([v5 safeBoolForKey:@"canReadThis"])
        {
          v14 = [v5 safeBoolForKey:@"isShowingReader"];
          if ((v14 | [v5 safeBoolForKey:@"isReaderAvailable"]))
          {
            if (v14)
            {
              v15 = @"hide.reader.action";
            }

            else
            {
              v15 = @"show.reader.action";
            }

            v16 = accessibilitySafariServicesLocalizedString(v15);
            v17 = objc_alloc(MEMORY[0x29EDC78E0]);
            v48[0] = MEMORY[0x29EDCA5F8];
            v48[1] = 3221225472;
            v48[2] = __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_2;
            v48[3] = &unk_29F2D68A0;
            objc_copyWeak(&v49, &location);
            v18 = [v17 initWithName:v16 actionHandler:v48];
            [v3 addObject:v18];

            objc_destroyWeak(&v49);
          }
        }

        v19 = 0x29EDBA000;
        if (v11 != v13)
        {
          v39 = [v9 objectAtIndex:v13];
          v20 = objc_alloc(MEMORY[0x29EDC78E0]);
          v21 = MEMORY[0x29EDBA0F8];
          v22 = accessibilityMobileSafariLocalizedString(@"previous.tab");
          v23 = [v39 safeStringForKey:@"titleForNewBookmark"];
          v24 = [v21 stringWithFormat:v22, v23];
          v46[0] = MEMORY[0x29EDCA5F8];
          v46[1] = 3221225472;
          v46[2] = __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_4;
          v46[3] = &unk_29F2D68A0;
          objc_copyWeak(&v47, &location);
          v25 = [v20 initWithName:v24 actionHandler:v46];

          v26 = accessibilityMobileSafariLocalizedString(@"previous.tab.short");
          [v25 _setShortName:v26];

          [v3 addObject:v25];
          objc_destroyWeak(&v47);

          v19 = 0x29EDBA000uLL;
        }

        v27 = [v9 objectAtIndex:v11];
        v28 = objc_alloc(MEMORY[0x29EDC78E0]);
        v29 = *(v19 + 248);
        v30 = accessibilityMobileSafariLocalizedString(@"next.tab");
        v31 = [v27 safeStringForKey:@"titleForNewBookmark"];
        v32 = [v29 stringWithFormat:v30, v31];
        v44[0] = MEMORY[0x29EDCA5F8];
        v44[1] = 3221225472;
        v44[2] = __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_6;
        v44[3] = &unk_29F2D68A0;
        objc_copyWeak(&v45, &location);
        v33 = [v28 initWithName:v32 actionHandler:v44];

        v34 = accessibilityMobileSafariLocalizedString(@"next.tab.short");
        [v33 _setShortName:v34];

        [v3 addObject:v33];
        objc_initWeak(&from, self);
        v35 = objc_alloc(MEMORY[0x29EDC78E0]);
        v36 = accessibilityMobileSafariLocalizedString(@"show.context.menu");
        v41[0] = MEMORY[0x29EDCA5F8];
        v41[1] = 3221225472;
        v41[2] = __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_8;
        v41[3] = &unk_29F2D68A0;
        objc_copyWeak(&v42, &from);
        v37 = [v35 initWithName:v36 actionHandler:v41];

        [v3 addObject:v37];
        objc_destroyWeak(&v42);
        objc_destroyWeak(&from);

        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) count];
  if (v3 <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  if (a2 >= 0)
  {
    return v4;
  }

  else
  {
    return v3 - 1;
  }
}

uint64_t __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained navigationBarReaderButtonWasTapped:0];
}

uint64_t __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained previousTabKeyPressed:0];
}

uint64_t __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained nextTabKeyPressed:0];
}

uint64_t __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __65__SFCapsuleNavigationBarAccessibility_accessibilityCustomActions__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x29EDBA168];
  v4 = WeakRetained;
  [v4 accessibilityFrame];
  AX_CGRectGetCenter();
  v3 = [v2 valueWithPoint:?];
  [v4 _accessibilityShowContextMenuWithTargetPointValue:v3];
}

- (id)accessibilityElements
{
  if ([(SFCapsuleNavigationBarAccessibility *)self _axIsOverlayShowing])
  {
    v3 = [(SFCapsuleNavigationBarAccessibility *)self safeUIViewForKey:@"_overlayView"];
    _accessibilitySortedElementsWithin = [v3 _accessibilitySortedElementsWithin];
  }

  else
  {
    _accessibilitySortedElementsWithin = [(SFCapsuleNavigationBarAccessibility *)self _accessibilitySortedElementsWithin];
  }

  return _accessibilitySortedElementsWithin;
}

- (int64_t)_accessibilitySortPriority
{
  if (AXRequestingClient() == 4)
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SFCapsuleNavigationBarAccessibility;
  return [(SFCapsuleNavigationBarAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _accessibilityBrowserController = [(SFCapsuleNavigationBarAccessibility *)self _accessibilityBrowserController];
  v5 = _accessibilityBrowserController;
  if (_accessibilityBrowserController)
  {
    if (scroll == 4)
    {
      v15[5] = MEMORY[0x29EDCA5F8];
      v15[6] = 3221225472;
      v15[7] = __59__SFCapsuleNavigationBarAccessibility_accessibilityScroll___block_invoke;
      v15[8] = &unk_29F2D6938;
      v16 = _accessibilityBrowserController;
      AXPerformSafeBlock();
      v6 = 1;
      v7 = v16;
LABEL_15:

      goto LABEL_16;
    }

    v7 = [_accessibilityBrowserController safeValueForKey:@"_tabController"];
    v8 = [v7 safeArrayForKey:@"currentTabDocuments"];
    v9 = [v7 safeValueForKey:@"tabDocumentBeingActivated"];
    v10 = [v8 indexOfObject:v9];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (scroll == 1)
      {
        if (v10 >= 1)
        {
          v11 = v14;
          v14[0] = MEMORY[0x29EDCA5F8];
          v14[1] = 3221225472;
          v12 = __59__SFCapsuleNavigationBarAccessibility_accessibilityScroll___block_invoke_3;
          goto LABEL_12;
        }
      }

      else if (scroll == 2 && v10 + 1 < [v8 count])
      {
        v11 = v15;
        v15[0] = MEMORY[0x29EDCA5F8];
        v15[1] = 3221225472;
        v12 = __59__SFCapsuleNavigationBarAccessibility_accessibilityScroll___block_invoke_2;
LABEL_12:
        v11[2] = v12;
        v11[3] = &unk_29F2D6938;
        v11[4] = v5;
        AXPerformSafeBlock();

        v6 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)setTrailingButtons:(id)buttons
{
  v3.receiver = self;
  v3.super_class = SFCapsuleNavigationBarAccessibility;
  [(SFCapsuleNavigationBarAccessibility *)&v3 setTrailingButtons:buttons];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_axIsOverlayShowing
{
  v2 = [(SFCapsuleNavigationBarAccessibility *)self safeValueForKeyPath:@"_overlayView._isShowing"];
  v3 = v2 != 0;

  return v3;
}

@end