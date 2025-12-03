@interface VNImageAnalyzerMultiDetectorSceneprintConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)analysisTypes;
@end

@implementation VNImageAnalyzerMultiDetectorSceneprintConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = VNImageAnalyzerMultiDetectorSceneprintConfiguration;
  result = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 16) = self->_includeLabelsAndConfidences;
  }

  return result;
}

- (unsigned)analysisTypes
{
  if ([(VNImageAnalyzerMultiDetectorSceneprintConfiguration *)self includeLabelsAndConfidences])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

@end