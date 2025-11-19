@interface MPSNDArrayResample
- (MPSNDArrayResample)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayResample)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setScaleTransform:(const MPSScaleTransform *)a3;
@end

@implementation MPSNDArrayResample

- (MPSNDArrayResample)initWithDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayResample;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithDevice:a3];
  if (result)
  {
    result->_scaleTransform = 0;
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&result->_transformStorage.scaleX = v4;
    *&result->_transformStorage.translateX = v4;
    result->_resampleMode = 0;
    result->_dataFormat = 0;
    result->_nearestMode = 0;
    result->super.super._encode = EncodeResample;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayResample)initWithCoder:(id)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MPSNDArrayResample;
  v5 = [(MPSNDArrayUnaryKernel *)&v14 initWithCoder:a3 device:a4];
  v6 = v5;
  if (v5)
  {
    *(v5 + 87) = 0;
    v7 = (v5 + 664);
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v5 + 664) = v8;
    *(v5 + 680) = v8;
    if ([a3 containsValueForKey:@"MPSNDArrayResampleScaleX"])
    {
      [a3 decodeDoubleForKey:@"MPSNDArrayResampleScaleX"];
      v7->scaleX = v10;
      v6->_scaleTransform = v7;
      if (![a3 containsValueForKey:@"MPSNDArrayResampleScaleY"])
      {
LABEL_4:
        if (![a3 containsValueForKey:@"MPSNDArrayResampleTranslateX"])
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if (![a3 containsValueForKey:@"MPSNDArrayResampleScaleY"])
    {
      goto LABEL_4;
    }

    [a3 decodeDoubleForKey:@"MPSNDArrayResampleScaleY"];
    v6->_transformStorage.scaleY = v11;
    v6->_scaleTransform = v7;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleTranslateX"])
    {
LABEL_5:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleTranslateY"])
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    [a3 decodeDoubleForKey:@"MPSNDArrayResampleTranslateX"];
    v6->_transformStorage.translateX = v12;
    v6->_scaleTransform = v7;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleTranslateY"])
    {
LABEL_6:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleModeKey"])
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    [a3 decodeDoubleForKey:@"MPSNDArrayResampleTranslateY"];
    v6->_transformStorage.translateY = v13;
    v6->_scaleTransform = v7;
    if (![a3 containsValueForKey:@"MPSNDArrayResampleModeKey"])
    {
LABEL_7:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleDataFormatKey"])
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v6->_resampleMode = [a3 decodeInt64ForKey:@"MPSNDArrayResampleModeKey"];
    if (![a3 containsValueForKey:@"MPSNDArrayResampleDataFormatKey"])
    {
LABEL_8:
      if (![a3 containsValueForKey:@"MPSNDArrayResampleNearestModeKey"])
      {
LABEL_10:
        v6->super.super._encode = EncodeResample;
        v6->super.super.super._encodeData = v6;
        return v6;
      }

LABEL_9:
      v6->_nearestMode = [a3 decodeInt64ForKey:@"MPSNDArrayResampleNearestModeKey"];
      goto LABEL_10;
    }

LABEL_17:
    v6->_dataFormat = [a3 decodeInt64ForKey:@"MPSNDArrayResampleDataFormatKey"];
    if (![a3 containsValueForKey:@"MPSNDArrayResampleNearestModeKey"])
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
  v6.super_class = MPSNDArrayResample;
  [(MPSNDArrayMultiaryBase *)&v6 encodeWithCoder:?];
  scaleTransform = self->_scaleTransform;
  if (scaleTransform)
  {
    [a3 encodeDouble:@"MPSNDArrayResampleScaleX" forKey:scaleTransform->scaleX];
    [a3 encodeDouble:@"MPSNDArrayResampleScaleY" forKey:self->_scaleTransform->scaleY];
    [a3 encodeDouble:@"MPSNDArrayResampleTranslateX" forKey:self->_scaleTransform->translateX];
    [a3 encodeDouble:@"MPSNDArrayResampleTranslateY" forKey:self->_scaleTransform->translateY];
    [a3 encodeInt64:self->_resampleMode forKey:@"MPSNDArrayResampleModeKey"];
    [a3 encodeInt64:self->_dataFormat forKey:@"MPSNDArrayResampleDataFormatKey"];
    [a3 encodeInt64:self->_nearestMode forKey:@"MPSNDArrayResampleNearestModeKey"];
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayResample;
  result = [(MPSNDArrayMultiaryKernel *)&v8 copyWithZone:a3 device:a4];
  if (result)
  {
    if (self->_scaleTransform)
    {
      v6 = result + 664;
    }

    else
    {
      v6 = 0;
    }

    *(result + 87) = v6;
    v7 = *&self->_transformStorage.translateX;
    *(result + 664) = *&self->_transformStorage.scaleX;
    *(result + 680) = v7;
    *(result + 176) = self->_resampleMode;
    *(result + 177) = self->_dataFormat;
    *(result + 178) = self->_nearestMode;
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