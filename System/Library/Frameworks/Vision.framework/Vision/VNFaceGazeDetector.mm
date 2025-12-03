@interface VNFaceGazeDetector
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNFaceGazeDetector

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v14 = [VNValidationUtilities requiredFaceObservationsInOptions:optionsCopy error:error];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  v16 = [v14 count];
  if (!v16)
  {
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  *(&v28 + 5) = 0;
  *&v28 = 0;
  if (![VNValidationUtilities getFloatValue:&v28 forKey:@"VNFaceGazeDetectorProcessOption_GazeHeatMapThreshold" inOptions:optionsCopy error:error])
  {
    goto LABEL_15;
  }

  if (![VNValidationUtilities getFloatValue:&v28 + 8 forKey:@"VNFaceGazeDetectorProcessOption_MinimumFaceDimension" inOptions:optionsCopy error:error])
  {
    goto LABEL_15;
  }

  v27 = 0.0;
  if (![VNValidationUtilities getFloatValue:&v27 forKey:@"VNFaceGazeDetectorProcessOption_CommonGazeLocationRadius" inOptions:optionsCopy error:error])
  {
    goto LABEL_15;
  }

  *&v17 = v27;
  if (v27 > 0.0)
  {
    ptr = self->_gazeFollowPredictor.__ptr_;
    v19 = *(ptr + 29);
    if (v19 >= *(ptr + 30))
    {
      v19 = *(ptr + 30);
    }

    *&v17 = v19 * v27;
    if ((v19 * v27) < 1.0)
    {
      *&v17 = 1.0;
    }

    DWORD1(v28) = *&v17;
  }

  v26 = 0;
  if (![VNValidationUtilities getBOOLValue:&v26 forKey:@"VNFaceGazeDetectorProcessOption_DontFollowGaze" inOptions:optionsCopy withDefaultValue:0 error:error, v17])
  {
LABEL_15:
    v21 = 0;
    goto LABEL_17;
  }

  BYTE12(v28) = v26;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v21 = v20;
  if (v20)
  {
    [v20 width];
    [v21 height];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x4812000000;
    v24[3] = __Block_byref_object_copy__36490;
    v24[4] = __Block_byref_object_dispose__36491;
    v24[5] = "";
    std::vector<CamGaze_output_label>::vector[abi:ne200100](&__p, v16);
  }

LABEL_17:

  return v21;
}

void __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_2;
    aBlock[3] = &unk_1E77B65B0;
    v41 = *(a1 + 148);
    v9 = WeakRetained;
    v34 = v9;
    v39 = *(a1 + 104);
    v40 = *(a1 + 120);
    v35 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v36 = v10;
    v38 = v11;
    v37 = *(a1 + 64);
    v12 = _Block_copy(aBlock);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    v15 = *(a1 + 120);
    v16 = *(a1 + 128);
    v32 = 0;
    v17 = v12[2](v12, &v32, v13, v14, v15, v16);
    v18 = v32;
    v19 = [[VNAsyncStatus alloc] initWithStatus:v17 error:v18];
    v20 = *(*(a1 + 72) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: finish processing; currentDetector: %@", v22, v23, v24, v25, v26, v27, v9);
    kdebug_trace();
    if (*(a1 + 136) >= 2uLL)
    {
      [*(a1 + 56) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v28 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v29 = [[VNAsyncStatus alloc] initWithStatus:0 error:v28];
    v30 = *(*(a1 + 72) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }
}

void __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processRegionOfInterestBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4;
    aBlock[3] = &unk_1E77B6628;
    v42 = *(a1 + 80);
    v10 = v9;
    v50 = *(a1 + 220);
    v11 = *(a1 + 136);
    v39 = v10;
    v45 = v11;
    v12 = *(a1 + 32);
    v51 = *(a1 + 216);
    v13 = *(a1 + 104);
    v43 = *(a1 + 88);
    v44 = v13;
    v14 = *(a1 + 160);
    v46 = *(a1 + 144);
    v47 = v14;
    *&v15 = v12;
    *(&v15 + 1) = *(a1 + 40);
    v36 = v15;
    v16 = *(a1 + 48);
    v17 = *(a1 + 192);
    v48 = *(a1 + 176);
    v49 = v17;
    v18 = *(a1 + 56);
    *&v19 = v16;
    *(&v19 + 1) = v18;
    v40 = v36;
    v41 = v19;
    v52 = *(a1 + 224);
    v20 = _Block_copy(aBlock);
    v37 = 0;
    v21 = VNExecuteBlock(v20, &v37);
    v22 = v37;
    v23 = [[VNAsyncStatus alloc] initWithStatus:v21 error:v22];
    v24 = *(*(a1 + 88) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    os_unfair_lock_lock((*(*(a1 + 120) + 8) + 48));
    [*(a1 + 64) addObject:*(*(*(a1 + 88) + 8) + 40)];
    os_unfair_lock_unlock((*(*(a1 + 120) + 8) + 48));
    VNValidatedLog(1, @"processRegionOfInterestBlock: finish processing; currentDetector: %@", v26, v27, v28, v29, v30, v31, v10);
    kdebug_trace();
    if (*(a1 + 208) >= 2uLL)
    {
      [*(a1 + 72) dispatchReportBlockCompletion];
    }
  }

  else
  {
    v32 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v33 = [[VNAsyncStatus alloc] initWithStatus:0 error:v32];
    v34 = *(*(a1 + 88) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;
  }

  CVPixelBufferRelease(*(*(*(a1 + 112) + 8) + 24));
  *(*(*(a1 + 112) + 8) + 24) = 0;
}

uint64_t __70__VNFaceGazeDetector__createPixelBuffer_forGazeMapOfGazeFollow_error___block_invoke(void *a1, CVPixelBufferRef pixelBuffer)
{
  v4 = a1[4];
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a1[5])
  {
    v7 = BaseAddress;
    v8 = 0;
    v9 = 0;
    v10 = 4 * v4;
    do
    {
      memcpy(v7, *(*(a1[6] + 24) + v8), v10);
      v7 += BytesPerRow;
      ++v9;
      v8 += 24;
    }

    while (v9 < a1[5]);
  }

  return 1;
}

uint64_t __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  if (dispatch_block_wait(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (a2)
    {
      v4 = [VNError errorForExecutionTimeoutWithLocalizedDescription:@"Timed out waiting for dependent task execution"];
LABEL_8:
      v19 = 0;
      *a2 = v4;
      return v19 & 1;
    }

    goto LABEL_9;
  }

  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v5, v6, v7, v8, v9, v10, *(a1 + 32));
  if (([*(*(*(a1 + 80) + 8) + 40) completed] & 1) == 0)
  {
    if (a2)
    {
      v4 = [*(*(*(a1 + 80) + 8) + 40) error];
      goto LABEL_8;
    }

LABEL_9:
    v19 = 0;
    return v19 & 1;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5;
  aBlock[3] = &unk_1E77B6600;
  v11 = *(a1 + 32);
  v34 = *(a1 + 184);
  v12 = *(a1 + 40);
  v35 = *(a1 + 188);
  v26 = &v37;
  v27 = *(a1 + 88);
  v13 = *(a1 + 112);
  v28 = *(a1 + 104);
  v29 = v13;
  v14 = *(a1 + 136);
  v30 = *(a1 + 120);
  v31 = v14;
  v21 = *(a1 + 48);
  v15 = *(&v21 + 1);
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v24 = v21;
  v23 = v16;
  v17 = *(a1 + 168);
  v32 = *(a1 + 152);
  v33 = v17;
  v25 = *(a1 + 64);
  v36 = *(a1 + 192);
  v18 = _Block_copy(aBlock);
  CVPixelBufferLockBaseAddress(*(*(*(a1 + 104) + 8) + 24), 1uLL);
  [objc_opt_class() runSuccessReportingBlockSynchronously:v18 detector:*(a1 + 32) qosClass:*(a1 + 188) error:a2];
  CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 104) + 8) + 24), 1uLL);
  v19 = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  return v19 & 1;
}

uint64_t __127__VNFaceGazeDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5(uint64_t a1, void *a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = *(*(*(a1 + 80) + 8) + 48);
  v11 = *(*(*(a1 + 88) + 8) + 48);
  v12 = *(a1 + 104);
  v13 = *(*(*(a1 + 96) + 8) + 24);
  v14 = *(a1 + 48);
  v15 = *(a1 + 144);
  v16 = *(a1 + 152);
  v17 = *(a1 + 160);
  v18 = *(a1 + 168);
  v19 = *(a1 + 64);
  v20 = *(a1 + 56);
  v21 = v19;
  if (!v14)
  {
    goto LABEL_9;
  }

  v22 = v11 + 136 * v12;
  *(v10 + 4 * v12) = 2;
  *(v22 + 16) = -1;
  src.data = CVPixelBufferGetBaseAddress(v13);
  src.height = CVPixelBufferGetHeight(v13);
  src.width = CVPixelBufferGetWidth(v13);
  src.rowBytes = CVPixelBufferGetBytesPerRow(v13);
  v23 = *(v14 + 56);
  if ((ImageProcessing_reallocVImageBuffer(v23 + 64, *v23, *(v23 + 8), 4) & 0x80) != 0)
  {
    vImageScale_ARGB8888(&src, (v23 + 64), 0, 0x20u);
  }

  v24 = *(v23 + 80);
  v70 = *(v23 + 64);
  v71 = v24;
  if (espresso_network_bind_input_vimagebuffer_bgra8())
  {
    goto LABEL_7;
  }

  if (!espresso_plan_execute_sync())
  {
    v26 = *(v23 + 128);
    v27 = *v26;
    v28 = v26[1];
    v29 = v26[2];
    v30 = v28 > *v26;
    if (v28 <= v29)
    {
      v30 = 0;
    }

    if (v29 <= v28 || v29 <= v27)
    {
      LODWORD(v25) = v30;
    }

    else
    {
      LODWORD(v25) = 2;
    }

    *(v10 + 4 * v12) = v25;
    v32 = v20;
    v68 = v21;
    v33 = [v32 width];
    v34 = [v32 height];
    v35 = VNNormalizedRectForPixelRectInBounds(*(a1 + 112) * v33, *(a1 + 120) * v34, *(a1 + 128) * v33, *(a1 + 136) * v34, v15, v16, v17, v18);
    v38 = v37;
    v40 = v39;
    v41 = v35;
    v42 = 1.0 - v36 - v39;
    v43 = v39;
    *v22 = v41;
    *(v22 + 4) = v42;
    *&v39 = v38;
    *(v22 + 8) = v43;
    *(v22 + 12) = LODWORD(v39);
    if (v25)
    {
      if (v25 == 1)
      {
        *(v22 + 16) = 1;
LABEL_37:

        goto LABEL_38;
      }

      *(v22 + 16) = 2;
LABEL_34:
      LOBYTE(v25) = 1;
      goto LABEL_37;
    }

    *(v22 + 16) = 0;
    if (*(a1 + 196))
    {
      goto LABEL_34;
    }

    v63 = v35;
    *&pixelBuffer = v36;
    v60 = v43;
    v61 = v35;
    v62 = v42;
    v44 = [v32 croppedBufferWithWidth:**(v14 + 72) height:*(*(v14 + 72) + 8) format:1111970369 cropRect:v68 options:a2 error:{v15, v16, v17, v18}];
    if (!v44 || (pixelBuffera = [v32 croppedBufferWithWidth:*(*(v14 + 72) + 32) height:*(*(v14 + 72) + 40) format:1111970369 cropRect:v68 options:a2 error:{v63 * v33, *&pixelBuffer * v34, v38 * v33, v40 * v34}]) == 0)
    {
      v25 = 0;
      v52 = 0;
      LOBYTE(v70) = 0;
      goto LABEL_36;
    }

    v45 = *(v14 + 72);
    vision::mod::GazeFollowPredictor::releaseCachedImageBuffers(v45);
    v64 = v45;
    v47 = *v45;
    v46 = *(v45 + 8);
    if (v47 == CVPixelBufferGetWidth(v44) && (v48 = v46, v46 == CVPixelBufferGetHeight(v44)) && (v49 = *(v64 + 40), v50 = *(v64 + 32), v50 == CVPixelBufferGetWidth(pixelBuffera)) && v49 == CVPixelBufferGetHeight(pixelBuffera))
    {
      v67 = v38;
      *(v64 + 224) = (v67 * 0.5) + v61;
      *(v64 + 228) = (v60 * 0.5) + v62;
      CVPixelBufferLockBaseAddress(pixelBuffera, 1uLL);
      *(v64 + 136) = v49;
      *(v64 + 144) = v50;
      *(v64 + 128) = CVPixelBufferGetBaseAddress(pixelBuffera);
      *(v64 + 152) = CVPixelBufferGetBytesPerRow(pixelBuffera);
      CVPixelBufferLockBaseAddress(v44, 1uLL);
      *(v64 + 200) = v48;
      *(v64 + 208) = v47;
      *(v64 + 192) = CVPixelBufferGetBaseAddress(v44);
      *(v64 + 216) = CVPixelBufferGetBytesPerRow(v44);
      v51 = vision::mod::GazeFollowPredictor::runInference(v64, (a1 + 184), v22);
      CVPixelBufferUnlockBaseAddress(pixelBuffera, 1uLL);
      *(v64 + 128) = 0u;
      *(v64 + 144) = 0u;
      CVPixelBufferUnlockBaseAddress(v44, 1uLL);
      *(v64 + 192) = 0u;
      *(v64 + 208) = 0u;
      if (v51 == 128)
      {
        v52 = 1;
LABEL_32:
        v25 = pixelBuffera;
LABEL_36:
        CVPixelBufferRelease(v44);
        CVPixelBufferRelease(v25);
        LOBYTE(v25) = v52 | v70;
        goto LABEL_37;
      }
    }

    else
    {
      v51 = 10876;
    }

    if (a2)
    {
      *a2 = VNErrorForCVMLStatus(v51);
    }

    v52 = 0;
    LOBYTE(v70) = 0;
    goto LABEL_32;
  }

  espresso_plan_get_error_info();
LABEL_7:
  if (!a2)
  {
LABEL_9:
    LOBYTE(v25) = 0;
    goto LABEL_38;
  }

  VNErrorForCVMLStatus(0x295B);
  *a2 = LOBYTE(v25) = 0;
LABEL_38:

  *(*(*(a1 + 72) + 8) + 24) = v25 & 1;
  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v53, v54, v55, v56, v57, v58, *(a1 + 32));
  kdebug_trace();
  return *(*(*(a1 + 72) + 8) + 24);
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
    ptr = self->_gazePredictor.__ptr_;
    v22 = *ptr;
    v23 = *(ptr + 1);
    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v28 = 0;
    v24 = [v18 croppedBufferWithWidth:v22 height:v23 format:1111970369 cropRect:optionsCopy options:error error:&v28 pixelBufferRepsCacheKey:{x * width, y * height, width * width, height * height}];
    v25 = v28;
    *buffer = v24;
    v26 = v24 != 0;
    if (v24)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v25 imageBuffer:v18];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v15.receiver = self;
  v15.super_class = VNFaceGazeDetector;
  if ([(VNDetector *)&v15 completeInitializationForSession:session error:?])
  {
    v6 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
    if (v6)
    {
      [VNEspressoHelpers espressoEngineForComputeDevice:v6];
      [VNEspressoHelpers espressoStorageTypeForComputeDevice:v6];
      [VNEspressoHelpers espressoDeviceIDForComputeDevice:v6];
      v7 = [MEMORY[0x1E69DF8C8] camGazeV2AndReturnError:error];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 URL];
        v10 = [v9 VisionCoreFileSystemPathAndReturnError:error];

        if (v10)
        {
          std::string::basic_string[abi:ne200100]<0>(v14, [v10 UTF8String]);
          [v10 lastPathComponent];
          uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
          std::string::basic_string[abi:ne200100]<0>(&__p, uTF8String);
          operator new();
        }
      }
    }
  }

  return 0;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"image"];
  v7 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:@"gazefollowingflow-u67ev5hbea_50540_fp16.espresso" error:error];
  if (v7)
  {
    v8 = [self supportedImageSizeSetForEspressoModelAtPath:v7 inputImageBlobName:v6 analysisPixelFormatType:1111970369 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities espressoV1ModelComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end