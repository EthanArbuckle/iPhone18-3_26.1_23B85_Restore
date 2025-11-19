@interface PuppetCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation PuppetCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PuppetCollectionViewController" hasInstanceVariable:@"_puppetCollectionView" withType:"UICollectionView"];
  [v3 validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"numberOfPrecedingCells" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"avatarDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PuppetCollectionViewController" hasInstanceMethod:@"recordIndexForIndexPath:" withFullSignature:{"q", "@", 0}];
  [v3 validateClass:@"AVTAvatarRecordDataSource" hasInstanceMethod:@"recordAtIndex:" withFullSignature:{"@", "Q", 0}];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = PuppetCollectionViewControllerAccessibility;
  v8 = [(PuppetCollectionViewControllerAccessibility *)&v29 collectionView:v6 cellForItemAtIndexPath:v7];
  [v8 setIsAccessibilityElement:1];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v9 = [v7 row];
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
    v26 = self;
    v27 = v7;
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