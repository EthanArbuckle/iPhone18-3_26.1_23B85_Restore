@interface VN5kJNH3eYuyaLxNpZr5Z7zi
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)knownClassificationsForRevision:(unint64_t)a3 error:(id *)a4;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedIdentifiersAndReturnError:(id *)a3;
- (unint64_t)imageCropAndScaleOption;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setImageCropAndScaleOption:(unint64_t)a3;
@end

@implementation VN5kJNH3eYuyaLxNpZr5Z7zi

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VN5kJNH3eYuyaLxNpZr5Z7zi;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VN5kJNH3eYuyaLxNpZr5Z7zi;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B2E20[a3 - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VN5kJNH3eYuyaLxNpZr5Z7zi privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VN5kJNH3eYuyaLxNpZr5Z7zi privateRevisionsSet]::onceToken, &__block_literal_global_5948);
  }

  v3 = +[VN5kJNH3eYuyaLxNpZr5Z7zi privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __47__VN5kJNH3eYuyaLxNpZr5Z7zi_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VN5kJNH3eYuyaLxNpZr5Z7zi privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF002uLL, a2, a3, a4, a5, a6, a7, a8, 3737841667);

  return MEMORY[0x1EEE66BB8]();
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

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
  }

  return 0;
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 imageCropAndScaleOption];
  if (v5 == [(VN5kJNH3eYuyaLxNpZr5Z7zi *)self imageCropAndScaleOption])
  {
    v8.receiver = self;
    v8.super_class = VN5kJNH3eYuyaLxNpZr5Z7zi;
    v6 = [(VNImageBasedRequest *)&v8 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5.receiver = self;
    v5.super_class = VN5kJNH3eYuyaLxNpZr5Z7zi;
    [(VNImageBasedRequest *)&v5 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VN5kJNH3eYuyaLxNpZr5Z7zi *)self setImageCropAndScaleOption:[(VN5kJNH3eYuyaLxNpZr5Z7zi *)v4 imageCropAndScaleOption]];
    }
  }
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VN5kJNH3eYuyaLxNpZr5Z7zi;
  v6 = [(VNRequest *)&v17 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VN5kJNH3eYuyaLxNpZr5Z7zi imageCropAndScaleOption](self, "imageCropAndScaleOption")}];
  [v6 setObject:v7 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];

  v8 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v8 revision:a3])
  {
    v9 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration alloc] initWithObservationsRecipient:self];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v6 setObject:v10 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_5kJNH3eYuyaLxNpZr5Z7ziConfigurations"];

    v11 = v6;
  }

  else
  {
    v12 = [VNImageAnalyzerMultiDetector modelForRequestClass:v8 revision:a3];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v14 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorVN5kJNH3eYuyaLxNpZr5Z7ziConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v14 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_VN5kJNH3eYuyaLxNpZr5Z7ziConfiguration"];
    }

    v15 = v6;
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
  v5 = [(VNRequest *)self resolvedRevision];
  v14 = 0;
  v6 = [(VNRequest *)self applicableDetectorClassAndOptions:&v14 forRevision:v5 error:a3];
  v7 = v14;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  if ([(objc_class *)v6 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [(objc_class *)v6 allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithConfigurationOptions:v7 error:a3];
LABEL_5:
    v9 = v7;
    goto LABEL_13;
  }

  v10 = objc_alloc_init(VNSession);
  v13 = v7;
  v11 = [(VNRequest *)self applicableDetectorAndOptions:&v13 forRevision:v5 loadedInSession:v10 error:a3];
  v9 = v13;

  if (!v11)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a3)
    {
      [VNError errorForUnsupportedRevision:v5 ofRequest:self];
      *a3 = v8 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = [v11 allVN5kJNH3eYuyaLxNpZr5Z7ziIdentifiersWithOptions:v9 error:a3];
LABEL_12:

LABEL_13:

  return v8;
}

@end