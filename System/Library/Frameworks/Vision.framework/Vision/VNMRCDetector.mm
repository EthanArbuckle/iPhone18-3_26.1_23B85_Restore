@interface VNMRCDetector
+ (id)espressoModelFileNameForConfigurationOptions:(id)options;
+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)dealloc;
@end

@implementation VNMRCDetector

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v41[0] = 0;
  if (![VNValidationUtilities getBOOLValue:v41 forKey:@"VNMRCDetectorProcessOption_UseMLBasedDetector" inOptions:optionsCopy error:error])
  {
    v23 = 0;
    goto LABEL_25;
  }

  v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNMRCDetectorProcessOption_MRCDecoderOptions" inOptions:optionsCopy error:error];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69C6798]];

    valuePtr = 0;
    if (v19 && (CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr), valuePtr) && valuePtr != 0x20000 && valuePtr != 0x10000)
    {
      v22 = [VNValidationUtilities requiredObjectOfClass:0 forKey:@"VNMRCDetectorProcessOption_MRCSample" inOptions:optionsCopy error:error];
      if (v22)
      {
LABEL_20:
        [v18 setObject:self->_mrcContext forKeyedSubscript:*MEMORY[0x1E69C67A0]];
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__24283;
        v38 = __Block_byref_object_dispose__24284;
        v39 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __115__VNMRCDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
        aBlock[3] = &unk_1E77B4B10;
        v33 = v41[0];
        aBlock[4] = self;
        v28 = v18;
        v30 = &v34;
        bufferCopy = buffer;
        v32 = v22;
        v29 = optionsCopy;
        v24 = _Block_copy(aBlock);
        if (VNExecuteBlock(v24, error))
        {
          v23 = v35[5];
        }

        else
        {
          v23 = 0;
        }

        _Block_object_dispose(&v34, 8);
        CFRelease(v22);
        goto LABEL_24;
      }
    }

    else
    {
      v26 = recorderCopy;
      v20 = optionsCopy;
      if (self && ([VNValidationUtilities requiredObjectOfClass:0 forKey:@"VNMRCDetectorProcessOption_MRCSample" inOptions:v20 error:error], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = MRCSampleCreateByGeneratingPyramid();
        if (!v22)
        {
          if (error)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"unable to generate pyramid data"];
            *error = v22 = 0;
          }

          else
          {
            v22 = 0;
          }
        }

        CFRelease(v21);
      }

      else
      {
        v22 = 0;
      }

      recorderCopy = v26;
      if (v22)
      {
        goto LABEL_20;
      }
    }
  }

  v23 = 0;
LABEL_24:

LABEL_25:

  return v23;
}

BOOL __115__VNMRCDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 80) == 1)
  {
    MRCContextPreflightForDecoderUsingOptions();
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v106 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_56;
    }

    if (v6)
    {
      v8 = *(MEMORY[0x1E695EFD0] + 16);
      v122 = *MEMORY[0x1E695EFD0];
      v123 = v8;
      v124 = *(MEMORY[0x1E695EFD0] + 32);
      v9 = CVBufferCopyAttachment(v6, @"VNCGAffineTransformAttachment", 0);
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDataGetTypeID() && CFDataGetLength(v10) == 48)
        {
          BytePtr = CFDataGetBytePtr(v10);
          v13 = *BytePtr;
          v14 = *(BytePtr + 2);
          v123 = *(BytePtr + 1);
          v124 = v14;
          v122 = v13;
          v15 = 1;
        }

        else if (a2)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"invalid transform data in pixel buffer"];
          *a2 = v15 = 0;
        }

        else
        {
          v15 = 0;
        }

        CFRelease(v10);
        if (v15)
        {
          v121 = 0;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v116 = 0u;
          memset(err, 0, sizeof(err));
          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"detections"];
          v30 = [v7 bindBuffer:err toNetworkOutputBlobName:v29 error:a2];

          if (v30)
          {
            v141 = 0;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            v136 = 0u;
            memset(v135, 0, sizeof(v135));
            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"box_cls"];
            v32 = [v7 bindBuffer:v135 toNetworkOutputBlobName:v31 error:a2];

            if (v32)
            {
              v114 = 0;
              v112 = 0u;
              v113 = 0u;
              memset(v111, 0, sizeof(v111));
              v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"rotation"];
              v34 = [v7 bindBuffer:v111 toNetworkOutputBlobName:v33 error:a2];

              if (v34)
              {
                v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"];
                v36 = [v7 bindLockedPixelBuffer:v6 toNetworkInputBlobName:v35 error:a2];

                if (v36)
                {
                  if ([v7 executePlanAndReturnError:a2])
                  {
                    if (v118 == 1 && v117 == __PAIR128__(1, 4) && v121 == 65568)
                    {
                      if (v138 == 1 && v137 == __PAIR128__(1, 4) && (v37 = *(&v136 + 1), *(&v136 + 1) == *(&v116 + 1)) && (v38 = v136, v136 == v116) && v141 == 65568)
                      {
                        v39 = vdupq_n_s64(1uLL);
                        v40 = vceqq_s64(*(&v111[6] + 8), v39);
                        v39.i64[0] = *(&v136 + 1);
                        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(&v111[5] + 8), v39), v40))) & 1) != 0 && v111[5].i64[0] == v136 && v114 == 65568)
                        {
                          v99 = v111[0].i64[0];
                          v100 = v135[0];
                          v98 = *&err[0];
                          v47 = *(&v119 + 1);
                          v108 = 0;
                          v109 = 0;
                          v110 = 0;
                          if (*(&v136 + 1))
                          {
                            v48 = 0;
                            v49 = 0;
                            v105 = 2 * *(&v119 + 1);
                            v104 = 3 * *(&v119 + 1);
                            v50 = 4;
                            v51 = 4;
                            v52 = v136;
                            do
                            {
                              if (v52)
                              {
                                v53 = 0;
                                v54 = (v99 + 4 * v112 * v49);
                                v55 = v100 + 4 * v139 * v49;
                                v101 = v49;
                                v56 = (v98 + 4 * v119 * v49);
                                do
                                {
                                  if (v51)
                                  {
                                    v102 = v53;
                                    v103 = v54;
                                    v57 = 0;
                                    do
                                    {
                                      v58 = *(v55 + 4 * *(&v139 + 1) * v57);
                                      if (v58 > 0.1)
                                      {
                                        v59 = -*v54;
                                        if (*v54 > 0.0)
                                        {
                                          v60 = 2.0;
                                        }

                                        else
                                        {
                                          v60 = -2.0;
                                        }

                                        for (i = fabsf(*v54); i > 1.0; i = fabsf(v59))
                                        {
                                          v59 = v60 + v59;
                                        }

                                        v62 = v59 * 90.0;
                                        v63 = sqrtf(v58);
                                        if (v48 >= v110)
                                        {
                                          v68 = v108;
                                          v69 = v48 - v108;
                                          v70 = 0x6DB6DB6DB6DB6DB7 * ((v48 - v108) >> 2);
                                          v71 = v70 + 1;
                                          if ((v70 + 1) > 0x924924924924924)
                                          {
                                            std::vector<float>::__throw_length_error[abi:ne200100]();
                                          }

                                          if (0xDB6DB6DB6DB6DB6ELL * ((v110 - v108) >> 2) > v71)
                                          {
                                            v71 = 0xDB6DB6DB6DB6DB6ELL * ((v110 - v108) >> 2);
                                          }

                                          if ((0x6DB6DB6DB6DB6DB7 * ((v110 - v108) >> 2)) >= 0x492492492492492)
                                          {
                                            v72 = 0x924924924924924;
                                          }

                                          else
                                          {
                                            v72 = v71;
                                          }

                                          if (v72)
                                          {
                                            std::__allocate_at_least[abi:ne200100]<std::allocator<DetectedRectangle>>(v72);
                                          }

                                          v73 = 28 * v70;
                                          v74 = v56[v47];
                                          v75 = v56[v105];
                                          v76 = v56[v104];
                                          *v73 = *v56;
                                          *(v73 + 4) = v74;
                                          *(v73 + 8) = v75;
                                          *(v73 + 12) = v76;
                                          *(v73 + 16) = v63;
                                          *(v73 + 20) = v62;
                                          *(v73 + 24) = v57;
                                          v67 = (28 * v70 + 28);
                                          v77 = (28 * v70 - v69);
                                          memcpy((v73 - v69), v68, v69);
                                          v108 = v77;
                                          v109 = v67;
                                          v110 = 0;
                                          if (v68)
                                          {
                                            operator delete(v68);
                                          }

                                          v54 = v103;
                                        }

                                        else
                                        {
                                          v64 = v56[v47];
                                          v65 = v56[v105];
                                          v66 = v56[v104];
                                          *v48 = *v56;
                                          *(v48 + 1) = v64;
                                          *(v48 + 2) = v65;
                                          *(v48 + 3) = v66;
                                          *(v48 + 4) = v63;
                                          *(v48 + 5) = v62;
                                          *(v48 + 6) = v57;
                                          v67 = (v48 + 28);
                                        }

                                        v109 = v67;
                                        v50 = v137;
                                        v48 = v67;
                                      }

                                      ++v57;
                                    }

                                    while (v50 > v57);
                                    v38 = v136;
                                    v51 = v50;
                                    v53 = v102;
                                  }

                                  ++v56;
                                  v55 += 4;
                                  ++v54;
                                  ++v53;
                                }

                                while (v53 < v38);
                                v37 = *(&v136 + 1);
                                v52 = v38;
                                v49 = v101;
                              }

                              ++v49;
                            }

                            while (v49 < v37);
                          }

                          nonMaxSuppression(&v108);
                          v79 = v108;
                          v78 = v109;
                          std::remove_if[abi:ne200100]<std::__wrap_iter<DetectedRectangle *>,-[VNMRCDetector _performMLBasedAnalysisOnLockedPixelBuffer:sample:mrcDecoderOptions:error:]::$_0>(v108, v109);
                          v80 = v78 - v79;
                          if (v80)
                          {
                            v81 = 0x6DB6DB6DB6DB6DB7 * (v80 >> 2);
                            v82 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v81];
                            v83 = *MEMORY[0x1E69C6920];
                            v131 = *MEMORY[0x1E69C6918];
                            v132 = v83;
                            v84 = *MEMORY[0x1E69C6928];
                            v133 = *MEMORY[0x1E69C6930];
                            v134 = v84;
                            if (v81 <= 1)
                            {
                              v85 = 1;
                            }

                            else
                            {
                              v85 = v81;
                            }

                            v86 = v79 + 1;
                            do
                            {
                              v87 = *(v86 - 1);
                              v88 = vcvtq_f64_f32(vrev64_s32(v87));
                              v89 = vaddq_f64(v88, vcvtq_f64_f32(vrev64_s32(vsub_f32(*(v86 - 8), v87))));
                              v126 = *&v88.f64[1];
                              v127 = v88;
                              v128 = v89;
                              v129 = v89;
                              v130 = v88.f64[0];
                              if (*(v86 + 2) <= 3u)
                              {
                                v90 = MRCRegionCreate();
                                [v82 addObject:v90];
                              }

                              v86 = (v86 + 28);
                              --v85;
                            }

                            while (v85);
                            v91 = MRCDecoderCreateWithOptions();
                            if (v91)
                            {
                              v126 = 0;
                              v92 = MRCDecoderDecodeSampleWithRegions();
                              v93 = v92;
                              if (v92)
                              {
                                v125 = v92;
                                v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
                              }

                              else
                              {
                                if (a2)
                                {
                                  v94 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v95 = CFErrorCopyDescription(v126);
                                  v96 = [v94 initWithFormat:@"Could not decode sample: %@", v95];

                                  *a2 = [VNError errorForDataUnavailableWithLocalizedDescription:v96];
                                }

                                CFRelease(v126);
                                v22 = 0;
                              }

                              CFRelease(v91);
                              v79 = v108;
                            }

                            else if (a2)
                            {
                              [VNError errorForInternalErrorWithLocalizedDescription:@"unable to create MRCDecoder"];
                              *a2 = v22 = 0;
                            }

                            else
                            {
                              v22 = 0;
                            }
                          }

                          else
                          {
                            v22 = MEMORY[0x1E695E0F0];
                          }

                          if (v79)
                          {
                            v109 = v79;
                            operator delete(v79);
                          }

                          goto LABEL_57;
                        }

                        if (a2)
                        {
                          v23 = [VNError errorForDataUnavailableWithLocalizedDescription:@"returned buffer from network was not in expected format - _outputRotationEspressoBuffer"];
                          goto LABEL_21;
                        }
                      }

                      else if (a2)
                      {
                        v23 = [VNError errorForDataUnavailableWithLocalizedDescription:@"returned buffer from network was not in expected format - _outputScoresEspressoBuffer"];
                        goto LABEL_21;
                      }
                    }

                    else if (a2)
                    {
                      v23 = [VNError errorForDataUnavailableWithLocalizedDescription:@"returned buffer from network was not in expected format - outputBoxesEspressoBuffer"];
                      goto LABEL_21;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_56:
        v22 = 0;
        goto LABEL_57;
      }

      if (!a2)
      {
        goto LABEL_56;
      }

      v23 = [VNError errorForDataUnavailableWithLocalizedDescription:@"AffineTransform missing afterCropAndScale"];
    }

    else
    {
      if (!a2)
      {
        goto LABEL_56;
      }

      v23 = [VNError errorForDataUnavailableWithLocalizedDescription:@"image is unavailable"];
    }

LABEL_21:
    v22 = 0;
    *a2 = v23;
LABEL_57:

    goto LABEL_58;
  }

  v107 = *(a1 + 48);
  v16 = v4;
  if (!v5)
  {
    goto LABEL_28;
  }

  v17 = MRCDecoderCreateWithOptions();
  if (v17)
  {
    v18 = [v107 objectForKeyedSubscript:@"VNMRCDetectorProcessOption_SegmentationMask"];

    if (v18)
    {
      CVPixelBufferLockBaseAddress(v18, 1uLL);
      CVPixelBufferGetBaseAddress(v18);
      CVPixelBufferGetWidth(v18);
      CVPixelBufferGetHeight(v18);
      CVPixelBufferGetBytesPerRow(v18);
      v97 = [v16 objectForKey:*MEMORY[0x1E69C67C0]];
      v19 = MRCSegmentationMaskCreate();
      *&err[0] = 0;
      v20 = MRCDecoderDecodeSampleWithSegmentationMask();
      v21 = v20;
      if (v20)
      {
        v135[0] = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:{1, v97}];
      }

      else
      {
        if (a2)
        {
          v26 = objc_alloc(MEMORY[0x1E696AEC0]);
          v27 = CFErrorCopyDescription(*&err[0]);
          v28 = [v26 initWithFormat:@"Could not decode sample: %@", v27];

          *a2 = [VNError errorForDataUnavailableWithLocalizedDescription:v28];
        }

        CFRelease(*&err[0]);
        v22 = 0;
      }

      CFRelease(v19);
      CVPixelBufferUnlockBaseAddress(v18, 1uLL);
    }

    else
    {
      *&err[0] = 0;
      v24 = MRCDecoderDecodeSample();
      v25 = v24;
      if (v24)
      {
        v135[0] = v24;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:1];
      }

      else
      {
        if (a2)
        {
          v41 = objc_alloc(MEMORY[0x1E696AEC0]);
          v42 = CFErrorCopyDescription(*&err[0]);
          v43 = [v41 initWithFormat:@"Could not decode sample: %@", v42];

          *a2 = [VNError errorForDataUnavailableWithLocalizedDescription:v43];
        }

        CFRelease(*&err[0]);
        v22 = 0;
      }
    }

    CFRelease(v17);
    goto LABEL_51;
  }

  if (a2)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"unable to create MRCDecoder"];
    *a2 = v22 = 0;
  }

  else
  {
LABEL_28:
    v22 = 0;
  }

LABEL_51:

LABEL_58:
  v44 = *(*(a1 + 56) + 8);
  v45 = *(v44 + 40);
  *(v44 + 40) = v22;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v53 = 0;
  if ([VNValidationUtilities getBOOLValue:&v53 forKey:@"VNMRCDetectorProcessOption_UseMLBasedDetector" inOptions:optionsCopy error:error])
  {
    if (v53 == 1 && ([optionsCopy objectForKeyedSubscript:@"VNMRCDetectorProcessOption_SegmentationMask"], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
    {
      v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
      v21 = v20;
      if (v20)
      {
        width = [v20 width];
        height = [v21 height];
        *v52 = *MEMORY[0x1E695EFF8];
        v50 = 0.0;
        v51 = 0.0;
        [optionsCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
        [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_DoNotCacheRepresentations"];
        v24 = width * width / (height * height);
        if (v24 >= 1.0)
        {
          v25 = 1;
        }

        else
        {
          v25 = 257;
        }

        v26 = [v21 cropAndScaleBufferWithWidth:self->_networkWidth height:self->_networkHeight cropRect:1111970369 format:v25 imageCropAndScaleOption:optionsCopy options:error error:x * width calculatedNormalizedOriginOffset:y * height calculatedScaleX:v52 calculatedScaleY:{&v51, &v50}];
        *buffer = v26;
        v18 = v26 != 0;
        if (v26)
        {
          v27 = [optionsCopy objectForKeyedSubscript:@"VNMRCDetectorProcessOption_MaxDimensionSideScale"];
          VisionCoreImagePointForNormalizedPoint();
          v29 = v28;
          v31 = v30;
          v52[0] = v28;
          v52[1] = v30;
          networkWidth = self->_networkWidth;
          networkHeight = self->_networkHeight;
          v35 = v50;
          v34 = v51;
          v36 = *(MEMORY[0x1E695EFD0] + 16);
          *&v49.a = *MEMORY[0x1E695EFD0];
          *&v49.c = v36;
          *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
          if (v24 >= 1.0)
          {
            v39 = *(MEMORY[0x1E695EFD0] + 16);
            *&v56.a = *MEMORY[0x1E695EFD0];
            *&v56.c = v39;
            *&v56.tx = *(MEMORY[0x1E695EFD0] + 32);
            CGAffineTransformMakeScale(&t1, 1.0 / v51, 1.0 / v50);
            CGAffineTransformConcat(&v49, &v56, &t1);
            t1 = v49;
            v37 = -v29;
            v38 = -v31;
          }

          else
          {
            CGAffineTransformMakeTranslation(&v49, networkWidth * -0.5, networkHeight * -0.5);
            t1 = v49;
            CGAffineTransformMakeRotation(&t2, 1.57079633);
            CGAffineTransformConcat(&v56, &t1, &t2);
            v49 = v56;
            t1 = v56;
            CGAffineTransformMakeTranslation(&t2, vcvtd_n_f64_u64(networkHeight, 1uLL), vcvtd_n_f64_u64(networkWidth, 1uLL));
            CGAffineTransformConcat(&v56, &t1, &t2);
            v49 = v56;
            t1 = v56;
            CGAffineTransformMakeScale(&t2, 1.0 / v35, 1.0 / v34);
            CGAffineTransformConcat(&v56, &t1, &t2);
            v49 = v56;
            t1 = v56;
            v37 = -v31;
            v38 = -v29;
          }

          CGAffineTransformMakeTranslation(&t2, v37, v38);
          CGAffineTransformConcat(&v56, &t1, &t2);
          v49 = v56;
          v47 = *&v56.c;
          v48 = *&v56.a;
          v46 = *&v56.tx;
          if (v27)
          {
            [v27 doubleValue];
            v41 = vmulq_n_f64(v48, v40);
            v42 = vmulq_n_f64(v47, v40);
            v43 = vmulq_n_f64(v46, v40);
          }

          else
          {
            v42 = *&v56.c;
            v41 = *&v56.a;
            v43 = *&v56.tx;
          }

          *&v56.a = v41;
          *&v56.c = v42;
          *&v56.tx = v43;
          v44 = *buffer;
          v45 = CFDataCreate(*MEMORY[0x1E695E480], &v56, 48);
          if (v45)
          {
            CVBufferSetAttachment(v44, @"VNCGAffineTransformAttachment", v45, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v45);
          }
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)dealloc
{
  mrcContext = self->_mrcContext;
  if (mrcContext)
  {
    CFRelease(mrcContext);
    self->_mrcContext = 0;
  }

  v4.receiver = self;
  v4.super_class = VNMRCDetector;
  [(VNDetector *)&v4 dealloc];
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v16.receiver = self;
  v16.super_class = VNMRCDetector;
  if (-[VNEspressoModelFileBasedDetector completeInitializationForSession:error:](&v16, sel_completeInitializationForSession_error_, sessionCopy, error) && ([MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[VNEspressoModelFileBasedDetector getWidth:height:ofEspressoModelNetworkBlobNamed:error:](self, "getWidth:height:ofEspressoModelNetworkBlobNamed:error:", &self->_networkWidth, &self->_networkHeight, v7, error), v7, v8))
  {
    v9 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
    v10 = v9 != 0;
    if (v9)
    {
      v11 = objc_alloc(MEMORY[0x1E695DF20]);
      v18[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v17 = *MEMORY[0x1E69C6788];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      v14 = [v11 initWithObjects:v12 forKeys:v13];

      self->_mrcContext = MRCContextCreateWithOptions();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)espressoModelInputImageDimensionsBlobNameForConfigurationOptions:(id)options
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"input_image"];

  return v3;
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)options
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mrcdetector.espresso"];

  return v3;
}

@end