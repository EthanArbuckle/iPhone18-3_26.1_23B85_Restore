@interface VNImageAnalyzerMultiDetectorAnalysisConfiguration
- (VNImageAnalyzerMultiDetectorAnalysisConfiguration)initWithObservationsRecipient:(id)recipient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNImageAnalyzerMultiDetectorAnalysisConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  observationsRecipient = self->_observationsRecipient;

  return [v4 initWithObservationsRecipient:observationsRecipient];
}

- (VNImageAnalyzerMultiDetectorAnalysisConfiguration)initWithObservationsRecipient:(id)recipient
{
  recipientCopy = recipient;
  v9.receiver = self;
  v9.super_class = VNImageAnalyzerMultiDetectorAnalysisConfiguration;
  v6 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observationsRecipient, recipient);
  }

  return v7;
}

@end