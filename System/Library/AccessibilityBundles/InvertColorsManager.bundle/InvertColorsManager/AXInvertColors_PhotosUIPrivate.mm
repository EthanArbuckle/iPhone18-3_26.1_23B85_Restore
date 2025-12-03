@interface AXInvertColors_PhotosUIPrivate
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_PhotosUIPrivate

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotoView"];
  [validationsCopy validateClass:@"PUTilingView"];
  [validationsCopy validateClass:@"PUFeedImageCell"];
  [validationsCopy validateClass:@"PUPhotosGridCell"];
  [validationsCopy validateClass:@"PUReviewScreenControlBar"];
  [validationsCopy validateClass:@"PUReviewScreenTopBar"];
  [validationsCopy validateClass:@"PUBrowsingBackgroundTileViewController" hasInstanceMethod:@"_updateColorIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUBrowsingBackgroundTileViewController" hasInstanceMethod:@"backgroundColorOverride" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUImageTileViewController" hasInstanceMethod:@"_updateIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUImageTileViewController" hasInstanceMethod:@"assetDidChange" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PUOneUpAssetTransitionContext" hasInstanceMethod:@"_setSnapshotView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PUOneUpAssetTransitionContext" hasInstanceMethod:@"snapshotView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotoView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"PUPhotoView" hasInstanceVariable:@"_contentHelper" withType:"PUPhotoViewContentHelper"];
  [validationsCopy validateClass:@"PUPhotoViewContentHelper" hasProperty:@"overlayColor" withType:"@"];
  [validationsCopy validateClass:@"PUBrowsingBackgroundTileViewController" isKindOfClass:@"PUTileViewController"];
  [validationsCopy validateClass:@"UIColor" hasClassMethod:@"_systemBackgroundColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUVideoTileViewController" hasInstanceVariable:@"_placeholderImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"loadView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"PUFeedImageCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUPhotoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUVideoPlayerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUGridRenderedStripInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUPhotosGridCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUImageTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUCollageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUReviewScreenControlBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUReviewScreenTopBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUOneUpAssetTransitionContextInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"PUVideoTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end