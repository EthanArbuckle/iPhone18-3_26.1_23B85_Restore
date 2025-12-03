@interface VNRecognizeObjectsRequestConfiguration
- (VNRecognizeObjectsRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNRecognizeObjectsRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = VNRecognizeObjectsRequestConfiguration;
  v4 = [(VNImageBasedRequestConfiguration *)&v9 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setImageCropAndScaleOption:self->_imageCropAndScaleOption];
    [v5 setUseImageAnalyzerScaling:self->_useImageAnalyzerScaling];
    *&v6 = self->_modelMinimumDetectionConfidence;
    [v5 setModelMinimumDetectionConfidence:v6];
    *&v7 = self->_modelNonMaximumSuppressionThreshold;
    [v5 setModelNonMaximumSuppressionThreshold:v7];
    [v5 setTargetedIdentifiers:self->_targetedIdentifiers];
  }

  return v5;
}

- (VNRecognizeObjectsRequestConfiguration)initWithRequestClass:(Class)class
{
  v4.receiver = self;
  v4.super_class = VNRecognizeObjectsRequestConfiguration;
  result = [(VNImageBasedRequestConfiguration *)&v4 initWithRequestClass:class];
  if (result)
  {
    result->_imageCropAndScaleOption = 2;
    result->_modelMinimumDetectionConfidence = 0.1;
    result->_modelNonMaximumSuppressionThreshold = 0.3;
  }

  return result;
}

@end