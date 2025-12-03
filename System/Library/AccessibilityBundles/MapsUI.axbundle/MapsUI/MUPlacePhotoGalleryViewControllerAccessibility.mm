@interface MUPlacePhotoGalleryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLabelAttributionButton;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)downloadImageForVisibleViews;
@end

@implementation MUPlacePhotoGalleryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceVariable:@"_photoViews" withType:"NSArray"];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceVariable:@"_photos" withType:"NSArray"];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"rapBarButtonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"currentPhoto" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapItemPhoto" hasInstanceMethod:@"attribution" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKMapItemPhotosAttribution" isKindOfClass:@"_MKMapItemAttribution"];
  [validationsCopy validateClass:@"_MKMapItemAttribution" hasInstanceMethod:@"providerName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"attributionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryAttributionView" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPlacePhotoGalleryViewController" hasInstanceMethod:@"downloadImageForVisibleViews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v40 = *MEMORY[0x29EDCA608];
  v38.receiver = self;
  v38.super_class = MUPlacePhotoGalleryViewControllerAccessibility;
  [(MUPlacePhotoGalleryViewControllerAccessibility *)&v38 _accessibilityLoadAccessibilityInformation];
  v14 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeUIViewForKey:@"scrollView"];
  [v14 setIsAccessibilityOpaqueElementProvider:1];
  v18 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeArrayForKey:@"_photoViews"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeArrayForKey:@"_photos"];
  v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v2)
  {
    v3 = 0;
    v17 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * v4);
        v28 = 0;
        v29 = &v28;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy_;
        v32 = __Block_byref_object_dispose_;
        v33 = 0;
        v21 = MEMORY[0x29EDCA5F8];
        v22 = 3221225472;
        v23 = __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v24 = &unk_29F2CDD88;
        v26 = &v28;
        v25 = v18;
        v27 = v3;
        AXPerformSafeBlock();
        v6 = v29[5];

        _Block_object_dispose(&v28, 8);
        v7 = [v5 safeStringForKey:@"title"];
        v8 = [v5 safeStringForKey:@"subtitle"];
        v9 = __UIAXStringForVariables();
        [v6 setAccessibilityLabel:{v9, v8, @"__AXStringForVariablesSentinel"}];

        ++v3;
        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v2);
  }

  v10 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeValueForKey:@"rapBarButtonView"];
  v11 = accessibilityLocalizedString(@"REPORT_A_PROBLEM");
  [v10 setAccessibilityLabel:v11];

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v19[3] = &unk_29F2CDDB0;
  v20 = v10;
  v12 = v10;
  [v12 _setAccessibilityValueBlock:v19];
  [(MUPlacePhotoGalleryViewControllerAccessibility *)self _accessibilityLabelAttributionButton];

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

id __92__MUPlacePhotoGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 customView];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"REPORT_A_PROBLEM_LOADING");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)downloadImageForVisibleViews
{
  v3.receiver = self;
  v3.super_class = MUPlacePhotoGalleryViewControllerAccessibility;
  [(MUPlacePhotoGalleryViewControllerAccessibility *)&v3 downloadImageForVisibleViews];
  [(MUPlacePhotoGalleryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLabelAttributionButton
{
  v3 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeValueForKey:@"currentPhoto"];
  v4 = [v3 safeValueForKey:@"attribution"];
  v7 = [v4 safeStringForKey:@"providerName"];

  v5 = [(MUPlacePhotoGalleryViewControllerAccessibility *)self safeUIViewForKey:@"attributionView"];
  v6 = [v5 safeUIViewForKey:@"accessoryButton"];
  [v6 setAccessibilityLabel:v7];
}

@end