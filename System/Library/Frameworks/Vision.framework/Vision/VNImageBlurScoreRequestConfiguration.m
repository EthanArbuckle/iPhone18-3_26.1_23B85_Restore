@interface VNImageBlurScoreRequestConfiguration
- (VNImageBlurScoreRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNImageBlurScoreRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNImageBlurScoreRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setMaximumIntermediateSideLength:self->_maximumIntermediateSideLength];
    [v5 setBlurDeterminationMethod:self->_blurDeterminationMethod];
  }

  return v5;
}

- (VNImageBlurScoreRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNImageBlurScoreRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_maximumIntermediateSideLength = 1024;
    result->_blurDeterminationMethod = 0;
  }

  return result;
}

@end