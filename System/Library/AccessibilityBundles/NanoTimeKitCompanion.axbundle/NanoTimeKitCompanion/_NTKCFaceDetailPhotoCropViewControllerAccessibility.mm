@interface _NTKCFaceDetailPhotoCropViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidLoad;
@end

@implementation _NTKCFaceDetailPhotoCropViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCFaceDetailPhotoCropViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceMethod:@"index" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceVariable:@"_scrollView" withType:"NTKCCenteringScrollView"];
  [validationsCopy validateClass:@"_NTKCFaceDetailPhotoCropViewController" hasInstanceMethod:@"editor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_orderList" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_pickedPhotos" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"NTKCompanionCustomPhotosEditor" hasInstanceVariable:@"_newPhotos" withType:"NSMutableDictionary"];
  [validationsCopy validateClass:@"_NTKPickedPhoto" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
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
      accessibilityLabel = [v15 accessibilityLabel];
      [v3 setAccessibilityLabel:accessibilityLabel];

      accessibilityCustomContent = [v15 accessibilityCustomContent];
      [v3 setAccessibilityCustomContent:accessibilityCustomContent];

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