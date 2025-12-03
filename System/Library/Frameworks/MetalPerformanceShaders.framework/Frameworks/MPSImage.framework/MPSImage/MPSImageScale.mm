@interface MPSImageScale
- (MPSImageScale)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageScale)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setScaleTransform:(const MPSScaleTransform *)scaleTransform;
@end

@implementation MPSImageScale

- (MPSImageScale)initWithDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageScale;
  result = [(MPSUnaryImageKernel *)&v5 initWithDevice:device];
  if (result)
  {
    result->_scaleTransform = 0;
    result->super._checkFlags |= 0x4000u;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&result->_transformStorage.scaleX = v4;
    *&result->_transformStorage.translateX = v4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageScale;
  result = [(MPSUnaryImageKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    if (self->_scaleTransform)
    {
      v6 = result + 208;
    }

    else
    {
      v6 = 0;
    }

    *(result + 30) = v6;
    v7 = *&self->_transformStorage.translateX;
    *(result + 13) = *&self->_transformStorage.scaleX;
    *(result + 14) = v7;
  }

  return result;
}

- (MPSImageScale)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v47.receiver = self;
  v47.super_class = MPSImageScale;
  v5 = [(MPSUnaryImageKernel *)&v47 initWithCoder:aDecoder device:device];
  v10 = v5;
  if (!v5)
  {
    return v10;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_scaleTransform = 0;
    v5->super._checkFlags |= 0x4000u;
    p_transformStorage = &v5->_transformStorage;
    v12 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v5->_transformStorage.scaleX = v12;
    *&v5->_transformStorage.translateX = v12;
    if (objc_msgSend_containsValueForKey_(aDecoder, v6, @"MPSImageScaleScaleX", v7, v8, v9))
    {
      objc_msgSend_decodeDoubleForKey_(aDecoder, v13, @"MPSImageScaleScaleX", v14, v15, v16);
      p_transformStorage->scaleX = v31;
      v10->_scaleTransform = p_transformStorage;
      if (!objc_msgSend_containsValueForKey_(aDecoder, v32, @"MPSImageScaleScaleY", v33, v34, v35))
      {
LABEL_5:
        if (!objc_msgSend_containsValueForKey_(aDecoder, v17, @"MPSImageScaleTranslateX", v18, v19, v20))
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }

    else if (!objc_msgSend_containsValueForKey_(aDecoder, v13, @"MPSImageScaleScaleY", v14, v15, v16))
    {
      goto LABEL_5;
    }

    objc_msgSend_decodeDoubleForKey_(aDecoder, v17, @"MPSImageScaleScaleY", v18, v19, v20);
    v10->_transformStorage.scaleY = v36;
    v10->_scaleTransform = p_transformStorage;
    if (!objc_msgSend_containsValueForKey_(aDecoder, v37, @"MPSImageScaleTranslateX", v38, v39, v40))
    {
LABEL_6:
      if (!objc_msgSend_containsValueForKey_(aDecoder, v21, @"MPSImageScaleTranslateY", v22, v23, v24))
      {
        return v10;
      }

      goto LABEL_14;
    }

LABEL_13:
    objc_msgSend_decodeDoubleForKey_(aDecoder, v21, @"MPSImageScaleTranslateX", v22, v23, v24);
    v10->_transformStorage.translateX = v41;
    v10->_scaleTransform = p_transformStorage;
    if (!objc_msgSend_containsValueForKey_(aDecoder, v42, @"MPSImageScaleTranslateY", v43, v44, v45))
    {
      return v10;
    }

LABEL_14:
    objc_msgSend_decodeDoubleForKey_(aDecoder, v25, @"MPSImageScaleTranslateY", v26, v27, v28);
    v10->_transformStorage.translateY = v46;
    v10->_scaleTransform = p_transformStorage;
    return v10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v22.receiver = self;
  v22.super_class = MPSImageScale;
  [(MPSUnaryImageKernel *)&v22 encodeWithCoder:?];
  scaleTransform = self->_scaleTransform;
  if (scaleTransform)
  {
    objc_msgSend_encodeDouble_forKey_(coder, v5, @"MPSImageScaleScaleX", v6, v7, v8, scaleTransform->scaleX);
    objc_msgSend_encodeDouble_forKey_(coder, v10, @"MPSImageScaleScaleY", v11, v12, v13, self->_scaleTransform->scaleY);
    objc_msgSend_encodeDouble_forKey_(coder, v14, @"MPSImageScaleTranslateX", v15, v16, v17, self->_scaleTransform->translateX);
    objc_msgSend_encodeDouble_forKey_(coder, v18, @"MPSImageScaleTranslateY", v19, v20, v21, self->_scaleTransform->translateY);
  }
}

- (void)setScaleTransform:(const MPSScaleTransform *)scaleTransform
{
  if (scaleTransform)
  {
    v3 = *&scaleTransform->translateX;
    *&self->_transformStorage.scaleX = *&scaleTransform->scaleX;
    *&self->_transformStorage.translateX = v3;
    self->_scaleTransform = &self->_transformStorage;
  }

  else
  {
    self->_scaleTransform = 0;
  }
}

@end