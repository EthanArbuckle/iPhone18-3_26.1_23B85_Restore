@interface VNTrackHomographicImageRegistrationRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (VNTrackHomographicImageRegistrationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNTrackHomographicImageRegistrationRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [(VNTrackHomographicImageRegistrationRequest *)self applicableDetectorTypeForRevision:revision error:error];

  if (v9)
  {
    v10 = [contextCopy imageBufferAndReturnError:error];
    if (!v10)
    {
      v29 = 0;
LABEL_19:

      goto LABEL_20;
    }

    [(VNImageBasedRequest *)self regionOfInterest];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(VNImageSignature *)[VNImageRegistrationSignature alloc] initWithImageBuffer:v10 regionOfInterest:error error:v11, v13, v15, v17];
    if (!v19)
    {
      v29 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v20 = &OBJC_IVAR___VNImageAnalyzerCompoundRequestGroupingConfigurations__detectorModel;
    v21 = &OBJC_IVAR___VNImageAnalyzerCompoundRequestGroupingConfigurations__detectorModel;
    if (self->_previousRequestRevision != revision)
    {
      self->_previousRequestRevision = 0;
      v22 = *(MEMORY[0x1E695F058] + 16);
      self->_previousRegionOfInterest.origin = *MEMORY[0x1E695F058];
      self->_previousRegionOfInterest.size = v22;
      previousImageBuffer = self->_previousImageBuffer;
      self->_previousImageBuffer = 0;

      previousImageRegistrationSignature = self->_previousImageRegistrationSignature;
      self->_previousImageRegistrationSignature = 0;
    }

    if (self->_previousImageBuffer)
    {
      session = [contextCopy session];
      v33 = 0;
      v25 = [(VNRequest *)self applicableDetectorAndOptions:&v33 forRevision:revision loadedInSession:session error:error];
      v26 = v33;
      v27 = v26;
      if (!v25)
      {

        v28 = 0;
LABEL_16:
        v29 = 0;
        goto LABEL_17;
      }

      [v26 setObject:self->_previousImageBuffer forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageBuffer"];
      [v27 setObject:self->_previousImageRegistrationSignature forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature"];
      [v27 setObject:v10 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageBuffer"];
      [v27 setObject:v19 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature"];
      v28 = [v25 processUsingQualityOfServiceClass:objc_msgSend(contextCopy options:"qosClass") regionOfInterest:v27 warningRecorder:self error:error progressHandler:{0, v12, v14, v16, v18}];

      v21 = &OBJC_IVAR___VNImageAnalyzerCompoundRequestGroupingConfigurations__detectorModel;
      v20 = &OBJC_IVAR___VNImageAnalyzerCompoundRequestGroupingConfigurations__detectorModel;
      if (!v28)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    self->_previousRequestRevision = revision;
    v30 = (self + v20[339]);
    *v30 = v12;
    v30[1] = v14;
    v30[2] = v16;
    v30[3] = v18;
    objc_storeStrong(&self->_previousImageBuffer, v10);
    objc_storeStrong((&self->super.super.super.super.isa + v21[341]), v19);
    [(VNRequest *)self setResults:v28];
    v29 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v29 = 0;
LABEL_20:

  return v29;
}

- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error
{
  if (revision == 1)
  {
    v4 = @"VNHomographicImageRegistrationDetectorType";
    v5 = @"VNHomographicImageRegistrationDetectorType";
  }

  else if (error)
  {
    [VNError errorForUnsupportedRevision:"errorForUnsupportedRevision:ofRequest:" ofRequest:?];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VNTrackHomographicImageRegistrationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

@end