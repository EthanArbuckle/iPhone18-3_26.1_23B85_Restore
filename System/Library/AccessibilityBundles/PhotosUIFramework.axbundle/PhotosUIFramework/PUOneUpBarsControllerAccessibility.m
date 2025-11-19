@interface PUOneUpBarsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axDetailsShowing;
- (BOOL)_axIsFavorite;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_axAssetViewModel;
- (id)_newBarButtonItemWithIdentifier:(int64_t)a3 location:(int64_t)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadAirplayButtonAccessibility:(id)a3;
- (void)_axLoadBackButtonWithNoTitleAccessibility:(id)a3;
- (void)_axLoadDeleteButtonAccessibility:(id)a3;
- (void)_axLoadDetailsButtonAccessibility:(id)a3;
- (void)_axLoadDoneButtonAccessibility:(id)a3;
- (void)_axLoadEditButtonAccessibility:(id)a3;
- (void)_axLoadFavoriteButtonAccessibility:(id)a3;
- (void)_axLoadLikeButtonAccessibility:(id)a3 identifier:(int64_t)a4;
- (void)_axLoadMuteButtonAccessibility:(id)a3;
- (void)_axLoadRewindButtonAccessibility:(id)a3;
- (void)_axLoadShareButtonAccessibility:(id)a3;
- (void)_axLoadUnmuteButtonAccessibility:(id)a3;
- (void)_handleFavoriteButton:(id)a3;
@end

@implementation PUOneUpBarsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUScrubberView"];
  [v3 validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"browsingSession" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_scrubberView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUBrowsingSession" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isFavorite" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isAccessoryViewVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_newBarButtonItemWithIdentifier: location:" withFullSignature:{"@", "q", "q", 0}];
  [v3 validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_activeBarButtonItemForIdentifier:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_handleFavoriteButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetViewModelForAssetReference:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
}

- (id)_axAssetViewModel
{
  v2 = [(PUOneUpBarsControllerAccessibility *)self safeValueForKeyPath:@"browsingSession.viewModel"];
  v3 = [v2 safeValueForKey:@"currentAssetReference"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  v6 = v2;
  v7 = v3;
  AXPerformSafeBlock();
  v4 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __55__PUOneUpBarsControllerAccessibility__axAssetViewModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewModelForAssetReference:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_axIsFavorite
{
  v2 = [(PUOneUpBarsControllerAccessibility *)self _axAssetViewModel];
  v3 = [v2 safeBoolForKey:@"isFavorite"];

  return v3;
}

- (BOOL)_axDetailsShowing
{
  v2 = [(PUOneUpBarsControllerAccessibility *)self _axAssetViewModel];
  v3 = [v2 safeBoolForKey:@"isAccessoryViewVisible"];

  return v3;
}

- (void)_axLoadFavoriteButtonAccessibility:(id)a3
{
  v4 = a3;
  v5 = accessibilityPULocalizedString(@"photo.favorite");
  [v4 setAccessibilityLabel:v5];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __73__PUOneUpBarsControllerAccessibility__axLoadFavoriteButtonAccessibility___block_invoke;
  v10 = &unk_29F2E8158;
  objc_copyWeak(&v11, &location);
  [v4 _setAccessibilityValueBlock:&v7];
  v6 = accessibilityPULocalizedString(@"photo.favorite.hint");
  [v4 setAccessibilityHint:{v6, v7, v8, v9, v10}];

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDBDCB8]];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

__CFString *__73__PUOneUpBarsControllerAccessibility__axLoadFavoriteButtonAccessibility___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axIsFavorite])
  {
    v2 = @"1";
  }

  else
  {
    v2 = @"0";
  }

  v3 = v2;

  return v2;
}

- (void)_axLoadLikeButtonAccessibility:(id)a3 identifier:(int64_t)a4
{
  v5 = AXIsPhotoSharingLikeButtonKey;
  v6 = a3;
  [v6 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:v5];
  v7 = accessibilityPULocalizedString(@"shared.photo.like");
  [v6 setAccessibilityLabel:v7];

  v8 = accessibilityPULocalizedString(@"shared.photo.like.hint");
  [v6 setAccessibilityHint:v8];

  if (a4 == 19)
  {
    v9 = @"shared.photo.like.value.like";
  }

  else
  {
    v9 = @"shared.photo.like.value.liked";
  }

  v10 = accessibilityPULocalizedString(v9);
  [v6 setAccessibilityValue:v10];
}

- (void)_axLoadEditButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.edit");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadDetailsButtonAccessibility:(id)a3
{
  v8 = a3;
  if ([(PUOneUpBarsControllerAccessibility *)self _axDetailsShowing])
  {
    v4 = [v8 accessibilityTraits];
    v5 = *MEMORY[0x29EDC7FC0] | v4;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FC0];
    v5 = [v8 accessibilityTraits] & ~v6;
  }

  [v8 setAccessibilityTraits:v5];
  [v8 setIsAccessibilityElement:1];
  v7 = accessibilityPULocalizedString(@"photo.info");
  [v8 setAccessibilityLabel:v7];
}

- (void)_axLoadAirplayButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.airplay");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadBackButtonWithNoTitleAccessibility:(id)a3
{
  v4 = a3;
  v3 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7500] | v3];
}

- (void)_axLoadDoneButtonAccessibility:(id)a3
{
  v4 = a3;
  v3 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7500] | v3];
}

- (void)_axLoadShareButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.share");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadDeleteButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.delete");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadRewindButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.rewind");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadMuteButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.volume.button");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axLoadUnmuteButtonAccessibility:(id)a3
{
  v3 = a3;
  v4 = accessibilityPULocalizedString(@"photo.volume.muted.button");
  [v3 setAccessibilityLabel:v4];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = PUOneUpBarsControllerAccessibility;
  [(PUOneUpBarsControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

void __80__PUOneUpBarsControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v14 = [*(a1 + 32) _activeBarButtonItemForIdentifier:7];
  [*(a1 + 32) _axLoadFavoriteButtonAccessibility:v14];
  v13 = [*(a1 + 32) _activeBarButtonItemForIdentifier:19];
  [*(a1 + 32) _axLoadLikeButtonAccessibility:v13 identifier:19];
  v12 = [*(a1 + 32) _activeBarButtonItemForIdentifier:20];
  [*(a1 + 32) _axLoadLikeButtonAccessibility:v12 identifier:20];
  v11 = [*(a1 + 32) _activeBarButtonItemForIdentifier:1];
  [*(a1 + 32) _axLoadEditButtonAccessibility:v11];
  v2 = [*(a1 + 32) _activeBarButtonItemForIdentifier:18];
  [*(a1 + 32) _axLoadAirplayButtonAccessibility:v2];
  v3 = [*(a1 + 32) _activeBarButtonItemForIdentifier:29];
  [*(a1 + 32) _axLoadBackButtonWithNoTitleAccessibility:v3];
  v4 = [*(a1 + 32) _activeBarButtonItemForIdentifier:10];
  [*(a1 + 32) _axLoadDoneButtonAccessibility:v4];
  v5 = [*(a1 + 32) _activeBarButtonItemForIdentifier:6];
  [*(a1 + 32) _axLoadShareButtonAccessibility:v5];
  v6 = [*(a1 + 32) _activeBarButtonItemForIdentifier:3];
  [*(a1 + 32) _axLoadDeleteButtonAccessibility:v6];
  v7 = [*(a1 + 32) _activeBarButtonItemForIdentifier:2];
  [*(a1 + 32) _axLoadDeleteButtonAccessibility:v7];
  v8 = [*(a1 + 32) _activeBarButtonItemForIdentifier:32];
  [*(a1 + 32) _axLoadMuteButtonAccessibility:v8];
  v9 = [*(a1 + 32) _activeBarButtonItemForIdentifier:33];
  [*(a1 + 32) _axLoadUnmuteButtonAccessibility:v9];
  v10 = [*(a1 + 32) _activeBarButtonItemForIdentifier:35];
  [*(a1 + 32) _axLoadDetailsButtonAccessibility:v10];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(PUOneUpBarsControllerAccessibility *)self safeValueForKey:@"__scrubberView"];
  if (!v5)
  {
    goto LABEL_9;
  }

  NSClassFromString(&cfstr_Puscrubberview.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = v6;
  if (a3 == 1)
  {
    v8 = [v6 _axDecrementForThreeFingerScroll];
    goto LABEL_7;
  }

  if (a3 != 2)
  {

LABEL_9:
    v11.receiver = self;
    v11.super_class = PUOneUpBarsControllerAccessibility;
    v9 = [(PUOneUpBarsControllerAccessibility *)&v11 accessibilityScroll:a3];
    goto LABEL_10;
  }

  v8 = [v6 _axIncrementForThreeFingerScroll];
LABEL_7:
  v9 = v8;

LABEL_10:
  return v9;
}

- (id)_newBarButtonItemWithIdentifier:(int64_t)a3 location:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = PUOneUpBarsControllerAccessibility;
  v6 = [(PUOneUpBarsControllerAccessibility *)&v9 _newBarButtonItemWithIdentifier:a3 location:a4];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v7 = [(PUOneUpBarsControllerAccessibility *)self _activeBarButtonItemForIdentifier:7];
    [(PUOneUpBarsControllerAccessibility *)self _axLoadFavoriteButtonAccessibility:v7];
  }

  else if ((a3 - 19) > 1)
  {
    if (a3 <= 9)
    {
      if (a3 == 1)
      {
        [(PUOneUpBarsControllerAccessibility *)self _axLoadEditButtonAccessibility:v6];
        return v6;
      }

      if (a3 == 6)
      {
        [(PUOneUpBarsControllerAccessibility *)self _axLoadShareButtonAccessibility:v6];
        return v6;
      }
    }

    else
    {
      switch(a3)
      {
        case 10:
          [(PUOneUpBarsControllerAccessibility *)self _axLoadDoneButtonAccessibility:v6];
          return v6;
        case 18:
          [(PUOneUpBarsControllerAccessibility *)self _axLoadAirplayButtonAccessibility:v6];
          return v6;
        case 29:
          [(PUOneUpBarsControllerAccessibility *)self _axLoadBackButtonWithNoTitleAccessibility:v6];
          return v6;
      }
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(PUOneUpBarsControllerAccessibility *)self _axLoadDeleteButtonAccessibility:v6];
    }

    else
    {
      switch(a3)
      {
        case '#':
          [(PUOneUpBarsControllerAccessibility *)self _axLoadDetailsButtonAccessibility:v6];
          break;
        case '!':
          [(PUOneUpBarsControllerAccessibility *)self _axLoadUnmuteButtonAccessibility:v6];
          break;
        case ' ':
          [(PUOneUpBarsControllerAccessibility *)self _axLoadMuteButtonAccessibility:v6];
          break;
      }
    }
  }

  else
  {
    [(PUOneUpBarsControllerAccessibility *)self _axLoadLikeButtonAccessibility:v6 identifier:a3];
  }

  return v6;
}

- (void)_handleFavoriteButton:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUOneUpBarsControllerAccessibility;
  [(PUOneUpBarsControllerAccessibility *)&v3 _handleFavoriteButton:a3];
  AXPerformSafeBlock();
}

void __60__PUOneUpBarsControllerAccessibility__handleFavoriteButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeBarButtonItemForIdentifier:7];
  [*(a1 + 32) _axLoadFavoriteButtonAccessibility:v2];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end