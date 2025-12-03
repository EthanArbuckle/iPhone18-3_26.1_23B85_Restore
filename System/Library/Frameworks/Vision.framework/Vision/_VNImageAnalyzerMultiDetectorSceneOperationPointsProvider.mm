@interface _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider
- (_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider)initWithOperationPointsCache:(id)cache originatingRequestSpecifier:(id)specifier;
@end

@implementation _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider

- (_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider)initWithOperationPointsCache:(id)cache originatingRequestSpecifier:(id)specifier
{
  cacheCopy = cache;
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = _VNImageAnalyzerMultiDetectorSceneOperationPointsProvider;
  v9 = [(_VNImageAnalyzerMultiDetectorSceneOperationPointsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operationPointsCache, cache);
    objc_storeStrong(&v10->_originatingRequestSpecifier, specifier);
  }

  return v10;
}

@end