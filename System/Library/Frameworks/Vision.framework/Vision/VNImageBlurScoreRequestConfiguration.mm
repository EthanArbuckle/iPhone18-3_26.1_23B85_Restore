@interface VNImageBlurScoreRequestConfiguration
- (VNImageBlurScoreRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNImageBlurScoreRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNImageBlurScoreRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setMaximumIntermediateSideLength:self->_maximumIntermediateSideLength];
    [v5 setBlurDeterminationMethod:self->_blurDeterminationMethod];
  }

  return v5;
}

- (VNImageBlurScoreRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNImageBlurScoreRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_maximumIntermediateSideLength = 1024;
    result->_blurDeterminationMethod = 0;
  }

  return result;
}

@end