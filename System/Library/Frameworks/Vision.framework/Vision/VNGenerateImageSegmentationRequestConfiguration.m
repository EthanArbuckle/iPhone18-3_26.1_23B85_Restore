@interface VNGenerateImageSegmentationRequestConfiguration
- (VNGenerateImageSegmentationRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGenerateImageSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = VNGenerateImageSegmentationRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v6 copyWithZone:a3];
  [v4 setOutputPixelFormat:self->_outputPixelFormat];
  return v4;
}

- (VNGenerateImageSegmentationRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateImageSegmentationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_outputPixelFormat = 1278226534;
  }

  return result;
}

@end