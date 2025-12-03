@interface VNImageAnalyzerMultiDetectorSceneClassificationConfiguration
- (VNImageAnalyzerMultiDetectorSceneClassificationConfiguration)initWithObservationsRecipient:(id)recipient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VNImageAnalyzerMultiDetectorSceneClassificationConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = VNImageAnalyzerMultiDetectorSceneClassificationConfiguration;
  v4 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_disallowedList);
    *(v5 + 4) = LODWORD(self->_minimumConfidence);
    v5[4] = self->_maximumLeafLabels;
    v5[5] = self->_maximumHierarchicalLabels;
    objc_storeStrong(v5 + 6, self->_customHierarchy);
  }

  return v5;
}

- (VNImageAnalyzerMultiDetectorSceneClassificationConfiguration)initWithObservationsRecipient:(id)recipient
{
  recipientCopy = recipient;
  v11.receiver = self;
  v11.super_class = VNImageAnalyzerMultiDetectorSceneClassificationConfiguration;
  v5 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v11 initWithObservationsRecipient:recipientCopy];
  v6 = v5;
  if (v5)
  {
    v5->_maximumLeafLabels = 0x7FFFFFFFFFFFFFFFLL;
    v5->_maximumHierarchicalLabels = 0x7FFFFFFFFFFFFFFFLL;
    originatingRequestSpecifier = [recipientCopy originatingRequestSpecifier];
    if ([originatingRequestSpecifier specifiesRequestClass:objc_opt_class()])
    {
      v6->_maximumLeafLabels = 5;
      v6->_maximumHierarchicalLabels = 5;
    }

    else if ([originatingRequestSpecifier specifiesRequestClass:objc_opt_class()])
    {
      v8 = +[VNImageAnalyzerMultiDetector disallowedListForModel:](VNImageAnalyzerMultiDetector, "disallowedListForModel:", +[VNImageAnalyzerMultiDetector modelForRequestClass:revision:](VNImageAnalyzerMultiDetector, "modelForRequestClass:revision:", [originatingRequestSpecifier requestClassAndReturnError:0], objc_msgSend(originatingRequestSpecifier, "requestRevision")));
      disallowedList = v6->_disallowedList;
      v6->_disallowedList = v8;
    }
  }

  return v6;
}

@end