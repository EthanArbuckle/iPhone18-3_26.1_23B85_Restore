@interface AXInvertColors_PhotosUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PhotosUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHLivePhotoView"];
  [validationsCopy validateClass:@"PHAssetCreationRequest" hasClassMethod:@"creationRequestForAssetFromScreenshotImage:" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PHLivePhotoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PHAssetCreationRequestInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end