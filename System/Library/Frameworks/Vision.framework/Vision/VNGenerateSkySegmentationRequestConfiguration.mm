@interface VNGenerateSkySegmentationRequestConfiguration
- (VNGenerateSkySegmentationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateSkySegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = VNGenerateSkySegmentationRequestConfiguration;
  v4 = [(VNGenerateSegmentationRequestConfiguration *)&v6 copyWithZone:zone];
  [v4 setQualityLevel:self->_qualityLevel];
  return v4;
}

- (VNGenerateSkySegmentationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateSkySegmentationRequestConfiguration;
  result = [(VNGenerateSegmentationRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_qualityLevel = 0;
  }

  return result;
}

@end