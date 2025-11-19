@interface AXInvertColors_PhotosUIPrivate
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_PhotosUIPrivate

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotoView"];
  [v3 validateClass:@"PUTilingView"];
  [v3 validateClass:@"PUFeedImageCell"];
  [v3 validateClass:@"PUPhotosGridCell"];
  [v3 validateClass:@"PUReviewScreenControlBar"];
  [v3 validateClass:@"PUReviewScreenTopBar"];
  [v3 validateClass:@"PUBrowsingBackgroundTileViewController" hasInstanceMethod:@"_updateColorIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUBrowsingBackgroundTileViewController" hasInstanceMethod:@"backgroundColorOverride" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUImageTileViewController" hasInstanceMethod:@"_updateIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUImageTileViewController" hasInstanceMethod:@"assetDidChange" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUOneUpAssetTransitionContext" hasInstanceMethod:@"_setSnapshotView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PUOneUpAssetTransitionContext" hasInstanceMethod:@"snapshotView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUPhotoView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"PUPhotoView" hasInstanceVariable:@"_contentHelper" withType:"PUPhotoViewContentHelper"];
  [v3 validateClass:@"PUPhotoViewContentHelper" hasProperty:@"overlayColor" withType:"@"];
  [v3 validateClass:@"PUBrowsingBackgroundTileViewController" isKindOfClass:@"PUTileViewController"];
  [v3 validateClass:@"UIColor" hasClassMethod:@"_systemBackgroundColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUVideoTileViewController" hasInstanceVariable:@"_placeholderImageView" withType:"UIImageView"];
  [v3 validateClass:@"PUVideoTileViewController" hasInstanceMethod:@"loadView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"PUFeedImageCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUPhotoViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUVideoPlayerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUGridRenderedStripInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUPhotosGridCellInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUImageTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUCollageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUReviewScreenControlBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUReviewScreenTopBarInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUOneUpAssetTransitionContextInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"PUVideoTileViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end