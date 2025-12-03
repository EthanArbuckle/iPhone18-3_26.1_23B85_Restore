@interface PUPhotosSharingGridCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axCollectionView;
- (id)_axSharingSelectionView;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PUPhotosSharingGridCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotosSharingSelectionView"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"_visibleSupplementaryViewOfKind:atIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"PUCarouselSharingViewController"];
  [validationsCopy validateClass:@"PUAvalancheReviewController"];
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"mainCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAvalancheReviewController" hasInstanceMethod:@"_collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotosSharingGridCell" isKindOfClass:@"UICollectionViewCell"];
}

- (id)accessibilityCustomContent
{
  v2 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityValueForKey:@"AXAsset"];
  accessibilityCustomContent = [v2 accessibilityCustomContent];

  return accessibilityCustomContent;
}

- (id)accessibilityLabel
{
  v2 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityValueForKey:@"AXAsset"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityValueForKey:@"AXAsset"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = PUPhotosSharingGridCellAccessibility;
  accessibilityTraits = [(PUPhotosSharingGridCellAccessibility *)&v9 accessibilityTraits];
  v4 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityValueForKey:@"AXAsset"];
  v5 = [v4 accessibilityTraits] | accessibilityTraits;

  isHighlighted = [(PUPhotosSharingGridCellAccessibility *)self isHighlighted];
  v7 = *MEMORY[0x29EDC7FC0];
  if (!isHighlighted)
  {
    v7 = 0;
  }

  return v5 | v7;
}

- (id)_axSharingSelectionView
{
  _axCollectionView = [(PUPhotosSharingGridCellAccessibility *)self _axCollectionView];
  if (_axCollectionView && (NSClassFromString(&cfstr_Uicollectionvi_0.isa), (objc_opt_isKindOfClass() & 1) != 0) && (NSClassFromString(&cfstr_Uicollectionvi_1.isa), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v10 = _axCollectionView;
    v4 = v3;
    AXPerformSafeBlock();
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v9 = v10;
    v6 = v5;
    AXPerformSafeBlock();
    v7 = v12[5];

    _Block_object_dispose(&v11, 8);
    NSClassFromString(&cfstr_Puphotossharin_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __63__PUPhotosSharingGridCellAccessibility__axSharingSelectionView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __63__PUPhotosSharingGridCellAccessibility__axSharingSelectionView__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _visibleSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" atIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_axCollectionView
{
  v3 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_11 startWithSelf:1];
  _accessibilityViewController = [v3 _accessibilityViewController];

  if (_accessibilityViewController)
  {
    v5 = [_accessibilityViewController safeValueForKey:@"mainCollectionView"];
  }

  else
  {
    v6 = [(PUPhotosSharingGridCellAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_511 startWithSelf:1];
    _accessibilityViewController2 = [v6 _accessibilityViewController];

    if (_accessibilityViewController2)
    {
      v5 = [_accessibilityViewController2 safeValueForKey:@"_collectionView"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __57__PUPhotosSharingGridCellAccessibility__axCollectionView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Pucarouselshar_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__PUPhotosSharingGridCellAccessibility__axCollectionView__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Puavalancherev_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end