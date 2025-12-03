@interface VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration
- (VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration)initWithObservationsRecipient:(id)recipient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration;
  v4 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_disallowedList);
    v5[4] = self->_minimumDetectionConfidence;
    v5[5] = self->_nonMaximumSuppressionThreshold;
  }

  return v5;
}

- (VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration)initWithObservationsRecipient:(id)recipient
{
  v4.receiver = self;
  v4.super_class = VNImageAnalyzerMultiDetectorRecognizeObjectsConfiguration;
  result = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v4 initWithObservationsRecipient:recipient];
  if (result)
  {
    result->_minimumDetectionConfidence = 0.1;
    result->_nonMaximumSuppressionThreshold = 0.3;
  }

  return result;
}

@end