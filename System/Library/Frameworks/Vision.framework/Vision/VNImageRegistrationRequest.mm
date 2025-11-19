@interface VNImageRegistrationRequest
- (BOOL)getReferenceImageBuffer:(id *)a3 registrationSignature:(id *)a4 forRequestPerformingContext:(id)a5 error:(id *)a6;
- (id)cachedFloatingImageBufferReturningError:(id *)a3;
- (id)cachedFloatingImageRegistrationSignatureReturningError:(id *)a3;
@end

@implementation VNImageRegistrationRequest

- (BOOL)getReferenceImageBuffer:(id *)a3 registrationSignature:(id *)a4 forRequestPerformingContext:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [v10 previousSequencedObservationsAcceptedByRequest:self];
  if (!v11)
  {
    v13 = [v10 imageBufferAndReturnError:0];
    v12 = v13;
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v12;
      }

      if (a4)
      {
        v15 = [VNImageRegistrationSignature alloc];
        [(VNImageBasedRequest *)self regionOfInterest];
        v16 = [(VNImageSignature *)v15 initWithImageBuffer:v12 regionOfInterest:a6 error:?];
        *a4 = v16;
        if (!v16)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (a3 && ([(VNImageRegistrationRequest *)self cachedFloatingImageBufferReturningError:a6], v18 = objc_claimAutoreleasedReturnValue(), (*a3 = v18) == 0) || a4 && ([(VNImageRegistrationRequest *)self cachedFloatingImageRegistrationSignatureReturningError:a6], v19 = objc_claimAutoreleasedReturnValue(), (*a4 = v19) == 0))
      {
        v12 = 0;
LABEL_24:
        v17 = 0;
        goto LABEL_20;
      }

      v12 = 0;
    }

LABEL_19:
    v17 = 1;
LABEL_20:

    goto LABEL_21;
  }

  if ([VNValidationUtilities validateArray:v11 named:@"previous request results" hasElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:a6])
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (!a4)
    {
      v17 = 1;
      goto LABEL_21;
    }

    v12 = [v11 firstObject];
    *a4 = [v12 floatingImageSignature];
    goto LABEL_19;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (id)cachedFloatingImageRegistrationSignatureReturningError:(id *)a3
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
    v9 = [(VNImageSignature *)v8 initWithImageBuffer:v7 regionOfInterest:a3 error:?];
    v10 = self->_cachedFloatingImageSignature;
    self->_cachedFloatingImageSignature = v9;

    cachedFloatingImageSignature = self->_cachedFloatingImageSignature;
  }

  v6 = cachedFloatingImageSignature;
LABEL_5:

  return v6;
}

- (id)cachedFloatingImageBufferReturningError:(id *)a3
{
  cachedFloatingImageBuffer = self->_cachedFloatingImageBuffer;
  if (!cachedFloatingImageBuffer)
  {
    v5 = [(VNTargetedImageRequest *)self requiredTargetedImageBufferReturningError:a3];
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