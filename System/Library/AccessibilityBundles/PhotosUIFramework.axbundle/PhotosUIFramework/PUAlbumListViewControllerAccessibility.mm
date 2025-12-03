@interface PUAlbumListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddCustomContentTypeToCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PUAlbumListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUAlbumListCell"];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"_mainCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListCell" hasInstanceMethod:@"albumListCellContentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"indexPathForPlacesAlbum" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"indexPathForPeopleAlbum" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"isPlaceholderAtIndexPath:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"collectionAtIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (void)_axAddCustomContentTypeToCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  pathCopy = path;
  NSClassFromString(&cfstr_Pualbumlistcel_2.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = [cellCopy safeValueForKey:@"albumListCellContentView"];
    v12 = __UIAccessibilityCastAsSafeCategory();

    indexPathForPeopleAlbum = [(PUAlbumListViewControllerAccessibility *)self indexPathForPeopleAlbum];
    v14 = [pathCopy isEqual:indexPathForPeopleAlbum];

    if (v14)
    {
      v15 = @"AXAlbumContentTypePeople";
LABEL_17:
      [v12 _axSetCellCustomContentType:v15];

      goto LABEL_18;
    }

    indexPathForPlacesAlbum = [(PUAlbumListViewControllerAccessibility *)self indexPathForPlacesAlbum];
    v17 = [pathCopy isEqual:indexPathForPlacesAlbum];

    if (v17)
    {
      v15 = @"AXAlbumContentTypePlaces";
      goto LABEL_17;
    }

    if (([(PUAlbumListViewControllerAccessibility *)self isPlaceholderAtIndexPath:pathCopy]& 1) != 0)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v18 = [(PUAlbumListViewControllerAccessibility *)self collectionAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetCollectionSubtype = [v18 assetCollectionSubtype];
      if ((assetCollectionSubtype - 202) < 0xA)
      {
        v15 = off_29F2E82B0[assetCollectionSubtype - 202];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v18 collectionListType] == 2)
        {
          v15 = @"AXAlbumContentTypeFolder";
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_16;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = PUAlbumListViewControllerAccessibility;
  [(PUAlbumListViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v17 = 0;
  objc_opt_class();
  v3 = [(PUAlbumListViewControllerAccessibility *)self safeValueForKey:@"_mainCollectionView"];
  v4 = __UIAccessibilityCastAsClass();

  indexPathsForVisibleItems = [v4 indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 cellForItemAtIndexPath:v10];
        [(PUAlbumListViewControllerAccessibility *)self _axAddCustomContentTypeToCell:v11 inCollectionView:v4 atIndexPath:v10];
      }

      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = PUAlbumListViewControllerAccessibility;
  pathCopy = path;
  viewCopy = view;
  v8 = [(PUAlbumListViewControllerAccessibility *)&v10 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  [(PUAlbumListViewControllerAccessibility *)self _axAddCustomContentTypeToCell:v8 inCollectionView:viewCopy atIndexPath:pathCopy, v10.receiver, v10.super_class];

  return v8;
}

@end