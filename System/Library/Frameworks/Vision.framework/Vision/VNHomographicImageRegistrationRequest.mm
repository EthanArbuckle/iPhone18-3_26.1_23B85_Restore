@interface VNHomographicImageRegistrationRequest
- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error;
- (id)applicableDetectorTypeForRevision:(unint64_t)revision error:(id *)error;
@end

@implementation VNHomographicImageRegistrationRequest

- (BOOL)internalPerformRevision:(unint64_t)revision inContext:(id)context error:(id *)error
{
  contextCopy = context;
  session = [contextCopy session];
  v24 = 0;
  v10 = [(VNRequest *)self applicableDetectorAndOptions:&v24 forRevision:revision loadedInSession:session error:error];
  v11 = v24;
  if (v10)
  {
    v12 = [(VNImageRegistrationRequest *)self cachedFloatingImageBufferReturningError:error];
    if (v12)
    {
      [v11 setObject:v12 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageBuffer"];
      v22 = 0;
      v23 = 0;
      v13 = [(VNImageRegistrationRequest *)self getReferenceImageBuffer:&v23 registrationSignature:&v22 forRequestPerformingContext:contextCopy error:error];
      v14 = v23;
      v15 = v22;
      if (v13)
      {
        [v11 setObject:v14 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageBuffer"];
        [v11 setObject:v15 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature"];
        v16 = [(VNImageRegistrationRequest *)self cachedFloatingImageRegistrationSignatureReturningError:error];
        if (v16)
        {
          v21 = v16;
          [v11 setObject:v16 forKeyedSubscript:@"VNHomographicImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature"];
          qosClass = [contextCopy qosClass];
          [(VNImageBasedRequest *)self regionOfInterest];
          v18 = [v10 processUsingQualityOfServiceClass:qosClass options:v11 regionOfInterest:self warningRecorder:error error:0 progressHandler:?];
          v19 = v18 != 0;
          if (v18)
          {
            [(VNRequest *)self setResults:v18];
          }

          v16 = v21;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
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

@end