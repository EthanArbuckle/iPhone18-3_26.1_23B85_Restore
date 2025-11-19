@interface VNAnimalBodyPoseDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNAnimalBodyPoseDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNAnimalBodyPoseDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v29 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v23 = [(VCPPetsPoseImageRequest *)self->_animalBodyPoseDetector processImage:a4 withOptions:0 error:a8];
  if (v23)
  {
    v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
    if (v13)
    {
      v22 = a8;
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
              if (v22)
              {
                *v22 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create observation"];
              }

              v20 = 0;
              goto LABEL_16;
            }

            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v12 toObservation:v19];
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 width];
    v20 = [v18 height];
    v30.origin.x = x * v19;
    v30.size.width = width * v19;
    v30.origin.y = y * v20;
    v30.size.height = height * v20;
    v31 = CGRectIntegral(v30);
    v21 = v31.origin.x;
    v22 = v31.origin.y;
    v23 = v31.size.width;
    v24 = v31.size.height;
    [VNError VNAssert:self->_animalBodyPoseDetector != 0 log:@"VCP Animal Pose Detector must be initialized"];
    v29 = 0;
    v25 = [v18 createCroppedBufferWithMaxSideLengthOf:580 cropRect:1111970369 pixelFormat:v16 options:a8 error:&v29 pixelBufferRepsCacheKey:v21, v22, v23, v24];
    v26 = v29;
    *a7 = v25;
    v27 = v25 != 0;
    if (v25)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v16 cacheKey:v26 imageBuffer:v18];
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = VNAnimalBodyPoseDetector;
  if (![(VNDetector *)&v13 completeInitializationForSession:v6 error:a4])
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
    if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to initialize VCP Animal Pose Detector"];
      *a4 = v11 = 0;
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