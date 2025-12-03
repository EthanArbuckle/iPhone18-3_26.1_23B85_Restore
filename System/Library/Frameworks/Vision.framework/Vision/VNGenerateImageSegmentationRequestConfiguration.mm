@interface VNGenerateImageSegmentationRequestConfiguration
- (VNGenerateImageSegmentationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateImageSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = VNGenerateImageSegmentationRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v6 copyWithZone:zone];
  [v4 setOutputPixelFormat:self->_outputPixelFormat];
  return v4;
}

- (VNGenerateImageSegmentationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateImageSegmentationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_outputPixelFormat = 1278226534;
  }

  return result;
}

@end