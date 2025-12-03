@interface ADRefinedPolynomialsLensDistortionModel
- (ADRefinedPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)center pixelSize:(float)size focalLength:(float)length polynomialsBase:(const ADDistortionPolynomials *)base polynomialsDynamic:(const ADDistortionPolynomials *)dynamic;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels;
- (void)setDynamicFactor:(float)factor;
- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels;
- (void)updateDynamicFactor;
@end

@implementation ADRefinedPolynomialsLensDistortionModel

- (void)undistortPixels:(unint64_t)pixels distortedPixels:(const CGPoint *)distortedPixels withCameraCalibration:(id)calibration outUndistortedPixels:(CGPoint *)undistortedPixels
{
  calibrationCopy = calibration;
  v11 = *(&self->super._dynamicFactor + 1);
  v15 = calibrationCopy;
  [calibrationCopy referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self undistortPixels:pixels distortedPixels:distortedPixels withPixelSize:undistortedPixels referenceDimensions:v12 outUndistortedPixels:v13, v14];
}

- (void)distortPixels:(unint64_t)pixels undistortedPixels:(const CGPoint *)undistortedPixels withCameraCalibration:(id)calibration outDistortedPixels:(CGPoint *)distortedPixels
{
  calibrationCopy = calibration;
  v11 = *(&self->super._dynamicFactor + 1);
  v15 = calibrationCopy;
  [calibrationCopy referenceDimensions];
  v13 = v12;
  LODWORD(v12) = v11;
  [(ADPolynomialsLensDistortionModel *)self distortPixels:pixels undistortedPixels:undistortedPixels withPixelSize:distortedPixels referenceDimensions:v12 outDistortedPixels:v13, v14];
}

- (ADRefinedPolynomialsLensDistortionModel)initWithDistortionCenter:(CGPoint)center pixelSize:(float)size focalLength:(float)length polynomialsBase:(const ADDistortionPolynomials *)base polynomialsDynamic:(const ADDistortionPolynomials *)dynamic
{
  if (!base || !dynamic)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"distortion polynomials cannot be nil" userInfo:{0, center.x, center.y}];
    objc_exception_throw(v11);
  }

  *&v9 = size * length;
  v12.receiver = self;
  v12.super_class = ADRefinedPolynomialsLensDistortionModel;
  result = [(ADDynamicPolynomialsLensDistortionModel *)&v12 initWithDistortionCenter:center.x dynFactor:center.y polynomialsBase:v9 polynomialsDynamic:?];
  if (result)
  {
    result->_pixelSize = length;
    *(&result->super._dynamicFactor + 1) = size;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ADRefinedPolynomialsLensDistortionModel alloc];
  [(ADPolynomialsLensDistortionModel *)self distortionCenter];
  v6 = v5;
  v8 = v7;
  v9 = *(&self->super._dynamicFactor + 1);
  pixelSize = self->_pixelSize;
  distortionPolynomialsBase = [(ADDynamicPolynomialsLensDistortionModel *)self distortionPolynomialsBase];
  distortionPolynomialsDynamic = [(ADDynamicPolynomialsLensDistortionModel *)self distortionPolynomialsDynamic];
  LODWORD(v13) = v9;
  *&v14 = pixelSize;

  return [(ADRefinedPolynomialsLensDistortionModel *)v4 initWithDistortionCenter:distortionPolynomialsBase pixelSize:distortionPolynomialsDynamic focalLength:v6 polynomialsBase:v8 polynomialsDynamic:v13, v14];
}

- (void)setDynamicFactor:(float)factor
{
  v5.receiver = self;
  v5.super_class = ADRefinedPolynomialsLensDistortionModel;
  [(ADDynamicPolynomialsLensDistortionModel *)&v5 setDynamicFactor:?];
  *(&self->super._dynamicFactor + 1) = factor;
  self->_pixelSize = 1.0;
}

- (void)updateDynamicFactor
{
  *&v2 = *(&self->super._dynamicFactor + 1) * self->_pixelSize;
  v3.receiver = self;
  v3.super_class = ADRefinedPolynomialsLensDistortionModel;
  [(ADDynamicPolynomialsLensDistortionModel *)&v3 setDynamicFactor:v2];
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = ADRefinedPolynomialsLensDistortionModel;
  v3 = [(ADDynamicPolynomialsLensDistortionModel *)&v11 hash];
  LODWORD(v4) = *(&self->super._dynamicFactor + 1);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [v5 hash];

  *&v7 = self->_pixelSize;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v9 = 3 * [v8 hash];

  return v3 ^ (2 * v6) ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_14;
  }

  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_16;
  }

  if (([(ADRefinedPolynomialsLensDistortionModel *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = v5;
    [(ADPolynomialsLensDistortionModel *)self distortionCenter];
    v8 = v7;
    v10 = v9;
    [(ADPolynomialsLensDistortionModel *)v6 distortionCenter];
    v12 = 0;
    if (v8 == v13 && v10 == v11)
    {
      v12 = 0;
      if ([ADPolynomialsLensDistortionModel isEqualPolynomials:&self->super.super._polynomials otherPolynomials:[(ADPolynomialsLensDistortionModel *)v6 distortionPolynomials]])
      {
        [(ADDynamicPolynomialsLensDistortionModel *)self dynamicFactor];
        v15 = v14;
        [(ADDynamicPolynomialsLensDistortionModel *)v6 dynamicFactor];
        if (v15 == v16)
        {
          if ([ADPolynomialsLensDistortionModel isEqualPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)self distortionPolynomialsBase] otherPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)v6 distortionPolynomialsBase]])
          {
            if ([ADPolynomialsLensDistortionModel isEqualPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)self distortionPolynomialsDynamic] otherPolynomials:[(ADDynamicPolynomialsLensDistortionModel *)v6 distortionPolynomialsDynamic]])
            {
              v17 = *(&self->super._dynamicFactor + 1);
              [(ADRefinedPolynomialsLensDistortionModel *)v6 pixelSize];
              if (v17 == v18)
              {
                pixelSize = self->_pixelSize;
                [(ADRefinedPolynomialsLensDistortionModel *)v6 focalLength];
                if (pixelSize == v20)
                {
                  v12 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

LABEL_16:

  return v12;
}

@end