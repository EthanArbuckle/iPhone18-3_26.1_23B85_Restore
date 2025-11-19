@interface _VNImageAnalyzerMultiDetectorTilingSceneConfiguration
- (_VNImageAnalyzerMultiDetectorTilingSceneConfiguration)initWithObservationsRecipient:(id)a3;
@end

@implementation _VNImageAnalyzerMultiDetectorTilingSceneConfiguration

- (_VNImageAnalyzerMultiDetectorTilingSceneConfiguration)initWithObservationsRecipient:(id)a3
{
  v4 = a3;
  v5 = [[_VNImageAnalyzerMultiDetectorTilingObservationsRecipient alloc] initWithObservationsRecipient:v4];
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