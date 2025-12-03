@interface _ATXScoreInterpreterCoreMLModelFeature
- (_ATXScoreInterpreterCoreMLModelFeature)initWithFeatureName:(id)name multiArraySize:(unint64_t)size;
@end

@implementation _ATXScoreInterpreterCoreMLModelFeature

- (_ATXScoreInterpreterCoreMLModelFeature)initWithFeatureName:(id)name multiArraySize:(unint64_t)size
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _ATXScoreInterpreterCoreMLModelFeature;
  v7 = [(_ATXScoreInterpreterCoreMLModelFeature *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_multiArraySize = size;
    v9 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v9;

    v11 = 5;
    if (!v8->_multiArraySize)
    {
      v11 = 2;
    }

    v8->_featureType = v11;
  }

  return v8;
}

@end