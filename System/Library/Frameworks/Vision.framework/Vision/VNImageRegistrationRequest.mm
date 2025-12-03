@interface VNImageRegistrationRequest
- (BOOL)getReferenceImageBuffer:(id *)buffer registrationSignature:(id *)signature forRequestPerformingContext:(id)context error:(id *)error;
- (id)cachedFloatingImageBufferReturningError:(id *)error;
- (id)cachedFloatingImageRegistrationSignatureReturningError:(id *)error;
@end

@implementation VNImageRegistrationRequest

- (BOOL)getReferenceImageBuffer:(id *)buffer registrationSignature:(id *)signature forRequestPerformingContext:(id)context error:(id *)error
{
  contextCopy = context;
  v11 = [contextCopy previousSequencedObservationsAcceptedByRequest:self];
  if (!v11)
  {
    v13 = [contextCopy imageBufferAndReturnError:0];
    firstObject = v13;
    if (v13)
    {
      if (buffer)
      {
        v14 = v13;
        *buffer = firstObject;
      }

      if (signature)
      {
        v15 = [VNImageRegistrationSignature alloc];
        [(VNImageBasedRequest *)self regionOfInterest];
        v16 = [(VNImageSignature *)v15 initWithImageBuffer:firstObject regionOfInterest:error error:?];
        *signature = v16;
        if (!v16)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (buffer && ([(VNImageRegistrationRequest *)self cachedFloatingImageBufferReturningError:error], v18 = objc_claimAutoreleasedReturnValue(), (*buffer = v18) == 0) || signature && ([(VNImageRegistrationRequest *)self cachedFloatingImageRegistrationSignatureReturningError:error], v19 = objc_claimAutoreleasedReturnValue(), (*signature = v19) == 0))
      {
        firstObject = 0;
LABEL_24:
        v17 = 0;
        goto LABEL_20;
      }

      firstObject = 0;
    }

LABEL_19:
    v17 = 1;
LABEL_20:

    goto LABEL_21;
  }

  if ([VNValidationUtilities validateArray:v11 named:@"previous request results" hasElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:error])
  {
    if (buffer)
    {
      *buffer = 0;
    }

    if (!signature)
    {
      v17 = 1;
      goto LABEL_21;
    }

    firstObject = [v11 firstObject];
    *signature = [firstObject floatingImageSignature];
    goto LABEL_19;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (id)cachedFloatingImageRegistrationSignatureReturningError:(id *)error
{
  cachedFloatingImageSignature = self->_cachedFloatingImageSignature;
  if (!cachedFloatingImageSignature)
  {
    v6 = [(VNImageRegistrationRequest *)self cachedFloatingImageBufferReturningError:?];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    v8 = [VNImageRegistrationSignature alloc];
    [(VNImageBasedRequest *)self regionOfInterest];
    v9 = [(VNImageSignature *)v8 initWithImageBuffer:v7 regionOfInterest:error error:?];
    v10 = self->_cachedFloatingImageSignature;
    self->_cachedFloatingImageSignature = v9;

    cachedFloatingImageSignature = self->_cachedFloatingImageSignature;
  }

  v6 = cachedFloatingImageSignature;
LABEL_5:

  return v6;
}

- (id)cachedFloatingImageBufferReturningError:(id *)error
{
  cachedFloatingImageBuffer = self->_cachedFloatingImageBuffer;
  if (!cachedFloatingImageBuffer)
  {
    v5 = [(VNTargetedImageRequest *)self requiredTargetedImageBufferReturningError:error];
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = self->_cachedFloatingImageBuffer;
    self->_cachedFloatingImageBuffer = v5;

    cachedFloatingImageBuffer = self->_cachedFloatingImageBuffer;
  }

  v5 = cachedFloatingImageBuffer;
LABEL_5:

  return v5;
}

@end