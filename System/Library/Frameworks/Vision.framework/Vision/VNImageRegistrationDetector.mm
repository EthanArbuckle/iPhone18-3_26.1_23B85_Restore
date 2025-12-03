@interface VNImageRegistrationDetector
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNImageRegistrationDetector

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v11 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v11)
  {
    v12 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNImageRegistrationDetectorProcessOption_ReferenceImageRegistrationSignature" inOptions:optionsCopy error:error];
    if (v12)
    {
      v13 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNImageRegistrationDetectorProcessOption_FloatingImageRegistrationSignature" inOptions:optionsCopy error:error];
      if (v13 && (v20 = 0.0, [VNValidationUtilities getPercentageValue:&v20 forKey:@"VNImageRegistrationDetectorProcessOption_MinimumOverlapPercentage" inOptions:optionsCopy withDefaultValue:error error:0.25]))
      {
        v14 = [(VNObservation *)[VNImageTranslationAlignmentObservation alloc] initWithOriginatingRequestSpecifier:v11];
        [(VNImageAlignmentObservation *)v14 setReferenceImageSignature:v12];
        [(VNImageAlignmentObservation *)v14 setFloatingImageSignature:v13];
        HIDWORD(v15) = HIDWORD(v20);
        *&v15 = v20;
        if ([VNImageRegistration computeTransform:v19 forRegisteringImageSignature:v12 withSignature:v13 minimumOverlap:error error:v15])
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