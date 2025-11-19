@interface VNImageAnalyzerMultiDetectorSceneprintConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)analysisTypes;
@end

@implementation VNImageAnalyzerMultiDetectorSceneprintConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = VNImageAnalyzerMultiDetectorSceneprintConfiguration;
  result = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)&v5 copyWithZone:a3];
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