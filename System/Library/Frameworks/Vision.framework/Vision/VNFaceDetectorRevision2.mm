@interface VNFaceDetectorRevision2
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id).cxx_construct;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)purgeIntermediates;
@end

@implementation VNFaceDetectorRevision2

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VNFaceDetectorRevision2_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNFaceDetectorRevision2 configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceDetectorRevision2 configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNFaceDetectorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __64__VNFaceDetectorRevision2_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNFaceDetectorRevision2;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorOption_MetalContextPriority"];
  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNFaceDetectorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNFaceDetectorRevision2 configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [[VNSizeRange alloc] initWithMinimumDimension:448 maximumDimension:597 idealDimension:448];
  v5 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 pixelsWideRange:v4 pixelsHighRange:v4 aspectRatioHandling:2 idealOrientation:1 orientationAgnostic:1];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
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

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (void)purgeIntermediates
{
  if (self->_faceDetector.__ptr_)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__VNFaceDetectorRevision2_purgeIntermediates__block_invoke;
    v11[3] = &unk_1E77B5998;
    v11[4] = self;
    if ((VNExecuteBlock(v11, 0) & 1) == 0)
    {
      VNValidatedLog(4, @"Exception thrown while trying to purge face detector layers.", v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10.receiver = self;
  v10.super_class = VNFaceDetectorRevision2;
  [(VNFaceDetector *)&v10 purgeIntermediates];
}

uint64_t __45__VNFaceDetectorRevision2_purgeIntermediates__block_invoke(uint64_t a1)
{
  if ((*(**(*(a1 + 32) + 56) + 88))(*(*(a1 + 32) + 56)) != 6016)
  {
    VNValidatedLog(4, @"Wiping layers for face detector unsuccessful.", v1, v2, v3, v4, v5, v6, vars0);
  }

  return 1;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v22 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
  if (v22)
  {
    v23 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    v24 = v23;
    if (v23)
    {
      v33 = handlerCopy;
      width = [v23 width];
      height = [v24 height];
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x4812000000;
      v51[3] = __Block_byref_object_copy__49;
      v51[4] = __Block_byref_object_dispose__50;
      v51[5] = "";
      memset(v52, 0, sizeof(v52));
      array = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __125__VNFaceDetectorRevision2_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
      aBlock[3] = &unk_1E77B25E0;
      bufferCopy = buffer;
      v35 = optionsCopy;
      selfCopy = self;
      v42 = v51;
      v37 = v24;
      v38 = v22;
      v44 = width;
      v45 = height;
      classCopy = class;
      v46 = x;
      v47 = y;
      v48 = width;
      v49 = height;
      v39 = recorderCopy;
      v41 = v33;
      v27 = array;
      v40 = v27;
      v28 = _Block_copy(aBlock);
      if (v28[2](v28, error, x, y, width, height))
      {
        handlerCopy = v33;
        if ([(VisionCoreRuntimeUtilities *)VNRuntimeUtilities linkTimeOrRunTimeBeforeVersion:393216])
        {
          v29 = &__block_literal_global_125;
          [v27 sortWithOptions:16 usingComparator:&__block_literal_global_125];
        }

        v30 = v27;
      }

      else
      {
        v30 = 0;
        handlerCopy = v33;
      }

      _Block_object_dispose(v51, 8);
      v53 = v52;
      std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&v53);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

uint64_t __125__VNFaceDetectorRevision2_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v120[1] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(*(a1 + 96));
  Height = CVPixelBufferGetHeight(*(a1 + 96));
  *&v116 = CVPixelBufferGetBaseAddress(*(a1 + 96));
  v12 = CVPixelBufferGetHeight(*(a1 + 96));
  *(&v116 + 1) = v12;
  v13 = CVPixelBufferGetWidth(*(a1 + 96));
  *&v117 = v13;
  *(&v117 + 1) = CVPixelBufferGetBytesPerRow(*(a1 + 96));
  v115 = 1;
  v92 = a2;
  if (![VNValidationUtilities getMTLGPUPriority:&v115 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:*(a1 + 32) withDefaultValue:1 error:a2])
  {
    return 0;
  }

  (*(**(*(a1 + 40) + 56) + 96))(*(*(a1 + 40) + 56), *(*(a1 + 40) + 80), v115);
  (*(**(*(a1 + 40) + 56) + 48))(&v113);
  v90 = a5;
  v91 = a6;
  v14 = v113;
  v15 = v114;
  if (v113 != v114)
  {
    v100 = v12;
    *&v99 = v13;
    v96 = v13;
    v98 = v12;
    do
    {
      v16 = v14[6];
      if (v16 >= 0.0)
      {
        v18 = v14[8];
        v17 = v14[9];
        v19 = v14[7];
        v20 = v19 >= 0.0 && (v16 + v17) <= *&v99;
        if (v20 && (v19 + v18) <= v100)
        {
          context = *(v14 + 8);
          v22 = v18;
          v104 = *(v14 + 9);
          v23 = v17;
          v124.origin.x = 0.0;
          v124.origin.y = 0.0;
          v121.origin.x = v16;
          v121.origin.y = v19;
          v121.size.width = v17;
          v121.size.height = v22;
          v124.size.width = v96;
          v124.size.height = v98;
          v122 = CGRectIntersection(v121, v124);
          v125.origin.x = v122.origin.x;
          v125.origin.y = v122.origin.y;
          v24 = v122.size.width;
          v25 = v122.size.height;
          v122.origin.x = v16;
          v122.origin.y = v19;
          v122.size.width = v23;
          v122.size.height = v22;
          v125.size.width = v24;
          v125.size.height = v25;
          v123 = CGRectIntersection(v122, v125);
          if (v123.size.width * v123.size.height / (v23 * v22 + v24 * v25 - v123.size.width * v123.size.height) >= 0.9999)
          {
            v14[6] = v16;
            v14[7] = v19;
            *(v14 + 8) = context;
            *(v14 + 9) = v104;
            v26 = *(*(a1 + 88) + 8);
            v27 = v26[7];
            if (v27 >= v26[8])
            {
              v28 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(v26 + 6, v14);
            }

            else
            {
              vision::mod::DetectedObject::DetectedObject(v26[7], v14);
              v28 = v27 + 80;
              v26[7] = v27 + 80;
            }

            v26[7] = v28;
          }
        }
      }

      v14 += 20;
    }

    while (v14 != v15);
  }

  v29 = objc_opt_class();
  v30 = *(a1 + 96);
  v31 = *(*(a1 + 88) + 8);
  v112[0] = v116;
  v112[1] = v117;
  [v29 printDebugInfo:*(a1 + 48) facesDataRaw:v31 + 48 faceDetectorBGRAImage:v30 tempImage:v112 session:*(a1 + 56)];
  v32 = *(*(*(a1 + 88) + 8) + 48);
  v33 = *(*(*(a1 + 88) + 8) + 56);
  v34 = v33 - v32;
  if (v33 == v32)
  {
    v87 = 1;
  }

  else
  {
    v35 = [VNValidationUtilities originatingRequestSpecifierInOptions:*(a1 + 32) error:v92];
    if (v35)
    {
      v95 = v35;
      [*(a1 + 32) setObject:v35 forKeyedSubscript:@"VNDetectorOption_OriginatingRequestSpecifier"];
      v120[0] = *(a1 + 48);
      v36 = 0x1E695D000uLL;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
      [*(a1 + 32) setObject:v37 forKeyedSubscript:@"VNDetectorProcessOption_InputImageBuffers"];

      v38 = 0;
      v39 = 0xCCCCCCCCCCCCCCCDLL * (v34 >> 4);
      v40 = v90 / Width;
      v41 = v91 / Height;
      if (v39 <= 1)
      {
        v39 = 1;
      }

      v97 = v39;
      while (1)
      {
        v101 = v38;
        v42 = *(*(*(a1 + 88) + 8) + 48) + 80 * v38;
        v44 = *(v42 + 24);
        v43 = *(v42 + 28);
        v46 = *(v42 + 32);
        v45 = *(v42 + 36);
        contexta = objc_autoreleasePoolPush();
        v48 = *(a1 + 104);
        v47 = *(a1 + 112);
        v49 = [VNFaceObservation alloc];
        v50 = a3 + (v44 * v40);
        v51 = (v50 / v48);
        v52 = a4 + (v43 * v41);
        v53 = (v52 / v47);
        v54 = ((v45 * v40) / v48);
        v55 = ((v46 * v41) / v47);
        v56 = [(VNDetectedObjectObservation *)v49 initWithOriginatingRequestSpecifier:v35 boundingBox:v51, v53, v54, v55];
        [(VNFaceObservation *)v56 setUnalignedBoundingBox:v51, v53, v54, v55];
        v58 = *(v42 + 48);
        if (v58 == 1)
        {
          *&v57 = (*(v42 + 40) * 3.1416) / 180.0;
          v99 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
          v59 = v99;
        }

        else
        {
          v59 = 0;
        }

        [(VNFaceObservation *)v56 setRoll:v59, *&v90];
        if (v58)
        {
        }

        v61 = *(v42 + 49);
        if (v61 == 1)
        {
          *&v60 = (*(v42 + 44) * 3.1416) / 180.0;
          [MEMORY[0x1E696AD98] numberWithFloat:v60];
          v98 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v62 = v98;
        }

        else
        {
          v62 = 0.0;
        }

        [(VNFaceObservation *)v56 setYaw:*&v62];
        if (v61)
        {
        }

        v119 = v56;
        v63 = [*(v36 + 3784) arrayWithObjects:&v119 count:1];
        [*(a1 + 32) setObject:v63 forKeyedSubscript:@"VNDetectorProcessOption_InputFaceObservations"];

        [*(a1 + 48) orientation];
        v64 = *(a1 + 32);
        v111 = 0;
        v65 = VNSetFaceOrientationInOptionsDictionary(v56, v64, &v111);
        v66 = v111;
        if (v65)
        {
          v67 = *(a1 + 32);
          v68 = *(*(a1 + 40) + 72);
          v69 = *(a1 + 152);
          v70 = *(a1 + 120);
          v71 = *(a1 + 128);
          v72 = *(a1 + 136);
          v73 = *(a1 + 144);
          v74 = *(a1 + 64);
          v110 = v66;
          v75 = [v68 internalProcessUsingQualityOfServiceClass:v69 options:v67 regionOfInterest:v74 warningRecorder:&v110 error:*(a1 + 80) progressHandler:{v70, v71, v72, v73}];
          v105 = v110;

          if (v75 && [v75 count] == 1)
          {
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v76 = v75;
            v77 = [v76 countByEnumeratingWithState:&v106 objects:v118 count:16];
            if (v77)
            {
              v78 = *v107;
              do
              {
                for (i = 0; i != v77; ++i)
                {
                  if (*v107 != v78)
                  {
                    objc_enumerationMutation(v76);
                  }

                  v80 = *(*(&v106 + 1) + 8 * i);
                  [v80 alignedBoundingBoxAsCGRect];
                  if (v80)
                  {
                    v80[12] = v81;
                    v80[13] = v82;
                    v80[14] = v83;
                    v80[15] = v84;
                  }

                  [*(a1 + 40) recordImageCropQuickLookInfoFromOptions:*(a1 + 32) toObservation:v80];
                }

                v77 = [v76 countByEnumeratingWithState:&v106 objects:v118 count:16];
              }

              while (v77);
            }

            v35 = v95;
            v36 = 0x1E695D000;
            [*(a1 + 72) addObjectsFromArray:v76];
            v85 = 1;
          }

          else
          {
            v86 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to align a detected bounding box" underlyingError:v105];

            v85 = 0;
            v105 = v86;
          }

          v66 = v105;
        }

        else
        {
          v85 = 0;
        }

        objc_autoreleasePoolPop(contexta);
        if (!v65)
        {
          break;
        }

        if ((v85 & 1) == 0)
        {
          if (v92)
          {
            v88 = v66;
            *v92 = v66;
          }

          break;
        }

        v38 = v101 + 1;
        if (v101 + 1 == v97)
        {
          v87 = 1;
          goto LABEL_60;
        }
      }
    }

    v87 = 0;
LABEL_60:
  }

  *&v112[0] = &v113;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](v112);
  return v87;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v21 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_17;
  }

  width = [v21 width];
  height = [v22 height];
  if (width >= height)
  {
    v25 = height;
  }

  else
  {
    v25 = width;
  }

  if (v25 <= 0x1BF)
  {
    VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, 448);
  }

  v45 = 1;
  if ([VNValidationUtilities getMTLGPUPriority:&v45 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:optionsCopy withDefaultValue:1 error:error])
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v47 = CGRectIntegral(v46);
    v26 = v47.origin.x;
    v27 = v47.origin.y;
    v28 = v47.size.width;
    v29 = v47.size.height;
    v30 = v47.size.width;
    v31 = v47.size.height;
    v43 = v47.size.height;
    v44 = v47.size.width;
    (*(*self->_faceDetector.__ptr_ + 24))(self->_faceDetector.__ptr_, &v43);
    v34 = v33 < v44;
    v35 = v32 < v43;
    if (v34 && v35)
    {
      v36 = v33;
    }

    else
    {
      v36 = v30;
    }

    if (v34 && v35)
    {
      v37 = v32;
    }

    else
    {
      v37 = v31;
    }

    v42 = 0;
    v38 = [v22 croppedBufferWithWidth:v36 height:v37 format:1111970369 cropRect:optionsCopy options:error error:&v42 pixelBufferRepsCacheKey:{v26, v27, v28, v29}];
    v39 = v42;
    *buffer = v38;
    v40 = v38 != 0;
    if (v38)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v39 imageBuffer:v22];
    }
  }

  else
  {
LABEL_17:
    v40 = 0;
  }

  return v40;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v55.receiver = self;
  v55.super_class = VNFaceDetectorRevision2;
  if ([(VNDetector *)&v55 completeInitializationForSession:sessionCopy error:error])
  {
    v7 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
    if (v7)
    {
      v37 = VNFrameworkBundle();
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"6ziz6uinva_opt.espresso"];
      v9 = [v37 pathForResource:v8 ofType:@"net"];

      if (v9)
      {
        configurationOptions = [(VNDetector *)self configurationOptions];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        NSLog(&cfstr_FbbaCreatingVn.isa, v12);

        v36 = [VNFaceBBoxAligner supportedComputeStageDevicesForOptions:configurationOptions error:error];
        v13 = [configurationOptions mutableCopy];
        v56 = @"VNComputeStageMain";
        v14 = [v36 objectForKeyedSubscript:@"VNComputeStageMain"];
        firstObject = [v14 firstObject];
        v57[0] = firstObject;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        [v13 setObject:v16 forKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];

        v17 = [v13 copy];
        v18 = [sessionCopy detectorOfType:@"VNFaceBoxAlignerType" configuredWithOptions:v17 error:error];
        faceBBoxAligner = self->_faceBBoxAligner;
        self->_faceBBoxAligner = v18;

        if (self->_faceBBoxAligner && [VNValidationUtilities getBOOLValue:&self->_preferBackgroundProcessing forKey:@"VNDetectorOption_PreferBackgroundProcessing" inOptions:configurationOptions withDefaultValue:0 error:error])
        {
          v39 = 0;
          v40 = &v39;
          v41 = 0x8812000000;
          v42 = __Block_byref_object_copy__1551;
          v43 = __Block_byref_object_dispose__1552;
          v44 = " 0";
          v45 = 0x3DCCCCCD3F0CCCCDLL;
          v47 = 256;
          v48 = 0x5FFFFFFFFLL;
          v49 = 65552;
          *v50 = 0u;
          *__p = 0u;
          v52 = 0u;
          v53 = 0;
          v54 = 1041865114;
          v46 = 0;
          v20 = v9;
          uTF8String = [v9 UTF8String];
          std::string::__assign_external((v40 + 10), uTF8String);
          v22 = [VNComputeDeviceUtilities isNeuralEngineComputeDevice:v7];
          *(v40 + 64) = v22;
          v23 = [VNComputeDeviceUtilities isGPUComputeDevice:v7];
          *(v40 + 65) = v23;
          v24 = [VNEspressoHelpers espressoDeviceIDForComputeDevice:v7];
          v25 = v40;
          *(v40 + 17) = v24;
          if (self->_preferBackgroundProcessing && (*(v25 + 65) & 1) != 0)
          {
            v26 = 5;
          }

          else
          {
            v26 = [VNEspressoHelpers espressoEngineForComputeDevice:v7];
            v25 = v40;
          }

          *(v25 + 18) = v26;
          v28 = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v7];
          v29 = v40;
          *(v40 + 19) = v28;
          if (*(v29 + 65) == 1)
          {
            metalContext = [(VNDetector *)self metalContext];
            v31 = metalContext;
            if (metalContext)
            {
              v32 = *(metalContext + 8);
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;
            *(v40 + 17) = espresso_device_id_for_metal_device();
          }

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __66__VNFaceDetectorRevision2_completeInitializationForSession_error___block_invoke;
          aBlock[3] = &unk_1E77B25B8;
          aBlock[4] = self;
          aBlock[5] = &v39;
          v34 = _Block_copy(aBlock);
          v27 = VNExecuteBlock(v34, error);

          _Block_object_dispose(&v39, 8);
          if (SHIBYTE(v52) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(__p[0]) < 0)
          {
            operator delete(v50[0]);
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"could not locate the face detection model file"];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end