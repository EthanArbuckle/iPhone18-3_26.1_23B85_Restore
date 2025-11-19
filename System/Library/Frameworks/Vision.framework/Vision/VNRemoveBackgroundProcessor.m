@interface VNRemoveBackgroundProcessor
+ (id)espressoModelFileNameForConfigurationOptions:(id)a3;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (void)dealloc;
@end

@implementation VNRemoveBackgroundProcessor

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v98[3] = *MEMORY[0x1E69E9840];
  v17 = a5;
  v49 = a7;
  v50 = a9;
  v53 = v17;
  v18 = [v17 objectForKeyedSubscript:@"VNRemoveBackgroundProcessorOption_PerformInPlace"];
  v48 = [v18 BOOLValue];

  v19 = [v17 objectForKeyedSubscript:@"VNRemoveBackgroundProcessorOption_CropResult"];
  v46 = [v19 BOOLValue];

  v20 = [v17 objectForKeyedSubscript:@"VNRemoveBackgroundProcessorOption_ReturnMask"];
  v47 = [v20 BOOLValue];

  v51 = [v17 objectForKeyedSubscript:@"VNRemoveBackgroundProcessorOption_MaskObservation"];
  v97 = 0;
  if (![VNValidationUtilities getBOOLValue:&v97 forKey:@"VNRemoveBackgroundProcessorOption_AlphaGating" inOptions:v17 withDefaultValue:0 error:a8])
  {
    v22 = 0;
    goto LABEL_51;
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  if (!v51)
  {
    v26 = [VNValidationUtilities requiredObjectOfClass:0 forKey:@"VNRemoveBackgroundProcessorOption_LowResInput" inOptions:v17 error:a8];
    v94[3] = v26;
    if (!v26 || ![VNCVPixelBufferHelper lockPixelBuffer:v26 lockFlags:1uLL error:a8])
    {
      v22 = 0;
      goto LABEL_50;
    }

    if (v97 == 1)
    {
      if (!self)
      {
        if ([VNCVPixelBufferHelper unlockPixelBuffer:1uLL lockFlags:a8 error:?])
        {
          v22 = MEMORY[0x1E695E0F0];
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_50;
      }

      v27 = v94[3];
      CVPixelBufferGetWidth(v27);
      CVPixelBufferGetHeight(v27);
      CVPixelBufferGetBytesPerRow(v27);
      CVPixelBufferGetBaseAddress(v27);
      v28 = [objc_opt_class() detectorInternalProcessingAsyncTasksQueue];
      v29 = [v28 maximumTasksCount];
      if (v29)
      {
        if (v29 < 0x666666666666667)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v34 = dispatch_group_create();
      [v28 dispatchGroupWait:v34 error:0];
    }
  }

  if (!v48 || (v101.origin.x = 0.0, v101.origin.y = 0.0, v101.size.width = 1.0, v101.size.height = 1.0, v100.origin.x = x, v100.origin.y = y, v100.size.width = width, v100.size.height = height, CGRectEqualToRect(v100, v101)))
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_6;
  }

  v22 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  if (v22)
  {
    v21 = 1;
LABEL_6:
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2020000000;
    v84 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    v76 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__VNRemoveBackgroundProcessor_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B5E68;
    v59 = &v89;
    v60 = &v77;
    v55 = v51;
    v56 = self;
    v70 = v47;
    v61 = &v93;
    v62 = &v81;
    v71 = v21;
    v65 = x;
    v66 = y;
    v67 = width;
    v68 = height;
    v44 = v22;
    v57 = v44;
    v43 = v17;
    v58 = v43;
    v63 = &v85;
    v64 = &v73;
    v72 = v48;
    v69 = a4;
    v45 = _Block_copy(aBlock);
    v23 = self;
    if (VNExecuteBlock(v45, a8))
    {
      if (v78[6] < 0.16)
      {
        v24 = 0;
        v25 = 0;
        v22 = MEMORY[0x1E695E0F0];
LABEL_40:
        if (*(v74 + 24) == 1)
        {
          dispatch_semaphore_wait(v23->_removeBackgroundSemaphore, 0);
        }

        v38 = v94[3];
        if (v38 && ![VNCVPixelBufferHelper unlockPixelBuffer:v38 lockFlags:1uLL error:a8])
        {

          v24 = 0;
        }

        CVPixelBufferRelease(v94[3]);
        v94[3] = 0;
        CVPixelBufferRelease(v86[3]);
        v86[3] = 0;
        CVPixelBufferRelease(v90[3]);
        v90[3] = 0;
        CVPixelBufferRelease(v82[3]);
        v82[3] = 0;
        if (v25)
        {
          if (v24)
          {
            v98[0] = v24;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
          }

          else
          {
            v22 = 0;
          }
        }

        _Block_object_dispose(&v73, 8);
        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&v81, 8);
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v89, 8);

        goto LABEL_50;
      }

      if (!v46)
      {
        if (*(v74 + 24) == 1)
        {
          dispatch_semaphore_wait(self->_removeBackgroundSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        }

        v35 = [VNValidationUtilities originatingRequestSpecifierInOptions:v43 error:a8, v40, v41];
        v25 = v35 != 0;
        if (v35)
        {
          v36 = [VNPixelBufferObservation alloc];
          v24 = [(VNPixelBufferObservation *)v36 initWithOriginatingRequestSpecifier:v35 featureName:0 CVPixelBuffer:v82[3]];
          *&v37 = v78[6];
          [v24 setConfidence:v37];
          if (v24)
          {
            *(v24 + 112) = 0;
            *(v24 + 120) = 0;
            *(v24 + 128) = 1.0;
            *(v24 + 136) = 1.0;
          }
        }

        else
        {
          v24 = 0;
        }

        v22 = 0;
        v23 = self;
        goto LABEL_40;
      }

      if (self)
      {
        v30 = v90[3];
        CVPixelBufferLockBaseAddress(v30, 1uLL);
        pixelBuffer = v30;
        CVPixelBufferGetWidth(v30);
        CVPixelBufferGetHeight(v30);
        CVPixelBufferGetBytesPerRow(v30);
        CVPixelBufferGetBaseAddress(v30);
        v31 = [objc_opt_class() detectorInternalProcessingAsyncTasksQueue];
        v32 = [v31 maximumTasksCount];
        if (v32)
        {
          if (v32 < 0x555555555555556)
          {
            operator new();
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v33 = dispatch_group_create();
        if (([v31 dispatchGroupWait:v33 error:a8] & 1) != 0 && a8)
        {
          *a8 = [VNError errorForInternalErrorWithLocalizedDescription:@"No pixels meet or exceed alpha threshold"];
        }

        v23 = self;
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      }
    }

    v24 = 0;
    v25 = 0;
    v22 = 0;
    goto LABEL_40;
  }

LABEL_50:
  _Block_object_dispose(&v93, 8);
LABEL_51:

  return v22;
}

uint64_t __129__VNRemoveBackgroundProcessor_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    v14 = *(a1 + 40);
    if (!v14)
    {
      return 0;
    }

    v15 = *(*(a1 + 72) + 8);
    v16 = *(*(*(a1 + 80) + 8) + 24);
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"];
    LOBYTE(v16) = [v14 bindLockedPixelBuffer:v16 toNetworkInputBlobName:v17 error:a2];

    if ((v16 & 1) == 0)
    {
      return 0;
    }

    result = [v14 executePlanAndReturnError:a2];
    if (!result)
    {
      return result;
    }

    v18 = *v14[34];
    *(v15 + 24) = v18;
    if (v18 >= 0.16)
    {
      operator new[]();
    }

    if (*(*(*(a1 + 72) + 8) + 24) >= 0.16)
    {
      if (*(a1 + 152) != 1)
      {
        goto LABEL_3;
      }

      *(*(*(a1 + 88) + 8) + 24) = CVPixelBufferRetain(*(*(*(a1 + 64) + 8) + 24));
    }

    return 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = CVPixelBufferRetain([v4 pixelBuffer]);
  [*(a1 + 32) confidence];
  *(*(*(a1 + 72) + 8) + 24) = v5;
LABEL_3:
  if (*(a1 + 153) == 1)
  {
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v8 = *(a1 + 128);
    v9 = *(a1 + 136);
    v10 = [*(a1 + 48) width];
    v11 = [*(a1 + 48) height];
    result = [*(a1 + 48) croppedBufferWithWidth:(v8 * v10) height:(v9 * v11) format:1111970369 cropRect:*(a1 + 56) options:a2 error:{v6 * v10, v7 * v11}];
    v13 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *(a1 + 144);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(*(*(a1 + 64) + 8) + 24);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __67__VNRemoveBackgroundProcessor__upsampleLowResMask_reference_error___block_invoke;
    v41 = &unk_1E77B5EB8;
    v42 = v19;
    v43 = &v47;
    v44 = v13;
    v45 = v20;
    v21 = _Block_copy(&aBlock);
    v22 = VNExecuteBlock(v21, a2);
    v23 = v48[3];
    if ((v22 & 1) == 0)
    {
      CVPixelBufferRelease(v48[3]);
      v23 = 0;
      v48[3] = 0;
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v23 = 0;
  }

  *(*(*(a1 + 96) + 8) + 24) = v23;
  if (*(a1 + 153) == 1)
  {
    CVPixelBufferRelease(v13);
  }

  if (!*(*(*(a1 + 96) + 8) + 24))
  {
    return 0;
  }

  if (*(a1 + 154) == 1)
  {
    *(*(*(a1 + 88) + 8) + 24) = CVPixelBufferRetain(*(a1 + 144));
    goto LABEL_24;
  }

  Width = CVPixelBufferGetWidth(*(a1 + 144));
  Height = CVPixelBufferGetHeight(*(a1 + 144));
  *(*(*(a1 + 88) + 8) + 24) = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:1111970369 pixelFormatType:a2 error:?];
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v26 = *MEMORY[0x1E6965CE8];
    if (CVBufferHasAttachment(*(a1 + 144), *MEMORY[0x1E6965CE8]))
    {
      LODWORD(aBlock) = 0;
      v27 = CVBufferCopyAttachment(*(a1 + 144), v26, &aBlock);
      CVBufferSetAttachment(*(*(*(a1 + 88) + 8) + 24), v26, v27, aBlock);
      CFRelease(v27);
    }

LABEL_24:
    if (*(a1 + 153) == 1)
    {
      [*(a1 + 48) width];
      [*(a1 + 48) height];
      VisionCoreImagePointForNormalizedPoint();
      v29.f64[1] = v28;
      *&v29.f64[0] = vmovn_s64(vcvtq_s64_f64(v29));
      HIWORD(v37) = WORD2(v29.f64[0]);
      LOWORD(v37) = LOWORD(v29.f64[0]);
      v30 = v37;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a1 + 40);
    if (v31)
    {
      v32 = *(a1 + 144);
      v33 = *(*(*(a1 + 88) + 8) + 24);
      v34 = *(*(*(a1 + 96) + 8) + 24);
      aBlock = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __101__VNRemoveBackgroundProcessor__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke;
      v41 = &unk_1E77B5F50;
      v42 = v31;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      LODWORD(v46) = v30;
      v35 = _Block_copy(&aBlock);
      v36 = VNExecuteBlock(v35, a2);

      if (v36)
      {
        result = 1;
        *(*(*(a1 + 104) + 8) + 24) = 1;
        return result;
      }
    }
  }

  return 0;
}

uint64_t __69__VNRemoveBackgroundProcessor__calculateCropSizeOfPixelBuffer_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[4];
  v3 = v1[5];
  if (v2 <= v3)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 72) >> 2;
    v6 = *(a1 + 48) + 4 * v2 * v5;
    v7 = 4 * v5;
    do
    {
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*(v6 + 4 * i) > 0.0)
          {
            v9 = *v1;
            v10 = v1[1];
            if (i < *v1)
            {
              v9 = i;
            }

            if (v2 < v10)
            {
              v10 = v2;
            }

            *v1 = v9;
            v1[1] = v10;
            v11 = v1[2];
            v12 = v1[3];
            if (v11 <= i)
            {
              v11 = i;
            }

            if (v12 <= v2)
            {
              v12 = v2;
            }

            v1[2] = v11;
            v1[3] = v12;
          }
        }
      }

      ++v2;
      v6 += v7;
    }

    while (v2 <= v3);
  }

  return [*(a1 + 32) dispatchReportBlockCompletion];
}

BOOL __101__VNRemoveBackgroundProcessor__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke(uint64_t a1, void *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) metalContext];
  v5 = [VNMetalContext bindPixelBufferToMTL2DTexture:v4 pixelFormat:*(a1 + 40) plane:80 error:a2];
  if (v5)
  {
    v6 = [VNMetalContext bindPixelBufferToMTL2DTexture:v4 pixelFormat:*(a1 + 48) plane:80 error:a2];
    if (v6)
    {
      v7 = [VNMetalContext bindPixelBufferToMTL2DTexture:v4 pixelFormat:*(a1 + 56) plane:55 error:a2];
      if (v7)
      {
        v8 = [(VNMetalContext *)v4 commandQueueReturnError:a2];
        v9 = v8;
        v10 = v8 != 0;
        if (v8)
        {
          v11 = [v8 commandBuffer];
          v16 = *(*(a1 + 32) + 456);
          v15 = [v7 width];
          v12 = [v7 height];
          v20[0] = v7;
          v20[1] = v5;
          v20[2] = v6;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __101__VNRemoveBackgroundProcessor__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke_2;
          v18[3] = &__block_descriptor_36_e36_v16__0___MTLComputeCommandEncoder__8l;
          v19 = *(a1 + 64);
          [VNMetalContext encodeCommandsForBuffer:v4 state:v11 label:v16 width:v15 height:v12 textures:v13 buffers:v18 block:?];

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __101__VNRemoveBackgroundProcessor__removeBackgroundFromPixelBuffer_toPixelBuffer_usingMask_offset_error___block_invoke_3;
          v17[3] = &unk_1E77B5F28;
          v17[4] = *(a1 + 32);
          [v11 addCompletedHandler:v17];
          [v11 commit];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __67__VNRemoveBackgroundProcessor__upsampleLowResMask_reference_error___block_invoke(uint64_t a1, void *a2)
{
  v66[3] = *MEMORY[0x1E69E9840];
  v57 = [*(a1 + 32) metalContext];
  Width = CVPixelBufferGetWidth(*(a1 + 48));
  Height = CVPixelBufferGetHeight(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:Height height:1278226534 pixelFormatType:a2 error:?];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v65[0] = *(a1 + 56);
    v65[1] = v7;
    v65[2] = *(*(v8 + 8) + 24);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
    v58 = 0;
    v54 = [(VNMetalContext *)v57 bindPixelBuffersToTextures:v9 error:&v58];
    v53 = v58;

    objc_autoreleasePoolPop(v6);
    if (!v54)
    {
      if (a2)
      {
        v33 = v53;
        v32 = 0;
        *a2 = v53;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_22;
    }

    v43 = [v54 objectAtIndexedSubscript:0];
    v51 = [v54 objectAtIndexedSubscript:1];
    v50 = [v54 objectAtIndexedSubscript:2];
    v10 = *(a1 + 32);
    v56 = v43;
    if (v10)
    {
      v11 = [v10 metalContext];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 8);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71__VNRemoveBackgroundProcessor__createConstraintsTextureFromMask_error___block_invoke;
      aBlock[3] = &unk_1E77B5EE0;
      v52 = v14;
      v60 = v52;
      v15 = _Block_copy(aBlock);
      v16 = [(VNMetalContext *)v12 commandQueueReturnError:a2];
      v47 = v16;
      if (v16)
      {
        v17 = [v16 commandBuffer];
        v18 = [v56 width];
        v19 = [v56 height];
        v55 = v15[2](v15, v18, v19, 10);
        v49 = v15[2](v15, v18, v19, 10);
        v48 = v15[2](v15, v18, v19, 10);
        v20 = v15[2](v15, v18, v19, 10);
        v21 = objc_alloc(MEMORY[0x1E6974640]);
        LODWORD(v22) = 1063675494;
        LODWORD(v23) = 1.0;
        v46 = [v21 initWithDevice:v52 thresholdValue:0 maximumValue:v22 linearGrayColorTransform:v23];
        v44 = v12;
        v24 = objc_alloc(MEMORY[0x1E6974648]);
        LODWORD(v25) = 1036831949;
        LODWORD(v26) = 1.0;
        v45 = [v24 initWithDevice:v52 thresholdValue:0 maximumValue:v25 linearGrayColorTransform:v26];
        v27 = [objc_alloc(MEMORY[0x1E6974570]) initWithDevice:v52 kernelWidth:25 kernelHeight:25];
        [v46 encodeToCommandBuffer:v17 sourceTexture:v56 destinationTexture:v20];
        [v27 encodeToCommandBuffer:v17 sourceTexture:v20 destinationTexture:v49];
        [v45 encodeToCommandBuffer:v17 sourceTexture:v56 destinationTexture:v20];
        [v27 encodeToCommandBuffer:v17 sourceTexture:v20 destinationTexture:v48];
        v28 = v10[56];
        v29 = [v55 width];
        v30 = [v55 height];
        v66[0] = v49;
        v66[1] = v48;
        v66[2] = v55;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
        [VNMetalContext encodeCommandsForBuffer:v44 state:v17 label:v28 width:v29 height:v30 textures:v31 buffers:0 block:?];

        [v17 commit];
        v12 = v44;
      }

      else
      {
        v55 = 0;
      }

      v34 = v55;
      if (v55)
      {
        if (*(*(a1 + 32) + 440) || (v64 = v56, [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1], v35 = objc_claimAutoreleasedReturnValue(), -[VNMetalContext createGuidedFilterForTextures:referenceTexture:error:](v57, v35, v51, a2), v36 = objc_claimAutoreleasedReturnValue(), v37 = *(a1 + 32), v38 = *(v37 + 440), *(v37 + 440) = v36, v38, v35, *(*(a1 + 32) + 440)))
        {
          v63 = v56;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
          v62 = v55;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
          v61 = v50;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
          v32 = [(VNMetalContext *)v57 upsampleTextures:v39 referenceTexture:v51 constraintsTextures:v40 upsampledTextures:v41 filter:*(*(a1 + 32) + 440) waitForCompletion:0 error:a2];
        }

        else
        {
          v32 = 0;
        }

        v34 = v55;
        goto LABEL_21;
      }
    }

    else
    {

      v34 = 0;
    }

    v32 = 0;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v32 = 0;
LABEL_23:

  return v32;
}

id __71__VNRemoveBackgroundProcessor__createConstraintsTextureFromMask_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a4 width:a2 height:a3 mipmapped:0];
  [v5 setUsage:3];
  v6 = [*(a1 + 32) newTextureWithDescriptor:v5];

  return v6;
}

uint64_t __57__VNRemoveBackgroundProcessor__verifyImageIsFullyOpaque___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  if (v2 < 1)
  {
LABEL_8:
    *(v1 + 32) = 1;
  }

  else
  {
    v3 = 0;
    v4 = *v1;
    v5 = *(v1 + 16);
    v6.i64[0] = 0xFF000000FF000000;
    v6.i64[1] = 0xFF000000FF000000;
    while (v5 < 1)
    {
LABEL_7:
      ++v3;
      v4 = (v4 + (*(v1 + 24) & 0xFFFFFFFFFFFFFFFCLL));
      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
    v8 = v4;
    while ((vminvq_u8(vcgeq_u8(*v8, v6)) & 0x80) != 0)
    {
      v7 += 4;
      ++v8;
      if (v7 >= v5)
      {
        goto LABEL_7;
      }
    }
  }

  return [*(a1 + 32) dispatchReportBlockCompletion];
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  if (v17)
  {
    v35 = 0;
    if ([VNValidationUtilities getBOOLValue:&v35 forKey:@"VNRemoveBackgroundProcessorOption_PerformInPlace" inOptions:v16 withDefaultValue:0 error:a8])
    {
      v34 = 0;
      if ([VNValidationUtilities getBOOLValue:&v34 forKey:@"VNRemoveBackgroundProcessorOption_CropResult" inOptions:v16 withDefaultValue:0 error:a8])
      {
        v33 = 0;
        if ([VNValidationUtilities getBOOLValue:&v33 forKey:@"VNRemoveBackgroundProcessorOption_ReturnMask" inOptions:v16 withDefaultValue:0 error:a8])
        {
          v32 = 0;
          v18 = [VNValidationUtilities getOptionalObject:&v32 ofClass:objc_opt_class() forKey:@"VNRemoveBackgroundProcessorOption_MaskObservation" inOptions:v16 error:a8];
          v19 = v32;
          if (v18)
          {
            v20 = [v17 width];
            v21 = x * v20;
            v22 = width * v20;
            v23 = [v17 height];
            v24 = y * v23;
            v25 = height * v23;
            if (v35 == 1)
            {
              v26 = CVPixelBufferRetain([v17 originalPixelBuffer]);
              *a7 = v26;
              if (!v26 || CVPixelBufferGetPixelFormatType(v26) != 1111970369 || !CVPixelBufferGetIOSurface(*a7) || v33 == 1)
              {
                if (a8)
                {
                  v27 = [MEMORY[0x1E696AD98] numberWithBool:v35];
                  *a8 = [VNError errorForInvalidOption:v27 named:@"performInPlace" localizedDescription:@"Conditions for in-place execution not met"];
                }

                goto LABEL_13;
              }

LABEL_18:
              if (!v19)
              {
                [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
                v31 = [v17 croppedBufferWithWidth:self->_networkWidth height:self->_networkHeight format:1111970369 cropRect:v16 options:a8 error:{v21, v24, v22, v25}];
                if (!v31)
                {
LABEL_13:
                  CVPixelBufferRelease(*a7);
                  v28 = 0;
                  *a7 = 0;
LABEL_23:

                  goto LABEL_15;
                }

                [v16 setObject:v31 forKeyedSubscript:@"VNRemoveBackgroundProcessorOption_LowResInput"];
              }

              v28 = 1;
              goto LABEL_23;
            }

            if (v33)
            {
              goto LABEL_18;
            }

            v30 = [v17 croppedBufferWithWidth:v22 height:v25 format:1111970369 cropRect:v16 options:a8 error:{v21, v24, v22, v25}];
            *a7 = v30;
            if (v30)
            {
              goto LABEL_18;
            }
          }

          v28 = 0;
          goto LABEL_23;
        }
      }
    }
  }

  v28 = 0;
LABEL_15:

  return v28;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = VNRemoveBackgroundProcessor;
  if ([(VNEspressoModelFileBasedDetector *)&v24 completeInitializationForSession:v6 error:a4])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"];
    v8 = [(VNEspressoModelFileBasedDetector *)self getWidth:&self->_networkWidth height:&self->_networkHeight ofEspressoModelNetworkBlobNamed:v7 error:a4];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"saliency"];
      v10 = [(VNEspressoModelFileBasedDetector *)self bindBuffer:&self->_outputMaskEspressoBuffer toNetworkOutputBlobName:v9 error:a4];

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"gating_confidence"];
        v12 = [(VNEspressoModelFileBasedDetector *)self bindBuffer:&self->_outputConfidenceEspressoBuffer toNetworkOutputBlobName:v11 error:a4];

        if (v12)
        {
          v13 = [(VNDetector *)self metalContext];
          v14 = [(VNMetalContext *)v13 computePipelineStateForFunctionWithName:a4 error:?];
          assembleConstraintsState = self->_assembleConstraintsState;
          self->_assembleConstraintsState = v14;

          if (self->_assembleConstraintsState)
          {
            v16 = [(VNMetalContext *)v13 computePipelineStateForFunctionWithName:a4 error:?];
            applyMaskComputeState = self->_applyMaskComputeState;
            self->_applyMaskComputeState = v16;

            if (self->_applyMaskComputeState)
            {
              v18 = [(VNMetalContext *)v13 computePipelineStateForFunctionWithName:a4 error:?];
              copyCropComputeState = self->_copyCropComputeState;
              self->_copyCropComputeState = v18;

              if (self->_copyCropComputeState)
              {
                v20 = dispatch_semaphore_create(0);
                removeBackgroundSemaphore = self->_removeBackgroundSemaphore;
                self->_removeBackgroundSemaphore = v20;

                if (self->_removeBackgroundSemaphore)
                {
                  v22 = 1;
LABEL_15:

                  goto LABEL_11;
                }

                if (a4)
                {
                  [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create semaphore"];
                  *a4 = v22 = 0;
                  goto LABEL_15;
                }
              }
            }
          }

          v22 = 0;
          goto LABEL_15;
        }
      }
    }
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (void)dealloc
{
  removeBackgroundSemaphore = self->_removeBackgroundSemaphore;
  if (removeBackgroundSemaphore)
  {
    dispatch_semaphore_signal(removeBackgroundSemaphore);
  }

  v4.receiver = self;
  v4.super_class = VNRemoveBackgroundProcessor;
  [(VNDetector *)&v4 dealloc];
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"];

  return v3;
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"subject_lifting_gen1_rev5_gv8dsz6vxu_multihead_int8.espresso"];

  return v3;
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

@end