@interface _NTKCGalleryCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axFace;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation _NTKCGalleryCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_faceContainerView" withType:"NTKCFaceContainerView"];
  [v3 validateClass:@"NTKCFaceContainerView" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"face" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceViewController" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKFaceView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (id)_axFace
{
  v2 = [(_NTKCGalleryCollectionCellAccessibility *)self safeValueForKey:@"_faceContainerView"];
  v3 = [v2 safeValueForKey:@"faceView"];

  v4 = [v3 safeValueForKey:@"delegate"];
  v5 = [v4 safeValueForKey:@"face"];

  return v5;
}

- (id)accessibilityValue
{
  v2 = [(_NTKCGalleryCollectionCellAccessibility *)self _axFace];
  v3 = AXNTKFaceComplicationOverviewDescription(v2);

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(_NTKCGalleryCollectionCellAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(_NTKCGalleryCollectionCellAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    objc_opt_class();
    v5 = [(_NTKCGalleryCollectionCellAccessibility *)self safeValueForKey:@"_nameLabel"];
    v6 = __UIAccessibilityCastAsClass();

    if (v6 && ([v6 isHidden] & 1) == 0 && (objc_msgSend(v6, "accessibilityLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
    {
      v9 = [(_NTKCGalleryCollectionCellAccessibility *)self safeValueForKey:@"_faceContainerView"];
      v10 = [v9 safeValueForKey:@"faceView"];

      v11 = [v10 _accessibilityViewController];
      v12 = [v11 safeValueForKey:@"face"];
      v13 = [v6 accessibilityLabel];
      v15 = [v12 _accessibilityFaceEditOptionsDescription];
      v4 = __UIAXStringForVariables();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end