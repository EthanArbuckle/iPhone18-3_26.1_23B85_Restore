@interface AXInvertColors_CameraEffectsKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_CameraEffectsKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CFXCaptureViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CFXFilterEffectPickerView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"CFXCaptureViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CFXFilterEffectPickerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"CFXFilterPickerCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end