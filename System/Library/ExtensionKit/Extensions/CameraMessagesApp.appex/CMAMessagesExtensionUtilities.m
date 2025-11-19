@interface CMAMessagesExtensionUtilities
+ (CGRect)shutterButtonAlignmentRectForReferenceBounds:(CGRect)a3 layoutStyle:(int64_t)a4 screenScale:(double)a5;
@end

@implementation CMAMessagesExtensionUtilities

+ (CGRect)shutterButtonAlignmentRectForReferenceBounds:(CGRect)a3 layoutStyle:(int64_t)a4 screenScale:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 wantsFullscreenViewfinder];

  if (v12)
  {
    [CAMDynamicShutterControl shutterButtonSpecForLayoutStyle:a4];
    v13 = [[CAMFullscreenViewfinderLayout alloc] initWithReferenceBounds:0.0 shutterIntrinsicSize:{0.0, fmin(width, height), fmax(width, height), v39, v39}];
    [v13 alignmentRectForShutterControl];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    [PUReviewScreenUtilities cameraBottomBarFrameForReferenceBounds:x, y, width, height];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [UITraitCollection traitCollectionWithDisplayScale:a5];
    [CAMBottomBar shutterButtonAlignmentRectInBounds:a4 forLayoutStyle:v30 traitCollection:v23 safeAreaInsets:v25, v27, v29, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v15 = v31;
    v17 = v32;
    v19 = v33;
    v21 = v34;
  }

  v35 = v15;
  v36 = v17;
  v37 = v19;
  v38 = v21;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

@end