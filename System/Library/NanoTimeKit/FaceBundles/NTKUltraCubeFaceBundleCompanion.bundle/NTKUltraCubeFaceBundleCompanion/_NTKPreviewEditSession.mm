@interface _NTKPreviewEditSession
- (CGSize)presentationSize;
- (id)ultracubeCropPreviewForDevice:(id)device subsampleFactor:(double)factor;
@end

@implementation _NTKPreviewEditSession

- (id)ultracubeCropPreviewForDevice:(id)device subsampleFactor:(double)factor
{
  layout = [(_NTKPreviewEditSession *)self layout];
  position = [layout position];

  layout2 = [(_NTKPreviewEditSession *)self layout];
  [layout2 crop];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeScale(&v27, 1.0 / factor, 1.0 / factor);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  v30 = CGRectApplyAffineTransform(v29, &v27);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v21 = [NTKUltraCubeCropPreview alloc];
  photoImage = [(_NTKPreviewEditSession *)self photoImage];
  photoImageMasked = [(_NTKPreviewEditSession *)self photoImageMasked];
  previewValidator = [(_NTKPreviewEditSession *)self previewValidator];
  height = [(NTKUltraCubeCropPreview *)v21 initWithPhoto:photoImage maskedPhoto:photoImageMasked previewValidator:previewValidator crop:position timeLabelPosition:[(_NTKPreviewEditSession *)self isUserAdjusted] revertable:x, y, width, height];

  return height;
}

- (CGSize)presentationSize
{
  width = self->_presentationSize.width;
  height = self->_presentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end