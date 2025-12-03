@interface PuppetCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation PuppetCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceVariable:@"_puppetCollectionView" withType:"UICollectionView"];
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"numberOfPrecedingCells" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"avatarDataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"recordIndexForIndexPath:" withFullSignature:{"q", "@", 0}];
  [validationsCopy validateClass:@"AVTAvatarRecordDataSource" hasInstanceMethod:@"recordAtIndex:" withFullSignature:{"@", "Q", 0}];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = PuppetCollectionViewControllerAccessibility;
  v8 = [(PuppetCollectionViewControllerAccessibility *)&v29 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  [v8 setIsAccessibilityElement:1];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v9 = [pathCopy row];
  if (v9 >= [(PuppetCollectionViewControllerAccessibility *)self safeIntegerForKey:@"numberOfPrecedingCells"])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v22 = MEMORY[0x29EDCA5F8];
    v23 = 3221225472;
    v24 = __85__PuppetCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke;
    v25 = &unk_29F29CE48;
    v28 = &v16;
    selfCopy = self;
    v27 = pathCopy;
    AXPerformSafeBlock();
    v11 = v17[3];

    _Block_object_dispose(&v16, 8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = v11;
    AXPerformSafeBlock();
    v12 = v17[5];
    _Block_object_dispose(&v16, 8);

    v10 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v12 includeVideoPrefix:{0, v14, 3221225472, __85__PuppetCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_316, &unk_29F29CE70, self, &v16, v15}];
  }

  else
  {
    v10 = accessibilityJellyfishLocalizedString(@"starfish.add");
  }

  [v8 setAccessibilityLabel:v10];

  return v8;
}

uint64_t __85__PuppetCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) recordIndexForIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __85__PuppetCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke_316(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"avatarDataSource"];
  v2 = [v5 recordAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end