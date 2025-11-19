@interface VNGenerateObjectnessBasedSaliencyImageRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNGenerateObjectnessBasedSaliencyImageRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  VNValidatedLog(1, @"Processing Analyze Image Objectness request\n", v9, v10, v11, v12, v13, v14, v24);
  v15 = [v8 imageBufferAndReturnError:a5];
  if (v15)
  {
    v16 = [v8 session];
    v25 = 0;
    v17 = [(VNRequest *)self applicableDetectorAndOptions:&v25 forRevision:a3 loadedInSession:v16 error:a5];
    v18 = v25;
    if (v17)
    {
      v26[0] = v15;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v18 setObject:v19 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v20 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v21 = [v17 processUsingQualityOfServiceClass:v20 options:v18 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v22 = v21 != 0;
      if (v21)
      {
        [(VNRequest *)self setResults:v21];
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VNGenerateObjectnessBasedSaliencyImageRequest;
  v6 = [(VNRequest *)&v16 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorImageSaliencyOConfiguration alloc] initWithObservationsRecipient:self];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageSaliencyOConfigurations"];

    v10 = v6;
  }

  else
  {
    v11 = [VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      [v6 setObject:v12 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

      v13 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorSaliencyOConfiguration alloc] initWithObservationsRecipient:self];
      [v6 setObject:v13 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_SaliencyOConfiguration"];
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

+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4
{
  if (a3 != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___VNGenerateObjectnessBasedSaliencyImageRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 - 3737841664u >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNGenerateObjectnessBasedSaliencyImageRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  else
  {
    v5 = *(&off_1E77B6728 + a3 - 3737841664u);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGenerateObjectnessBasedSaliencyImageRequest privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGenerateObjectnessBasedSaliencyImageRequest privateRevisionsSet]::onceToken, &__block_literal_global_36981);
  }

  v3 = +[VNGenerateObjectnessBasedSaliencyImageRequest privateRevisionsSet]::ourPrivateRevisions;

  return v3;
}

uint64_t __68__VNGenerateObjectnessBasedSaliencyImageRequest_privateRevisionsSet__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  +[VNGenerateObjectnessBasedSaliencyImageRequest privateRevisionsSet]::ourPrivateRevisions = VNRequestPrivateRevisionsSet(0xDECAF002uLL, a2, a3, a4, a5, a6, a7, a8, 0);

  return MEMORY[0x1EEE66BB8]();
}

@end