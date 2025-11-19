@interface CLKTreatedImageKey
+ (id)keyWithRawImage:(id)a3 maxSDKSize:(CGSize)a4 maxDeviceSize:(CGSize)a5 cornerRadius:(double)a6;
+ (id)keyWithRawImage:(id)a3 maxSDKSize:(CGSize)a4 maxDeviceSize:(CGSize)a5 maskMode:(int64_t)a6;
+ (id)keyWithRawImage:(id)a3 scale:(double)a4 sdkDeviceScale:(double)a5 cornerRadius:(double)a6;
+ (id)keyWithRawImage:(id)a3 scale:(double)a4 sdkDeviceScale:(double)a5 maskMode:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)maxDeviceSize;
- (CGSize)maxSDKSize;
- (unint64_t)hash;
@end

@implementation CLKTreatedImageKey

+ (id)keyWithRawImage:(id)a3 scale:(double)a4 sdkDeviceScale:(double)a5 maskMode:(int64_t)a6
{
  v9 = a3;
  v10 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v10->_rawImage;
  v10->_rawImage = v9;

  v10->_scaleMode = 1;
  v10->_scale = a4;
  v10->_sdkDeviceScale = a5;
  v10->_maskMode = a6;

  return v10;
}

+ (id)keyWithRawImage:(id)a3 scale:(double)a4 sdkDeviceScale:(double)a5 cornerRadius:(double)a6
{
  v9 = a3;
  v10 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v10->_rawImage;
  v10->_rawImage = v9;

  v10->_scaleMode = 1;
  v10->_scale = a4;
  v10->_sdkDeviceScale = a5;
  v10->_maskMode = 2;
  v10->_cornerRadius = a6;

  return v10;
}

+ (id)keyWithRawImage:(id)a3 maxSDKSize:(CGSize)a4 maxDeviceSize:(CGSize)a5 maskMode:(int64_t)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v11 = a3;
  v12 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v12->_rawImage;
  v12->_rawImage = v11;

  v12->_scaleMode = 0;
  v12->_maxSDKSize.width = v10;
  v12->_maxSDKSize.height = v9;
  v12->_maxDeviceSize.width = width;
  v12->_maxDeviceSize.height = height;
  v12->_maskMode = a6;

  return v12;
}

+ (id)keyWithRawImage:(id)a3 maxSDKSize:(CGSize)a4 maxDeviceSize:(CGSize)a5 cornerRadius:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v11 = a3;
  v12 = objc_alloc_init(CLKTreatedImageKey);
  rawImage = v12->_rawImage;
  v12->_rawImage = v11;

  v12->_scaleMode = 0;
  v12->_maxSDKSize.height = v9;
  v12->_maxDeviceSize.width = width;
  v12->_maxDeviceSize.height = height;
  v12->_maskMode = 2;
  v12->_cornerRadius = a6;
  v12->_maxSDKSize.width = v10;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rawImage = self->_rawImage;
      v6 = [(CLKTreatedImageKey *)v4 rawImage];
      if (![(UIImage *)rawImage isEqual:v6])
      {
        goto LABEL_15;
      }

      scale = self->_scale;
      [(CLKTreatedImageKey *)v4 scale];
      if (!CLKFloatEqualsFloat(scale, v8))
      {
        goto LABEL_15;
      }

      sdkDeviceScale = self->_sdkDeviceScale;
      [(CLKTreatedImageKey *)v4 sdkDeviceScale];
      if (!CLKFloatEqualsFloat(sdkDeviceScale, v10))
      {
        goto LABEL_15;
      }

      [(CLKTreatedImageKey *)v4 maxSDKSize];
      v12 = 0;
      if (self->_maxSDKSize.width != v13)
      {
        goto LABEL_16;
      }

      if (self->_maxSDKSize.height != v11)
      {
        goto LABEL_16;
      }

      [(CLKTreatedImageKey *)v4 maxDeviceSize];
      v12 = 0;
      if (self->_maxDeviceSize.width != v15 || self->_maxDeviceSize.height != v14)
      {
        goto LABEL_16;
      }

      maskMode = self->_maskMode;
      if (maskMode == [(CLKTreatedImageKey *)v4 maskMode]&& (scaleMode = self->_scaleMode, scaleMode == [(CLKTreatedImageKey *)v4 scaleMode]))
      {
        cornerRadius = self->_cornerRadius;
        [(CLKTreatedImageKey *)v4 cornerRadius];
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