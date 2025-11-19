@interface VNSupportedImageSize
- (BOOL)isAllowedPixelsWide:(unint64_t)a3 pixelsHigh:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (VNSupportedImageSize)initWithCoder:(id)a3;
- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)a3 pixelsWideRange:(id)a4 pixelsHighRange:(id)a5 aspectRatioHandling:(unint64_t)a6 idealOrientation:(unsigned int)a7 orientationAgnostic:(BOOL)a8;
- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)a3 width:(unint64_t)a4 height:(unint64_t)a5 orientation:(unsigned int)a6 aspectRatioHandling:(unint64_t)a7 orientationAgnostic:(BOOL)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNSupportedImageSize

- (VNSupportedImageSize)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"idealFormat"];
  v6 = objc_opt_class();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"wideRange"];
  v8 = [v4 decodeObjectOfClass:v6 forKey:@"highRange"];
  v9 = -[VNSupportedImageSize initWithIdealFormat:pixelsWideRange:pixelsHighRange:aspectRatioHandling:idealOrientation:orientationAgnostic:](self, "initWithIdealFormat:pixelsWideRange:pixelsHighRange:aspectRatioHandling:idealOrientation:orientationAgnostic:", v5, v7, v8, [v4 decodeIntegerForKey:@"aspectHandling"], objc_msgSend(v4, "decodeInt32ForKey:", @"idealOrientation"), objc_msgSend(v4, "decodeBoolForKey:", @"orientationAgnostic"));

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_idealImageFormat forKey:@"idealFormat"];
  [v4 encodeObject:self->_pixelsWideRange forKey:@"wideRange"];
  [v4 encodeObject:self->_pixelsHighRange forKey:@"highRange"];
  [v4 encodeInteger:self->_aspectRatioHandling forKey:@"aspectHandling"];
  [v4 encodeInt32:self->_idealOrientation forKey:@"idealOrientation"];
  [v4 encodeBool:self->_orientationAgnostic forKey:@"orientationAgnostic"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNSupportedImageSize *)self idealImageFormat];
      if (v6 == [(VNSupportedImageSize *)v5 idealImageFormat]&& ([(VNSupportedImageSize *)self pixelsWideRange], v7 = objc_claimAutoreleasedReturnValue(), [(VNSupportedImageSize *)v5 pixelsWideRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0) && ([(VNSupportedImageSize *)self pixelsHighRange], v10 = objc_claimAutoreleasedReturnValue(), [(VNSupportedImageSize *)v5 pixelsHighRange], v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEqualOrNilObjects(), v11, v10, (v12 & 1) != 0) && (v13 = [(VNSupportedImageSize *)self aspectRatioHandling], v13 == [(VNSupportedImageSize *)v5 aspectRatioHandling]) && (v14 = [(VNSupportedImageSize *)self idealOrientation], v14 == [(VNSupportedImageSize *)v5 idealOrientation]))
      {
        v15 = [(VNSupportedImageSize *)self isOrientationAgnostic];
        v16 = v15 ^ [(VNSupportedImageSize *)v5 isOrientationAgnostic]^ 1;
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  result = self->_cachedCalculatedHash;
  if (!result)
  {
    v4 = [(VNSupportedImageSize *)self idealImageFormat];
    v5 = [(VNSupportedImageSize *)self pixelsWideRange];
    v6 = [v5 hash];

    v7 = [(VNSupportedImageSize *)self pixelsHighRange];
    v8 = [v7 hash] ^ __ROR8__(v6 ^ (v4 << 13), 51);

    v9 = [(VNSupportedImageSize *)self idealOrientation]^ __ROR8__([(VNSupportedImageSize *)self aspectRatioHandling]^ __ROR8__(v8, 51), 51);
    v10 = [(VNSupportedImageSize *)self isOrientationAgnostic];
    v11 = 21845;
    if (v10)
    {
      v11 = 43690;
    }

    result = v11 ^ __ROR8__(v9, 51);
    self->_cachedCalculatedHash = result;
  }

  return result;
}

- (BOOL)isAllowedPixelsWide:(unint64_t)a3 pixelsHigh:(unint64_t)a4
{
  v7 = [(VNSupportedImageSize *)self pixelsWideRange];
  if ([v7 isAllowedDimension:a3])
  {
    v8 = [(VNSupportedImageSize *)self pixelsHighRange];
    v9 = [v8 isAllowedDimension:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)a3 width:(unint64_t)a4 height:(unint64_t)a5 orientation:(unsigned int)a6 aspectRatioHandling:(unint64_t)a7 orientationAgnostic:(BOOL)a8
{
  v8 = a8;
  v10 = *&a6;
  v13 = *&a3;
  v15 = [[VNSizeRange alloc] initWithMinimumDimension:a4 maximumDimension:a4 idealDimension:a4];
  v16 = v15;
  if (a4 == a5)
  {
    v17 = v15;
  }

  else
  {
    v17 = [[VNSizeRange alloc] initWithMinimumDimension:a5 maximumDimension:a5 idealDimension:a5];
  }

  v18 = v17;
  v19 = [(VNSupportedImageSize *)self initWithIdealFormat:v13 pixelsWideRange:v16 pixelsHighRange:v17 aspectRatioHandling:a7 idealOrientation:v10 orientationAgnostic:v8];

  return v19;
}

- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)a3 pixelsWideRange:(id)a4 pixelsHighRange:(id)a5 aspectRatioHandling:(unint64_t)a6 idealOrientation:(unsigned int)a7 orientationAgnostic:(BOOL)a8
{
  v14 = a4;
  v15 = a5;
  v24.receiver = self;
  v24.super_class = VNSupportedImageSize;
  v16 = [(VNSupportedImageSize *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_idealImageFormat = a3;
    v18 = [v14 copy];
    pixelsWideRange = v17->_pixelsWideRange;
    v17->_pixelsWideRange = v18;

    v20 = [v15 copy];
    pixelsHighRange = v17->_pixelsHighRange;
    v17->_pixelsHighRange = v20;

    v17->_aspectRatioHandling = a6;
    v17->_idealOrientation = a7;
    v17->_orientationAgnostic = a8;
    v22 = v17;
  }

  return v17;
}

@end