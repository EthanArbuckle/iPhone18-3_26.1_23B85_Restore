@interface VNGenerateAnimalSegmentationRequestConfiguration
- (VNGenerateAnimalSegmentationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateAnimalSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = VNGenerateAnimalSegmentationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 19) = self->_qualityLevel;
    *(result + 36) = self->_outputPixelFormat;
  }

  return result;
}

- (VNGenerateAnimalSegmentationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateAnimalSegmentationRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_qualityLevel = 0;
    result->_outputPixelFormat = 1278226488;
  }

  return result;
}

@end