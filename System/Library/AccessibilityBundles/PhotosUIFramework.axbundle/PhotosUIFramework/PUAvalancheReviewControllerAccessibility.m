@interface PUAvalancheReviewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)_updateMainView;
@end

@implementation PUAvalancheReviewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUAvalancheReviewController" hasInstanceMethod:@"_avalancheBeingReviewed" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAvalancheReviewController" hasInstanceMethod:@"_updateCell: forItemAtIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PUAvalancheReviewController" hasInstanceMethod:@"_updateMainView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUAvalancheReviewController" hasInstanceMethod:@"_collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLAvalanche" hasInstanceMethod:@"assets" withFullSignature:{"@", 0}];
}

- (void)_updateCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PUAvalancheReviewControllerAccessibility;
  [(PUAvalancheReviewControllerAccessibility *)&v18 _updateCell:v6 forItemAtIndexPath:v7];
  v8 = [(PUAvalancheReviewControllerAccessibility *)self safeValueForKey:@"_avalancheBeingReviewed"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v10 = v8;
  v11 = v7;
  AXPerformSafeBlock();
  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  [v6 _accessibilitySetRetainedValue:v9 forKey:@"AXAsset"];
}

void __75__PUAvalancheReviewControllerAccessibility__updateCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"assets"];
  v2 = [v5 objectAtIndex:{objc_msgSend(*(a1 + 40), "item")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateMainView
{
  v5.receiver = self;
  v5.super_class = PUAvalancheReviewControllerAccessibility;
  [(PUAvalancheReviewControllerAccessibility *)&v5 _updateMainView];
  v3 = [(PUAvalancheReviewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = accessibilityPULocalizedString(@"sharing.collection.list");
  [v3 setAccessibilityLabel:v4];
}

@end