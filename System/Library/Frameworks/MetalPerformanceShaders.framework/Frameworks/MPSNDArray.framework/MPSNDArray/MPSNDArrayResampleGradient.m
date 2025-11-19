@interface MPSNDArrayResampleGradient
- (MPSNDArrayResampleGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayResampleGradient)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setScaleTransform:(const MPSScaleTransform *)a3;
@end

@implementation MPSNDArrayResampleGradient

- (MPSNDArrayResampleGradient)initWithDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayResampleGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v5 initWithDevice:a3];
  if (result)
  {
    result->_scaleTransform = 0;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&result->_transformStorage.scaleX = v4;
    *&result->_transformStorage.translateX = v4;
    result->_resampleMode = 0;
    result->_dataFormat = 0;
    result->_nearestMode = 0;
    result->super.super.super._encodeGradient = EncodeResampleGradient;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayResampleGradient)initWithCoder:(id)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSNDArrayResampleGradient;
  v5 = [(MPSNDArrayUnaryGradientKernel *)&v14 initWithCoder:a3 device:a4];
  v6 = v5;
  if (v5)
  {
    v5->_scaleTransform = 0;
    p_transformStorage = &v5->_transformStorage;
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v5->_transformStorage.scaleX = v8;
    *&v5->_transformStorage.translateX = v8;
    if ([a3 containsValueForKey:@"MPSNDArrayResampleGradientScaleX"])
    {
      [a3 decodeDoubleForKey:@"MPSNDArrayResampleGradientScaleX"];
      p_transformStorage->scaleX = v10;
      v6->_scaleTransform = p_transformStorage;
      if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientScaleY"])
      {
LABEL_4:
        if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientTranslateX"])
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientScaleY"])
    {
      goto LABEL_4;
    }

    [a3 decodeDoubleForKey:@"MPSNDArrayResampleGradientScaleY"];
    v6->_transformStorage.scaleY = v11;
    v6->_scaleTransform = p_transformStorage;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientTranslateX"])
    {
LABEL_5:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientTranslateY"])
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    [a3 decodeDoubleForKey:@"MPSNDArrayResampleGradientTranslateX"];
    v6->_transformStorage.translateX = v12;
    v6->_scaleTransform = p_transformStorage;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientTranslateY"])
    {
LABEL_6:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientModeKey"])
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    [a3 decodeDoubleForKey:@"MPSNDArrayResampleGradientTranslateY"];
    v6->_transformStorage.translateY = v13;
    v6->_scaleTransform = p_transformStorage;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientModeKey"])
    {
LABEL_7:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientDataFormatKey"])
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v6->_resampleMode = [a3 decodeInt64ForKey:@"MPSNDArrayResampleGradientModeKey"];
    if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientDataFormatKey"])
    {
LABEL_8:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientNearestModeKey"])
      {
LABEL_10:
        v6->super.super.super._encodeGradient = EncodeResampleGradient;
        v6->super.super.super._encodeData = v6;
        return v6;
      }

LABEL_9:
      v6->_nearestMode = [a3 decodeInt64ForKey:@"MPSNDArrayResampleGradientNearestModeKey"];
      goto LABEL_10;
    }

LABEL_17:
    v6->_dataFormat = [a3 decodeInt64ForKey:@"MPSNDArrayResampleGradientDataFormatKey"];
    if (![a3 containsValueForKey:@"MPSNDArrayResampleGradientNearestModeKey"])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayResampleGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v6 encodeWithCoder:?];
  scaleTransform = self->_scaleTransform;
  if (scaleTransform)
  {
    [a3 encodeDouble:@"MPSNDArrayResampleGradientScaleX" forKey:scaleTransform->scaleX];
    [a3 encodeDouble:@"MPSNDArrayResampleGradientScaleY" forKey:self->_scaleTransform->scaleY];
    [a3 encodeDouble:@"MPSNDArrayResampleGradientTranslateX" forKey:self->_scaleTransform->translateX];
    [a3 encodeDouble:@"MPSNDArrayResampleGradientTranslateY" forKey:self->_scaleTransform->translateY];
    [a3 encodeInt64:self->_resampleMode forKey:@"MPSNDArrayResampleGradientModeKey"];
    [a3 encodeInt64:self->_dataFormat forKey:@"MPSNDArrayResampleGradientDataFormatKey"];
    [a3 encodeInt64:self->_nearestMode forKey:@"MPSNDArrayResampleGradientNearestModeKey"];
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayResampleGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v8 copyWithZone:a3 device:a4];
  if (result)
  {
    if (self->_scaleTransform)
    {
      v6 = result + 144;
    }

    else
    {
      v6 = 0;
    }

    *(result + 22) = v6;
    v7 = *&self->_transformStorage.translateX;
    *(result + 9) = *&self->_transformStorage.scaleX;
    *(result + 10) = v7;
    *(result + 46) = self->_resampleMode;
    *(result + 47) = self->_dataFormat;
    *(result + 48) = self->_nearestMode;
  }

  return result;
}

- (void)setScaleTransform:(const MPSScaleTransform *)a3
{
  if (a3)
  {
    v3 = *&a3->translateX;
    *&self->_transformStorage.scaleX = *&a3->scaleX;
    *&self->_transformStorage.translateX = v3;
    self->_scaleTransform = &self->_transformStorage;
  }

  else
  {
    self->_scaleTransform = 0;
  }
}

@end