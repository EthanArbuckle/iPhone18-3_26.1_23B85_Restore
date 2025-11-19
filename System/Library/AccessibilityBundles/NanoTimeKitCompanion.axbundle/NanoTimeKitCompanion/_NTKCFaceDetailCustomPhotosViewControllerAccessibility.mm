@interface _NTKCFaceDetailCustomPhotosViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation _NTKCFaceDetailCustomPhotosViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCFaceDetailCustomPhotosViewController" isKindOfClass:@"UICollectionViewController"];
  [v3 validateClass:@"_NTKCFaceDetailCustomPhotosViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_orderList" withType:"NSMutableArray"];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_pickedPhotos" withType:"NSMutableDictionary"];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_newPhotos" withType:"NSMutableDictionary"];
  [v3 validateClass:@"_NTKPickedPhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
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
    v4 = [v2 view];
    [v4 setAccessibilityViewIsModal:1];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = _NTKCFaceDetailCustomPhotosViewControllerAccessibility;
  v8 = [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)&v26 collectionView:v6 cellForItemAtIndexPath:v7];
  v9 = [(_NTKCFaceDetailCustomPhotosViewControllerAccessibility *)self safeValueForKey:@"editor"];
  v10 = [v9 safeArrayForKey:@"_orderList"];
  v11 = [v7 item];
  if (v11 >= [v10 count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
  }

  v13 = [v9 safeDictionaryForKey:@"_pickedPhotos"];
  v14 = [v9 safeDictionaryForKey:@"_newPhotos"];
  if (v12)
  {
    v15 = [v13 objectForKeyedSubscript:v12];
    v16 = v15;
    v25 = v6;
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
      v21 = [v20 accessibilityLabel];
      [v8 setAccessibilityLabel:v21];

      v22 = [v20 accessibilityValue];
      [v8 setAccessibilityValue:v22];

      v23 = [v20 accessibilityCustomContent];
      [v8 setAccessibilityCustomContent:v23];

      [v8 setAccessibilityTraits:UIAccessibilityTraitButton];
    }

    v6 = v25;
  }

  return v8;
}

@end