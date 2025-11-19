@interface VNImageRegistrationDetector
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNImageRegistrationDetector

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [VNValidationUtilities originatingRequestSpecifierInOptions:v10 error:a8];
  if (v11)
  {
    v12 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature" inOptions:v10 error:a8];
    if (v12)
    {
      v13 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature" inOptions:v10 error:a8];
      if (v13 && (v20 = 0.0, [VNValidationUtilities getPercentageValue:&v20 forKey:@"VNImageRegistrationDetectorProcessOption_MinimumOverlapPercentage" inOptions:v10 withDefaultValue:a8 error:0.25]))
      {
        v14 = [(VNObservation *)[VNImageTranslationAlignmentObservation alloc] initWithOriginatingRequestSpecifier:v11];
        [(VNImageAlignmentObservation *)v14 setReferenceImageSignature:v12];
        [(VNImageAlignmentObservation *)v14 setFloatingImageSignature:v13];
        HIDWORD(v15) = HIDWORD(v20);
        *&v15 = v20;
        if ([VNImageRegistration computeTransform:v19 forRegisteringImageSignature:v12 withSignature:v13 minimumOverlap:a8 error:v15])
        {
          v18[0] = v19[0];
          v18[1] = v19[1];
          v18[2] = v19[2];
          [(VNImageTranslationAlignmentObservation *)v14 setAlignmentTransform:v18];
          v21[0] = v14;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
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

@end