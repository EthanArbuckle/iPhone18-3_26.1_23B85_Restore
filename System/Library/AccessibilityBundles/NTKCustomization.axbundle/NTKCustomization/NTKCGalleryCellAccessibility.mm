@interface NTKCGalleryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLabelCollectionViewCell:(id)a3 atIndexPath:(id)a4;
- (void)_axMarkHeader;
@end

@implementation NTKCGalleryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCGalleryCollectionCell"];
  [v3 validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_axMarkHeader
{
  v2 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"title"];
  [v2 setAccessibilityTraits:UIAccessibilityTraitHeader];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = NTKCGalleryCellAccessibility;
  [(NTKCGalleryCellAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  [(NTKCGalleryCellAccessibility *)self _axMarkHeader];
  v16 = 0;
  objc_opt_class();
  v3 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 visibleCells];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCGalleryCellAccessibility *)self _axLabelCollectionViewCell:v10 atIndexPath:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)accessibilityElements
{
  [(NTKCGalleryCellAccessibility *)self _axMarkHeader];
  v3 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"title"];
  v4 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"_collectionView"];
  v5 = [NSArray axArrayByIgnoringNilElementsWithCount:2, v3, v4];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKCGalleryCellAccessibility;
  v6 = a4;
  v7 = [(NTKCGalleryCellAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  [(NTKCGalleryCellAccessibility *)self _axLabelCollectionViewCell:v7 atIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axLabelCollectionViewCell:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v5 safeValueForKey:@"_nameLabel"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 text];
  if (![v9 length])
  {

    goto LABEL_5;
  }

  v10 = [v8 isHidden];

  if (v10)
  {
LABEL_5:
    [v5 setAccessibilityLabel:0];
    goto LABEL_6;
  }

  v11 = [v8 accessibilityLabel];
  [v5 setAccessibilityLabel:v11];

LABEL_6:
}

@end