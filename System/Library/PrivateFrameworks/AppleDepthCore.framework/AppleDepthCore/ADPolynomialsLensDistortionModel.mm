@interface ADPolynomialsLensDistortionModel
+ (BOOL)isEqualPolynomials:(const ADDistortionPolynomials *)polynomials otherPolynomials:(const ADDistortionPolynomials *)otherPolynomials;
+ (unint64_t)hashPolynomials:(const ADDistortionPolynomials *)polynomials;
- (ADPolynomialsLensDistortionModel)initWithDictionary:(id)dictionary;
- (ADPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)center andPolynomials:(const ADDistortionPolynomials *)polynomials;
- (BOOL)isEqual:(id)equal;
- (CGPoint)distortionCenter;
- (double)getMaxDistortedRadius:(CGSize)radius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation:(BOOL)representation;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels;
- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withPixelSize:(float)size referenceDimensions:(CGSize)dimensions outDistortedPixels:(CGPoint *)distortedPixels;
- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)polynomials;
- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels;
- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withPixelSize:(float)size referenceDimensions:(CGSize)dimensions outUndistortedPixels:(CGPoint *)undistortedPixels;
@end

@implementation ADPolynomialsLensDistortionModel

- (CGPoint)distortionCenter
{
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)dictionaryRepresentation:(BOOL)representation
{
  v4 = objc_opt_new();
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v4 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  distortionPolynomials = [(ADPolynomialsLensDistortionModel *)self distortionPolynomials];
  for (i = 0; i != 8; ++i)
  {
    *&v9 = distortionPolynomials->forwardOrders[i];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v7 addObject:v11];
  }

  v12 = [v7 copy];
  [v6 setObject:v12 forKeyedSubscript:@"forwardOrders"];

  [v7 removeAllObjects];
  v14 = 0;
  inverseOrders = distortionPolynomials->inverseOrders;
  do
  {
    *&v13 = inverseOrders[v14];
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v7 addObject:v16];

    ++v14;
  }

  while (v14 != 8);
  [v6 setObject:v7 forKeyedSubscript:@"inverseOrders"];
  [v4 setObject:v6 forKeyedSubscript:@"gdcPolynomials"];

  return v4;
}

- (ADPolynomialsLensDistortionModel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (getDistortionCenterFromDictionary(dictionaryCopy, &self->_distortionCenter))
  {
    v5 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:@"gdcPolynomials"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"forwardOrders"];
      v8 = v7;
      if (v7 && [v7 count] == 8)
      {
        v9 = 0;
        while (1)
        {
          v10 = [v8 objectAtIndexedSubscript:v9];
          v11 = v10;
          if (!v10)
          {
            break;
          }

          [v10 floatValue];
          v20[v9] = v12;

          if (++v9 == 8)
          {
            v13 = [v6 objectForKeyedSubscript:@"inverseOrders"];
            if ([v8 count] == 8)
            {
              v14 = 0;
              while (1)
              {
                v15 = [v13 objectAtIndexedSubscript:v14];
                v16 = v15;
                if (!v15)
                {
                  break;
                }

                [v15 floatValue];
                v20[v14 + 8] = v17;

                if (++v14 == 8)
                {
                  self = [(ADPolynomialsLensDistortionModel *)self initWithDistortionCenter:v20 andPolynomials:self->_distortionCenter.x, self->_distortionCenter.y];
                  selfCopy = self;
                  goto LABEL_20;
                }
              }
            }

            selfCopy = 0;
LABEL_20:

            goto LABEL_15;
          }
        }
      }

      selfCopy = 0;
LABEL_15:
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels
{
  calibrationCopy = calibration;
  [calibrationCopy pixelSize];
  v11 = v10;
  [calibrationCopy referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self undistortPixels:pixels distortedPixels:distortedPixels withPixelSize:undistortedPixels referenceDimensions:v12 outUndistortedPixels:v13, v14];
}

- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withPixelSize:(float)size referenceDimensions:(CGSize)dimensions outUndistortedPixels:(CGPoint *)undistortedPixels
{
  [(ADPolynomialsLensDistortionModel *)self getMaxDistortedRadius:dimensions.width, dimensions.height];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;

  applyDistortionCoefficients(pixels, distortedPixels, size, *&x, v12, self->_polynomials.forwardOrders, undistortedPixels);
}

- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels
{
  calibrationCopy = calibration;
  [calibrationCopy pixelSize];
  v11 = v10;
  [calibrationCopy referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self distortPixels:pixels undistortedPixels:undistortedPixels withPixelSize:distortedPixels referenceDimensions:v12 outDistortedPixels:v13, v14];
}

- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withPixelSize:(float)size referenceDimensions:(CGSize)dimensions outDistortedPixels:(CGPoint *)distortedPixels
{
  [(ADPolynomialsLensDistortionModel *)self getMaxDistortedRadius:dimensions.width, dimensions.height];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  v20.x = x;
  v20.y = v14 + y;
  sizeCopy = size;
  v22.x = x;
  v22.y = y;
  applyDistortionCoefficients(1, &v20, sizeCopy, v22, v14 + v14, self->_polynomials.forwardOrders, &v19);
  v16 = v19.f64[1] - y;
  v17 = x;
  v18 = y;

  applyDistortionCoefficients(pixels, undistortedPixels, sizeCopy, *&v17, v16, self->_polynomials.inverseOrders, distortedPixels);
}

- (double)getMaxDistortedRadius:(CGSize)radius
{
  v3 = radius.width * 0.5;
  v4 = radius.height * 0.5;
  v5 = vabdd_f64(self->_distortionCenter.x, v3);
  v6 = vabdd_f64(self->_distortionCenter.y, v4);
  return sqrt((v4 + v6) * (v4 + v6) + (v3 + v5) * (v3 + v5));
}

- (ADPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)center andPolynomials:(const ADDistortionPolynomials *)polynomials
{
  if (!polynomials)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, center.x, center.y}];
    objc_exception_throw(v11);
  }

  y = center.y;
  x = center.x;
  v12.receiver = self;
  v12.super_class = ADPolynomialsLensDistortionModel;
  result = [(ADPolynomialsLensDistortionModel *)&v12 init];
  if (result)
  {
    result->_distortionCenter.x = x;
    result->_distortionCenter.y = y;
    v8 = *polynomials->forwardOrders;
    v9 = *&polynomials->forwardOrders[4];
    v10 = *polynomials->inverseOrders;
    *&result->_polynomials.inverseOrders[4] = *&polynomials->inverseOrders[4];
    *result->_polynomials.inverseOrders = v10;
    *&result->_polynomials.forwardOrders[4] = v9;
    *result->_polynomials.forwardOrders = v8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ADPolynomialsLensDistortionModel alloc];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;

  return [(ADPolynomialsLensDistortionModel *)v4 initWithDistortionCenter:&self->_polynomials andPolynomials:x, y];
}

- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)polynomials
{
  if (!polynomials)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, v3, v4}];
    objc_exception_throw(v8);
  }

  v5 = *polynomials->forwardOrders;
  v6 = *&polynomials->forwardOrders[4];
  v7 = *polynomials->inverseOrders;
  *&self->_polynomials.inverseOrders[4] = *&polynomials->inverseOrders[4];
  *self->_polynomials.inverseOrders = v7;
  *&self->_polynomials.forwardOrders[4] = v6;
  *self->_polynomials.forwardOrders = v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.x];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_distortionCenter.y];
  v6 = v4 ^ (2 * [v5 hash]);

  return v6 ^ (3 * [ADPolynomialsLensDistortionModel hashPolynomials:&self->_polynomials]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_8;
  }

  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_10;
  }

  if (([(ADPolynomialsLensDistortionModel *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    x = self->_distortionCenter.x;
    y = self->_distortionCenter.y;
    [(ADPolynomialsLensDistortionModel *)v6 distortionCenter];
    v10 = 0;
    if (x == v11 && y == v9)
    {
      v10 = [ADPolynomialsLensDistortionModel isEqualPolynomials:&self->_polynomials otherPolynomials:[(ADPolynomialsLensDistortionModel *)v6 distortionPolynomials]];
    }
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

+ (unint64_t)hashPolynomials:(const ADDistortionPolynomials *)polynomials
{
  v4 = 0;
  inverseOrders = polynomials->inverseOrders;
  for (i = 9; i != 17; ++i)
  {
    *&v3 = *(inverseOrders - 8);
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    v8 = [v7 hash];

    *&v9 = *inverseOrders;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v4 ^= (v8 * (i - 8)) ^ ([v10 hash] * i);

    ++inverseOrders;
  }

  return v4;
}

+ (BOOL)isEqualPolynomials:(const ADDistortionPolynomials *)polynomials otherPolynomials:(const ADDistortionPolynomials *)otherPolynomials
{
  v5 = polynomials->forwardOrders[0];
  inverseOrders = polynomials->inverseOrders;
  v6 = v5;
  v8 = otherPolynomials->forwardOrders[0];
  v7 = otherPolynomials->inverseOrders;
  if (v6 == v8)
  {
    v11 = 0;
    v9 = 0;
    do
    {
      if (*inverseOrders != *v7)
      {
        break;
      }

      v9 = v11 > 6;
      if (v11 == 7)
      {
        break;
      }

      v12 = *(inverseOrders - 7);
      v13 = *(v7 - 7);
      ++v7;
      ++inverseOrders;
      ++v11;
    }

    while (v12 == v13);
  }

  else
  {
    return 0;
  }

  return v9;
}

@end