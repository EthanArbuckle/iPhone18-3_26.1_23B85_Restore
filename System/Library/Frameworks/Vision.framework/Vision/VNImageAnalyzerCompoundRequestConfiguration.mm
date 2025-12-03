@interface VNImageAnalyzerCompoundRequestConfiguration
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNImageAnalyzerCompoundRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNImageAnalyzerCompoundRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setDetectorType:self->_detectorType];
    [v5 setDetectorConfigurationOptions:self->_detectorConfigurationOptions];
    [v5 setOriginalRequestConfigurations:self->_originalRequestConfigurations];
  }

  return v5;
}

@end