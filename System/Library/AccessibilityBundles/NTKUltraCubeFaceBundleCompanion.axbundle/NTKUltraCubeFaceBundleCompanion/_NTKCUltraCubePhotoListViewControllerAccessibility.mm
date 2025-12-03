@interface _NTKCUltraCubePhotoListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _NTKCUltraCubePhotoListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCFaceDetailCustomPhotosViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"_NTKCUltraCubePhotoListViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCompanionUltraCubePhotosEditor" hasInstanceVariable:@"_orderList" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"NTKCompanionUltraCubePhotosEditor" hasInstanceVariable:@"_photos" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"_NTKEditedUltraCubePhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _NTKCUltraCubePhotoListViewControllerAccessibility;
  [(_NTKCUltraCubePhotoListViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_NTKCUltraCubePhotoListViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = v3;
  if (v3)
  {
    [v3 setAccessibilityViewIsModal:1];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = _NTKCUltraCubePhotoListViewControllerAccessibility;
  v8 = [(_NTKCUltraCubePhotoListViewControllerAccessibility *)&v22 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  v9 = [(_NTKCUltraCubePhotoListViewControllerAccessibility *)self safeValueForKey:@"editor"];
  v10 = [v9 safeArrayForKey:@"_orderList"];
  item = [pathCopy item];
  if (item >= [v10 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  v13 = [v9 safeDictionaryForKey:@"_photos"];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 objectForKeyedSubscript:v12];
    objc_opt_class();
    v16 = [v15 safeValueForKey:@"asset"];
    v17 = __UIAccessibilityCastAsClass();

    if (v17 && v8)
    {
      [v8 setIsAccessibilityElement:1];
      accessibilityLabel = [v17 accessibilityLabel];
      [v8 setAccessibilityLabel:accessibilityLabel];

      accessibilityValue = [v17 accessibilityValue];
      [v8 setAccessibilityValue:accessibilityValue];

      accessibilityCustomContent = [v17 accessibilityCustomContent];
      [v8 setAccessibilityCustomContent:accessibilityCustomContent];

      [v8 setAccessibilityTraits:UIAccessibilityTraitButton];
    }
  }

  return v8;
}

@end