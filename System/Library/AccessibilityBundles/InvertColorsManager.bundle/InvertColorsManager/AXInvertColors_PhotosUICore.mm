@interface AXInvertColors_PhotosUICore
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PhotosUICore

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXFocusableUIImageView"];
  [validationsCopy validateClass:@"PXCMMImageView"];
  [validationsCopy validateClass:@"PXCollageView"];
  [validationsCopy validateClass:@"PXGMetalRenderer"];
  [validationsCopy validateClass:@"PXPersonTableViewCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"PXPersonTableViewCell" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PXFocusableUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXVideoPlayerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXPeopleCollectionViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXTitleSubtitleUILabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXCMMImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXCollageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXPersonTableViewCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXGMetalRendererInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXGViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXVideoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXPhotosGlobalFooterViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PXDisplayAssetImageContentViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end