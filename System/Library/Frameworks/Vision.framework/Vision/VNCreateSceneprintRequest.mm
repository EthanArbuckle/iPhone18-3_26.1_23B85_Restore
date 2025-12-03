@interface VNCreateSceneprintRequest
+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error;
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)returnAllResults;
- (BOOL)useCenterTileOnly;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedImageSizeSet;
- (unint64_t)imageCropAndScaleOption;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setImageCropAndScaleOption:(unint64_t)option;
- (void)setReturnAllResults:(BOOL)results;
- (void)setUseCenterTileOnly:(BOOL)only;
@end

@implementation VNCreateSceneprintRequest

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNCreateSceneprintRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 9)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNCreateSceneprintRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B5608[revision - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNCreateSceneprintRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNCreateSceneprintRequest privateRevisionsSet]::onceToken, &__block_literal_global_30183);
  }

  v3 = +[VNCreateSceneprintRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __48__VNCreateSceneprintRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNCreateSceneprintRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF002uLL, a2, a3, a4, a5, a6, a7, a8, 3737841671);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error
{
  registrarCopy = registrar;
  if ([registrarCopy registerRequestClass:self revision:3 equivalencyToRevision:3737841671 error:error])
  {
    v7 = [registrarCopy registerRequestClass:self revision:3737841671 equivalencyToRevision:3737841672 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)supportedImageSizeSet
{
  v8[1] = *MEMORY[0x1E69E9840];
  resolvedRevision = [(VNRequest *)self resolvedRevision];
  if (resolvedRevision == 3737841666 || resolvedRevision == 2)
  {
    v4 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 width:299 height:299 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
    v8[0] = v4;
    supportedImageSizeSet = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VNCreateSceneprintRequest;
    supportedImageSizeSet = [(VNImageBasedRequest *)&v7 supportedImageSizeSet];
  }

  return supportedImageSizeSet;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = contextCopy;
  if (revision == 2 || revision == 3737841666)
  {
    v10 = [contextCopy imageBufferAndReturnError:error];
    if (v10)
    {
      session = [v9 session];
      v21 = 0;
      v12 = [(VNRequest *)self applicableDetectorAndOptions:&v21 forRevision:revision loadedInSession:session error:error];
      v13 = v21;
      if (v12)
      {
        v22[0] = v10;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
        [v13 setObject:v14 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

        v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNCreateSceneprintRequest useCenterTileOnly](self, "useCenterTileOnly")}];
        [v13 setObject:v15 forKeyedSubscript:@"VNEspressoModelClassifierProcessOption_CenterTileOnly"];

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNCreateSceneprintRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
        [v13 setObject:v16 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

        qosClass = [v9 qosClass];
        [(VNImageBasedRequest *)self regionOfInterest];
        v18 = [v12 processUsingQualityOfServiceClass:qosClass options:v13 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
        v19 = v18 != 0;
        if (v18)
        {
          [(VNRequest *)self setResults:v18];
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:revision ofRequest:self];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VNCreateSceneprintRequest;
  v6 = [(VNRequest *)&v19 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNCreateSceneprintRequest imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
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

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNCreateSceneprintRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNCreateSceneprintRequest *)self setReturnAllResults:[(VNCreateSceneprintRequest *)requestCopy returnAllResults]];
      [(VNCreateSceneprintRequest *)self setUseCenterTileOnly:[(VNCreateSceneprintRequest *)requestCopy useCenterTileOnly]];
      [(VNCreateSceneprintRequest *)self setImageCropAndScaleOption:[(VNCreateSceneprintRequest *)requestCopy imageCropAndScaleOption]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy resolvedRevision] != 2 || (v5 = -[VNRequest detectionLevel](self, "detectionLevel"), v5 == objc_msgSend(configurationCopy, "detectionLevel"))) && (v6 = -[VNCreateSceneprintRequest returnAllResults](self, "returnAllResults"), v6 == objc_msgSend(configurationCopy, "returnAllResults")) && (v7 = -[VNCreateSceneprintRequest useCenterTileOnly](self, "useCenterTileOnly"), v7 == objc_msgSend(configurationCopy, "useCenterTileOnly")) && (v8 = -[VNCreateSceneprintRequest imageCropAndScaleOption](self, "imageCropAndScaleOption"), v8 == objc_msgSend(configurationCopy, "imageCropAndScaleOption")))
  {
    v11.receiver = self;
    v11.super_class = VNCreateSceneprintRequest;
    v9 = [(VNImageBasedRequest *)&v11 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setImageCropAndScaleOption:(unint64_t)option
{
  configuration = [(VNRequest *)self configuration];
  [configuration setImageCropAndScaleOption:option];
}

- (unint64_t)imageCropAndScaleOption
{
  configuration = [(VNRequest *)self configuration];
  imageCropAndScaleOption = [configuration imageCropAndScaleOption];

  return imageCropAndScaleOption;
}

- (void)setUseCenterTileOnly:(BOOL)only
{
  onlyCopy = only;
  configuration = [(VNRequest *)self configuration];
  [configuration setUseCenterTileOnly:onlyCopy];
}

- (BOOL)useCenterTileOnly
{
  configuration = [(VNRequest *)self configuration];
  useCenterTileOnly = [configuration useCenterTileOnly];

  return useCenterTileOnly;
}

- (void)setReturnAllResults:(BOOL)results
{
  resultsCopy = results;
  configuration = [(VNRequest *)self configuration];
  [configuration setReturnAllResults:resultsCopy];
}

- (BOOL)returnAllResults
{
  configuration = [(VNRequest *)self configuration];
  returnAllResults = [configuration returnAllResults];

  return returnAllResults;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = VNCreateSceneprintRequest;
  v4 = [(VNImageBasedRequest *)&v7 description];
  v5 = VNImageCropAndScaleOptionToString([(VNCreateSceneprintRequest *)self imageCropAndScaleOption]);
  [v3 appendFormat:@"%@ %@", v4, v5];

  if ([(VNCreateSceneprintRequest *)self useCenterTileOnly])
  {
    [v3 appendString:@" useCenterTileOnly"];
  }

  if ([(VNCreateSceneprintRequest *)self returnAllResults])
  {
    [v3 appendString:@" returnAllResults"];
  }

  return v3;
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

@end