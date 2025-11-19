@interface VideosUI
@end

@implementation VideosUI

uint64_t __62__VideosUI_MultiPlayerContainerViewAccessibility__axMultiView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29ED3FF70](@"VideosUI.MultiPlayerViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __75__VideosUI_MultiPlayerContainerViewAccessibility__axAllMultiviewContainers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VideosUI.MultiPlayerContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaItemMetadataForProperty:@"TVPMediaItemMetadataCanonicalID"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 safeSwiftStringForKey:@"identifier"];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VideosUI.StackCollectionView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUIStackingPosterView");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29ED3FF70](@"VideosUI.CardView");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __68__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityLabel__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x29EDBA070];
  v5 = a3;
  v6 = [a2 safeValueForKey:@"textLayout"];
  v7 = [v4 numberWithInteger:{objc_msgSend(v6, "safeIntegerForKey:", @"textStyle"}];

  v8 = MEMORY[0x29EDBA070];
  v9 = [v5 safeValueForKey:@"textLayout"];

  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "safeIntegerForKey:", @"textStyle"}];

  v11 = [v7 compare:v10];
  return v11;
}

uint64_t __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v6 = *(a1 + 40);
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDetailsViewControllerVisible:(*(a1 + 40) & 1) == 0 animated:0 completion:0];
}

uint64_t __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  objc_copyWeak(&v6, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);

  return 0;
}

void __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 _axAVPlayer];
  [WeakRetained removePlayerViewController:v3 animated:0 completion:0];
}

uint64_t __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  objc_copyWeak(&v6, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);

  return 0;
}

void __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 _axAVPlayer];
  [WeakRetained enterFullscreenWithPlayerViewController:v3 completion:0];
}

uint64_t __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_7(id *a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, a1 + 4);
  objc_copyWeak(&v6, a1 + 5);
  objc_copyWeak(&v7, a1 + 6);
  AXPerformSafeBlock();
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);

  return 0;
}

void __76__VideosUI_MultiPlayerContainerViewAccessibility_accessibilityCustomActions__block_invoke_8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v7 = [WeakRetained _axAVPlayer];

  v3 = objc_loadWeakRetained(a1 + 5);
  [v3 removePlayerViewController:v7 animated:0 completion:0];

  v4 = objc_loadWeakRetained(a1 + 5);
  [v4 replacePlayerViewController:v7 atIndex:0 animated:0 completion:0];

  v5 = objc_loadWeakRetained(a1 + 5);
  v6 = objc_loadWeakRetained(a1 + 6);
  [v5 addPlayerViewController:v6 animated:0 completion:0];
}

id __69__VideosUI_MultiPlayerContainerViewAccessibility_removeFromSuperview__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 keyWindow];

  return v4;
}

void __69__VideosUI_MultiPlayerContainerViewAccessibility_removeFromSuperview__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_473];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __69__VideosUI_MultiPlayerContainerViewAccessibility_removeFromSuperview__block_invoke_4;
  v8[3] = &unk_29F31C018;
  v9 = *(a1 + 40);
  v3 = [v2 ax_containsObjectUsingBlock:v8];
  if ([v2 count] && (v3 & 1) == 0)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    v5 = accessibilityLocalizedString(@"multiview.game.removed");
    v7 = *(a1 + 48);
    v6 = AXCFormattedString();
    UIAccessibilityPostNotification(v4, v6);
  }
}

uint64_t __69__VideosUI_MultiPlayerContainerViewAccessibility_removeFromSuperview__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VideosUI.MultiPlayerContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __69__VideosUI_MultiPlayerContainerViewAccessibility_removeFromSuperview__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 safeSwiftValueForKey:@"playerViewController"];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __76__VideosUI_CardViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __60__VideosUI_CardViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

uint64_t __52__VideosUI_CardViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 safeValueForKey:@"textLayout"];
  v7 = [v6 safeIntegerForKey:@"textStyle"];

  v8 = [v5 safeValueForKey:@"textLayout"];

  v9 = [v8 safeIntegerForKey:@"textStyle"];
  v10 = *(a1 + 32);

  return [v10 _axCompareStyle:v7 toStyle:v9];
}

BOOL __62__VideosUI_CardViewAccessibility_accessibilityUserInputLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safeValueForKey:@"textLayout"];
  v3 = [v2 safeIntegerForKey:@"textStyle"];

  return (v3 - 13) < 2;
}

uint64_t __62__VideosUI_CardViewAccessibility_accessibilityAttributedValue__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  MEMORY[0x29ED3FF70](@"_TVProgressView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a3 = 1;
  }

  return isKindOfClass & 1;
}

uint64_t __51__VideosUI_CardViewAccessibility_accessibilityHint__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

void __74__VideosUI_CanonicalBannerInfoViewAccessibility__axHeaderElementSwiftKeys__block_invoke()
{
  v0 = _axHeaderElementSwiftKeys_keys;
  _axHeaderElementSwiftKeys_keys = &unk_2A23AB1B8;
}

id __91__VideosUI_CanonicalBannerInfoViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          v10 = [WeakRetained safeSwiftValueForKey:v9];
          v11 = __UIAccessibilityCastAsClass();

          if (v11 && [v11 isAccessibilityElement])
          {
            [v3 axSafelyAddObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = [MEMORY[0x29EDB8D80] array];
  }

  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

BOOL __93__VideosUI_SportsCanonicalBannerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [WeakRetained safeSwiftValueForKey:@"newBannerAccessoryView"];
  v4 = [v3 accessibilityElements];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __93__VideosUI_SportsCanonicalBannerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8[3] = &unk_29F31C350;
  v5 = *(a1 + 40);
  v10 = &v12;
  v11 = v5;
  v6 = v3;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return (v4 & 1) == 0;
}

uint64_t __93__VideosUI_SportsCanonicalBannerCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v8 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = *(*(a1 + 40) + 8);
    if (*(v5 + 24) == 1)
    {
      *(v5 + 24) = 1;
    }

    else
    {
      v6 = [*(a1 + 32) accessibilityLabel];
      *(*(*(a1 + 40) + 8) + 24) = v6 != 0;
    }
  }

  else if ([v8 isAccessibilityElement])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return MEMORY[0x2A1C71028]();
}

void __101__VideosUI_NavigationBarLargeTitleViewLayoutAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [WeakRetained safeValueForKey:@"_titleLabel"];
  UIAccessibilityPostNotification(v1, v2);
}

uint64_t __82__VideosUI_EpicInlineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VideosUI.VerticalStackView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __82__VideosUI_EpicInlineViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUILabel");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __68__VideosUI_AttributionTextViewUIKitAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 accessibilityLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 safeValueForKey:@"_accessibilityGetValue"];
  }

  v6 = v5;

  return v6;
}

uint64_t __64__VideosUI_RootSideBarControllerAccessibility_viewDidDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:0x2000];

  return 1;
}

uint64_t __71__VideosUI_OfferListLockupCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:0x2000];

  return 1;
}

uint64_t __104__VideosUI_MultiViewPlayerHUDTemplateControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __67__VideosUI_LockupCollectionViewCellAccessibility_specialCharacters__block_invoke()
{
  v0 = specialCharacters_specialCharacters;
  specialCharacters_specialCharacters = &unk_2A23AB178;
}

uint64_t __82__VideosUI_LockupCollectionViewCellAccessibility__accessibilityStackingPosterView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = StackingPosterViewSwiftClass___PosterClass;
  if (!StackingPosterViewSwiftClass___PosterClass)
  {
    v3 = MEMORY[0x29ED3FF70](@"VideosUI.StackingPosterView");
    StackingPosterViewSwiftClass___PosterClass = v3;
  }

  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = StackingPosterViewObjcClass___PosterClass;
    if (!StackingPosterViewObjcClass___PosterClass)
    {
      v6 = MEMORY[0x29ED3FF70](@"VUIStackingPosterView");
      StackingPosterViewObjcClass___PosterClass = v6;
    }

    v7 = v6;
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __75__VideosUI_LockupCollectionViewCellAccessibility__accessibilityOverlayView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = UnifiedOverlayViewClass___PosterClass;
  if (!UnifiedOverlayViewClass___PosterClass)
  {
    v3 = MEMORY[0x29ED3FF70](@"VideosUI.UnifiedOverlayView");
    UnifiedOverlayViewClass___PosterClass = v3;
  }

  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = OverlayViewClass___PosterClass;
    if (!OverlayViewClass___PosterClass)
    {
      v6 = MEMORY[0x29ED3FF70](@"VideosUI.OverlayView");
      OverlayViewClass___PosterClass = v6;
    }

    v7 = v6;
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

uint64_t __70__VideosUI_MultiPlayerGrabberViewAccessibility__axMultiviewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29ED3FF70](@"VideosUI.MultiPlayerViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

double __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;

  return v3;
}

BOOL __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityFindSubviewDescendant:&__block_literal_global_20];
  v3 = v2;
  if (v2)
  {
    [v2 sendActionsForControlEvents:64];
  }

  return v3 != 0;
}

uint64_t __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"VUIButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __77__VideosUI_CollectionRichHeaderViewAccessibility__axHeaderTextContentElement__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityHasDescendantOfType:MEMORY[0x29ED3FF70](@"VUIButton")];
  v3 = [WeakRetained accessibilityTraits];
  v4 = *MEMORY[0x29EDC7F80] | v3;
  v5 = MEMORY[0x29EDC7FA0];
  if (v2)
  {
    v5 = MEMORY[0x29EDC7F70];
  }

  v6 = *v5;

  return v4 | v6;
}

void __74__VideosUI_QueryDescriptionBannerViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessibilityLabel];
  [v2 axSafelyAddObject:v3];
}

uint64_t __70__VideosUI_FloatingCardHostingCollectionViewCellAccessibility__axNode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3FF70](@"SwiftUI.AccessibilityNode");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __82__VideosUI_FloatingCardHostingCollectionViewCellAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _accessibilityViewController];
  v4 = *(a1 + 32);
  LOBYTE(a1) = objc_opt_isKindOfClass();

  return a1 & 1;
}

@end