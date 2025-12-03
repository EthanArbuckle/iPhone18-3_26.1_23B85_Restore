@interface StickerPhotosUtil
- ($B6DA3D8FAB1629C12E7AA8FD40BC825C)videoPreviewTimeRangeForImageAnalysisInteraction:(SEL)interaction;
- (CGRect)videoPreviewNormalizedCropRectForImageAnalysisInteraction:(id)interaction;
- (id)imageAnalysisInteraction:(id)interaction videoPreviewSubjectMatteAtCompositionTime:(id *)time;
- (void)imageAnalysisInteraction:(id)interaction createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion;
- (void)loadImageFromItemProvider:(id)provider completion:(id)completion;
- (void)loadLivePhotoFromItemProvider:(id)provider completion:(id)completion;
- (void)setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:(id)interaction;
@end

@implementation StickerPhotosUtil

- (void)loadLivePhotoFromItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  v6 = [providerCopy loadObjectOfClass:objc_opt_class() completionHandler:completionCopy];
}

- (void)loadImageFromItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  v6 = [providerCopy loadObjectOfClass:objc_opt_class() completionHandler:completionCopy];
}

- (void)imageAnalysisInteraction:(id)interaction createStickerRepresentationsAtIndexSet:(id)set type:(unint64_t)type stickerIDs:(id)ds progress:(id)progress completion:(id)completion
{
  dsCopy = ds;
  progressCopy = progress;
  completionCopy = completion;
  setCopy = set;
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    [interactionCopy createStickerRepresentationsAtIndexSet:setCopy type:type stickerIDs:dsCopy progress:progressCopy completion:completionCopy];
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000610C;
    v18[3] = &unk_1000A2878;
    v19 = completionCopy;
    [interactionCopy createStickerRepresentationsAtIndexSet:setCopy completion:v18];

    interactionCopy = v19;
  }
}

- (id)imageAnalysisInteraction:(id)interaction videoPreviewSubjectMatteAtCompositionTime:(id *)time
{
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    v8 = *&time->var0;
    var3 = time->var3;
    v6 = [interactionCopy videoPreviewSubjectMatteAtCompositionTime:&v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- ($B6DA3D8FAB1629C12E7AA8FD40BC825C)videoPreviewTimeRangeForImageAnalysisInteraction:(SEL)interaction
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

- (CGRect)videoPreviewNormalizedCropRectForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    [interactionCopy videoPreviewNormalizedCropRect];
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

- (void)setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    [interactionCopy setUsesLightDimmingViewInLightMode:1];
  }
}

@end