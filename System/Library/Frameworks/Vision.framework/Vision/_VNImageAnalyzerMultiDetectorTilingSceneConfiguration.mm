@interface _VNImageAnalyzerMultiDetectorTilingSceneConfiguration
- (_VNImageAnalyzerMultiDetectorTilingSceneConfiguration)initWithObservationsRecipient:(id)recipient;
@end

@implementation _VNImageAnalyzerMultiDetectorTilingSceneConfiguration

- (_VNImageAnalyzerMultiDetectorTilingSceneConfiguration)initWithObservationsRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = [[_VNImageAnalyzerMultiDetectorTilingObservationsRecipient alloc] initWithObservationsRecipient:recipientCopy];
  v9.receiver = self;
  v9.super_class = _VNImageAnalyzerMultiDetectorTilingSceneConfiguration;
  v6 = [(VNImageAnalyzerMultiDetectorSceneClassificationConfiguration *)&v9 initWithObservationsRecipient:v5];
  v7 = v6;
  if (v6)
  {
    [(VNImageAnalyzerMultiDetectorSceneClassificationConfiguration *)v6 setDisallowedList:0];
    [(VNImageAnalyzerMultiDetectorSceneClassificationConfiguration *)v7 setMinimumConfidence:0.0];
    [(VNImageAnalyzerMultiDetectorSceneClassificationConfiguration *)v7 setMaximumLeafLabels:0x7FFFFFFFFFFFFFFFLL];
    [(VNImageAnalyzerMultiDetectorSceneClassificationConfiguration *)v7 setMaximumHierarchicalLabels:0x7FFFFFFFFFFFFFFFLL];
  }

  return v7;
}

@end