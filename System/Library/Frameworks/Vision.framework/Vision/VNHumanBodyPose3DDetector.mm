@interface VNHumanBodyPose3DDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (int64_t)_abpkOrientationFromExifOrientation:(int)a3;
@end

@implementation VNHumanBodyPose3DDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VNHumanBodyPose3DDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
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

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 width:288 height:192 orientation:1 aspectRatioHandling:1 orientationAgnostic:0];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v13 = a5;
  v14 = a7;
  v41 = a9;
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
    v18 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHumanBodyPose3DDetectorProcessOption_ABPKPipeline" inOptions:v13 error:a8];
    v19 = [v18 bodyPosePipeline];
    if (v19)
    {
      v20 = [VNValidationUtilities requiredObjectOfClass:getABPKInputClass() forKey:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKInput" inOptions:v13 error:a8];
      [v19 runABPKAlgorithmWithInputData:v20 andGetOutput:v17];
      CVPixelBufferRelease([v20 depthConfidenceBuffer]);
      [v20 setDepthConfidenceBuffer:0];
      v21 = [v17 algorithmReturnCode];
      if (v21)
      {
        if (v21 == -6660)
        {
          if (a8)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to run HumanBodyPose3D pipeline"];
            *a8 = v22 = 0;
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

        v23 = v41;
      }

      else
      {
        v24 = [VNValidationUtilities originatingRequestSpecifierInOptions:v13 error:a8];
        if (v24)
        {
          v40 = v24;
          v36 = [VNValidationUtilities requiredObjectOfClass:getABPKCameraParamsClass() forKey:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKCameraParams" inOptions:v13 error:a8];
          v37 = [VNHumanBody3DOutput alloc];
          v39 = [v17 liftingSkeletonABPK];
          v25 = [v17 cameraParams];
          [v25 intrinsics];
          v34 = v27;
          v35 = v26;
          v33 = v28;
          [v36 inputRes];
          v38 = [(VNHumanBody3DOutput *)v37 initWithSkeleton:v39 intrinsics:v35 inputSize:v34, v33, v29, v30];

          v31 = [(VNRecognizedPoints3DObservation *)[VNHumanBodyPose3DObservation alloc] initWithOriginatingRequestSpecifier:v40 keypointsReturningObject:v38];
          if (v31)
          {
            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v13 toObservation:v31];
            [v42 addObject:v31];
            v22 = v42;
          }

          else if (a8)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create observation"];
            *a8 = v22 = 0;
          }

          else
          {
            v22 = 0;
          }

          v24 = v40;
          v23 = v41;
        }

        else
        {
          v22 = 0;
          v23 = v41;
        }
      }
    }

    else
    {
      v22 = 0;
      v23 = v41;
    }
  }

  else
  {
    if (a8)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create HumanBodyPose3D output "];
      *a8 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = v41;
  }

  return v22;
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
    v60.origin.x = x * v19;
    v60.size.width = width * v19;
    v60.origin.y = y * v20;
    v60.size.height = height * v20;
    v61 = CGRectIntegral(v60);
    v21 = v61.origin.x;
    v22 = v61.origin.y;
    v23 = v61.size.width;
    v24 = v61.size.height;
    [v16 setObject:MEMORY[0x1E695E118] forKey:@"VNImageBufferOption_RequiresDepth"];
    v59[0] = 0;
    v25 = [v18 createCroppedBufferWithMaxSideLengthOf:580 cropRect:1111970369 pixelFormat:v16 options:a8 error:v59 pixelBufferRepsCacheKey:v21, v22, v23, v24];
    v26 = v59[0];
    *a7 = v25;
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
      [v41 setImage:*a7];
      if (v54 && [v54 absoluteAccuracy])
      {
        [v41 setDepthMap:{objc_msgSend(v54, "depthBuffer")}];
        v42 = CVPixelBufferGetWidth([v54 depthBuffer]);
        v43 = CVPixelBufferGetHeight([v54 depthBuffer]);
        pixelBuffer = 0;
        if (VNCVPixelBufferCreateUsingIOSurface(v42, v43, 0x66646570u, 0, &pixelBuffer))
        {
          if (a8)
          {
            *a8 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create depth confidence buffer "];
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

      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v16 cacheKey:v26 imageBuffer:v18];
      [v16 setObject:v40 forKeyedSubscript:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKCameraParams"];
      [v16 setObject:v41 forKeyedSubscript:@"VNHumanBodyPose3DDetectorInternalProcessOption_ABPKInput"];
      v36 = 1;
      goto LABEL_27;
    }

    if (a8)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create HumanBodyPose3D pipeline input "];
      *a8 = v36 = 0;
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

- (int64_t)_abpkOrientationFromExifOrientation:(int)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1A603B3B8[a3 - 1];
  }
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = VNHumanBodyPose3DDetector;
  if (![(VNDetector *)&v9 completeInitializationForSession:v6 error:a4])
  {
    goto LABEL_6;
  }

  if (!AltruisticBodyPoseKitLibraryCore(0))
  {
    if (a4)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"VNDetectHumanBodyPose3DRequest is unavailable on this device."];
      *a4 = v7 = 0;
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