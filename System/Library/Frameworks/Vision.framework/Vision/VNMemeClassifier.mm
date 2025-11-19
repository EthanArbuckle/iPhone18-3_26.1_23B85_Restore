@interface VNMemeClassifier
+ (BOOL)providesSceneLabelsForConfiguration:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)inputImageBlobNameForConfiguration:(id)a3;
+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4;
+ (id)sceneLabelsFilePathForConfiguration:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7;
- (id)supportedIdentifiersWithOptions:(id)a3 error:(id *)a4;
@end

@implementation VNMemeClassifier

+ (id)sceneLabelsFilePathForConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  if (_getModelDropForConfigurationOptions(v6, &v11, a4))
  {
    if (v11 == 1)
    {
      v7 = [VNEspressoHelpers pathForEspressoResourceWithFilename:@"SCL_v0.3.1_9c7zcipfrc_558001-labels-v3.txt" error:a4];
    }

    else
    {
      v10.receiver = a1;
      v10.super_class = &OBJC_METACLASS___VNMemeClassifier;
      v7 = objc_msgSendSuper2(&v10, sel_sceneLabelsFilePathForConfiguration_error_, v6, a4);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)providesSceneLabelsForConfiguration:(id)a3
{
  v4 = 0;
  result = _getModelDropForConfigurationOptions(a3, &v4, 0);
  if (v4 != 1)
  {
    return 0;
  }

  return result;
}

+ (id)inputImageBlobNameForConfiguration:(id)a3
{
  v6 = 0;
  _getModelDropForConfigurationOptions(a3, &v6, 0);
  if (v6 == 1)
  {
    v3 = @"image";
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4
{
  v8 = 0;
  _getModelDropForConfigurationOptions(a3, &v8, 0);
  if (v8 == 1)
  {
    v5 = @"SCL_v0.3.1_9c7zcipfrc_558001.espresso";
  }

  else
  {
    v5 = 0;
  }

  v6 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:v5 error:a4];

  return v6;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VNMemeClassifier_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNMemeClassifier configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNMemeClassifier configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNMemeClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __57__VNMemeClassifier_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNMemeClassifier;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v3 = [v2 copy];
  v4 = +[VNMemeClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNMemeClassifier configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7
{
  v7 = [(VNImageAnalyzerBasedDetector *)self observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:a3 identifierAcceptingBlock:0 operationPointsProvider:0 originatingRequestSpecifier:a5 qosClass:*&a6 error:a7];

  return v7;
}

- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = VNMemeClassifier;
  v6 = [(VNImageAnalyzerBasedDetector *)&v9 configureImageAnalyzerOptions:a3 error:a4];
  if (v6 && self->_modelDrop == 1)
  {
    if (*(a3 + 143) < 0)
    {
      *(a3 + 16) = 20;
      v7 = *(a3 + 15);
    }

    else
    {
      v7 = a3 + 120;
      *(a3 + 143) = 20;
    }

    strcpy(v7, "merged/probabilities");
  }

  return v6;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNDetector *)self configurationOptions];
  if (_getModelDropForConfigurationOptions(v7, &self->_modelDrop, a4))
  {
    v10.receiver = self;
    v10.super_class = VNMemeClassifier;
    v8 = [(VNImageAnalyzerBasedDetector *)&v10 completeInitializationForSession:v6 error:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)supportedIdentifiersWithOptions:(id)a3 error:(id *)a4
{
  v4 = [(VNImageAnalyzerBasedDetector *)self supportedClassificationIdentifiersAcceptedByBlock:0 error:a4];

  return v4;
}

@end