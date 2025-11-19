@interface LockScreenPosterCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axCollectionView;
- (id)_axHeaderLabel;
- (id)_axWallpaperWidgetsNames;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation LockScreenPosterCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" isKindOfClass:@"PosterCollectionViewCell"];
  [v3 validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" isKindOfClass:@"PosterPairCollectionViewCell"];
  [v3 validateClass:@"PosterBoard.PosterSectionHeaderView"];
  [v3 validateClass:@"PosterBoard.PosterSectionHeaderView" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"UIWindow" hasInstanceVariable:@"_delegateViewController" withType:"UIViewController"];
  [v3 validateClass:@"UICollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [v3 validateClass:@"PosterBoard.PosterRackCollectionViewController" hasInstanceMethod:@"posterSectionRemovalView:didRequestRemovalOfPosterWithID:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PosterBoard.PosterPairCollectionViewCell" hasSwiftFieldOfAnyClass:@"posterPair"];
  [v3 validateClass:@"PosterBoard.PosterPair" hasSwiftField:@"id" withSwiftType:"String"];
  [v3 validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" hasSwiftFieldOfAnyClass:@"focusButton"];
  [v3 validateClass:@"CHSWidgetDescriptor" hasProperty:@"displayName" withType:"@"];
  [v3 validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" hasSwiftFieldOfAnyClass:@"prominentController"];
  [v3 validateClass:@"PosterBoard.LockScreenPosterCollectionViewCell" hasSwiftFieldOfAnyClass:@"floatingProminentController"];
  [v3 validateClass:@"CSProminentDisplayViewController" hasInstanceMethod:@"subtitleComplicationViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRInlineComplicationSnapshotViewController" hasInstanceMethod:@"complicationDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSProminentDisplayViewController" hasInstanceMethod:@"complicationContainerViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSProminentDisplayViewController" hasInstanceMethod:@"complicationSidebarViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetGridViewController" hasInstanceMethod:@"model" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRWidgetGridModel" hasInstanceMethod:@"complicationDescriptors" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRComplicationDescriptor" hasInstanceMethod:@"widgetDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PosterBoard.PosterSectionRemovalView"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = AXLayoutMode(v3);

  if (v4 == 3)
  {
    accessibilityLocalizedString(@"lock.screen.poster.cell.customize.label");
  }

  else
  {
    [(LockScreenPosterCollectionViewCellAccessibility *)self _axHeaderLabel];
  }
  v5 = ;

  return v5;
}

- (id)accessibilityHint
{
  v8 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = AXLayoutMode(v3);

  if (v4 == 3)
  {
    v7.receiver = self;
    v7.super_class = LockScreenPosterCollectionViewCellAccessibility;
    v5 = [(LockScreenPosterCollectionViewCellAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"lock.screen.poster.collection.view.cell.hint");
  }

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v7 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = AXLayoutMode(v3);

  if (v4 == 3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = LockScreenPosterCollectionViewCellAccessibility;
  return [(LockScreenPosterCollectionViewCellAccessibility *)&v6 isAccessibilityElement];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(LockScreenPosterCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"focusButton"];
  v4 = v3;
  if (v3)
  {
    v10[0] = v3;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = LockScreenPosterCollectionViewCellAccessibility;
    v5 = [(LockScreenPosterCollectionViewCellAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  v6 = v5;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = LockScreenPosterCollectionViewCellAccessibility;
  [(LockScreenPosterCollectionViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(LockScreenPosterCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"focusButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 accessibilitySetIdentification:@"poster.switcher.focus.button"];
}

- (id)accessibilityCustomActions
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = AXCollectionViewController(v3);

  v5 = [(LockScreenPosterCollectionViewCellAccessibility *)self _axCollectionView];
  LOBYTE(location) = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  if (AXLayoutMode(v6) == 3)
  {
    v25.receiver = self;
    v25.super_class = LockScreenPosterCollectionViewCellAccessibility;
    [(LockScreenPosterCollectionViewCellAccessibility *)&v25 accessibilityCustomActions];
  }

  else
  {
    if (AXLockScreenPostersCount(v5) >= 2 && AXLayoutMode(v6) == 1)
    {
      if (AXDeviceIsPad())
      {
        v22[0] = MEMORY[0x29EDCA5F8];
        v22[1] = 3221225472;
        v22[2] = __77__LockScreenPosterCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
        v22[3] = &unk_29F2EB4D8;
        v23 = v6;
        v7 = [v5 _accessibilityFindSubviewDescendant:v22];
      }

      else
      {
        v7 = 0;
      }

      objc_initWeak(&location, self);
      v10 = objc_alloc(MEMORY[0x29EDC78E0]);
      v11 = accessibilityLocalizedString(@"lock.screen.poster.cell.delete.label");
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __77__LockScreenPosterCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2;
      v17 = &unk_29F2EB528;
      v18 = v4;
      v12 = v7;
      v19 = v12;
      objc_copyWeak(&v20, &location);
      v13 = [v10 initWithName:v11 actionHandler:&v14];

      v8 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v13, v14, v15, v16, v17}];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);

      goto LABEL_9;
    }

    v24.receiver = self;
    v24.super_class = LockScreenPosterCollectionViewCellAccessibility;
    [(LockScreenPosterCollectionViewCellAccessibility *)&v24 accessibilityCustomActions];
  }
  v8 = ;
LABEL_9:

  return v8;
}

BOOL __77__LockScreenPosterCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x29C2E7EC0](@"PosterBoard.PosterSectionRemovalView");
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    [v3 frame];
    v5 = v4;
    [*(a1 + 32) frame];
    if (v5 == v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

uint64_t __77__LockScreenPosterCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  AXPerformSafeBlock();
  objc_destroyWeak(&v7);

  return 1;
}

void __77__LockScreenPosterCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained safeSwiftValueForKey:@"posterPair"];
  v4 = [v3 safeSwiftStringForKey:@"id"];
  [v1 posterSectionRemovalView:v2 didRequestRemovalOfPosterWithID:v4];
}

- (id)_axHeaderLabel
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = [(LockScreenPosterCollectionViewCellAccessibility *)self _axCollectionView];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 _accessibilitySubviews];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        MEMORY[0x29C2E7EC0](@"PosterBoard.PosterSectionHeaderView");
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 isHidden] & 1) == 0)
        {
          [v9 accessibilityFrame];
          v11 = v10;
          [(LockScreenPosterCollectionViewCellAccessibility *)self accessibilityFrame];
          v13 = v12 + -1.0;
          v14 = v12 + 1.0;
          if (v13 <= v11 && v11 <= v14)
          {
            v16 = accessibilityLocalizedString(@"lock.screen.wallpaper.label");
            v20 = [v9 safeSwiftStringForKey:@"title"];
            v17 = AXCFormattedString();

            goto LABEL_16;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = 0;
LABEL_16:

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(LockScreenPosterCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"focusButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityValue];
  if (v5)
  {
    v6 = [v4 accessibilityLabel];
    v9 = [(LockScreenPosterCollectionViewCellAccessibility *)self _axWallpaperWidgetsNames];
    v7 = __AXStringForVariables();
  }

  else
  {
    v7 = [(LockScreenPosterCollectionViewCellAccessibility *)self _axWallpaperWidgetsNames];
  }

  return v7;
}

- (id)_axWallpaperWidgetsNames
{
  v46 = *MEMORY[0x29EDCA608];
  v3 = [(LockScreenPosterCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"prominentController"];
  v4 = [(LockScreenPosterCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"floatingProminentController"];
  v5 = [v3 safeValueForKeyPath:@"subtitleComplicationViewController.complicationDescriptor.widgetDescriptor"];
  v35 = v3;
  v6 = [v3 safeValueForKeyPath:@"complicationContainerViewController.model"];
  v7 = [v6 safeArrayForKey:@"complicationDescriptors"];
  v8 = [v7 mutableCopy];

  v34 = v4;
  v9 = [v4 safeValueForKeyPath:@"complicationSidebarViewController.model"];
  v10 = [v9 safeArrayForKey:@"complicationDescriptors"];

  v32 = v10;
  [v8 axSafelyAddObjectsFromArray:v10];
  v11 = [MEMORY[0x29EDB8DE8] array];
  v12 = [MEMORY[0x29EDB8E00] dictionary];
  if (v5)
  {
    v13 = AXTopWidgetAndAppName(v5);
    [v11 axSafelyAddObject:v13];
  }

  v33 = v5;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v40 + 1) + 8 * i) safeValueForKey:@"widgetDescriptor"];
        AXMapAppNameToWidgets(v19, v12);
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v16);
  }

  v31 = v14;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [v12 allKeys];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v12 objectForKey:*(*(&v36 + 1) + 8 * j)];
        v26 = AXFormatAndListWithElements();
        v27 = __UIAXStringForVariables();
        [v11 axSafelyAddObject:{v27, v26, @"__AXStringForVariablesSentinel"}];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  v28 = AXFormatAndListWithElements();

  v29 = *MEMORY[0x29EDCA608];

  return v28;
}

- (id)_axCollectionView
{
  objc_opt_class();
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = AXCollectionViewController(v2);
  v4 = [v3 safeValueForKey:@"collectionView"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

@end