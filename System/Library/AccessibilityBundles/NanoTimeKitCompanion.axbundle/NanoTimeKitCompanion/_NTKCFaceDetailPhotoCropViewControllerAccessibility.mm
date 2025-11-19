@interface _NTKCFaceDetailPhotoCropViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewDidLoad;
@end

@implementation _NTKCFaceDetailPhotoCropViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCFaceDetailPhotoCropViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceMethod:@"index" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceVariable:@"_scrollView" withType:"NTKCCenteringScrollView"];
  [v3 validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_orderList" withType:"NSMutableArray"];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_pickedPhotos" withType:"NSMutableDictionary"];
  [v3 validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_newPhotos" withType:"NSMutableDictionary"];
  [v3 validateClass:@"_NTKPickedPhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = _NTKCFaceDetailPhotoCropViewControllerAccessibility;
  [(_NTKCFaceDetailPhotoCropViewControllerAccessibility *)&v19 viewDidLoad];
  v3 = [(_NTKCFaceDetailPhotoCropViewControllerAccessibility *)self safeValueForKey:@"_scrollView"];
  v4 = [(_NTKCFaceDetailPhotoCropViewControllerAccessibility *)self safeValueForKey:@"editor"];
  v5 = [v4 safeArrayForKey:@"_orderList"];
  v6 = [(_NTKCFaceDetailPhotoCropViewControllerAccessibility *)self safeIntegerForKey:@"index"];
  if (v6 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  v8 = [v4 safeDictionaryForKey:@"_pickedPhotos"];
  v9 = [v4 safeDictionaryForKey:@"_newPhotos"];
  if (v7)
  {
    v10 = [v8 objectForKeyedSubscript:v7];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v9 objectForKeyedSubscript:v7];
    }

    v13 = v12;

    objc_opt_class();
    v14 = [v13 safeValueForKey:@"asset"];
    v15 = __UIAccessibilityCastAsClass();

    if (v15 && v3)
    {
      [v3 setIsAccessibilityElement:1];
      v16 = [v15 accessibilityLabel];
      [v3 setAccessibilityLabel:v16];

      v17 = [v15 accessibilityCustomContent];
      [v3 setAccessibilityCustomContent:v17];

      [v3 setAccessibilityTraits:UIAccessibilityTraitImage];
    }
  }

  v18 = [(_NTKCFaceDetailPhotoCropViewControllerAccessibility *)self safeValueForKey:@"view"];
  if (v18)
  {
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v18);
  }
}

@end