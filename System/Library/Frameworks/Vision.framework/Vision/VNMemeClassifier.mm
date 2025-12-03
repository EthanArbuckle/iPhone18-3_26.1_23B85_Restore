@interface VNMemeClassifier
+ (BOOL)providesSceneLabelsForConfiguration:(id)configuration;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)inputImageBlobNameForConfiguration:(id)configuration;
+ (id)modelPathForConfiguration:(id)configuration error:(id *)error;
+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error;
- (id)supportedIdentifiersWithOptions:(id)options error:(id *)error;
@end

@implementation VNMemeClassifier

+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v11 = 0;
  if (_getModelDropForConfigurationOptions(configurationCopy, &v11, error))
  {
    if (v11 == 1)
    {
      v7 = [VNEspressoHelpers pathForEspressoResourceWithFilename:@"SCL_v0.3.1_9c7zcipfrc_558001-labels-v3.txt" error:error];
    }

    else
    {
      v10.receiver = self;
      v10.super_class = &OBJC_METACLASS___VNMemeClassifier;
      v7 = objc_msgSendSuper2(&v10, sel_sceneLabelsFilePathForConfiguration_error_, configurationCopy, error);
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)providesSceneLabelsForConfiguration:(id)configuration
{
  v4 = 0;
  result = _getModelDropForConfigurationOptions(configuration, &v4, 0);
  if (v4 != 1)
  {
    return 0;
  }

  return result;
}

+ (id)inputImageBlobNameForConfiguration:(id)configuration
{
  v6 = 0;
  _getModelDropForConfigurationOptions(configuration, &v6, 0);
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

+ (id)modelPathForConfiguration:(id)configuration error:(id *)error
{
  v8 = 0;
  _getModelDropForConfigurationOptions(configuration, &v8, 0);
  if (v8 == 1)
  {
    v5 = @"SCL_v0.3.1_9c7zcipfrc_558001.espresso";
  }

  else
  {
    v5 = 0;
  }

  v6 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:v5 error:error];

  return v6;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VNMemeClassifier_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error
{
  v7 = [(VNImageAnalyzerBasedDetector *)self observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:analyzer identifierAcceptingBlock:0 operationPointsProvider:0 originatingRequestSpecifier:specifier qosClass:*&class error:error];

  return v7;
}

- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error
{
  v9.receiver = self;
  v9.super_class = VNMemeClassifier;
  v6 = [(VNImageAnalyzerBasedDetector *)&v9 configureImageAnalyzerOptions:options error:error];
  if (v6 && self->_modelDrop == 1)
  {
    if (*(options + 143) < 0)
    {
      *(options + 16) = 20;
      v7 = *(options + 15);
    }

    else
    {
      v7 = options + 120;
      *(options + 143) = 20;
    }

    strcpy(v7, "merged/probabilities");
  }

  return v6;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  configurationOptions = [(VNDetector *)self configurationOptions];
  if (_getModelDropForConfigurationOptions(configurationOptions, &self->_modelDrop, error))
  {
    v10.receiver = self;
    v10.super_class = VNMemeClassifier;
    v8 = [(VNImageAnalyzerBasedDetector *)&v10 completeInitializationForSession:sessionCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)supportedIdentifiersWithOptions:(id)options error:(id *)error
{
  v4 = [(VNImageAnalyzerBasedDetector *)self supportedClassificationIdentifiersAcceptedByBlock:0 error:error];

  return v4;
}

@end