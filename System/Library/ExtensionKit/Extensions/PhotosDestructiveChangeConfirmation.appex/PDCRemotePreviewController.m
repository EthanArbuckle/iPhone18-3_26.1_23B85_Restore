@interface PDCRemotePreviewController
- (CGSize)preferredContentSize;
- (void)loadView;
@end

@implementation PDCRemotePreviewController

- (CGSize)preferredContentSize
{
  v2 = 272.0;
  v3 = 204.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)loadView
{
  y = CGPointZero.y;
  [(PDCRemotePreviewController *)self preferredContentSize];
  v17 = [[PUStackView alloc] initWithFrame:{CGPointZero.x, y, v4, v5}];
  v6 = [(PDCRemotePreviewController *)self shouldResizePreviewToFillParentView]^ 1;
  v7 = [PUStackView maximumNumberOfVisibleImagesForStyle:v6];
  [v17 setStyle:v6];
  if ([(PDCRemotePreviewController *)self shouldResizePreviewToFillParentView])
  {
    [v17 setHasRoundedCorners:0];
    [v17 setCornerOverlaysDisabled:1];
  }

  else
  {
    [v17 setStackPerspectiveInsets:{0.0, 5.0, 0.0, 5.0}];
    [v17 setStackPerspectiveOffset:{0.0, -3.5}];
    v8 = objc_alloc_init(PUPhotoDecoration);
    v9 = +[UIColor whiteColor];
    [v8 setBorderColor:v9];

    [v8 setBorderWidth:1.0];
    v10 = +[UIColor clearColor];
    [v8 setForegroundColor:v10];

    [v17 setPhotoDecoration:v8];
  }

  PUPixelSizeFromPointSize();
  v11 = [(PDCRemotePreviewController *)self imagesWithTargetSize:1 contentMode:v7 maximumCount:?];
  [v17 setNumberOfVisibleItems:{objc_msgSend(v11, "count")}];
  if ([(PDCRemotePreviewController *)self shouldResizePreviewToFillParentView])
  {
    [v17 setStackSize:{1.79769313e308, 1.79769313e308}];
  }

  else
  {
    v12 = ([v17 numberOfVisibleItems] - 1);
    [v17 stackPerspectiveOffset];
    v14 = 204.0 - v12 * fabs(v13);
    [v17 setStackSize:{272.0, v14}];
    [v17 setStackOffset:{0.0, (204.0 - v14) * 0.5}];
  }

  if ([v11 count])
  {
    v15 = 0;
    do
    {
      v16 = [v11 objectAtIndexedSubscript:v15];
      [v17 setImage:v16 forItemAtIndex:v15];

      ++v15;
    }

    while (v15 < [v11 count]);
  }

  [(PDCRemotePreviewController *)self setView:v17];
}

@end