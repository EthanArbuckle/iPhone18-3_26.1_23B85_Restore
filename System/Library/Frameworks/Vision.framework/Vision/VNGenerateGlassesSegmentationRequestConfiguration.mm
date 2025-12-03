@interface VNGenerateGlassesSegmentationRequestConfiguration
- (VNGenerateGlassesSegmentationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGenerateGlassesSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = VNGenerateGlassesSegmentationRequestConfiguration;
  v4 = [(VNGenerateSegmentationRequestConfiguration *)&v6 copyWithZone:zone];
  [v4 setQualityLevel:self->_qualityLevel];
  return v4;
}

- (VNGenerateGlassesSegmentationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGenerateGlassesSegmentationRequestConfiguration;
  result = [(VNGenerateSegmentationRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_qualityLevel = 0;
  }

  return result;
}

@end