@interface _VNImageAnalyzerMultiDetectorClassificationCustomHierarchy
- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)a3;
@end

@implementation _VNImageAnalyzerMultiDetectorClassificationCustomHierarchy

- (shared_ptr<vision::mod::ImageClassifier_HierarchicalModel>)newHierarchicalModelAndReturnError:(id *)a3
{
  v3 = [VNImageAnalyzerMultiDetector createHierarchicalModelForMultiDetectorModel:1 error:a3];
  result.__cntrl_ = v4;
  result.__ptr_ = v3;
  return result;
}

@end