@interface VNGeneratePersonSegmentationRequestConfiguration
- (VNGeneratePersonSegmentationRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNGeneratePersonSegmentationRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNGeneratePersonSegmentationRequestConfiguration;
  v4 = [(VNStatefulRequestConfiguration *)&v7 copyWithZone:zone];
  [v4 setQualityLevel:self->_qualityLevel];
  [v4 setOutputPixelFormat:self->_outputPixelFormat];
  [v4 setUseTiling:self->_useTiling];
  [v4 setKeepRawOutputMask:self->_keepRawOutputMask];
  *&v5 = self->_minimumConfidence;
  [v4 setMinimumConfidence:v5];
  return v4;
}

- (VNGeneratePersonSegmentationRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNGeneratePersonSegmentationRequestConfiguration;
  result = [(VNStatefulRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_qualityLevel = 0;
    result->_outputPixelFormat = 1278226488;
    result->_useTiling = 0;
    result->_keepRawOutputMask = 0;
    result->_minimumConfidence = 0.9;
  }

  return result;
}

@end