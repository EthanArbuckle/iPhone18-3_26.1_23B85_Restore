@interface _NTKCFaceDetailCustomPhotosViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation _NTKCFaceDetailCustomPhotosViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCFaceDetailCustomPhotosViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"_NTKCFaceDetailCustomPhotosViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_orderList" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_pickedPhotos" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_newPhotos" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"_NTKPickedPhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _NTKCFaceDetailCustomPhotosViewControllerAccessibility;
  [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = v2;
  if (v2)
  {
    view = [v2 view];
    [view setAccessibilityViewIsModal:1];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _NTKCFaceDetailCustomPhotosViewControllerAccessibility;
  [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)&v4 viewDidLoad];
  v3 = [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)self safeValueForKey:@"view"];
  if (v3)
  {
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v3);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = _NTKCFaceDetailCustomPhotosViewControllerAccessibility;
  v8 = [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)&v26 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  v9 = [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)self safeValueForKey:@"editor"];
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

  v13 = [v9 safeDictionaryForKey:@"_pickedPhotos"];
  v14 = [v9 safeDictionaryForKey:@"_newPhotos"];
  if (v12)
  {
    v15 = [v13 objectForKeyedSubscript:v12];
    v16 = v15;
    v25 = viewCopy;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v14 objectForKeyedSubscript:v12];
    }

    v18 = v17;

    objc_opt_class();
    v19 = [v18 safeValueForKey:@"asset"];
    v20 = __UIAccessibilityCastAsClass();

    if (v20 && v8)
    {
      [v8 setIsAccessibilityElement:1];
      accessibilityLabel = [v20 accessibilityLabel];
      [v8 setAccessibilityLabel:accessibilityLabel];

      accessibilityValue = [v20 accessibilityValue];
      [v8 setAccessibilityValue:accessibilityValue];

      accessibilityCustomContent = [v20 accessibilityCustomContent];
      [v8 setAccessibilityCustomContent:accessibilityCustomContent];

      [v8 setAccessibilityTraits:UIAccessibilityTraitButton];
    }

    viewCopy = v25;
  }

  return v8;
}

@end