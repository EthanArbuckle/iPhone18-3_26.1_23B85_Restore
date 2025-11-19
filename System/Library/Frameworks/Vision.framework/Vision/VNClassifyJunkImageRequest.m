@interface VNClassifyJunkImageRequest
+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)a3 error:(id *)a4;
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)knownClassificationsForRevision:(unint64_t)a3 error:(id *)a4;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
- (unint64_t)imageCropAndScaleOption;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setImageCropAndScaleOption:(unint64_t)a3;
@end

@implementation VNClassifyJunkImageRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
  }

  return 0;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VNClassifyJunkImageRequest;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNClassifyJunkImageRequest *)self setImageCropAndScaleOption:[(VNClassifyJunkImageRequest *)v4 imageCropAndScaleOption]];
    }
  }
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNClassifyJunkImageRequest *)self imageCropAndScaleOption];
  if (v5 == [v4 imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VNClassifyJunkImageRequest;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VNClassifyJunkImageRequest;
  v6 = [(VNRequest *)&v15 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:[(VNRequest *)self frameworkClass] revision:a3])
  {
    v7 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorJunkConfiguration alloc] initWithObservationsRecipient:self];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 setObject:v8 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_JunkConfigurations"];

    v9 = v6;
  }

  else
  {
    v10 = [VNImageAnalyzerMultiDetector modelForRequestClass:[(VNRequest *)self frameworkClass] revision:a3];
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

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = @"VNCoreSceneUnderstandingDetectorType";
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3])
  {
    v8 = @"VNImageAnalyzerMultiDetectorType";
    goto LABEL_5;
  }

  if (a4)
  {
    [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    *a4 = v8 = 0;
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

- (void)setImageCropAndScaleOption:(unint64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  [v4 setImageCropAndScaleOption:a3];
}

- (unint64_t)imageCropAndScaleOption
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 imageCropAndScaleOption];

  return v3;
}

- (id)supportedIdentifiersAndReturnError:(id *)a3
{
  v5 = objc_alloc_init(VNSession);
  v10 = 0;
  v6 = [(VNRequest *)self applicableDetectorAndOptions:&v10 forRevision:[(VNRequest *)self resolvedRevision] loadedInSession:v5 error:a3];
  v7 = v10;
  if (!v6)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 allJunkIdentifiersForOptions:v7 error:a3];
    goto LABEL_7;
  }

  if (a3)
  {
    [VNError errorForUnsupportedRevision:[(VNRequest *)self resolvedRevision] ofRequest:self];
    *a3 = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNClassifyJunkImageRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 7)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNClassifyJunkImageRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B2600[a3 - 3737841664u];
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

+ (BOOL)recordSpecifierModelEquivalenciesInRegistrar:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 registerRequestClass:a1 revision:3737841666 equivalencyToRevision:3737841664 error:a4] & 1) != 0 && objc_msgSend(v6, "registerRequestClass:revision:equivalencyToRevision:error:", a1, 3737841666, 1, a4) && objc_msgSend(v6, "registerRequestClass:revision:equivalencyToRevision:error:", a1, 3737841669, 3737841670, a4))
  {
    v7 = [v6 registerRequestClass:a1 revision:3737841667 equivalencyToRevision:3737841668 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)knownClassificationsForRevision:(unint64_t)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(a1);
  if ([v6 setRevision:a3 error:a4])
  {
    v7 = [v6 supportedIdentifiersAndReturnError:a4];
    if (v7)
    {
      v8 = [v6 specifier];
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
            v17 = [(VNClassificationObservation *)v15 initWithOriginatingRequestSpecifier:v8 identifier:v14 confidence:v16, v19];
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