@interface VNRecognizeDocumentsRequestConfiguration
- (VNRecognizeDocumentsRequestConfiguration)initWithRequestClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNRecognizeDocumentsRequestConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNRecognizeDocumentsRequestConfiguration;
  v4 = [(VNRecognizeTextRequestConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setDetectionOnly:self->_detectionOnly];
    [v5 setUsesAlternateLineGrouping:self->_usesAlternateLineGrouping];
    [v5 setUsesFormFieldDetection:self->_usesFormFieldDetection];
    [v5 setMaximumCandidateCount:self->_maximumCandidateCount];
  }

  return v5;
}

- (VNRecognizeDocumentsRequestConfiguration)initWithRequestClass:(Class)class
{
  v6.receiver = self;
  v6.super_class = VNRecognizeDocumentsRequestConfiguration;
  v3 = [(VNRecognizeTextRequestConfiguration *)&v6 initWithRequestClass:class];
  v4 = v3;
  if (v3)
  {
    v3->_detectionOnly = 0;
    v3->_usesAlternateLineGrouping = 0;
    v3->_usesFormFieldDetection = 0;
    v3->_maximumCandidateCount = 3;
    [(VNRecognizeTextRequestConfiguration *)v3 setAutomaticallyDetectsLanguage:1];
  }

  return v4;
}

@end