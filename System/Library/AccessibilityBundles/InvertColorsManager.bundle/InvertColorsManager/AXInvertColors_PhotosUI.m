@interface AXInvertColors_PhotosUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PhotosUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHLivePhotoView"];
  [v3 validateClass:@"PHAssetCreationRequest" hasClassMethod:@"creationRequestForAssetFromScreenshotImage:" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PHLivePhotoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PHAssetCreationRequestInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end