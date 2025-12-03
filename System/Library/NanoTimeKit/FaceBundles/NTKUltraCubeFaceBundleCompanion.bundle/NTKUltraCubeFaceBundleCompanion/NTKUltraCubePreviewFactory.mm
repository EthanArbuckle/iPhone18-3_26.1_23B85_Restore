@interface NTKUltraCubePreviewFactory
- (CGRect)ultracube_screenBounds;
- (CGSize)ultracube_minimumNormalizedCropSize;
- (NTKUltraCubePreviewFactory)initWithIndex:(int64_t)index device:(id)device typeface:(unint64_t)typeface editor:(id)editor;
- (void)ultracube_getOptimizedPreviewWithCompletion:(id)completion;
- (void)ultracube_getPreviewWithCompletion:(id)completion;
@end

@implementation NTKUltraCubePreviewFactory

- (NTKUltraCubePreviewFactory)initWithIndex:(int64_t)index device:(id)device typeface:(unint64_t)typeface editor:(id)editor
{
  deviceCopy = device;
  editorCopy = editor;
  v22.receiver = self;
  v22.super_class = NTKUltraCubePreviewFactory;
  v12 = [(NTKUltraCubePreviewFactory *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_editor, editor);
    v13->_index = index;
    [deviceCopy screenBounds];
    v14 = [NTKUltraCubeContentView timeLabelFontForDevice:deviceCopy size:typeface typeface:0 role:round(0.241116751 * CGRectGetHeight(v23))];
    font = v13->_font;
    v13->_font = v14;

    [deviceCopy screenBounds];
    v13->_ultracube_screenBounds.origin.x = v16;
    v13->_ultracube_screenBounds.origin.y = v17;
    v13->_ultracube_screenBounds.size.width = v18;
    v13->_ultracube_screenBounds.size.height = v19;
    [deviceCopy screenCornerRadius];
    v13->_ultracube_screenCornerRadius = v20;
  }

  return v13;
}

- (CGSize)ultracube_minimumNormalizedCropSize
{
  index = [(NTKUltraCubePreviewFactory *)self index];
  editor = self->_editor;

  [(NTKCompanionUltraCubePhotosEditor *)editor minimumNormalizedCropSizeForPhotoAtIndex:index];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)ultracube_getPreviewWithCompletion:(id)completion
{
  if (self->_editor)
  {
    completionCopy = completion;
    [(NTKCompanionUltraCubePhotosEditor *)self->_editor previewOfLibraryPhotoAtIndex:[(NTKUltraCubePreviewFactory *)self index] completion:completionCopy];
  }

  else
  {
    completionCopy2 = completion;
    completionCopy = [NSError errorWithDomain:@"NTKUltraCubeDomain" code:305 userInfo:0];
    completionCopy2[2](completionCopy2, 0);
  }
}

- (void)ultracube_getOptimizedPreviewWithCompletion:(id)completion
{
  if (self->_editor)
  {
    completionCopy = completion;
    [(NTKCompanionUltraCubePhotosEditor *)self->_editor resetCropOfPhotoAtIndex:[(NTKUltraCubePreviewFactory *)self index] completion:completionCopy];
  }

  else
  {
    completionCopy2 = completion;
    completionCopy = [NSError errorWithDomain:@"NTKUltraCubeDomain" code:305 userInfo:0];
    completionCopy2[2](completionCopy2, 0);
  }
}

- (CGRect)ultracube_screenBounds
{
  x = self->_ultracube_screenBounds.origin.x;
  y = self->_ultracube_screenBounds.origin.y;
  width = self->_ultracube_screenBounds.size.width;
  height = self->_ultracube_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end