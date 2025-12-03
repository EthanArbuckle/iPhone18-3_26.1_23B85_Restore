@interface AXInvertColors_PosterBoard
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PosterBoard

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBFGalleryEditingSceneViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PBFPosterGalleryPreviewViewController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PBFPosterGalleryPreviewViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PBFGalleryEditingSceneViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"LockScreenPosterCollectionViewCell_InvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"HomeScreenPosterCollectionViewCell_InvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PBFPosterRackCollectionViewController_InvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PBFPosterGalleryPreviewViewController_InvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end