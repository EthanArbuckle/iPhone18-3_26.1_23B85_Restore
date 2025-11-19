@interface VNTranslationalImageRegistrationRequest
- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5;
- (id)supportedComputeStageDevicesAndReturnError:(id *)a3;
@end

@implementation VNTranslationalImageRegistrationRequest

- (BOOL)internalPerformRevision:(unint64_t)a3 inContext:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(VNImageRegistrationRequest *)self cachedFloatingImageRegistrationSignatureReturningError:a5];
  if (v9)
  {
    v20 = 0;
    v10 = [(VNImageRegistrationRequest *)self getReferenceImageBuffer:0 registrationSignature:&v20 forRequestPerformingContext:v8 error:a5];
    v11 = v20;
    if (!v10)
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v12 = [(VNObservation *)[VNImageTranslationAlignmentObservation alloc] initWithRequestRevision:a3];
    [(VNImageAlignmentObservation *)v12 setReferenceImageSignature:v11];
    [(VNImageAlignmentObservation *)v12 setFloatingImageSignature:v9];
    if (v11)
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      if (![VNImageRegistration computeTransform:&v17 forRegisteringImageSignature:v11 withSignature:v9 minimumOverlap:a5 error:COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.25))])
      {
        v13 = 0;
        goto LABEL_10;
      }

      v16[0] = v17;
      v16[1] = v18;
      v16[2] = v19;
      [(VNImageTranslationAlignmentObservation *)v12 setAlignmentTransform:v16];
    }

    v21[0] = v12;
    v13 = 1;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(VNRequest *)self setResults:v14];

LABEL_10:
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

  return v13;
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

@end