@interface NTKUltraCubeCropPreview
- (CGRect)crop;
- (NTKUltraCubeCropPreview)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(CGRect)crop timeLabelPosition:(int64_t)position revertable:(BOOL)revertable;
- (id)timeLabelStyleForDevice:(id)device font:(id)font;
@end

@implementation NTKUltraCubeCropPreview

- (NTKUltraCubeCropPreview)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(CGRect)crop timeLabelPosition:(int64_t)position revertable:(BOOL)revertable
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  photoCopy = photo;
  maskedPhotoCopy = maskedPhoto;
  validatorCopy = validator;
  v24.receiver = self;
  v24.super_class = NTKUltraCubeCropPreview;
  v21 = [(NTKUltraCubeCropPreview *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_photo, photo);
    objc_storeStrong(&v22->_maskedPhoto, maskedPhoto);
    objc_storeStrong(&v22->_previewValidator, validator);
    v22->_crop.origin.x = x;
    v22->_crop.origin.y = y;
    v22->_crop.size.width = width;
    v22->_crop.size.height = height;
    v22->_timeLabelPosition = position;
    v22->_revertable = revertable;
  }

  return v22;
}

- (id)timeLabelStyleForDevice:(id)device font:(id)font
{
  fontCopy = font;
  deviceCopy = device;
  timeLabelPosition = [(NTKUltraCubeCropPreview *)self timeLabelPosition];
  v9 = &NTKUltraCubePhotoTimeElementAboveUnitBaseY;
  if (((timeLabelPosition - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v9 = &NTKUltraCubePhotoTimeElementBelowUnitBaseY;
  }

  v10 = *v9;
  [deviceCopy screenBounds];
  v15 = [NTKUltraCubeContentView timeLabelStyleForDevice:deviceCopy font:fontCopy baseline:v10 faceBounds:v11, v12, v13, v14];

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