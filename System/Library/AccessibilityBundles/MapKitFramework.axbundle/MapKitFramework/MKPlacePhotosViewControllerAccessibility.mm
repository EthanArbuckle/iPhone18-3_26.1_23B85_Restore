@interface MKPlacePhotosViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateImageViews;
- (void)_axAnnotateViews;
- (void)_createImageViews;
@end

@implementation MKPlacePhotosViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlacePhotosViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_mapItem" withType:"MKMapItem"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_externalView" withType:"UIView"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_photoViews" withType:"NSArray"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_photosContainer" withType:"UIView"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_previousPageButton" withType:"UIButton"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_nextPageButton" withType:"UIButton"];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceMethod:@"_createImageViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MKPlacePhotosViewController" hasInstanceVariable:@"_canUseFullscreenViewer" withType:"B"];
  [validationsCopy validateClass:@"MKMapItem" hasInstanceMethod:@"_photosAttribution" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKMapItemPhotosAttribution" isKindOfClass:@"_MKMapItemAttribution"];
  [validationsCopy validateClass:@"_MKMapItemAttribution" hasInstanceMethod:@"providerName" withFullSignature:{"@", 0}];
}

- (void)_axAnnotateViews
{
  objc_opt_class();
  v3 = [(MKPlacePhotosViewControllerAccessibility *)self safeValueForKey:@"_previousPageButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(MKPlacePhotosViewControllerAccessibility *)self safeValueForKey:@"_nextPageButton"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = AXMapKitLocString(@"PREVIOUS_PAGE");
  [v4 setAccessibilityLabel:v7];

  v8 = AXMapKitLocString(@"NEXT_PAGE");
  [v6 setAccessibilityLabel:v8];
}

- (void)_axAnnotateImageViews
{
  v33 = *MEMORY[0x29EDCA608];
  v31 = 0;
  objc_opt_class();
  selfCopy = self;
  v3 = [(MKPlacePhotosViewControllerAccessibility *)self safeValueForKey:@"_mapItem"];
  v4 = [v3 safeValueForKey:@"_photosAttribution"];
  v5 = [v4 safeValueForKey:@"providerName"];
  v6 = __UIAccessibilityCastAsClass();

  v24 = v6;
  if ([v6 length])
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = AXMapKitLocString(@"REVIEW_PHOTO_WITH_PROVIDER_FORMAT");
    v25 = [v7 stringWithFormat:v8, v6, v6];
  }

  else
  {
    v25 = AXMapKitLocString(@"REVIEW_PHOTO");
  }

  _axPhotoViews = [(MKPlacePhotosViewControllerAccessibility *)selfCopy _axPhotoViews];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [_axPhotoViews countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v13 = *MEMORY[0x29EDC7F88];
    v14 = *MEMORY[0x29EDC7F70];
    v15 = *MEMORY[0x29EDC7F98];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(_axPhotoViews);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 setIsAccessibilityElement:1];
          [v17 setAccessibilityLabel:v25];
          if ([(MKPlacePhotosViewControllerAccessibility *)selfCopy safeBoolForKey:@"_canUseFullscreenViewer"])
          {
            v18 = v14;
          }

          else
          {
            v18 = v15;
          }

          [v17 setAccessibilityTraits:v18 | v13];
        }
      }

      v11 = [_axPhotoViews countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v19 = _axPhotoViews;
  v20 = [(MKPlacePhotosViewControllerAccessibility *)selfCopy safeValueForKey:@"_externalView"];
  v21 = v19;
  if (v20)
  {
    v21 = [v19 mutableCopy];
    [v21 insertObject:v20 atIndex:0];
  }

  v22 = [(MKPlacePhotosViewControllerAccessibility *)selfCopy safeUIViewForKey:@"_photosContainer"];
  [v22 setAccessibilityElements:v21];

  v23 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MKPlacePhotosViewControllerAccessibility;
  [(MKPlacePhotosViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MKPlacePhotosViewControllerAccessibility *)self _axAnnotateImageViews];
  [(MKPlacePhotosViewControllerAccessibility *)self _axAnnotateViews];
}

- (void)_createImageViews
{
  v3.receiver = self;
  v3.super_class = MKPlacePhotosViewControllerAccessibility;
  [(MKPlacePhotosViewControllerAccessibility *)&v3 _createImageViews];
  [(MKPlacePhotosViewControllerAccessibility *)self _axAnnotateImageViews];
}

@end