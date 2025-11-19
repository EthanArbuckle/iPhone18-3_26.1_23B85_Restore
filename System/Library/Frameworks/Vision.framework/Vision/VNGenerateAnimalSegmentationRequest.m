@interface VNGenerateAnimalSegmentationRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3;
- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4;
- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4;
- (int64_t)qualityLevel;
- (unsigned)outputPixelFormat;
- (void)applyConfigurationOfRequest:(id)a3;
- (void)setOutputPixelFormat:(unsigned int)a3;
- (void)setQualityLevel:(int64_t)a3;
@end

@implementation VNGenerateAnimalSegmentationRequest

- (void)setOutputPixelFormat:(unsigned int)a3
{
  v4 = [(VNRequest *)self configuration];
  if (v4)
  {
    v4[36] = a3;
  }
}

- (unsigned)outputPixelFormat
{
  v2 = [(VNRequest *)self configuration];
  if (v2)
  {
    v3 = v2[36];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQualityLevel:(int64_t)a3
{
  v4 = [(VNRequest *)self configuration];
  if (v4)
  {
    v4[19] = a3;
  }
}

- (int64_t)qualityLevel
{
  v2 = [(VNRequest *)self configuration];
  if (v2)
  {
    v3 = v2[19];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v56[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v51 = [v8 imageBufferAndReturnError:a5];
  if (v51)
  {
    v50 = [v8 session];
    v9 = [v8 qosClass];
    v52 = [(VNGenerateAnimalSegmentationRequest *)self newDefaultDetectorOptionsForRequestRevision:a3 session:v50];
    v55 = v51;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    [v52 setObject:v10 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VNGenerateAnimalSegmentationRequest outputPixelFormat](self, "outputPixelFormat")}];
    [v52 setObject:v11 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_OutputPixelFormat"];

    v12 = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
    if (v12)
    {
      if (v12 == 1)
      {
        if (a5)
        {
          v13 = 0;
          v14 = [VNError errorForInternalErrorWithLocalizedDescription:@"Balanced quality level is handled by compound request"];
LABEL_35:
          v15 = 0;
          goto LABEL_36;
        }
      }

      else if (a5)
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
        v27 = [VNError errorForInvalidOption:v26 named:@"qualityLevel"];
      }

      v15 = 0;
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v45 = v50;
    v16 = v8;
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
      v28 = [v16 requestPerformerAndReturnError:a5];
      if (!v28 || (v56[0] = v49, [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "performDependentRequests:onBehalfOfRequest:inContext:error:", v29, self, v16, a5), v29, (v30 & 1) == 0))
      {
        v48 = 0;
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v31 = [(VNRequest *)v49 results];

      v17 = v31;
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
    v25 = [v21 detectorOfType:@"VNGuidedUpsamplingGeneratorType" configuredWithOptions:v24 error:a5];
    if (v25)
    {
      [(VNImageBasedRequest *)self regionOfInterest];
      v47 = [v25 processUsingQualityOfServiceClass:v9 options:v23 regionOfInterest:self warningRecorder:a5 error:0 progressHandler:?];
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
            v36 = [v34 originatingRequestSpecifier];
            v37 = [v34 featureName];
            v38 = [v47 objectAtIndexedSubscript:i];
            v39 = -[VNPixelBufferObservation initWithOriginatingRequestSpecifier:featureName:CVPixelBuffer:](v35, "initWithOriginatingRequestSpecifier:featureName:CVPixelBuffer:", v36, v37, [v38 pixelBuffer]);

            v40 = [v48 objectAtIndexedSubscript:i];
            v41 = [v40 vn_cloneObject];

            [(VNDetectedObjectObservation *)v41 setInstanceSegmentationMask:v39];
            [v13 addObject:v41];
          }
        }

        goto LABEL_30;
      }

      if (a5)
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

- (BOOL)willAcceptCachedResultsFromRequestWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
  if (v4)
  {
    v6 = v4[19];
  }

  else
  {
    v6 = 0;
  }

  if (v5 == v6 && ((v7 = [(VNGenerateAnimalSegmentationRequest *)self outputPixelFormat], !v4) ? (v8 = 0) : (v8 = *(v4 + 36)), v7 == v8))
  {
    v11.receiver = self;
    v11.super_class = VNGenerateAnimalSegmentationRequest;
    v9 = [(VNImageBasedRequest *)&v11 willAcceptCachedResultsFromRequestWithConfiguration:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newDefaultDetectorOptionsForRequestRevision:(unint64_t)a3 session:(id)a4
{
  v8.receiver = self;
  v8.super_class = VNGenerateAnimalSegmentationRequest;
  v5 = [(VNRequest *)&v8 newDefaultDetectorOptionsForRequestRevision:a3 session:a4];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
  [v5 setObject:v6 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_QualityLevel"];

  return v5;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v6 = [(VNGenerateAnimalSegmentationRequest *)self qualityLevel];
    if (v6 == 1)
    {
      v7 = @"VNE5RTSegmentationMultiGeneratorType";
      goto LABEL_8;
    }

    if (!v6)
    {
      v7 = @"VNGuidedUpsamplingGeneratorType";
LABEL_8:
      v8 = v7;
      goto LABEL_12;
    }

    if (a4)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNGenerateAnimalSegmentationRequest qualityLevel](self, "qualityLevel")}];
      *a4 = [VNError errorForInvalidOption:v9 named:@"qualityLevel"];
    }
  }

  else if (a4)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *a4 = v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (void)applyConfigurationOfRequest:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v6.receiver = self;
    v6.super_class = VNGenerateAnimalSegmentationRequest;
    [(VNImageBasedRequest *)&v6 applyConfigurationOfRequest:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNGenerateAnimalSegmentationRequest *)self setQualityLevel:[(VNGenerateAnimalSegmentationRequest *)v5 qualityLevel]];
      [(VNGenerateAnimalSegmentationRequest *)self setOutputPixelFormat:[(VNGenerateAnimalSegmentationRequest *)v5 outputPixelFormat]];
    }
  }
}

@end