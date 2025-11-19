@interface VNCreateImageFingerprintsRequest
+ (BOOL)revision:(unint64_t)a3 mayAcceptResultsProducedByRevision:(unint64_t)a4;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
@end

@implementation VNCreateImageFingerprintsRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v10 = [v8 session];
    v18 = 0;
    v11 = [(VNRequest *)self applicableDetectorAndOptions:&v18 forRevision:a3 loadedInSession:v10 error:a5];
    v12 = v18;
    if (v11)
    {
      v19[0] = v9;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v12 setObject:v13 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v14 = [v8 qosClass];
      [(VNImageBasedRequest *)self regionOfInterest];
      v15 = [v11 processUsingQualityOfServiceClass:v14 options:v12 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
      v16 = v15 != 0;
      if (v15)
      {
        [(VNRequest *)self setResults:v15];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VNCreateImageFingerprintsRequest;
  v6 = [(VNRequest *)&v13 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v7 = [(VNRequest *)self frameworkClass];
  if ([VNCoreSceneUnderstandingDetector handlesRequestClass:v7 revision:a3])
  {
    v8 = [(VNCoreSceneUnderstandingDetectorFeatureConfiguration *)[VNCoreSceneUnderstandingDetectorImageFingerprintsConfiguration alloc] initWithObservationsRecipient:self];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v6 setObject:v9 forKeyedSubscript:@"VNCoreSceneUnderstandingDetectorProcessingOption_ImageFingerprintsConfigurations"];

LABEL_5:
    return v6;
  }

  v10 = [VNImageAnalyzerMultiDetector modelForRequestClass:v7 revision:a3];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    [v6 setObject:v11 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorInitializationOption_Model"];

    v8 = [(VNImageAnalyzerMultiDetectorAnalysisConfiguration *)[VNImageAnalyzerMultiDetectorImageFingerprintsConfiguration alloc] initWithObservationsRecipient:self];
    [v6 setObject:v8 forKeyedSubscript:@"VNImageAnalyzerMultiDetectorOption_ImageFingerprintsConfiguration"];
    goto LABEL_5;
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
  v7.super_class = &OBJC_METACLASS___VNCreateImageFingerprintsRequest;
  return objc_msgSendSuper2(&v7, sel_revision_mayAcceptResultsProducedByRevision_, a3, a3);
}

@end