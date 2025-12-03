@interface VNAnimalBodyPoseDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNAnimalBodyPoseDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNAnimalBodyPoseDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNAnimalBodyPoseDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNAnimalBodyPoseDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNAnimalBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __65__VNAnimalBodyPoseDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNAnimalBodyPoseDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorInitOption_ModelBackingStore"];
  v3 = [v2 copy];
  v4 = +[VNAnimalBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNAnimalBodyPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v23 = [(VCPPetsPoseImageRequest *)self->_animalBodyPoseDetector processImage:buffer withOptions:0 error:error];
  if (v23)
  {
    v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (v13)
    {
      errorCopy = error;
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = v23;
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v16)
      {
        v17 = *v25;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [(VNRecognizedPointsObservation *)[VNAnimalBodyPoseObservation alloc] initWithOriginatingRequestSpecifier:v13 keypointReturningObservation:*(*(&v24 + 1) + 8 * i)];
            if (!v19)
            {
              if (errorCopy)
              {
                *errorCopy = [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create observation"];
              }

              v20 = 0;
              goto LABEL_16;
            }

            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:optionsCopy toObservation:v19];
            [v14 addObject:v19];
          }

          v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v20 = v14;
LABEL_16:
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v18 = v17;
  if (v17)
  {
    width = [v17 width];
    height = [v18 height];
    v30.origin.x = x * width;
    v30.size.width = width * width;
    v30.origin.y = y * height;
    v30.size.height = height * height;
    v31 = CGRectIntegral(v30);
    v21 = v31.origin.x;
    v22 = v31.origin.y;
    v23 = v31.size.width;
    v24 = v31.size.height;
    [VNError VNAssert:self->_animalBodyPoseDetector != 0 log:@"VCP Animal Pose Detector must be initialized"];
    v29 = 0;
    v25 = [v18 createCroppedBufferWithMaxSideLengthOf:580 cropRect:1111970369 pixelFormat:optionsCopy options:error error:&v29 pixelBufferRepsCacheKey:v21, v22, v23, v24];
    v26 = v29;
    *buffer = v25;
    v27 = v25 != 0;
    if (v25)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v26 imageBuffer:v18];
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = VNAnimalBodyPoseDetector;
  if (![(VNDetector *)&v13 completeInitializationForSession:sessionCopy error:error])
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = getVCPPetsPoseImageRequestClass(void)::softClass;
  v18 = getVCPPetsPoseImageRequestClass(void)::softClass;
  if (!getVCPPetsPoseImageRequestClass(void)::softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL31getVCPPetsPoseImageRequestClassv_block_invoke;
    v14[3] = &unk_1E77B69F0;
    v14[4] = &v15;
    ___ZL31getVCPPetsPoseImageRequestClassv_block_invoke(v14);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [[v7 alloc] initWithOptions:0];
  animalBodyPoseDetector = self->_animalBodyPoseDetector;
  self->_animalBodyPoseDetector = v9;

  if (!self->_animalBodyPoseDetector)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to initialize VCP Animal Pose Detector"];
      *error = v11 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  return v11;
}

@end