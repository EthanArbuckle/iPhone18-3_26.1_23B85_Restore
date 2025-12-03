@interface VNGenerateImageFeaturePrintRequest
+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error;
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (VNImageCropAndScaleOption)imageCropAndScaleOption;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption;
@end

@implementation VNGenerateImageFeaturePrintRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (revision - 1 > 1)
  {
    if (error)
    {
      v9 = [VNError errorForUnsupportedRevision:revision ofRequest:self];
      goto LABEL_6;
    }
  }

  else if (error)
  {
    v9 = [VNError errorForUnsupportedConfigurationOfRequest:self];
LABEL_6:
    *error = v9;
  }

  return 0;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNGenerateImageFeaturePrintRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNGenerateImageFeaturePrintRequest *)self setImageCropAndScaleOption:[(VNGenerateImageFeaturePrintRequest *)requestCopy imageCropAndScaleOption]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCropAndScaleOption = [(VNGenerateImageFeaturePrintRequest *)self imageCropAndScaleOption];
  if (imageCropAndScaleOption == [configurationCopy imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VNGenerateImageFeaturePrintRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VNGenerateImageFeaturePrintRequest;
  v6 = [(VNRequest *)&v19 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNGenerateImageFeaturePrintRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v9 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorSceneprintConfiguration alloc] initWithObservationsRecipient:self];
    v21[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v6 setObject:v10 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_SceneprintConfigurations"];

    v11 = v6;
  }

  else
  {
    v12 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v14 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSceneprintConfiguration alloc] initWithObservationsRecipient:self];
      v20 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      [v6 setObject:v15 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SceneprintConfigurations"];

      v16 = v6;
    }

    else
    {
      v17 = v6;
    }
  }

  return v6;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNCoreSceneUnderstandingDetectorType";
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision])
  {
    v8 = @"VNImageAnalyzerMultiDetectorType";
    goto LABEL_5;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:revision ofRequest:self];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VNGenerateImageFeaturePrintRequest;
  v4 = [(VNImageBasedRequest *)&v8 description];
  v5 = VNImageCropAndScaleOptionToString([(VNGenerateImageFeaturePrintRequest *)self imageCropAndScaleOption]);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setImageCropAndScaleOption:(VNImageCropAndScaleOption)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageCropAndScaleOption:imageCropAndScaleOption];
}

- (VNImageCropAndScaleOption)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  imageCropAndScaleOption = [configuration imageCropAndScaleOption];

  return imageCropAndScaleOption;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNGenerateImageFeaturePrintRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error
{
  registrarCopy = registrar;
  if ([registrarCopy registerRequestClassName:@"VNGenerateImageFeaturePrintRequest" revision:1 equivalencyToRequestClassName:@"VNCreateSceneprintRequest" revision:2 error:error])
  {
    v6 = [registrarCopy registerRequestClassName:@"VNGenerateImageFeaturePrintRequest" revision:2 equivalencyToRequestClassName:@"VNCreateSceneprintRequest" revision:3 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end