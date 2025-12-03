@interface VNImageprintGenerator
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNImageprintGenerator

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
  v24[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v23 = 0;
  if ([VNValidationUtilities getNSUIntegerValue:&v23 forKey:@"VNImageprintGeneratorProcessOption_Timestamp" inOptions:optionsCopy error:error])
  {
    v12 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (v12)
    {
      v13 = [(VNObservation *)[VNImageprintObservation alloc] initWithOriginatingRequestSpecifier:v12];
      v14 = [VNMPImageData alloc];
      uuid = [(VNObservation *)v13 uuid];
      uUIDString = [uuid UUIDString];
      v17 = [(VNMPImageData *)v14 initWithCVPixelBufferImage:buffer externalImageId:uUIDString andExifTimestampValue:v23 error:error];

      if (v17)
      {
        v18 = objc_alloc_init(VNMPContext);
        v19 = [[VNMPImageDescriptor alloc] initWithImageData:v17 andCustomQualityScore:v18 context:error error:0.0];
        if (v19)
        {
          v20 = [[VNImageprint alloc] initWithImageDescriptor:v19 type:0 originatingRequestSpecifier:v12];
          [(VNImageprintObservation *)v13 setImageprint:v20];
          v24[0] = v13;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v14 = v13;
  if (v13 && ((v15 = [v13 width], v15 >= 2) ? (v16 = v15 & 0xFFFFFFFFFFFFFFFELL) : (v16 = 2), (v17 = objc_msgSend(v14, "height"), v17 >= 2) ? (v18 = v17 & 0xFFFFFFFFFFFFFFFELL) : (v18 = 2), v23[0] = MEMORY[0x1E69E9820], v23[1] = 3221225472, v23[2] = __119__VNImageprintGenerator_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke, v23[3] = &unk_1E77B6810, v23[4] = self, +[VNValidationUtilities validateNonZeroImageWidth:height:componentNameProvidingBlock:error:](VNValidationUtilities, "validateNonZeroImageWidth:height:componentNameProvidingBlock:error:", v16, v18, v23, error)))
  {
    if (v16 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    if (v19 >= 0x191)
    {
      if (v16 <= v18)
      {
        v18 = vcvtms_u32_f32((v16 * 400.0) / v18);
        v16 = 400;
      }

      else
      {
        v16 = vcvtms_u32_f32((v18 * 400.0) / v16);
        v18 = 400;
      }
    }

    v21 = [v14 bufferWithWidth:v18 height:v16 format:32 options:optionsCopy error:error];
    *buffer = v21;
    v20 = v21 != 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

NSString *__119__VNImageprintGenerator_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end