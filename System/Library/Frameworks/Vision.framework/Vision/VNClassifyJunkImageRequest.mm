@interface VNClassifyJunkImageRequest
+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error;
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)knownClassificationsForRevision:(unint64_t)revision error:(id *)error;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (id)supportedIdentifiersAndReturnError:(id *)error;
- (unint64_t)imageCropAndScaleOption;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setImageCropAndScaleOption:(unint64_t)option;
@end

@implementation VNClassifyJunkImageRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnsupportedRevision:revision ofRequest:self];
  }

  return 0;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v5.receiver = self;
    v5.super_class = VNClassifyJunkImageRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNClassifyJunkImageRequest *)self setImageCropAndScaleOption:[(VNClassifyJunkImageRequest *)requestCopy imageCropAndScaleOption]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageCropAndScaleOption = [(VNClassifyJunkImageRequest *)self imageCropAndScaleOption];
  if (imageCropAndScaleOption == [configurationCopy imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VNClassifyJunkImageRequest;
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
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VNClassifyJunkImageRequest;
  v6 = [(VNRequest *)&v15 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:[(VNRequest *)self frameworkClass] revision:revision])
  {
    v7 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorJunkConfiguration alloc] initWithObservationsRecipient:self];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 setObject:v8 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];

    v9 = v6;
  }

  else
  {
    v10 = [VNImageAnalyzerMultiDetector modelForRequestClass:[(VNRequest *)self frameworkClass] revision:revision];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      [v6 setObject:v11 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v12 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorJunkClassificationConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v12 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_JunkConfiguration"];
    }

    v13 = v6;
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
  v8.super_class = VNClassifyJunkImageRequest;
  v4 = [(VNImageBasedRequest *)&v8 description];
  v5 = VNImageCropAndScaleOptionToString([(VNClassifyJunkImageRequest *)self imageCropAndScaleOption]);
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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

- (id)supportedIdentifiersAndReturnError:(id *)error
{
  v5 = objc_alloc_init(VNSession);
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v5 error:error];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 allJunkIdentifiersForOptions:v7 error:error];
    goto LABEL_7;
  }

  if (error)
  {
    [VNError errorForUnsupportedRevision:[(VNRequest *)self resolvedRevision] ofRequest:self];
    *error = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  if (revision != byRevision)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___VNClassifyJunkImageRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, revision, revision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNClassifyJunkImageRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B2600[revision - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNClassifyJunkImageRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNClassifyJunkImageRequest privateRevisionsSet]::onceToken, &__block_literal_global_1738);
  }

  v3 = +[VNClassifyJunkImageRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __49__VNClassifyJunkImageRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNClassifyJunkImageRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF002uLL, a2, a3, a4, a5, a6, a7, a8, 3737841669);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)registrar error:(id *)error
{
  registrarCopy = registrar;
  if (([registrarCopy registerRequestClass:self revision:3737841666 equivalencyToRevision:3737841664 error:error] & 1) != 0 && objc_msgSend(registrarCopy, "registerRequestClass:revision:equivalencyToRevision:error:", self, 3737841666, 1, error) && objc_msgSend(registrarCopy, "registerRequestClass:revision:equivalencyToRevision:error:", self, 3737841669, 3737841670, error))
  {
    v7 = [registrarCopy registerRequestClass:self revision:3737841667 equivalencyToRevision:3737841668 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)knownClassificationsForRevision:(unint64_t)revision error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(self);
  if ([v6 setRevision:revision error:error])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:error];
    if (v7)
    {
      specifier = [v6 specifier];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [VNClassificationObservation alloc];
            LODWORD(v16) = 1.0;
            v17 = [(VNClassificationObservation *)v15 initWithOriginatingRequestSpecifier:specifier identifier:v14 confidence:v16, v19];
            [v9 addObject:v17];
          }

          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end