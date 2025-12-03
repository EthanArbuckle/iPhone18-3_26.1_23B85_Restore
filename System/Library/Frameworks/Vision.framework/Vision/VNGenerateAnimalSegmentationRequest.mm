@interface VNGenerateAnimalSegmentationRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session;
- (int64_t)qualityLevel;
- (unsigned)outputPixelFormat;
- (void)applyConfigurationOfRequest:(id)request;
- (void)setOutputPixelFormat:(unsigned int)format;
- (void)setQualityLevel:(int64_t)level;
@end

@implementation VNGenerateAnimalSegmentationRequest

- (void)setOutputPixelFormat:(unsigned int)format
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    configuration[36] = format;
  }
}

- (unsigned)outputPixelFormat
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v3 = configuration[36];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQualityLevel:(int64_t)level
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    configuration[19] = level;
  }
}

- (int64_t)qualityLevel
{
  configuration = [(VNRequest *)self configuration];
  if (configuration)
  {
    v3 = configuration[19];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v51 = [contextCopy imageBufferAndReturnError:error];
  if (v51)
  {
    session = [contextCopy session];
    qosClass = [contextCopy qosClass];
    v52 = [(VNGenerateAnimalSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:revision session:session];
    v55 = v51;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    [v52 setObject:v10 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateAnimalSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
    [v52 setObject:v11 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

    qualityLevel = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
    if (qualityLevel)
    {
      if (qualityLevel == 1)
      {
        if (error)
        {
          v13 = 0;
          v14 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
LABEL_35:
          v15 = 0;
          goto LABEL_36;
        }
      }

      else if (error)
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
        v27 = [VNError errorForInvalidOption:v26 named:@"qualityLevel"];
      }

      v15 = 0;
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v45 = session;
    v16 = contextCopy;
    v46 = v52;
    v44 = v16;
    if (!self)
    {
      v13 = 0;
      goto LABEL_33;
    }

    v49 = objc_alloc_init(VNGenerateAnimalSegmentationRequest);
    [(VNGenerateAnimalSegmentationRequest *)v49 applyConfigurationOfRequest:self];
    [(VNGenerateAnimalSegmentationRequest *)v49 setQualityLevel:1];
    [(VNGenerateAnimalSegmentationRequest *)v49 setOutputPixelFormat:1278226534];
    v17 = [v16 cachedObservationsAcceptedByRequest:v49];
    if (!v17)
    {
      [(VNGenerateAnimalSegmentationRequest *)v49 setOutputPixelFormat:1278226534];
      v28 = [v16 requestPerformerAndReturnError:error];
      if (!v28 || (v56[0] = v49, [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "performDependentRequests:onBehalfOfRequest:inContext:error:", v29, self, v16, error), v29, (v30 & 1) == 0))
      {
        v48 = 0;
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      results = [(VNRequest *)v49 results];

      v17 = results;
    }

    v48 = v17;
    if (![v17 count])
    {
      v13 = MEMORY[0x1E695E0F0];
LABEL_32:

LABEL_33:
      if (!v13)
      {
        goto LABEL_35;
      }

      [(VNRequest *)self setResults:v13];
      v15 = 1;
      goto LABEL_36;
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __113__VNGenerateAnimalSegmentationRequest__internalPerformAccurateSession_inContext_qosClass_generatorOptions_error___block_invoke;
    v53[3] = &unk_1E77B5E40;
    v19 = v18;
    v54 = v19;
    v49 = v19;
    [v48 enumerateObjectsUsingBlock:v53];
    [v46 setObject:v19 forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_LowResImages"];
    [v46 setObject:&unk_1F19C1AF8 forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_InputPixelFormat"];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateAnimalSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
    [v46 setObject:v20 forKeyedSubscript:@"VNGuidedUpsamplingGeneratorOption_OutputPixelFormat"];

    v21 = v45;
    v22 = @"VNGuidedUpsamplingGeneratorType";
    v23 = v46;
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v23];
    [v24 removeObjectForKey:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];
    v25 = [v21 detectorOfType:@"VNGuidedUpsamplingGeneratorType" configuredWithOptions:v24 error:error];
    if (v25)
    {
      [(VNImageBasedRequest *)self regionOfInterest];
      v47 = [v25 processUsingQualityOfServiceClass:qosClass options:v23 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      v32 = [v48 count];
      if ([v47 count] == v32)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v32)
        {
          for (i = 0; i != v32; ++i)
          {
            v34 = [(VNGenerateAnimalSegmentationRequest *)v49 objectAtIndexedSubscript:i];
            v35 = [VNPixelBufferObservation alloc];
            originatingRequestSpecifier = [v34 originatingRequestSpecifier];
            featureName = [v34 featureName];
            v38 = [v47 objectAtIndexedSubscript:i];
            v39 = -[VNPixelBufferObservation initWithOriginatingRequestSpecifier:featureName:CVPixelBuffer:](v35, "initWithOriginatingRequestSpecifier:featureName:CVPixelBuffer:", originatingRequestSpecifier, featureName, [v38 pixelBuffer]);

            v40 = [v48 objectAtIndexedSubscript:i];
            vn_cloneObject = [v40 vn_cloneObject];

            [(VNDetectedObjectObservation *)vn_cloneObject setInstanceSegmentationMask:v39];
            [v13 addObject:vn_cloneObject];
          }
        }

        goto LABEL_30;
      }

      if (error)
      {
        v42 = [VNError errorForInternalErrorWithLocalizedDescription:@"Accurate observations count mismatch"];
      }
    }

    v13 = 0;
LABEL_30:

    v28 = v54;
    goto LABEL_31;
  }

  v15 = 0;
LABEL_37:

  return v15;
}

void __113__VNGenerateAnimalSegmentationRequest__internalPerformAccurateSession_inContext_qosClass_generatorOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 instanceSegmentationMask];
  [v2 addObject:?];
}

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  qualityLevel = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
  if (configurationCopy)
  {
    v6 = configurationCopy[19];
  }

  else
  {
    v6 = 0;
  }

  if (qualityLevel == v6 && ((v7 = [(VNGenerateAnimalSegmentationRequest *)self outputPixelFormat], !configurationCopy) ? (v8 = 0) : (v8 = *(configurationCopy + 36)), v7 == v8))
  {
    v11.receiver = self;
    v11.super_class = VNGenerateAnimalSegmentationRequest;
    v9 = [(VNImageBasedRequest *)&v11 willAcceptCachedResultsFromRequestWithConfiguration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)revision session:(id)session
{
  v8.receiver = self;
  v8.super_class = VNGenerateAnimalSegmentationRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:revision session:session];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    qualityLevel = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
    if (qualityLevel == 1)
    {
      v7 = @"VNE5RTSegmentationMultiGeneratorType";
      goto LABEL_8;
    }

    if (!qualityLevel)
    {
      v7 = @"VNGuidedUpsamplingGeneratorType";
LABEL_8:
      v8 = v7;
      goto LABEL_12;
    }

    if (error)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
      *error = [VNError errorForInvalidOption:v9 named:@"qualityLevel"];
    }
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)applyConfigurationOfRequest:(id)request
{
  requestCopy = request;
  if (self != requestCopy)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateAnimalSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:requestCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = requestCopy;
      [(VNGenerateAnimalSegmentationRequest *)self setQualityLevel:[(VNGenerateAnimalSegmentationRequest *)v5 qualityLevel]];
      [(VNGenerateAnimalSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateAnimalSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

@end