@interface VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration
- (VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration)initWithObservationsRecipient:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration;
  v4 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_disallowedList);
    *(v5 + 4) = LODWORD(self->_minimumConfidence);
    v5[4] = self->_maximumLabels;
  }

  return v5;
}

- (VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration)initWithObservationsRecipient:(id)a3
{
  v4.receiver = self;
  v4.super_class = VNImageAnalyzerMultiDetectorEntityNetClassificationConfiguration;
  result = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v4 initWithObservationsRecipient:a3];
  if (result)
  {
    result->_minimumConfidence = 0.00000011921;
    result->_maximumLabels = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end