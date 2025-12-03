@interface NTKCGalleryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLabelCollectionViewCell:(id)cell atIndexPath:(id)path;
- (void)_axMarkHeader;
@end

@implementation NTKCGalleryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCGalleryCollectionCell"];
  [validationsCopy validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NTKCGalleryCell" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [validationsCopy validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"collectionView:cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
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
  visibleCells = [v4 visibleCells];
  v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 indexPathForCell:v10];
        [(NTKCGalleryCellAccessibility *)self _axLabelCollectionViewCell:v10 atIndexPath:v11];
      }

      v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v18 count:16];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = NTKCGalleryCellAccessibility;
  pathCopy = path;
  v7 = [(NTKCGalleryCellAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  [(NTKCGalleryCellAccessibility *)self _axLabelCollectionViewCell:v7 atIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (void)_axLabelCollectionViewCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  v7 = [cellCopy safeValueForKey:@"_nameLabel"];
  v8 = __UIAccessibilityCastAsClass();

  text = [v8 text];
  if (![text length])
  {

    goto LABEL_5;
  }

  isHidden = [v8 isHidden];

  if (isHidden)
  {
LABEL_5:
    [cellCopy setAccessibilityLabel:0];
    goto LABEL_6;
  }

  accessibilityLabel = [v8 accessibilityLabel];
  [cellCopy setAccessibilityLabel:accessibilityLabel];

LABEL_6:
}

@end