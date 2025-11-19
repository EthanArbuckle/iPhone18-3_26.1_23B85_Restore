@interface NTKUltraCubeCropPreview
- (CGRect)crop;
- (NTKUltraCubeCropPreview)initWithPhoto:(id)a3 maskedPhoto:(id)a4 previewValidator:(id)a5 crop:(CGRect)a6 timeLabelPosition:(int64_t)a7 revertable:(BOOL)a8;
- (id)timeLabelStyleForDevice:(id)a3 font:(id)a4;
@end

@implementation NTKUltraCubeCropPreview

- (NTKUltraCubeCropPreview)initWithPhoto:(id)a3 maskedPhoto:(id)a4 previewValidator:(id)a5 crop:(CGRect)a6 timeLabelPosition:(int64_t)a7 revertable:(BOOL)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v24.receiver = self;
  v24.super_class = NTKUltraCubeCropPreview;
  v21 = [(NTKUltraCubeCropPreview *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_photo, a3);
    objc_storeStrong(&v22->_maskedPhoto, a4);
    objc_storeStrong(&v22->_previewValidator, a5);
    v22->_crop.origin.x = x;
    v22->_crop.origin.y = y;
    v22->_crop.size.width = width;
    v22->_crop.size.height = height;
    v22->_timeLabelPosition = a7;
    v22->_revertable = a8;
  }

  return v22;
}

- (id)timeLabelStyleForDevice:(id)a3 font:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKUltraCubeCropPreview *)self timeLabelPosition];
  v9 = &NTKUltraCubePhotoTimeElementAboveUnitBaseY;
  if (((v8 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v9 = &NTKUltraCubePhotoTimeElementBelowUnitBaseY;
  }

  v10 = *v9;
  [v7 screenBounds];
  v15 = [NTKUltraCubeContentView timeLabelStyleForDevice:v7 font:v6 baseline:v10 faceBounds:v11, v12, v13, v14];

  return v15;
}

- (CGRect)crop
{
  x = self->_crop.origin.x;
  y = self->_crop.origin.y;
  width = self->_crop.size.width;
  height = self->_crop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end