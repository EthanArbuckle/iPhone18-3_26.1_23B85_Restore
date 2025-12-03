@interface VNHumanBodyPose3DDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (int64_t)_abpkOrientationFromExifOrientation:(int)orientation;
@end

@implementation VNHumanBodyPose3DDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNHumanBodyPose3DDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNHumanBodyPose3DDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNHumanBodyPose3DDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNHumanBodyPose3DDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __66__VNHumanBodyPose3DDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNHumanBodyPose3DDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorInitOption_ModelBackingStore"];
  v3 = [v2 copy];
  v4 = +[VNHumanBodyPose3DDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNHumanBodyPose3DDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (AltruisticBodyPoseKitLibraryCore(0))
  {
    v8 = @"VNComputeStageMain";
    v4 = +[VNComputeDeviceUtilities allNeuralEngineComputeDevices];
    v9 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v10 = @"VNComputeStageMain";
    v4 = [VNComputeDeviceUtilities computeDevicesOfTypes:0];
    v11[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  v6 = v5;

  return v6;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 width:288 height:192 orientation:1 aspectRatioHandling:1 orientationAgnostic:0];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v15 = getABPKOutputClass(void)::softClass;
  v47 = getABPKOutputClass(void)::softClass;
  if (!getABPKOutputClass(void)::softClass)
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = ___ZL18getABPKOutputClassv_block_invoke;
    v43[3] = &unk_1E77B69F0;
    v43[4] = &v44;
    ___ZL18getABPKOutputClassv_block_invoke(v43);
    v15 = v45[3];
  }

  v16 = v15;
  _Block_object_dispose(&v44, 8);
  v17 = objc_alloc_init(v15);
  if (v17)
  {
    v18 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHumanBodyPose3DDetectorProcessOption_ABPKPipeline" inOptions:optionsCopy error:error];
    bodyPosePipeline = [v18 bodyPosePipeline];
    if (bodyPosePipeline)
    {
      v20 = [VNValidationUtilities requiredObjectOfClass:getABPKInputClass() forKey:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKInput" inOptions:optionsCopy error:error];
      [bodyPosePipeline runABPKAlgorithmWithInputData:v20 andGetOutput:v17];
      CVPixelBufferRelease([v20 depthConfidenceBuffer]);
      [v20 setDepthConfidenceBuffer:0];
      algorithmReturnCode = [v17 algorithmReturnCode];
      if (algorithmReturnCode)
      {
        if (algorithmReturnCode == -6660)
        {
          if (error)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to run HumanBodyPose3D pipeline"];
            *error = v22 = 0;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = v42;
        }

        v23 = handlerCopy;
      }

      else
      {
        v24 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
        if (v24)
        {
          v40 = v24;
          v36 = [VNValidationUtilities requiredObjectOfClass:getABPKCameraParamsClass() forKey:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKCameraParams" inOptions:optionsCopy error:error];
          v37 = [VNHumanBody3DOutput alloc];
          liftingSkeletonABPK = [v17 liftingSkeletonABPK];
          cameraParams = [v17 cameraParams];
          [cameraParams intrinsics];
          v34 = v27;
          v35 = v26;
          v33 = v28;
          [v36 inputRes];
          v38 = [(VNHumanBody3DOutput *)v37 initWithSkeleton:liftingSkeletonABPK intrinsics:v35 inputSize:v34, v33, v29, v30];

          v31 = [(VNRecognizedPoints3DObservation *)[VNHumanBodyPose3DObservation alloc] initWithOriginatingRequestSpecifier:v40 keypointsReturningObject:v38];
          if (v31)
          {
            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:optionsCopy toObservation:v31];
            [v42 addObject:v31];
            v22 = v42;
          }

          else if (error)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create observation"];
            *error = v22 = 0;
          }

          else
          {
            v22 = 0;
          }

          v24 = v40;
          v23 = handlerCopy;
        }

        else
        {
          v22 = 0;
          v23 = handlerCopy;
        }
      }
    }

    else
    {
      v22 = 0;
      v23 = handlerCopy;
    }
  }

  else
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create HumanBodyPose3D output "];
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = handlerCopy;
  }

  return v22;
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
    v60.origin.x = x * width;
    v60.size.width = width * width;
    v60.origin.y = y * height;
    v60.size.height = height * height;
    v61 = CGRectIntegral(v60);
    v21 = v61.origin.x;
    v22 = v61.origin.y;
    v23 = v61.size.width;
    v24 = v61.size.height;
    [optionsCopy setObject:MEMORY[0x1E695E118] forKey:@"VNImageBufferOption_RequiresDepth"];
    v59[0] = 0;
    v25 = [v18 createCroppedBufferWithMaxSideLengthOf:580 cropRect:1111970369 pixelFormat:optionsCopy options:error error:v59 pixelBufferRepsCacheKey:v21, v22, v23, v24];
    v26 = v59[0];
    *buffer = v25;
    if (!v25)
    {
      v36 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v27 = CVBufferCopyAttachment(v25, @"VNDepthRepresentationAttachment", 0);
    v28 = MEMORY[0x1E69E9B10];
    v29 = *(MEMORY[0x1E69E9B10] + 16);
    v56 = *MEMORY[0x1E69E9B10];
    v57 = v29;
    v58 = *(MEMORY[0x1E69E9B10] + 32);
    v54 = v27;
    if (v27)
    {
      [v27 cameraIntrinsics];
      DWORD2(v56) = v30;
      DWORD2(v57) = v31;
      *&v56 = v32;
      *&v57 = v33;
      DWORD2(v58) = v34;
      *&v58 = v35;
    }

    else if (([v18 getCameraIntrinsicsAvailable:&v56] & 1) == 0)
    {
      v37 = v28[1];
      v56 = *v28;
      v57 = v37;
      v58 = v28[2];
    }

    v38 = objc_alloc(getABPKCameraParamsClass());
    v39 = MEMORY[0x1E69E9B18];
    v40 = [v38 initWithIntrinsics:*&v56 andExtrinsics:*&v57 andDistortion:*&v58 andInputResolution:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48), 0.0, objc_msgSend(v18, "width"), objc_msgSend(v18, "height")}];
    if (!v40)
    {
      v36 = 0;
LABEL_28:

      goto LABEL_29;
    }

    [v40 setDeviceOrientation:{-[VNHumanBodyPose3DDetector _abpkOrientationFromExifOrientation:](self, "_abpkOrientationFromExifOrientation:", objc_msgSend(v18, "orientation"))}];
    v41 = objc_alloc_init(getABPKInputClass());
    if (v41)
    {
      [v41 setTimestamp:CFAbsoluteTimeGetCurrent()];
      [v41 setVioPose:{*v39, v39[2], v39[4], v39[6]}];
      [v41 setIsVioPoseValid:1];
      [v41 setCameraParams:v40];
      [v41 setImage:*buffer];
      if (v54 && [v54 absoluteAccuracy])
      {
        [v41 setDepthMap:{objc_msgSend(v54, "depthBuffer")}];
        v42 = CVPixelBufferGetWidth([v54 depthBuffer]);
        v43 = CVPixelBufferGetHeight([v54 depthBuffer]);
        pixelBuffer = 0;
        if (VNCVPixelBufferCreateUsingIOSurface(v42, v43, 0x66646570u, 0, &pixelBuffer))
        {
          if (error)
          {
            *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create depth confidence buffer "];
          }

          goto LABEL_19;
        }

        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        v52 = v26;
        v53 = v40;
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v45 = CVPixelBufferGetWidth(pixelBuffer);
        v46 = CVPixelBufferGetHeight(pixelBuffer);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        if (v46 >= 1)
        {
          v48 = BaseAddress;
          v49 = 0;
          v50 = v46 & 0x7FFFFFFF;
          do
          {
            if (v45 >= 1)
            {
              memset_pattern16(&v48[v49 >> 30], &unk_1A6038F40, 4 * v45);
            }

            v49 += BytesPerRow >> 2 << 32;
            --v50;
          }

          while (v50);
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        [v41 setDepthConfidenceBuffer:pixelBuffer];
        [v41 setIsDepthDataValid:1];
        v26 = v52;
        v40 = v53;
      }

      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v26 imageBuffer:v18];
      [optionsCopy setObject:v40 forKeyedSubscript:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKCameraParams"];
      [optionsCopy setObject:v41 forKeyedSubscript:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKInput"];
      v36 = 1;
      goto LABEL_27;
    }

    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create HumanBodyPose3D pipeline input "];
      *error = v36 = 0;
LABEL_27:

      goto LABEL_28;
    }

LABEL_19:
    v36 = 0;
    goto LABEL_27;
  }

  v36 = 0;
LABEL_30:

  return v36;
}

- (int64_t)_abpkOrientationFromExifOrientation:(int)orientation
{
  if ((orientation - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1A603B3B8[orientation - 1];
  }
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = VNHumanBodyPose3DDetector;
  if (![(VNDetector *)&v9 completeInitializationForSession:sessionCopy error:error])
  {
    goto LABEL_6;
  }

  if (!AltruisticBodyPoseKitLibraryCore(0))
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"VNDetectHumanBodyPose3DRequest is unavailable on this device."];
      *error = v7 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

@end