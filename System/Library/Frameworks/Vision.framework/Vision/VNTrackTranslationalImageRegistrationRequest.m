@interface VNTrackTranslationalImageRegistrationRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (VNTrackTranslationalImageRegistrationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
@end

@implementation VNTrackTranslationalImageRegistrationRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = v8;
  if (a3 == 1)
  {
    v10 = [v8 imageBufferAndReturnError:a5];
    if (!v10)
    {
      v18 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = [VNImageRegistrationSignature alloc];
    [(VNImageBasedRequest *)self regionOfInterest];
    v12 = [(VNImageSignature *)v11 initWithImageBuffer:v10 regionOfInterest:a5 error:?];
    if (v12)
    {
      if (self->_previousRequestRevision != 1)
      {
        self->_previousRequestRevision = 0;
        previousImageRegistrationSignature = self->_previousImageRegistrationSignature;
        self->_previousImageRegistrationSignature = 0;
      }

      v14 = self->_previousImageRegistrationSignature;
      if (!v14)
      {
        v17 = 0;
        goto LABEL_15;
      }

      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      if ([VNImageRegistration computeTransform:&v22 forRegisteringImageSignature:v14 withSignature:v12 minimumOverlap:a5 error:COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.25))])
      {
        v15 = [VNImageTranslationAlignmentObservation alloc];
        v16 = [(VNRequest *)self specifier];
        v17 = [(VNObservation *)v15 initWithOriginatingRequestSpecifier:v16];

        v21[0] = v22;
        v21[1] = v23;
        v21[2] = v24;
        [(VNImageTranslationAlignmentObservation *)v17 setAlignmentTransform:v21];
LABEL_15:
        v18 = 1;
        self->_previousRequestRevision = 1;
        objc_storeStrong(&self->_previousImageRegistrationSignature, v12);
        v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v17, 0}];
        [(VNRequest *)self setResults:v19];

        goto LABEL_16;
      }
    }

    v18 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (a5)
  {
    [VNError errorForUnsupportedRevision:a3 ofRequest:self];
    *a5 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_18:

  return v18;
}

- (id)supportedComputeStageDevicesAndReturnError:(id *)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"VNComputeStageMain";
  v3 = +[VNComputeDeviceUtilities allCPUComputeDevices];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (VNTrackTranslationalImageRegistrationRequest)initWithCompletionHandler:(VNRequestCompletionHandler)completionHandler
{
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 16);
  return [(VNStatefulRequest *)self initWithFrameAnalysisSpacing:&v4 completionHandler:completionHandler];
}

@end