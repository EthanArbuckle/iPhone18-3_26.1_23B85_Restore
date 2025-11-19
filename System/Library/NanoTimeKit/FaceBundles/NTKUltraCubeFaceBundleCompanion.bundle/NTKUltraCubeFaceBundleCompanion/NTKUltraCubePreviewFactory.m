@interface NTKUltraCubePreviewFactory
- (CGRect)ultracube_screenBounds;
- (CGSize)ultracube_minimumNormalizedCropSize;
- (NTKUltraCubePreviewFactory)initWithIndex:(int64_t)a3 device:(id)a4 typeface:(unint64_t)a5 editor:(id)a6;
- (void)ultracube_getOptimizedPreviewWithCompletion:(id)a3;
- (void)ultracube_getPreviewWithCompletion:(id)a3;
@end

@implementation NTKUltraCubePreviewFactory

- (NTKUltraCubePreviewFactory)initWithIndex:(int64_t)a3 device:(id)a4 typeface:(unint64_t)a5 editor:(id)a6
{
  v10 = a4;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = NTKUltraCubePreviewFactory;
  v12 = [(NTKUltraCubePreviewFactory *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_editor, a6);
    v13->_index = a3;
    [v10 screenBounds];
    v14 = [NTKUltraCubeContentView timeLabelFontForDevice:v10 size:a5 typeface:0 role:round(0.241116751 * CGRectGetHeight(v23))];
    font = v13->_font;
    v13->_font = v14;

    [v10 screenBounds];
    v13->_ultracube_screenBounds.origin.x = v16;
    v13->_ultracube_screenBounds.origin.y = v17;
    v13->_ultracube_screenBounds.size.width = v18;
    v13->_ultracube_screenBounds.size.height = v19;
    [v10 screenCornerRadius];
    v13->_ultracube_screenCornerRadius = v20;
  }

  return v13;
}

- (CGSize)ultracube_minimumNormalizedCropSize
{
  v3 = [(NTKUltraCubePreviewFactory *)self index];
  editor = self->_editor;

  [(NTKCompanionUltraCubePhotosEditor *)editor minimumNormalizedCropSizeForPhotoAtIndex:v3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)ultracube_getPreviewWithCompletion:(id)a3
{
  if (self->_editor)
  {
    v5 = a3;
    [(NTKCompanionUltraCubePhotosEditor *)self->_editor previewOfLibraryPhotoAtIndex:[(NTKUltraCubePreviewFactory *)self index] completion:v5];
  }

  else
  {
    v4 = a3;
    v5 = [NSError errorWithDomain:@"NTKUltraCubeDomain" code:305 userInfo:0];
    v4[2](v4, 0);
  }
}

- (void)ultracube_getOptimizedPreviewWithCompletion:(id)a3
{
  if (self->_editor)
  {
    v5 = a3;
    [(NTKCompanionUltraCubePhotosEditor *)self->_editor resetCropOfPhotoAtIndex:[(NTKUltraCubePreviewFactory *)self index] completion:v5];
  }

  else
  {
    v4 = a3;
    v5 = [NSError errorWithDomain:@"NTKUltraCubeDomain" code:305 userInfo:0];
    v4[2](v4, 0);
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