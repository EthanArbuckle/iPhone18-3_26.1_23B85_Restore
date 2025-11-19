@interface ADPolynomialsLensDistortionModel
+ (BOOL)isEqualPolynomials:(const ADDistortionPolynomials *)a3 otherPolynomials:(const ADDistortionPolynomials *)a4;
+ (unint64_t)hashPolynomials:(const ADDistortionPolynomials *)a3;
- (ADPolynomialsLensDistortionModel)initWithDictionary:(id)a3;
- (ADPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 andPolynomials:(const ADDistortionPolynomials *)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)distortionCenter;
- (double)getMaxDistortedRadius:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation:(BOOL)a3;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6;
- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withPixelSize:(float)a5 referenceDimensions:(CGSize)a6 outDistortedPixels:(CGPoint *)a7;
- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)a3;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6;
- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withPixelSize:(float)a5 referenceDimensions:(CGSize)a6 outUndistortedPixels:(CGPoint *)a7;
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

- (id)dictionaryRepresentation:(BOOL)a3
{
  v4 = objc_opt_new();
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(self->_distortionCenter);
  [v4 setObject:DictionaryRepresentation forKeyedSubscript:@"lensDistortionCenter"];

  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v8 = [(ADPolynomialsLensDistortionModel *)self distortionPolynomials];
  for (i = 0; i != 8; ++i)
  {
    *&v9 = v8->forwardOrders[i];
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v7 addObject:v11];
  }

  v12 = [v7 copy];
  [v6 setObject:v12 forKeyedSubscript:@"forwardOrders"];

  [v7 removeAllObjects];
  v14 = 0;
  inverseOrders = v8->inverseOrders;
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

- (ADPolynomialsLensDistortionModel)initWithDictionary:(id)a3
{
  v4 = a3;
  if (getDistortionCenterFromDictionary(v4, &self->_distortionCenter))
  {
    v5 = [(NSDictionary *)v4 objectForKeyedSubscript:@"gdcPolynomials"];
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
                  v18 = self;
                  goto LABEL_20;
                }
              }
            }

            v18 = 0;
LABEL_20:

            goto LABEL_15;
          }
        }
      }

      v18 = 0;
LABEL_15:
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outUndistortedPixels:(CGPoint *)a6
{
  v15 = a5;
  [v15 pixelSize];
  v11 = v10;
  [v15 referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self undistortPixels:a3 distortedPixels:a4 withPixelSize:a6 referenceDimensions:v12 outUndistortedPixels:v13, v14];
}

- (void)undistortPixels:(unint64_t)a3 distortedPixels:(const CGPoint *)a4 withPixelSize:(float)a5 referenceDimensions:(CGSize)a6 outUndistortedPixels:(CGPoint *)a7
{
  [(ADPolynomialsLensDistortionModel *)self getMaxDistortedRadius:a6.width, a6.height];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;

  applyDistortionCoefficients(a3, a4, a5, *&x, v12, self->_polynomials.forwardOrders, a7);
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withCameraCalibration:(id)a5 outDistortedPixels:(CGPoint *)a6
{
  v15 = a5;
  [v15 pixelSize];
  v11 = v10;
  [v15 referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self distortPixels:a3 undistortedPixels:a4 withPixelSize:a6 referenceDimensions:v12 outDistortedPixels:v13, v14];
}

- (void)distortPixels:(unint64_t)a3 undistortedPixels:(const CGPoint *)a4 withPixelSize:(float)a5 referenceDimensions:(CGSize)a6 outDistortedPixels:(CGPoint *)a7
{
  [(ADPolynomialsLensDistortionModel *)self getMaxDistortedRadius:a6.width, a6.height];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;
  v20.x = x;
  v20.y = v14 + y;
  v15 = a5;
  v22.x = x;
  v22.y = y;
  applyDistortionCoefficients(1, &v20, v15, v22, v14 + v14, self->_polynomials.forwardOrders, &v19);
  v16 = v19.f64[1] - y;
  v17 = x;
  v18 = y;

  applyDistortionCoefficients(a3, a4, v15, *&v17, v16, self->_polynomials.inverseOrders, a7);
}

- (double)getMaxDistortedRadius:(CGSize)a3
{
  v3 = a3.width * 0.5;
  v4 = a3.height * 0.5;
  v5 = vabdd_f64(self->_distortionCenter.x, v3);
  v6 = vabdd_f64(self->_distortionCenter.y, v4);
  return sqrt((v4 + v6) * (v4 + v6) + (v3 + v5) * (v3 + v5));
}

- (ADPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)a3 andPolynomials:(const ADDistortionPolynomials *)a4
{
  if (!a4)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, a3.x, a3.y}];
    objc_exception_throw(v11);
  }

  y = a3.y;
  x = a3.x;
  v12.receiver = self;
  v12.super_class = ADPolynomialsLensDistortionModel;
  result = [(ADPolynomialsLensDistortionModel *)&v12 init];
  if (result)
  {
    result->_distortionCenter.x = x;
    result->_distortionCenter.y = y;
    v8 = *a4->forwardOrders;
    v9 = *&a4->forwardOrders[4];
    v10 = *a4->inverseOrders;
    *&result->_polynomials.inverseOrders[4] = *&a4->inverseOrders[4];
    *result->_polynomials.inverseOrders = v10;
    *&result->_polynomials.forwardOrders[4] = v9;
    *result->_polynomials.forwardOrders = v8;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ADPolynomialsLensDistortionModel alloc];
  x = self->_distortionCenter.x;
  y = self->_distortionCenter.y;

  return [(ADPolynomialsLensDistortionModel *)v4 initWithDistortionCenter:&self->_polynomials andPolynomials:x, y];
}

- (void)setDistortionPolynomials:(const ADDistortionPolynomials *)a3
{
  if (!a3)
  {
    v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortionPolynomials cannot be nil" userInfo:{0, v3, v4}];
    objc_exception_throw(v8);
  }

  v5 = *a3->forwardOrders;
  v6 = *&a3->forwardOrders[4];
  v7 = *a3->inverseOrders;
  *&self->_polynomials.inverseOrders[4] = *&a3->inverseOrders[4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (self == v4)
  {
    v10 = 1;
    goto LABEL_10;
  }

  if (([(ADPolynomialsLensDistortionModel *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
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

+ (unint64_t)hashPolynomials:(const ADDistortionPolynomials *)a3
{
  v4 = 0;
  inverseOrders = a3->inverseOrders;
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

+ (BOOL)isEqualPolynomials:(const ADDistortionPolynomials *)a3 otherPolynomials:(const ADDistortionPolynomials *)a4
{
  v5 = a3->forwardOrders[0];
  inverseOrders = a3->inverseOrders;
  v6 = v5;
  v8 = a4->forwardOrders[0];
  v7 = a4->inverseOrders;
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