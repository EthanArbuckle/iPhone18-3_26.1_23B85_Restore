@interface StickerPhotosUtil
- ($B6DA3D8FAB1629C12E7AA8FD40BC825C)videoPreviewTimeRangeForImageAnalysisInteraction:(SEL)a3;
- (CGRect)videoPreviewNormalizedCropRectForImageAnalysisInteraction:(id)a3;
- (id)imageAnalysisInteraction:(id)a3 videoPreviewSubjectMatteAtCompositionTime:(id *)a4;
- (void)imageAnalysisInteraction:(id)a3 createStickerRepresentationsAtIndexSet:(id)a4 type:(unint64_t)a5 stickerIDs:(id)a6 progress:(id)a7 completion:(id)a8;
- (void)loadImageFromItemProvider:(id)a3 completion:(id)a4;
- (void)loadLivePhotoFromItemProvider:(id)a3 completion:(id)a4;
- (void)setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:(id)a3;
@end

@implementation StickerPhotosUtil

- (void)loadLivePhotoFromItemProvider:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 loadObjectOfClass:objc_opt_class() completionHandler:v5];
}

- (void)loadImageFromItemProvider:(id)a3 completion:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [v7 loadObjectOfClass:objc_opt_class() completionHandler:v5];
}

- (void)imageAnalysisInteraction:(id)a3 createStickerRepresentationsAtIndexSet:(id)a4 type:(unint64_t)a5 stickerIDs:(id)a6 progress:(id)a7 completion:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a4;
  v17 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v17 createStickerRepresentationsAtIndexSet:v16 type:a5 stickerIDs:v13 progress:v14 completion:v15];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000610C;
    v18[3] = &unk_1000A2878;
    v19 = v15;
    [v17 createStickerRepresentationsAtIndexSet:v16 completion:v18];

    v17 = v19;
  }
}

- (id)imageAnalysisInteraction:(id)a3 videoPreviewSubjectMatteAtCompositionTime:(id *)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = *&a4->var0;
    var3 = a4->var3;
    v6 = [v5 videoPreviewSubjectMatteAtCompositionTime:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- ($B6DA3D8FAB1629C12E7AA8FD40BC825C)videoPreviewTimeRangeForImageAnalysisInteraction:(SEL)a3
{
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    if (v5)
    {
      [v5 videoPreviewTimeRange];
    }

    else
    {
      *&retstr->var0.var3 = 0u;
      *&retstr->var1.var1 = 0u;
      *&retstr->var0.var0 = 0u;
    }
  }

  else
  {
    start = kCMTimeZero;
    v7 = start;
    CMTimeRangeMake(retstr, &start, &v7);
  }

  return result;
}

- (CGRect)videoPreviewNormalizedCropRectForImageAnalysisInteraction:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 videoPreviewNormalizedCropRect];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 setUsesLightDimmingViewInLightMode:1];
  }
}

@end