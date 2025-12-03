@interface VNGenerateAttentionBasedSaliencyImageRequest
+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision;
+ (id)descriptionForPrivateRevision:(unint64_t)revision;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
@end

@implementation VNGenerateAttentionBasedSaliencyImageRequest

+ (BOOL)revision:(unint64_t)revision mayAcceptResultsProducedByRevision:(unint64_t)byRevision
{
  v7 = [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:revision];
  if (v7 != [VNImageAnalyzerMultiDetector modelForRequestClass:self revision:byRevision])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___VNGenerateAttentionBasedSaliencyImageRequest;
  return objc_msgSendSuper2(&v9, sel_revision_mayAcceptResultsProducedByRevision_, revision, byRevision);
}

+ (id)descriptionForPrivateRevision:(unint64_t)revision
{
  if (revision - 3737841664u >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VNGenerateAttentionBasedSaliencyImageRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = off_1E77B2F80[revision - 3737841664u];
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGenerateAttentionBasedSaliencyImageRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateAttentionBasedSaliencyImageRequest privateRevisionsSet]::onceToken, &__block_literal_global_6665);
  }

  v3 = +[VNGenerateAttentionBasedSaliencyImageRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __67__VNGenerateAttentionBasedSaliencyImageRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNGenerateAttentionBasedSaliencyImageRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF003uLL, a2, a3, a4, a5, a6, a7, a8, 3737841668);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnsupportedRevision:revision ofRequest:self];
  }

  return 0;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VNGenerateAttentionBasedSaliencyImageRequest;
  v6 = [(VNRequest *)&v16 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  frameworkClass = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:frameworkClass revision:revision])
  {
    v8 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorImageSaliencyAConfiguration alloc] initWithObservationsRecipient:self];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyAConfigurations"];

    v10 = v6;
  }

  else
  {
    v11 = [VNImageAnalyzerMultiDetector modelForRequestClass:frameworkClass revision:revision];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v6 setObject:v12 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v13 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSaliencyAConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyAConfiguration"];
    }

    v14 = v6;
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

@end