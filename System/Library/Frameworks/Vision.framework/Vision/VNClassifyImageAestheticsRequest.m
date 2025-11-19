@interface VNClassifyImageAestheticsRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNClassifyImageAestheticsRequest

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:a1 revision:a3];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:a1 revision:a4])
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___VNClassifyImageAestheticsRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, a3, a4);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNClassifyImageAestheticsRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B3020[a3 - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNClassifyImageAestheticsRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNClassifyImageAestheticsRequest privateRevisionsSet]::onceToken, &__block_literal_global_7362);
  }

  v3 = +[VNClassifyImageAestheticsRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __55__VNClassifyImageAestheticsRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNClassifyImageAestheticsRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF003uLL, a2, a3, a4, a5, a6, a7, a8, 3737841668);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnsupportedRevision:a3 ofRequest:self];
  }

  return 0;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VNClassifyImageAestheticsRequest;
  v6 = [(VNRequest *)&v16 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorImageAestheticsConfiguration alloc] initWithObservationsRecipient:self];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageAestheticsConfigurations"];

    v10 = v6;
  }

  else
  {
    v11 = [VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v6 setObject:v12 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v13 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorAestheticsConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_AestheticsConfiguration"];
    }

    v14 = v6;
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

@end