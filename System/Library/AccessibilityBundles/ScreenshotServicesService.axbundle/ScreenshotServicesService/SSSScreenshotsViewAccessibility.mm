@interface SSSScreenshotsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SSSScreenshotsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SSSScreenshotsView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SSSScreenshotsView" hasInstanceMethod:@"numberOfScreenshotImages" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SSSScreenshotsView" hasInstanceMethod:@"currentScreenshotView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SSSScreenshotView" hasInstanceVariable:@"_imageCropController" withType:"SSSCropController"];
  [validationsCopy validateClass:@"SSSCropControllerRootView" hasInstanceVariable:@"_overlayView" withType:"SSSCropOverlayView"];
  [validationsCopy validateClass:@"SSSCropController" hasInstanceVariable:@"_rootView" withType:"SSSCropControllerRootView"];
  [validationsCopy validateClass:@"SSSCropOverlayView" hasInstanceVariable:@"_grabberViews" withType:"NSArray"];
  [validationsCopy validateClass:@"SSSCropOverlayView" hasInstanceVariable:@"_cornerViews" withType:"NSArray"];
}

- (id)accessibilityLabel
{
  if ([(SSSScreenshotsViewAccessibility *)self safeIntegerForKey:@"numberOfScreenshotImages"]== 1)
  {
    v2 = @"screenshot.title";
  }

  else
  {
    v2 = @"screenshots.title";
  }

  return accessibilityLocalizedString(v2);
}

- (unint64_t)accessibilityTraits
{
  isAccessibilityElement = [(SSSScreenshotsViewAccessibility *)self isAccessibilityElement];
  v3 = MEMORY[0x29EDC7F70];
  if (!isAccessibilityElement)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SSSScreenshotsViewAccessibility *)self isAccessibilityElement])
  {
    v3 = [(SSSScreenshotsViewAccessibility *)self safeValueForKey:@"currentScreenshotView"];
    v4 = [v3 safeValueForKey:@"_imageCropController"];
    v5 = [v4 safeValueForKey:@"_rootView"];

    v6 = [v5 safeValueForKey:@"_overlayView"];
    v7 = [v6 safeArrayForKey:@"_grabberViews"];

    v8 = [v5 safeValueForKey:@"_overlayView"];
    v9 = [v8 safeArrayForKey:@"_cornerViews"];

    array = [MEMORY[0x29EDB8DE8] array];
    [array axSafelyAddObjectsFromArray:v7];
    [array axSafelyAddObjectsFromArray:v9];
    v11 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end