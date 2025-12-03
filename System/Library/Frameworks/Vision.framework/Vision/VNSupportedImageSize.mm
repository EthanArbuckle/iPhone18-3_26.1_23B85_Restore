@interface VNSupportedImageSize
- (BOOL)isAllowedPixelsWide:(unint64_t)wide pixelsHigh:(unint64_t)high;
- (BOOL)isEqual:(id)equal;
- (VNSupportedImageSize)initWithCoder:(id)coder;
- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)format pixelsWideRange:(id)range pixelsHighRange:(id)highRange aspectRatioHandling:(unint64_t)handling idealOrientation:(unsigned int)orientation orientationAgnostic:(BOOL)agnostic;
- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height orientation:(unsigned int)orientation aspectRatioHandling:(unint64_t)handling orientationAgnostic:(BOOL)agnostic;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSupportedImageSize

- (VNSupportedImageSize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"idealFormat"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"wideRange"];
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:@"highRange"];
  v9 = -[VNSupportedImageSize initWithIdealFormat:pixelsWideRange:pixelsHighRange:aspectRatioHandling:idealOrientation:orientationAgnostic:](self, "initWithIdealFormat:pixelsWideRange:pixelsHighRange:aspectRatioHandling:idealOrientation:orientationAgnostic:", v5, v7, v8, [coderCopy decodeIntegerForKey:@"aspectHandling"], objc_msgSend(coderCopy, "decodeInt32ForKey:", @"idealOrientation"), objc_msgSend(coderCopy, "decodeBoolForKey:", @"orientationAgnostic"));

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_idealImageFormat forKey:@"idealFormat"];
  [coderCopy encodeObject:self->_pixelsWideRange forKey:@"wideRange"];
  [coderCopy encodeObject:self->_pixelsHighRange forKey:@"highRange"];
  [coderCopy encodeInteger:self->_aspectRatioHandling forKey:@"aspectHandling"];
  [coderCopy encodeInt32:self->_idealOrientation forKey:@"idealOrientation"];
  [coderCopy encodeBool:self->_orientationAgnostic forKey:@"orientationAgnostic"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      idealImageFormat = [(VNSupportedImageSize *)self idealImageFormat];
      if (idealImageFormat == [(VNSupportedImageSize *)v5 idealImageFormat]&& ([(VNSupportedImageSize *)self pixelsWideRange], v7 = objc_claimAutoreleasedReturnValue(), [(VNSupportedImageSize *)v5 pixelsWideRange], v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0) && ([(VNSupportedImageSize *)self pixelsHighRange], v10 = objc_claimAutoreleasedReturnValue(), [(VNSupportedImageSize *)v5 pixelsHighRange], v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEqualOrNilObjects(), v11, v10, (v12 & 1) != 0) && (v13 = [(VNSupportedImageSize *)self aspectRatioHandling], v13 == [(VNSupportedImageSize *)v5 aspectRatioHandling]) && (v14 = [(VNSupportedImageSize *)self idealOrientation], v14 == [(VNSupportedImageSize *)v5 idealOrientation]))
      {
        isOrientationAgnostic = [(VNSupportedImageSize *)self isOrientationAgnostic];
        v16 = isOrientationAgnostic ^ [(VNSupportedImageSize *)v5 isOrientationAgnostic]^ 1;
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
    idealImageFormat = [(VNSupportedImageSize *)self idealImageFormat];
    pixelsWideRange = [(VNSupportedImageSize *)self pixelsWideRange];
    v6 = [pixelsWideRange hash];

    pixelsHighRange = [(VNSupportedImageSize *)self pixelsHighRange];
    v8 = [pixelsHighRange hash] ^ __ROR8__(v6 ^ (idealImageFormat << 13), 51);

    v9 = [(VNSupportedImageSize *)self idealOrientation]^ __ROR8__([(VNSupportedImageSize *)self aspectRatioHandling]^ __ROR8__(v8, 51), 51);
    isOrientationAgnostic = [(VNSupportedImageSize *)self isOrientationAgnostic];
    v11 = 21845;
    if (isOrientationAgnostic)
    {
      v11 = 43690;
    }

    result = v11 ^ __ROR8__(v9, 51);
    self->_cachedCalculatedHash = result;
  }

  return result;
}

- (BOOL)isAllowedPixelsWide:(unint64_t)wide pixelsHigh:(unint64_t)high
{
  pixelsWideRange = [(VNSupportedImageSize *)self pixelsWideRange];
  if ([pixelsWideRange isAllowedDimension:wide])
  {
    pixelsHighRange = [(VNSupportedImageSize *)self pixelsHighRange];
    v9 = [pixelsHighRange isAllowedDimension:high];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height orientation:(unsigned int)orientation aspectRatioHandling:(unint64_t)handling orientationAgnostic:(BOOL)agnostic
{
  agnosticCopy = agnostic;
  v10 = *&orientation;
  v13 = *&format;
  v15 = [[VNSizeRange alloc] initWithMinimumDimension:width maximumDimension:width idealDimension:width];
  v16 = v15;
  if (width == height)
  {
    v17 = v15;
  }

  else
  {
    v17 = [[VNSizeRange alloc] initWithMinimumDimension:height maximumDimension:height idealDimension:height];
  }

  v18 = v17;
  v19 = [(VNSupportedImageSize *)self initWithIdealFormat:v13 pixelsWideRange:v16 pixelsHighRange:v17 aspectRatioHandling:handling idealOrientation:v10 orientationAgnostic:agnosticCopy];

  return v19;
}

- (VNSupportedImageSize)initWithIdealFormat:(unsigned int)format pixelsWideRange:(id)range pixelsHighRange:(id)highRange aspectRatioHandling:(unint64_t)handling idealOrientation:(unsigned int)orientation orientationAgnostic:(BOOL)agnostic
{
  rangeCopy = range;
  highRangeCopy = highRange;
  v24.receiver = self;
  v24.super_class = VNSupportedImageSize;
  v16 = [(VNSupportedImageSize *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_idealImageFormat = format;
    v18 = [rangeCopy copy];
    pixelsWideRange = v17->_pixelsWideRange;
    v17->_pixelsWideRange = v18;

    v20 = [highRangeCopy copy];
    pixelsHighRange = v17->_pixelsHighRange;
    v17->_pixelsHighRange = v20;

    v17->_aspectRatioHandling = handling;
    v17->_idealOrientation = orientation;
    v17->_orientationAgnostic = agnostic;
    v22 = v17;
  }

  return v17;
}

@end