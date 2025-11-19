@interface VNImageAnalyzerMultiDetectorAnalysisConfiguration
- (VNImageAnalyzerMultiDetectorAnalysisConfiguration)initWithObservationsRecipient:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VNImageAnalyzerMultiDetectorAnalysisConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  observationsRecipient = self->_observationsRecipient;

  return [v4 initWithObservationsRecipient:observationsRecipient];
}

- (VNImageAnalyzerMultiDetectorAnalysisConfiguration)initWithObservationsRecipient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VNImageAnalyzerMultiDetectorAnalysisConfiguration;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, a3);
  }

  return v7;
}

@end