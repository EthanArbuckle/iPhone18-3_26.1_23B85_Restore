@interface NTKCGalleryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelForFace:(id)a3;
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
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"collection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKGalleryCollection"];
  [v3 validateClass:@"NTKGalleryCollection" hasInstanceMethod:@"numberOfFaces" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"NTKGalleryCollection" hasInstanceMethod:@"faceAtIndex:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"NTKFace"];
  [v3 validateClass:@"NTKFace" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCGalleryCell" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
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
  v3 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"collectionView"];
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
  v4 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"collectionView"];
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

- (id)_axLabelForFace:(id)a3
{
  v3 = a3;
  v4 = [v3 safeStringForKey:@"name"];
  v5 = [v3 safeStringForKey:@"_accessibilityFaceEditOptionsDescription"];

  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_axLabelCollectionViewCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  LOBYTE(v18) = 0;
  objc_opt_class();
  v8 = [v6 safeValueForKey:@"_nameLabel"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 text];
  if ([v10 length])
  {
    v11 = [v9 isHidden];

    if ((v11 & 1) == 0)
    {
      v12 = [v9 accessibilityLabel];
      v13 = v6;
      v14 = v12;
LABEL_8:
      [v13 setAccessibilityLabel:v14];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = [v7 item];
  v12 = [(NTKCGalleryCellAccessibility *)self safeValueForKey:@"collection"];
  if (v15 >= [v12 safeUnsignedIntegerForKey:@"numberOfFaces"])
  {
    v13 = v6;
    v14 = 0;
    goto LABEL_8;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = v12;
  AXPerformSafeBlock();
  v16 = v19[5];

  _Block_object_dispose(&v18, 8);
  v17 = [(NTKCGalleryCellAccessibility *)self _axLabelForFace:v16];

  [v6 setAccessibilityLabel:v17];
LABEL_9:
}

uint64_t __71__NTKCGalleryCellAccessibility__axLabelCollectionViewCell_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

@end