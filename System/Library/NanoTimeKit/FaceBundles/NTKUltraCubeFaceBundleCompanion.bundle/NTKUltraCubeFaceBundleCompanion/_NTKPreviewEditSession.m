@interface _NTKPreviewEditSession
- (CGSize)presentationSize;
- (id)ultracubeCropPreviewForDevice:(id)a3 subsampleFactor:(double)a4;
@end

@implementation _NTKPreviewEditSession

- (id)ultracubeCropPreviewForDevice:(id)a3 subsampleFactor:(double)a4
{
  v6 = [(_NTKPreviewEditSession *)self layout];
  v7 = [v6 position];

  v8 = [(_NTKPreviewEditSession *)self layout];
  [v8 crop];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  CGAffineTransformMakeScale(&v27, 1.0 / a4, 1.0 / a4);
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
  v22 = [(_NTKPreviewEditSession *)self photoImage];
  v23 = [(_NTKPreviewEditSession *)self photoImageMasked];
  v24 = [(_NTKPreviewEditSession *)self previewValidator];
  v25 = [(NTKUltraCubeCropPreview *)v21 initWithPhoto:v22 maskedPhoto:v23 previewValidator:v24 crop:v7 timeLabelPosition:[(_NTKPreviewEditSession *)self isUserAdjusted] revertable:x, y, width, height];

  return v25;
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