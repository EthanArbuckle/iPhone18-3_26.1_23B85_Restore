@interface PUAlbumListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddCustomContentTypeToCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
@end

@implementation PUAlbumListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUAlbumListCell"];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"_mainCollectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListCell" hasInstanceMethod:@"albumListCellContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"indexPathForPlacesAlbum" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"indexPathForPeopleAlbum" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"isPlaceholderAtIndexPath:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"PUAlbumListViewController" hasInstanceMethod:@"collectionAtIndexPath:" withFullSignature:{"@", "@", 0}];
}

- (void)_axAddCustomContentTypeToCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  NSClassFromString(&cfstr_Pualbumlistcel_2.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v11 = [v8 safeValueForKey:@"albumListCellContentView"];
    v12 = __UIAccessibilityCastAsSafeCategory();

    v13 = [(PUAlbumListViewControllerAccessibility *)self indexPathForPeopleAlbum];
    v14 = [v10 isEqual:v13];

    if (v14)
    {
      v15 = @"AXAlbumContentTypePeople";
LABEL_17:
      [v12 _axSetCellCustomContentType:v15];

      goto LABEL_18;
    }

    v16 = [(PUAlbumListViewControllerAccessibility *)self indexPathForPlacesAlbum];
    v17 = [v10 isEqual:v16];

    if (v17)
    {
      v15 = @"AXAlbumContentTypePlaces";
      goto LABEL_17;
    }

    if (([(PUAlbumListViewControllerAccessibility *)self isPlaceholderAtIndexPath:v10]& 1) != 0)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v18 = [(PUAlbumListViewControllerAccessibility *)self collectionAtIndexPath:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 assetCollectionSubtype];
      if ((v19 - 202) < 0xA)
      {
        v15 = off_29F2E82B0[v19 - 202];
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

  v5 = [v4 indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 cellForItemAtIndexPath:v10];
        [(PUAlbumListViewControllerAccessibility *)self _axAddCustomContentTypeToCell:v11 inCollectionView:v4 atIndexPath:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = PUAlbumListViewControllerAccessibility;
  v6 = a4;
  v7 = a3;
  v8 = [(PUAlbumListViewControllerAccessibility *)&v10 collectionView:v7 cellForItemAtIndexPath:v6];
  [(PUAlbumListViewControllerAccessibility *)self _axAddCustomContentTypeToCell:v8 inCollectionView:v7 atIndexPath:v6, v10.receiver, v10.super_class];

  return v8;
}

@end