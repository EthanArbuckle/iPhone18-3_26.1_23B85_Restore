@interface VNOpticalFlowGeneratorRevision2
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNOpticalFlowGeneratorRevision2

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VNOpticalFlowGeneratorRevision2_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNOpticalFlowGeneratorRevision2 configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNOpticalFlowGeneratorRevision2 configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNOpticalFlowGeneratorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __72__VNOpticalFlowGeneratorRevision2_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNOpticalFlowGeneratorRevision2;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];
  [v2 addObject:@"VNOpticalFlowGeneratorInitOption_PortraitMode"];
  v3 = [v2 copy];
  v4 = +[VNOpticalFlowGeneratorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNOpticalFlowGeneratorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allGPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 20) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  v51[1] = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = a7;
  v17 = a9;
  v18 = v15;
  v19 = v18;
  if (self)
  {
    v20 = [v18 objectForKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_FromAndToPixelBuffers"];
    +[VNError VNAssert:log:](VNError, "VNAssert:log:", [v20 count] == 2, @"Unexpected number of buffers for optical flow processing");
    v21 = [v20 objectAtIndexedSubscript:0];

    v22 = [v20 objectAtIndexedSubscript:1];

    v23 = [(VCPMotionFlowRequest *)self->_motionFlowRequest estimateMotionBetweenFirstImage:v21 andSecondImage:v22 withUpsample:0 withGuidedImage:0 error:a8];

    if (v23)
    {
      v43 = 0;
      if ([VNValidationUtilities getOSTypeValue:&v43 forKey:@"VNOpticalFlowGeneratorProcessOption_OutputPixelFormat" inOptions:v19 error:a8])
      {
        v42 = 0;
        if ([VNValidationUtilities getBOOLValue:&v42 forKey:@"VNOpticalFlowGeneratorProcessOption_KeepNetworkOutput" inOptions:v19 withDefaultValue:0 error:a8])
        {
          v24 = [v23 pixelBuffer];
          PixelFormatType = CVPixelBufferGetPixelFormatType(v24);
          v26 = height;
          v27 = PixelFormatType == v43 && CVPixelBufferGetWidth(v24) == width && CVPixelBufferGetHeight(v24) == v26;
          if ((v42 & 1) != 0 || v27)
          {
            v29 = CVPixelBufferRetain(v24);
            goto LABEL_22;
          }

          v37 = v43;
          v41 = v19;
          v28 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a8];
          if (v28)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke;
            aBlock[3] = &unk_1E77B5CE0;
            v49 = width;
            v50 = height;
            v36 = v41;
            v47 = v36;
            v38 = v28;
            v48 = v38;
            v39 = _Block_copy(aBlock);
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke_3;
            v44[3] = &__block_descriptor_36_e41_B32__0____CVBuffer__8____CVBuffer__16__24l;
            v45 = v37;
            v40 = _Block_copy(v44);
            v29 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v26 height:v37 pixelFormatType:a8 error:?];
            if (v29)
            {
              if ([VNComputeDeviceUtilities isCPUComputeDevice:v38])
              {
                v30 = v40;
              }

              else
              {
                v30 = v39;
              }

              v31 = _Block_copy(v30);
              if ((v31[2](v31, v24, v29, a8) & 1) == 0)
              {
                CVPixelBufferRelease(v29);
                v29 = 0;
              }
            }

            if (!v29)
            {
              goto LABEL_30;
            }

LABEL_22:
            v32 = [VNValidationUtilities originatingRequestSpecifierInOptions:v19 error:a8];
            if (v32)
            {
              v33 = [[VNPixelBufferObservation alloc] initWithOriginatingRequestSpecifier:v32 featureName:0 CVPixelBuffer:v29];
            }

            else
            {
              v33 = 0;
            }

            CVPixelBufferRelease(v29);
            if (v32)
            {
              v51[0] = v33;
              v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
            }

            else
            {
              v34 = 0;
            }

            goto LABEL_31;
          }
        }
      }
    }
  }

  else
  {

    v23 = 0;
  }

LABEL_30:
  v34 = 0;
LABEL_31:

  return v34;
}

uint64_t __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke_2;
  v12[3] = &__block_descriptor_64_e25_B24__0__VNCIContext_8__16l;
  v12[4] = a2;
  v13 = *(a1 + 48);
  v14 = a3;
  v6 = _Block_copy(v12);
  v7 = [VNValidationUtilities requiredSessionInOptions:*(a1 + 32) error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 vnciContextManager];
    v10 = [(VNCIContextManager *)v9 performBlock:v6 usingAvailableContextForComputeDevice:*(a1 + 40) error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke_3(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, void *a4)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (![VNCVPixelBufferHelper lockPixelBuffer:1uLL lockFlags:a4 error:?]|| ![VNCVPixelBufferHelper lockPixelBuffer:a3 lockFlags:0 error:a4])
  {
    goto LABEL_21;
  }

  if (PixelFormatType == 843264102)
  {
    v19 = *(a1 + 32);
    if (v19 == 843264102)
    {
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v25, pixelBuffer);
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v22, a3);
      if (!v27)
      {
        goto LABEL_34;
      }

      if (!v26)
      {
        goto LABEL_34;
      }

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

      v11 = iterations;
      if (!iterations)
      {
        goto LABEL_34;
      }

      v12 = v27 / v24;
      v13 = v26 / iterations;
      v14 = 1.0;
      v15 = 1.0 / v12;
      v16 = v27 - 1;
      v17 = v26 - 1;
      block = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v18 = ___Z21convertAndResizeImageI10Pixel_UFVFS0_EvRKN5apple6vision11ImageBufferIT_S4_EERKNS3_IT0_S8_EE_block_invoke;
      goto LABEL_33;
    }

    if (v19 == 843264104)
    {
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v25, pixelBuffer);
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v22, a3);
      if (!v27)
      {
        goto LABEL_34;
      }

      if (!v26)
      {
        goto LABEL_34;
      }

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

      v11 = iterations;
      if (!iterations)
      {
        goto LABEL_34;
      }

      v12 = v27 / v24;
      v13 = v26 / iterations;
      v14 = 1.0;
      v15 = 1.0 / v12;
      v16 = v27 - 1;
      v17 = v26 - 1;
      block = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v18 = ___Z21convertAndResizeImageI10Pixel_UFVF10Pixel_UHVHEvRKN5apple6vision11ImageBufferIT_S5_EERKNS4_IT0_S9_EE_block_invoke;
      goto LABEL_33;
    }
  }

  else if (PixelFormatType == 843264104)
  {
    v9 = *(a1 + 32);
    if (v9 == 843264102)
    {
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v25, pixelBuffer);
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v22, a3);
      if (!v27)
      {
        goto LABEL_34;
      }

      if (!v26)
      {
        goto LABEL_34;
      }

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

      v11 = iterations;
      if (!iterations)
      {
        goto LABEL_34;
      }

      v12 = v27 / v24;
      v13 = v26 / iterations;
      v14 = 1.0;
      v15 = 1.0 / v12;
      v16 = v27 - 1;
      v17 = v26 - 1;
      block = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v18 = ___Z21convertAndResizeImageI10Pixel_UHVH10Pixel_UFVFEvRKN5apple6vision11ImageBufferIT_S5_EERKNS4_IT0_S9_EE_block_invoke;
      goto LABEL_33;
    }

    if (v9 == 843264104)
    {
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v25, pixelBuffer);
      lockedPixelBufferToImageBuffer<Pixel_UHVH>(&v22, a3);
      if (!v27)
      {
        goto LABEL_34;
      }

      if (!v26)
      {
        goto LABEL_34;
      }

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

      v11 = iterations;
      if (!iterations)
      {
        goto LABEL_34;
      }

      v12 = v27 / v24;
      v13 = v26 / iterations;
      v14 = 1.0;
      v15 = 1.0 / v12;
      v16 = v27 - 1;
      v17 = v26 - 1;
      block = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v18 = ___Z21convertAndResizeImageI10Pixel_UHVHS0_EvRKN5apple6vision11ImageBufferIT_S4_EERKNS3_IT0_S8_EE_block_invoke;
LABEL_33:
      v30 = v18;
      v31 = &__block_descriptor_88_e8_v16__0Q8l;
      v32 = v17;
      v33 = &v25;
      v34 = &v22;
      v35 = v10;
      v37 = v13;
      v38 = v12;
      v36 = v16;
      v39 = v15;
      v40 = v14 / v13;
      dispatch_apply(v11, 0, &block);
LABEL_34:
      v20 = 1;
      goto LABEL_22;
    }
  }

  if (a4)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Invalid pixel format combinations"];
    *a4 = v20 = 0;
  }

  else
  {
LABEL_21:
    v20 = 0;
  }

LABEL_22:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  return v20 & 1;
}

uint64_t __94__VNOpticalFlowGeneratorRevision2__convertPixelBuffer_width_height_pixelFormat_options_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:a1[4]];
  memset(&v19, 0, sizeof(v19));
  v5 = a1[5];
  [v4 extent];
  v7 = v6;
  v8 = a1[6];
  [v4 extent];
  CGAffineTransformMakeScale(&v19, v5 / v7, v8 / v9);
  v18 = v19;
  v10 = [v4 imageByApplyingTransform:&v18];

  v11 = objc_alloc_init(VNCIMultiplicationFilter);
  [(VNCIFilter *)v11 setInputImage:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v19.a];
  [(VNCIMultiplicationFilter *)v11 setInputFactor1:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v19.d];
  [(VNCIMultiplicationFilter *)v11 setInputFactor2:v13];

  v14 = [(VNCIMultiplicationFilter *)v11 outputImage];

  if (v3)
  {
    v15 = v3[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [v16 render:v14 toCVPixelBuffer:a1[7]];

  return 1;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v36 = a6;
  v37 = a9;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __129__VNOpticalFlowGeneratorRevision2_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke;
  v42[3] = &unk_1E77B6810;
  v42[4] = self;
  if ([VNValidationUtilities validateNonZeroImageWidth:width height:height componentNameProvidingBlock:v42 error:a8])
  {
    v18 = [(VNOpticalFlowGenerator *)self validatedImageBuffersFromOptions:v17 error:a8];
    v19 = v18;
    if (v18)
    {
      if ([v18 count] == 2)
      {
        v20 = [v19 objectAtIndexedSubscript:0];
        v21 = [v20 width];
        v22 = [v19 objectAtIndexedSubscript:1];
        if (v21 == [v22 width])
        {
          v23 = [v19 objectAtIndexedSubscript:0];
          v24 = [v23 height];
          v25 = [v19 objectAtIndexedSubscript:1];
          LOBYTE(v24) = v24 == [v25 height];

          if (v24)
          {
            v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            obj = v19;
            v26 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
            if (v26)
            {
              v27 = *v39;
              while (2)
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v39 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v38 + 1) + 8 * i);
                  [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
                  v30 = [v29 croppedBufferWithWidth:self->_preferredBufferSizeFormat.width height:self->_preferredBufferSizeFormat.height format:self->_preferredBufferSizeFormat.format cropRect:v17 options:a8 error:{x, y, width, height}];
                  if (!v30)
                  {
                    v31 = 0;
                    goto LABEL_26;
                  }

                  [v35 addObject:v30];
                }

                v26 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }

            v31 = 1;
LABEL_26:

            if ([v35 count] != 2)
            {

              v35 = 0;
            }

            if (v31)
            {
              [v17 setObject:v35 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_FromAndToPixelBuffers"];
            }

            goto LABEL_23;
          }
        }

        else
        {
        }

        if (a8)
        {
          v32 = [VNError errorForInvalidOperationWithLocalizedDescription:@"Optical flow cannot be performed on images with different dimensions"];
          goto LABEL_21;
        }
      }

      else if (a8)
      {
        v32 = [VNError errorForInvalidOperationWithLocalizedDescription:@"Optical flow incorrect number of images to compare"];
LABEL_21:
        LOBYTE(v31) = 0;
        *a8 = v32;
LABEL_23:

        goto LABEL_24;
      }
    }

    LOBYTE(v31) = 0;
    goto LABEL_23;
  }

  LOBYTE(v31) = 0;
LABEL_24:

  return v31;
}

NSString *__129__VNOpticalFlowGeneratorRevision2_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v38[4] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = VNOpticalFlowGeneratorRevision2;
  if (![(VNDetector *)&v36 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v35 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v35 forKey:@"VNOpticalFlowGeneratorOption_ComputationAccuracy" inOptions:v6 error:a4])
  {
    goto LABEL_15;
  }

  if (v35 >= 4)
  {
    if (a4)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      *a4 = [VNError errorForInvalidOption:v7 named:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];
    }

    goto LABEL_15;
  }

  v34 = 1;
  if (![VNValidationUtilities getBOOLValue:&v34 forKey:@"VNOpticalFlowGeneratorInitOption_PortraitMode" inOptions:v6 error:a4])
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  for (i = 0; i != 96; i += 24)
  {
    v10 = &getPortraitFrameSize(VNOpticalFlowGeneratorComputationAccuracy)::accuracyBufferSizes + i;
    if (*(&getPortraitFrameSize(VNOpticalFlowGeneratorComputationAccuracy)::accuracyBufferSizes + i) == v35)
    {
      if (v34)
      {
        v13 = *(v10 + 2);
      }

      else
      {
        v13 = *(v10 + 1);
      }

      if (v34)
      {
        v14 = *(v10 + 1);
      }

      else
      {
        v14 = *(v10 + 2);
      }

      v11 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a4];
      if (!v11)
      {
        v8 = 0;
        goto LABEL_37;
      }

      v15 = [VNComputeDeviceUtilities isCPUComputeDevice:v11];
      v32 = getVCPRequestFrameWidthPropertyKey();
      v37[0] = v32;
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      v38[0] = v31;
      v30 = getVCPRequestFrameHeightPropertyKey();
      v37[1] = v30;
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
      v38[1] = v16;
      v17 = getVCPRequestMotionFlowComputationAccuracyPropertyKey();
      v37[2] = v17;
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
      v38[2] = v18;
      v19 = getVCPRequestForceCPUPropertyKey();
      v37[3] = v19;
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v15];
      v38[3] = v20;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];

      v21 = [objc_alloc(getVCPMotionFlowRequestClass()) initWithOptions:v33];
      motionFlowRequest = self->_motionFlowRequest;
      self->_motionFlowRequest = v21;

      v23 = self->_motionFlowRequest;
      if (v23)
      {
        [(VCPMotionFlowRequest *)v23 preferredInputSizeWithOptions:0 error:a4];
        v26 = v25;
        v27 = v24;
        if (v25 != *MEMORY[0x1E695F060] || v24 != *(MEMORY[0x1E695F060] + 8))
        {
          v29 = [(VCPMotionFlowRequest *)self->_motionFlowRequest preferredPixelFormat];
          self->_preferredBufferSizeFormat.width = v26;
          self->_preferredBufferSizeFormat.height = v27;
          self->_preferredBufferSizeFormat.format = v29;
          v8 = 1;
          goto LABEL_36;
        }

        if (a4)
        {
          v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to properly create motion flow estimator"];
LABEL_33:
          v8 = 0;
          *a4 = v28;
LABEL_36:

          goto LABEL_37;
        }
      }

      else if (a4)
      {
        v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create motion flow estimator"];
        goto LABEL_33;
      }

      v8 = 0;
      goto LABEL_36;
    }
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
  [VNError errorForInvalidOption:v11 named:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];
  *a4 = v8 = 0;
LABEL_37:

LABEL_16:
  return v8;
}

@end