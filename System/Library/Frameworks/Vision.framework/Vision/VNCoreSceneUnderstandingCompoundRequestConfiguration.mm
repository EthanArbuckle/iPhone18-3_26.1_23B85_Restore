@interface VNCoreSceneUnderstandingCompoundRequestConfiguration
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNCoreSceneUnderstandingCompoundRequestConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNCoreSceneUnderstandingCompoundRequestConfiguration;
  v4 = [(VNRequestConfiguration *)&v7 copyWithZone:a3];
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