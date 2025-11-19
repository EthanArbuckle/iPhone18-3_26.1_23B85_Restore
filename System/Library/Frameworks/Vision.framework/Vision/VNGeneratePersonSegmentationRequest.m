@interface VNGeneratePersonSegmentationRequest
+ (id)descriptionForPrivateRevision:(unint64_t)a3;
+ (id)privateRevisionsSet;
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)useTiling;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (OSType)outputPixelFormat;
- (VNGeneratePersonSegmentationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel;
- (float)minimumConfidence;
- (id)_internalPerformRevision:(void *)a3 session:(uint64_t)a4 qosClass:(void *)a5 generatorOptions:(uint64_t)a6 error:;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)description;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3;
- (uint64_t)keepRawOutputMask;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setMinimumConfidence:(float)a3;
- (void)setOutputPixelFormat:(OSType)outputPixelFormat;
- (void)setQualityLevel:(VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel;
- (void)setUseTiling:(BOOL)a3;
@end

@implementation VNGeneratePersonSegmentationRequest

- (id)description
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__VNGeneratePersonSegmentationRequest_description__block_invoke;
  aBlock[3] = &unk_1E77B41E8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = VNGeneratePersonSegmentationRequest;
  v5 = [(VNStatefulRequest *)&v13 description];
  v6 = v3[2](v3, [(VNGeneratePersonSegmentationRequest *)self qualityLevel]);
  v7 = [v4 initWithFormat:@"%@ qualityLevel=%@", v5, v6];

  if ([(VNRequest *)self resolvedRevision]>= 0xDECAF000)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(VNGeneratePersonSegmentationRequest *)self useTiling];
    [(VNGeneratePersonSegmentationRequest *)self minimumConfidence];
    v11 = [v8 initWithFormat:@"%@ useTiling=%d minimumConfidence=%f", v7, v9, v10];

    v7 = v11;
  }

  return v7;
}

uint64_t __50__VNGeneratePersonSegmentationRequest_description__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) qualityLevel];
  if (v1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E77B4208 + v1);
  }
}

- (void)setMinimumConfidence:(float)a3
{
  v5 = [(VNRequest *)self configuration];
  *&v4 = a3;
  [v5 setMinimumConfidence:v4];
}

- (float)minimumConfidence
{
  v2 = [(VNRequest *)self configuration];
  [v2 minimumConfidence];
  v4 = v3;

  return v4;
}

- (void)setUseTiling:(BOOL)a3
{
  v3 = a3;
  v4 = [(VNRequest *)self configuration];
  [v4 setUseTiling:v3];
}

- (BOOL)useTiling
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 useTiling];

  return v3;
}

- (void)setOutputPixelFormat:(OSType)outputPixelFormat
{
  v3 = *&outputPixelFormat;
  v4 = [(VNRequest *)self configuration];
  [v4 setOutputPixelFormat:v3];
}

- (OSType)outputPixelFormat
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 outputPixelFormat];

  return v3;
}

- (id)supportedOutputPixelFormatsAndReturnError:(id *)a3
{
  v8 = 0;
  v4 = [(VNRequest *)self applicableDetectorClassAndOptions:&v8 forRevision:[(VNRequest *)self resolvedRevision] error:a3];
  v5 = v8;
  if (v4)
  {
    v6 = [(objc_class *)v4 supportedOutputPixelFormatsForOptions:v5 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setQualityLevel:(VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel
{
  v4 = [(VNRequest *)self configuration];
  [v4 setQualityLevel:qualityLevel];
}

- (VNGeneratePersonSegmentationRequestQualityLevel)qualityLevel
{
  v2 = [(VNRequest *)self configuration];
  v3 = [v2 qualityLevel];

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v51[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [v8 imageBufferAndReturnError:a5];
  if (v9)
  {
    v45 = [v8 session];
    v43 = [v8 qosClass];
    v44 = [(VNGeneratePersonSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v45];
    v46 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [v44 setObject:v10 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v11 = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
    if (v11)
    {
      if (v11 == VNGeneratePersonSegmentationRequestQualityLevelBalanced)
      {
        if (a5)
        {
          v19 = 0;
          v22 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 == VNGeneratePersonSegmentationRequestQualityLevelFast)
        {
          v41 = v45;
          v12 = v9;
          v13 = v44;
          v38 = v12;
          if (self)
          {
            v39 = [v12 width];
            v37 = [v12 height];
            [v13 setObject:&unk_1F19C1540 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];
            v50 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
            v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
            v51[0] = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
            [v13 setObject:v15 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

            v48 = VNPersonSegmentationGeneratorFastOutputBlobNameMask;
            v49 = MEMORY[0x1E695E110];
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            [v13 setObject:v16 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];

            v17 = @"portrait";
            if (v39 > v37)
            {
              v17 = @"landscape";
            }

            v18 = v17;
            [v13 setObject:v18 forKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_NetworkConfiguration"];
            if (self->_previousObservations && v39 == self->_previousImageWidth && v37 == self->_previousImageHeight)
            {
              [v13 setObject:? forKeyedSubscript:?];
            }

            v19 = [(VNGeneratePersonSegmentationRequest *)self _internalPerformRevision:a3 session:v41 qosClass:v43 generatorOptions:v13 error:a5];
            if (v19)
            {
              objc_storeStrong(&self->_previousObservations, v19);
              self->_previousImageWidth = [v38 width];
              self->_previousImageHeight = [v38 height];
              v20 = v19;
            }
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_35;
        }

        if (a5)
        {
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")}];
          v35 = [VNError errorForInvalidOption:v34 named:@"qualityLevel"];
        }
      }

      v21 = 0;
      v19 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v40 = v45;
    v23 = v8;
    v42 = v44;
    if (self)
    {
      v24 = objc_alloc_init(VNGeneratePersonSegmentationRequest);
      [(VNGeneratePersonSegmentationRequest *)v24 applyConfigurationOfRequest:self];
      [(VNGeneratePersonSegmentationRequest *)v24 setQualityLevel:1];
      for (i = 0; i != 3; ++i)
      {
        [(VNGeneratePersonSegmentationRequest *)v24 setOutputPixelFormat:[VNGenerateSegmentationRequest performAccurateSegmentationInContext:options:error:]::pixelFormatTypes[i]];
        v26 = [v23 cachedObservationsAcceptedByRequest:v24];
        if (v26)
        {
          goto LABEL_28;
        }
      }

      [(VNGeneratePersonSegmentationRequest *)v24 setOutputPixelFormat:1278226534];
      if (v24)
      {
        v27 = [(VNRequest *)v24 configuration];
        [v27 setKeepRawOutputMask:1];
      }

      v26 = [v23 requestPerformerAndReturnError:a5];
      if (v26)
      {
        v51[0] = v24;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        v29 = [v26 performDependentRequests:v28 onBehalfOfRequest:self inContext:v23 error:a5];

        if (v29)
        {
          v30 = [(VNRequest *)v24 results];

          v26 = v30;
LABEL_28:
          [v42 setObject:&unk_1F19C1528 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];
          v49 = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
          v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
          v50 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          [v42 setObject:v32 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

          v47 = VNPersonSegmentationGeneratorLearnedMattingOutputBlobNameMask;
          v48 = MEMORY[0x1E695E110];
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          [v42 setObject:v33 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];

          [v42 setObject:v26 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
          v19 = [(VNGeneratePersonSegmentationRequest *)self _internalPerformRevision:a3 session:v40 qosClass:v43 generatorOptions:v42 error:a5];
          goto LABEL_33;
        }
      }

      v19 = 0;
LABEL_33:
    }

    else
    {
      v19 = 0;
    }

LABEL_35:
    if (v19)
    {
      [(VNRequest *)self setResults:v19];
      v21 = 1;
      goto LABEL_38;
    }

LABEL_37:
    v21 = 0;
    goto LABEL_38;
  }

  v21 = 0;
LABEL_39:

  return v21;
}

- (id)_internalPerformRevision:(void *)a3 session:(uint64_t)a4 qosClass:(void *)a5 generatorOptions:(uint64_t)a6 error:
{
  v11 = a3;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_KeepRawOutputMask"];
  [v13 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_MaskImageObservations"];
  v14 = [a1 applicableDetectorTypeForRevision:a2 error:a6];
  if (v14)
  {
    v15 = [v11 detectorOfType:v14 configuredWithOptions:v13 error:a6];
    if (v15)
    {
      [a1 regionOfInterest];
      v16 = [v15 processUsingQualityOfServiceClass:a4 options:v12 regionOfInterest:a1 warningRecorder:a6 error:0 progressHandler:?];
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
  if (v5 == [v4 qualityLevel] && (v6 = -[VNGeneratePersonSegmentationRequest outputPixelFormat](self, "outputPixelFormat"), v6 == objc_msgSend(v4, "outputPixelFormat")) && (-[VNGeneratePersonSegmentationRequest minimumConfidence](self, "minimumConfidence"), v8 = v7, objc_msgSend(v4, "minimumConfidence"), v8 == v9))
  {
    v12.receiver = self;
    v12.super_class = VNGeneratePersonSegmentationRequest;
    v10 = [(VNImageBasedRequest *)&v12 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v9.receiver = self;
  v9.super_class = VNGeneratePersonSegmentationRequest;
  v5 = [(VNRequest *)&v9 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[VNGeneratePersonSegmentationRequest useTiling](self, "useTiling")}];
  [v5 setObject:v7 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_UseTiling"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 3737841665)
  {
    goto LABEL_12;
  }

  if (a3 != 3737841664)
  {
    if (a3 != 1)
    {
      if (a4)
      {
        [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
        *a4 = v8 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v6 = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
    if (v6 == VNGeneratePersonSegmentationRequestQualityLevelFast)
    {
      goto LABEL_12;
    }

    if (v6 != VNGeneratePersonSegmentationRequestQualityLevelBalanced)
    {
      if (v6)
      {
        if (a4)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_12:
      v8 = @"VNE5RTSegmentationMultiGeneratorType";
      v9 = @"VNE5RTSegmentationMultiGeneratorType";
      goto LABEL_21;
    }

    v10 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForSemanticSegmentationRequest];
LABEL_17:
    v8 = v10;
    goto LABEL_21;
  }

  v7 = [(VNGeneratePersonSegmentationRequest *)self qualityLevel];
  switch(v7)
  {
    case VNGeneratePersonSegmentationRequestQualityLevelFast:
      goto LABEL_12;
    case VNGeneratePersonSegmentationRequestQualityLevelBalanced:
      v10 = +[VNGenerateSemanticSegmentationCompoundRequest detectorTypeForPersonInstanceRequest];
      goto LABEL_17;
    case VNGeneratePersonSegmentationRequestQualityLevelAccurate:
      goto LABEL_12;
  }

  if (a4)
  {
LABEL_19:
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Undefined quality level: %lu", -[VNGeneratePersonSegmentationRequest qualityLevel](self, "qualityLevel")];
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v11];
  }

LABEL_20:
  v8 = 0;
LABEL_21:

  return v8;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNGeneratePersonSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNGeneratePersonSegmentationRequest *)self setQualityLevel:[(VNGeneratePersonSegmentationRequest *)v5 qualityLevel]];
      [(VNGeneratePersonSegmentationRequest *)self setOutputPixelFormat:[(VNGeneratePersonSegmentationRequest *)v5 outputPixelFormat]];
      [(VNGeneratePersonSegmentationRequest *)self setUseTiling:[(VNGeneratePersonSegmentationRequest *)v5 useTiling]];
      [(VNGeneratePersonSegmentationRequest *)v5 minimumConfidence];
      [(VNGeneratePersonSegmentationRequest *)self setMinimumConfidence:?];
    }
  }
}

- (VNGeneratePersonSegmentationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

+ (id)descriptionForPrivateRevision:(unint64_t)a3
{
  if (a3 == 3737841664)
  {
    v5 = @"VNGeneratePersonSegmentationRequestPrivateRevisionInstanceBased4People";
  }

  else if (a3 == 3737841665)
  {
    v5 = @"VNGeneratePersonSegmentationRequestPrivateRevisionSemanticV7";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VNGeneratePersonSegmentationRequest;
    v5 = objc_msgSendSuper2(&v7, sel_descriptionForPrivateRevision_);
  }

  return v5;
}

+ (id)privateRevisionsSet
{
  if (+[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::onceToken != -1)
  {
    dispatch_once(&+[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::onceToken, &__block_literal_global_18614);
  }

  v3 = +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions;

  return v3;
}

void __71__VNGeneratePersonSegmentationRequest_Revisioning__privateRevisionsSet__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3737841664];
  [v2 addIndex:3737841665];
  v0 = [v2 copy];
  v1 = +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions;
  +[VNGeneratePersonSegmentationRequest(Revisioning) privateRevisionsSet]::privateRevisions = v0;
}

- (uint64_t)keepRawOutputMask
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 configuration];
  v2 = [v1 keepRawOutputMask];

  return v2;
}

@end