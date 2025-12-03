@interface PUOneUpBarsControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axDetailsShowing;
- (BOOL)_axIsFavorite;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_axAssetViewModel;
- (id)_newBarButtonItemWithIdentifier:(int64_t)identifier location:(int64_t)location;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadAirplayButtonAccessibility:(id)accessibility;
- (void)_axLoadBackButtonWithNoTitleAccessibility:(id)accessibility;
- (void)_axLoadDeleteButtonAccessibility:(id)accessibility;
- (void)_axLoadDetailsButtonAccessibility:(id)accessibility;
- (void)_axLoadDoneButtonAccessibility:(id)accessibility;
- (void)_axLoadEditButtonAccessibility:(id)accessibility;
- (void)_axLoadFavoriteButtonAccessibility:(id)accessibility;
- (void)_axLoadLikeButtonAccessibility:(id)accessibility identifier:(int64_t)identifier;
- (void)_axLoadMuteButtonAccessibility:(id)accessibility;
- (void)_axLoadRewindButtonAccessibility:(id)accessibility;
- (void)_axLoadShareButtonAccessibility:(id)accessibility;
- (void)_axLoadUnmuteButtonAccessibility:(id)accessibility;
- (void)_handleFavoriteButton:(id)button;
@end

@implementation PUOneUpBarsControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUScrubberView"];
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"browsingSession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_scrubberView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUBrowsingSession" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isFavorite" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUAssetViewModel" hasInstanceMethod:@"isAccessoryViewVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_newBarButtonItemWithIdentifier: location:" withFullSignature:{"@", "q", "q", 0}];
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_activeBarButtonItemForIdentifier:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"_handleFavoriteButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"assetViewModelForAssetReference:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
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
  _axAssetViewModel = [(PUOneUpBarsControllerAccessibility *)self _axAssetViewModel];
  v3 = [_axAssetViewModel safeBoolForKey:@"isFavorite"];

  return v3;
}

- (BOOL)_axDetailsShowing
{
  _axAssetViewModel = [(PUOneUpBarsControllerAccessibility *)self _axAssetViewModel];
  v3 = [_axAssetViewModel safeBoolForKey:@"isAccessoryViewVisible"];

  return v3;
}

- (void)_axLoadFavoriteButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v5 = accessibilityPULocalizedString(@"photo.favorite");
  [accessibilityCopy setAccessibilityLabel:v5];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __73__PUOneUpBarsControllerAccessibility__axLoadFavoriteButtonAccessibility___block_invoke;
  v10 = &unk_29F2E8158;
  objc_copyWeak(&v11, &location);
  [accessibilityCopy _setAccessibilityValueBlock:&v7];
  v6 = accessibilityPULocalizedString(@"photo.favorite.hint");
  [accessibilityCopy setAccessibilityHint:{v6, v7, v8, v9, v10}];

  [accessibilityCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDBDCB8]];
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

- (void)_axLoadLikeButtonAccessibility:(id)accessibility identifier:(int64_t)identifier
{
  v5 = AXIsPhotoSharingLikeButtonKey;
  accessibilityCopy = accessibility;
  [accessibilityCopy _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:v5];
  v7 = accessibilityPULocalizedString(@"shared.photo.like");
  [accessibilityCopy setAccessibilityLabel:v7];

  v8 = accessibilityPULocalizedString(@"shared.photo.like.hint");
  [accessibilityCopy setAccessibilityHint:v8];

  if (identifier == 19)
  {
    v9 = @"shared.photo.like.value.like";
  }

  else
  {
    v9 = @"shared.photo.like.value.liked";
  }

  v10 = accessibilityPULocalizedString(v9);
  [accessibilityCopy setAccessibilityValue:v10];
}

- (void)_axLoadEditButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.edit");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadDetailsButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  if ([(PUOneUpBarsControllerAccessibility *)self _axDetailsShowing])
  {
    accessibilityTraits = [accessibilityCopy accessibilityTraits];
    v5 = *MEMORY[0x29EDC7FC0] | accessibilityTraits;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FC0];
    v5 = [accessibilityCopy accessibilityTraits] & ~v6;
  }

  [accessibilityCopy setAccessibilityTraits:v5];
  [accessibilityCopy setIsAccessibilityElement:1];
  v7 = accessibilityPULocalizedString(@"photo.info");
  [accessibilityCopy setAccessibilityLabel:v7];
}

- (void)_axLoadAirplayButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.airplay");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadBackButtonWithNoTitleAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  accessibilityTraits = [accessibilityCopy accessibilityTraits];
  [accessibilityCopy setAccessibilityTraits:*MEMORY[0x29EDC7500] | accessibilityTraits];
}

- (void)_axLoadDoneButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  accessibilityTraits = [accessibilityCopy accessibilityTraits];
  [accessibilityCopy setAccessibilityTraits:*MEMORY[0x29EDC7500] | accessibilityTraits];
}

- (void)_axLoadShareButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.share");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadDeleteButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.delete");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadRewindButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.rewind");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadMuteButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.volume.button");
  [accessibilityCopy setAccessibilityLabel:v4];
}

- (void)_axLoadUnmuteButtonAccessibility:(id)accessibility
{
  accessibilityCopy = accessibility;
  v4 = accessibilityPULocalizedString(@"photo.volume.muted.button");
  [accessibilityCopy setAccessibilityLabel:v4];
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

- (BOOL)accessibilityScroll:(int64_t)scroll
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
  if (scroll == 1)
  {
    _axDecrementForThreeFingerScroll = [v6 _axDecrementForThreeFingerScroll];
    goto LABEL_7;
  }

  if (scroll != 2)
  {

LABEL_9:
    v11.receiver = self;
    v11.super_class = PUOneUpBarsControllerAccessibility;
    v9 = [(PUOneUpBarsControllerAccessibility *)&v11 accessibilityScroll:scroll];
    goto LABEL_10;
  }

  _axDecrementForThreeFingerScroll = [v6 _axIncrementForThreeFingerScroll];
LABEL_7:
  v9 = _axDecrementForThreeFingerScroll;

LABEL_10:
  return v9;
}

- (id)_newBarButtonItemWithIdentifier:(int64_t)identifier location:(int64_t)location
{
  v9.receiver = self;
  v9.super_class = PUOneUpBarsControllerAccessibility;
  v6 = [(PUOneUpBarsControllerAccessibility *)&v9 _newBarButtonItemWithIdentifier:identifier location:location];
  if ((identifier & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v7 = [(PUOneUpBarsControllerAccessibility *)self _activeBarButtonItemForIdentifier:7];
    [(PUOneUpBarsControllerAccessibility *)self _axLoadFavoriteButtonAccessibility:v7];
  }

  else if ((identifier - 19) > 1)
  {
    if (identifier <= 9)
    {
      if (identifier == 1)
      {
        [(PUOneUpBarsControllerAccessibility *)self _axLoadEditButtonAccessibility:v6];
        return v6;
      }

      if (identifier == 6)
      {
        [(PUOneUpBarsControllerAccessibility *)self _axLoadShareButtonAccessibility:v6];
        return v6;
      }
    }

    else
    {
      switch(identifier)
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

    if ((identifier & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(PUOneUpBarsControllerAccessibility *)self _axLoadDeleteButtonAccessibility:v6];
    }

    else
    {
      switch(identifier)
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
    [(PUOneUpBarsControllerAccessibility *)self _axLoadLikeButtonAccessibility:v6 identifier:identifier];
  }

  return v6;
}

- (void)_handleFavoriteButton:(id)button
{
  v3.receiver = self;
  v3.super_class = PUOneUpBarsControllerAccessibility;
  [(PUOneUpBarsControllerAccessibility *)&v3 _handleFavoriteButton:button];
  AXPerformSafeBlock();
}

void __60__PUOneUpBarsControllerAccessibility__handleFavoriteButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeBarButtonItemForIdentifier:7];
  [*(a1 + 32) _axLoadFavoriteButtonAccessibility:v2];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end