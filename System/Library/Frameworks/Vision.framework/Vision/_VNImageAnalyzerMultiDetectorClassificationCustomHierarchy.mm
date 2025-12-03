@interface _VNImageAnalyzerMultiDetectorClassificationCustomHierarchy
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)error;
@end

@implementation _VNImageAnalyzerMultiDetectorClassificationCustomHierarchy

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)error
{
  v3 = [VNImageAnalyzerMultiDetector createHierarchicalModelForMultiDetectorModel:1 error:error];
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

@end