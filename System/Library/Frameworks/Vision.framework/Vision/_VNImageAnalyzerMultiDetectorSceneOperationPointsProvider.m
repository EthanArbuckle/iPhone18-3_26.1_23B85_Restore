@interface _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider
- (_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider)initWithOperationPointsCache:(id)a3 originatingRequestSpecifier:(id)a4;
@end

@implementation _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider

- (_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider)initWithOperationPointsCache:(id)a3 originatingRequestSpecifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider;
  v9 = [(_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operationPointsCache, a3);
    objc_storeStrong(&v10->_originatingRequestSpecifier, a4);
  }

  return v10;
}

@end