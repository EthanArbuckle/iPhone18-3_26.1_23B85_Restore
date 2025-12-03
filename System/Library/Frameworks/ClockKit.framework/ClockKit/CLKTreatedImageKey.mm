@interface CLKTreatedImageKey
+ (id)keyWithRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius;
+ (id)keyWithRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskMode:(int64_t)mode;
+ (id)keyWithRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale cornerRadius:(double)radius;
+ (id)keyWithRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale maskMode:(int64_t)mode;
- (BOOL)isEqual:(id)equal;
- (CGSize)maxDeviceSize;
- (CGSize)maxSDKSize;
- (unint64_t)hash;
@end

@implementation CLKTreatedImageKey

+ (id)keyWithRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale maskMode:(int64_t)mode
{
  imageCopy = image;
  v10 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v10->_rawImage;
  v10->_rawImage = imageCopy;

  v10->_scaleMode = 1;
  v10->_scale = scale;
  v10->_sdkDeviceScale = deviceScale;
  v10->_maskMode = mode;

  return v10;
}

+ (id)keyWithRawImage:(id)image scale:(double)scale sdkDeviceScale:(double)deviceScale cornerRadius:(double)radius
{
  imageCopy = image;
  v10 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v10->_rawImage;
  v10->_rawImage = imageCopy;

  v10->_scaleMode = 1;
  v10->_scale = scale;
  v10->_sdkDeviceScale = deviceScale;
  v10->_maskMode = 2;
  v10->_cornerRadius = radius;

  return v10;
}

+ (id)keyWithRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize maskMode:(int64_t)mode
{
  height = deviceSize.height;
  width = deviceSize.width;
  v9 = size.height;
  v10 = size.width;
  imageCopy = image;
  v12 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v12->_rawImage;
  v12->_rawImage = imageCopy;

  v12->_scaleMode = 0;
  v12->_maxSDKSize.width = v10;
  v12->_maxSDKSize.height = v9;
  v12->_maxDeviceSize.width = width;
  v12->_maxDeviceSize.height = height;
  v12->_maskMode = mode;

  return v12;
}

+ (id)keyWithRawImage:(id)image maxSDKSize:(CGSize)size maxDeviceSize:(CGSize)deviceSize cornerRadius:(double)radius
{
  height = deviceSize.height;
  width = deviceSize.width;
  v9 = size.height;
  v10 = size.width;
  imageCopy = image;
  v12 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v12->_rawImage;
  v12->_rawImage = imageCopy;

  v12->_scaleMode = 0;
  v12->_maxSDKSize.height = v9;
  v12->_maxDeviceSize.width = width;
  v12->_maxDeviceSize.height = height;
  v12->_maskMode = 2;
  v12->_cornerRadius = radius;
  v12->_maxSDKSize.width = v10;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rawImage = self->_rawImage;
      rawImage = [(CLKTreatedImageKey *)equalCopy rawImage];
      if (![(UIImage *)rawImage isEqual:rawImage])
      {
        goto LABEL_15;
      }

      scale = self->_scale;
      [(CLKTreatedImageKey *)equalCopy scale];
      if (!CLKFloatEqualsFloat(scale, v8))
      {
        goto LABEL_15;
      }

      sdkDeviceScale = self->_sdkDeviceScale;
      [(CLKTreatedImageKey *)equalCopy sdkDeviceScale];
      if (!CLKFloatEqualsFloat(sdkDeviceScale, v10))
      {
        goto LABEL_15;
      }

      [(CLKTreatedImageKey *)equalCopy maxSDKSize];
      v12 = 0;
      if (self->_maxSDKSize.width != v13)
      {
        goto LABEL_16;
      }

      if (self->_maxSDKSize.height != v11)
      {
        goto LABEL_16;
      }

      [(CLKTreatedImageKey *)equalCopy maxDeviceSize];
      v12 = 0;
      if (self->_maxDeviceSize.width != v15 || self->_maxDeviceSize.height != v14)
      {
        goto LABEL_16;
      }

      maskMode = self->_maskMode;
      if (maskMode == [(CLKTreatedImageKey *)equalCopy maskMode]&& (scaleMode = self->_scaleMode, scaleMode == [(CLKTreatedImageKey *)equalCopy scaleMode]))
      {
        cornerRadius = self->_cornerRadius;
        [(CLKTreatedImageKey *)equalCopy cornerRadius];
        v12 = CLKFloatEqualsFloat(cornerRadius, v19);
      }

      else
      {
LABEL_15:
        v12 = 0;
      }

LABEL_16:

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(UIImage *)self->_rawImage hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sdkDeviceScale];
  v5 = [v4 hash] * 1000000000.0 + v3 * 1.0e10;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_scale];
  v7 = v5 + [v6 hash] * 100000000.0;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_scaleMode];
  v9 = v7 + [v8 hash] * 10000000.0;
  v10 = [MEMORY[0x277CCAE60] valueWithCGSize:{self->_maxDeviceSize.width, self->_maxDeviceSize.height}];
  v11 = v9 + [v10 hash] * 1000000.0;
  v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{self->_maxSDKSize.width, self->_maxSDKSize.height}];
  v13 = v11 + [v12 hash] * 100000.0;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maskMode];
  v15 = v13 + [v14 hash] * 10000.0;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_cornerRadius];
  v17 = (v15 + [v16 hash] * 1000.0);

  return v17;
}

- (CGSize)maxSDKSize
{
  width = self->_maxSDKSize.width;
  height = self->_maxSDKSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxDeviceSize
{
  width = self->_maxDeviceSize.width;
  height = self->_maxDeviceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end