@interface VideosRelatedStoreItemsCollectionViewControllerAccessibility
- (id)_createCollectionView;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation VideosRelatedStoreItemsCollectionViewControllerAccessibility

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = VideosRelatedStoreItemsCollectionViewControllerAccessibility;
  pathCopy = path;
  v7 = [(VideosRelatedStoreItemsCollectionViewControllerAccessibility *)&v14 collectionView:view cellForItemAtIndexPath:pathCopy];
  [pathCopy item];

  objc_opt_class();
  v8 = [(VideosRelatedStoreItemsCollectionViewControllerAccessibility *)self safeValueForKey:@"relatedItems"];
  v9 = __UIAccessibilityCastAsClass();

  v13 = v7;
  v10 = v9;
  AXPerformSafeBlock();
  v11 = v13;

  return v13;
}

void __102__VideosRelatedStoreItemsCollectionViewControllerAccessibility_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:*(a1 + 48)];
  v3 = __UIAccessibilitySafeClass();

  v4 = *(a1 + 40);
  v5 = [v3 safeValueForKey:@"artistName"];
  [v4 _accessibilitySetRetainedValue:v5 forKey:@"AXArtistName"];
}

- (id)_createCollectionView
{
  v4.receiver = self;
  v4.super_class = VideosRelatedStoreItemsCollectionViewControllerAccessibility;
  _createCollectionView = [(VideosRelatedStoreItemsCollectionViewControllerAccessibility *)&v4 _createCollectionView];
  [_createCollectionView setAccessibilityIdentifier:@"AXRelatedStoreItems"];

  return _createCollectionView;
}

@end