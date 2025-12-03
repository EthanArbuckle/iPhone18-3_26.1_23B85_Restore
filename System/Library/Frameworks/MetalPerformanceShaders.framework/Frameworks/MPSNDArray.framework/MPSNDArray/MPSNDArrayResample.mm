@interface MPSNDArrayResample
- (MPSNDArrayResample)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayResample)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setScaleTransform:(const MPSScaleTransform *)transform;
@end

@implementation MPSNDArrayResample

- (MPSNDArrayResample)initWithDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayResample;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithDevice:device];
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

- (MPSNDArrayResample)initWithCoder:(id)coder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSNDArrayResample;
  v5 = [(MPSNDArrayUnaryKernel *)&v14 initWithCoder:coder device:device];
  v6 = v5;
  if (v5)
  {
    *(v5 + 87) = 0;
    v7 = (v5 + 664);
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v5 + 664) = v8;
    *(v5 + 680) = v8;
    if ([coder containsValueForKey:@"MPSNDArrayResampleScaleX"])
    {
      [coder decodeDoubleForKey:@"MPSNDArrayResampleScaleX"];
      v7->scaleX = v10;
      v6->_scaleTransform = v7;
      if (![coder containsValueForKey:@"MPSNDArrayResampleScaleY"])
      {
LABEL_4:
        if (![coder containsValueForKey:@"MPSNDArrayResampleTranslateX"])
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if (![coder containsValueForKey:@"MPSNDArrayResampleScaleY"])
    {
      goto LABEL_4;
    }

    [coder decodeDoubleForKey:@"MPSNDArrayResampleScaleY"];
    v6->_transformStorage.scaleY = v11;
    v6->_scaleTransform = v7;
    if (![coder containsValueForKey:@"MPSNDArrayResampleTranslateX"])
    {
LABEL_5:
      if (![coder containsValueForKey:@"MPSNDArrayResampleTranslateY"])
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    [coder decodeDoubleForKey:@"MPSNDArrayResampleTranslateX"];
    v6->_transformStorage.translateX = v12;
    v6->_scaleTransform = v7;
    if (![coder containsValueForKey:@"MPSNDArrayResampleTranslateY"])
    {
LABEL_6:
      if (![coder containsValueForKey:@"MPSNDArrayResampleModeKey"])
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    [coder decodeDoubleForKey:@"MPSNDArrayResampleTranslateY"];
    v6->_transformStorage.translateY = v13;
    v6->_scaleTransform = v7;
    if (![coder containsValueForKey:@"MPSNDArrayResampleModeKey"])
    {
LABEL_7:
      if (![coder containsValueForKey:@"MPSNDArrayResampleDataFormatKey"])
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v6->_resampleMode = [coder decodeInt64ForKey:@"MPSNDArrayResampleModeKey"];
    if (![coder containsValueForKey:@"MPSNDArrayResampleDataFormatKey"])
    {
LABEL_8:
      if (![coder containsValueForKey:@"MPSNDArrayResampleNearestModeKey"])
      {
LABEL_10:
        v6->super.super._encode = EncodeResample;
        v6->super.super.super._encodeData = v6;
        return v6;
      }

LABEL_9:
      v6->_nearestMode = [coder decodeInt64ForKey:@"MPSNDArrayResampleNearestModeKey"];
      goto LABEL_10;
    }

LABEL_17:
    v6->_dataFormat = [coder decodeInt64ForKey:@"MPSNDArrayResampleDataFormatKey"];
    if (![coder containsValueForKey:@"MPSNDArrayResampleNearestModeKey"])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayResample;
  [(MPSNDArrayMultiaryBase *)&v6 encodeWithCoder:?];
  scaleTransform = self->_scaleTransform;
  if (scaleTransform)
  {
    [coder encodeDouble:@"MPSNDArrayResampleScaleX" forKey:scaleTransform->scaleX];
    [coder encodeDouble:@"MPSNDArrayResampleScaleY" forKey:self->_scaleTransform->scaleY];
    [coder encodeDouble:@"MPSNDArrayResampleTranslateX" forKey:self->_scaleTransform->translateX];
    [coder encodeDouble:@"MPSNDArrayResampleTranslateY" forKey:self->_scaleTransform->translateY];
    [coder encodeInt64:self->_resampleMode forKey:@"MPSNDArrayResampleModeKey"];
    [coder encodeInt64:self->_dataFormat forKey:@"MPSNDArrayResampleDataFormatKey"];
    [coder encodeInt64:self->_nearestMode forKey:@"MPSNDArrayResampleNearestModeKey"];
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayResample;
  result = [(MPSNDArrayMultiaryKernel *)&v8 copyWithZone:zone device:device];
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

- (void)setScaleTransform:(const MPSScaleTransform *)transform
{
  if (transform)
  {
    v3 = *&transform->translateX;
    *&self->_transformStorage.scaleX = *&transform->scaleX;
    *&self->_transformStorage.translateX = v3;
    self->_scaleTransform = &self->_transformStorage;
  }

  else
  {
    self->_scaleTransform = 0;
  }
}

@end