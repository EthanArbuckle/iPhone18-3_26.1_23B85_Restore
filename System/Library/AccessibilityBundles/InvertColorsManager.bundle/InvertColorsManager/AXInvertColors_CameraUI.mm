@interface AXInvertColors_CameraUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_CameraUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMPreviewView"];
  [validationsCopy validateClass:@"CAMVideoPreviewView"];
  [validationsCopy validateClass:@"CAMViewfinderView"];
  [validationsCopy validateClass:@"CAMCameraViewControllerContainerView"];
  [validationsCopy validateClass:@"CAMFullscreenViewfinder"];
  [validationsCopy validateClass:@"CAMSemanticStyleSettingsView" hasInstanceVariable:@"__semanticStyleImageViews" withType:"NSArray"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CAMPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMVideoPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMCameraViewControllerContainerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMViewfinderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMSecureWindowInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMFullscreenViewfinderInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CAMSemanticStyleSettingsViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end