@interface VNGenerateGlassesSegmentationRequestConfiguration
- (VNGenerateGlassesSegmentationRequestConfiguration)initWithRequestClass:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNGenerateGlassesSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = VNGenerateGlassesSegmentationRequestConfiguration;
  v4 = [(VNGenerateSegmentationRequestConfiguration *)&v6 copyWithZone:a3];
  [v4 setQualityLevel:self->_qualityLevel];
  return v4;
}

- (VNGenerateGlassesSegmentationRequestConfiguration)initWithRequestClass:(Class)a3
{
  v4.receiver = self;
  v4.super_class = VNGenerateGlassesSegmentationRequestConfiguration;
  result = [(VNGenerateSegmentationRequestConfiguration *)&v4 initWithRequestClass:a3];
  if (result)
  {
    result->_qualityLevel = 0;
  }

  return result;
}

@end