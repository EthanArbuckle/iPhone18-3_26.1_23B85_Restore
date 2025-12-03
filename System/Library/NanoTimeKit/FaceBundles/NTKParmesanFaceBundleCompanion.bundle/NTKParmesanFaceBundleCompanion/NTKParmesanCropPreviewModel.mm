@interface NTKParmesanCropPreviewModel
- (NTKParmesanCropPreviewModel)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(id)crop timeLayout:(id)layout useDepthEffect:(BOOL)effect revertable:(BOOL)revertable;
- (id)description;
@end

@implementation NTKParmesanCropPreviewModel

- (NTKParmesanCropPreviewModel)initWithPhoto:(id)photo maskedPhoto:(id)maskedPhoto previewValidator:(id)validator crop:(id)crop timeLayout:(id)layout useDepthEffect:(BOOL)effect revertable:(BOOL)revertable
{
  photoCopy = photo;
  maskedPhotoCopy = maskedPhoto;
  validatorCopy = validator;
  cropCopy = crop;
  layoutCopy = layout;
  v24.receiver = self;
  v24.super_class = NTKParmesanCropPreviewModel;
  v19 = [(NTKParmesanCropPreviewModel *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_photo, photo);
    objc_storeStrong(&v20->_maskedPhoto, maskedPhoto);
    objc_storeStrong(&v20->_previewValidator, validator);
    objc_storeStrong(&v20->_crop, crop);
    objc_storeStrong(&v20->_timeLayout, layout);
    v20->_useDepthEffect = effect;
    v20->_revertable = revertable;
  }

  return v20;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  photo = self->_photo;
  maskedPhoto = self->_maskedPhoto;
  objc_msgSend_cgRect(self->_crop, a2, v2, v3);
  if (v12 <= 1.0)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"{ %.5f, %.5f, %.5f, %.5f }", v9, v10, v11, *&v12, v13);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"{ %.1f, %.1f, %.1f, %.1f }", v9, v10, v11, *&v12, v13);
  }
  v14 = ;
  v17 = v14;
  v18 = "NO";
  if (self->_useDepthEffect)
  {
    v19 = "YES";
  }

  else
  {
    v19 = "NO";
  }

  if (self->_revertable)
  {
    v18 = "YES";
  }

  v20 = objc_msgSend_stringWithFormat_(v5, v15, @"[previewModel: photo=%@, mask=%@, crop=%@, timelayout=%@, useDepth=%s, revertable=%s]", v16, photo, maskedPhoto, v14, self->_timeLayout, v19, v18);

  return v20;
}

@end