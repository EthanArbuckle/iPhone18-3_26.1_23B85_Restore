@interface PUCarouselSharingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path;
@end

@implementation PUCarouselSharingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"mainCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"_photoCollectionAtIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"_updateCell:forItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"_updateMainViewAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"PUCarouselSharingViewController" hasInstanceMethod:@"assetsInAssetCollection:" withFullSignature:{"@", "@", 0}];
}

- (void)_updateCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = PUCarouselSharingViewControllerAccessibility;
  [(PUCarouselSharingViewControllerAccessibility *)&v21 _updateCell:cellCopy forItemAtIndexPath:pathCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v14 = pathCopy;
  AXPerformSafeBlock();
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v13 = v8;
  AXPerformSafeBlock();
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v11 = v9;
  v12 = v14;
  AXPerformSafeBlock();
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);
  [cellCopy _accessibilitySetRetainedValue:v10 forKey:@"AXAsset"];
}

uint64_t __79__PUCarouselSharingViewControllerAccessibility__updateCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _photoCollectionAtIndex:{objc_msgSend(*(a1 + 40), "section")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __79__PUCarouselSharingViewControllerAccessibility__updateCell_forItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsInAssetCollection:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __79__PUCarouselSharingViewControllerAccessibility__updateCell_forItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end