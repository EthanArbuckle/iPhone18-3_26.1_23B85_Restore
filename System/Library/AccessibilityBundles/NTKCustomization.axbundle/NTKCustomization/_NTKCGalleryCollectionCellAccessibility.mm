@interface _NTKCGalleryCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axFace;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation _NTKCGalleryCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"_NTKCGalleryCollectionCell" hasInstanceVariable:@"_faceContainerView" withType:"NTKCFaceContainerView"];
  [validationsCopy validateClass:@"NTKCFaceContainerView" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"face" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceViewController" hasInstanceMethod:@"faceView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKFaceView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
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
  _axFace = [(_NTKCGalleryCollectionCellAccessibility *)self _axFace];
  v3 = AXNTKFaceComplicationOverviewDescription(_axFace);

  return v3;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(_NTKCGalleryCollectionCellAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(_NTKCGalleryCollectionCellAccessibility *)self accessibilityUserDefinedLabel];
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

      v11 = [UIViewController viewControllerForView:v10];
      v12 = __UIAccessibilitySafeClass();

      objc_opt_class();
      v13 = [v12 safeValueForKey:@"face"];
      v14 = __UIAccessibilityCastAsSafeCategory();

      accessibilityLabel = [v6 accessibilityLabel];
      _accessibilityFaceEditOptionsDescription = [v14 _accessibilityFaceEditOptionsDescription];
      accessibilityUserDefinedLabel2 = __UIAXStringForVariables();
    }

    else
    {
      accessibilityUserDefinedLabel2 = 0;
    }
  }

  return accessibilityUserDefinedLabel2;
}

@end