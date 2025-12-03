@interface VNRectangleDetector
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)dealloc;
@end

@implementation VNRectangleDetector

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v149 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v19 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v19)
  {
    v20 = 0;
    goto LABEL_54;
  }

  v115 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (!v115 || (v147 = 0, ![VNValidationUtilities getIntValue:&v147 forKey:@"VNRectangleDetectorProcessOption_Version" inOptions:optionsCopy minimumValue:1 maximumValue:2 error:error]))
  {
    v20 = 0;
    goto LABEL_53;
  }

  if (v147 != 2 || [v115 width] >= 5 && objc_msgSend(v115, "height") >= 5)
  {
    v114 = [(VNDetector *)self computeDeviceOfTypes:1 forComputeStage:@"VNComputeStageMain" processingOptions:optionsCopy error:error];
    if (!v114)
    {
      goto LABEL_51;
    }

    v21 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_X"];
    [v21 doubleValue];
    v112 = v22;
    v23 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Y"];
    [v23 doubleValue];
    v109 = v24;
    v25 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Width"];
    [v25 doubleValue];
    v27 = v26;
    v28 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Hight"];
    [v28 doubleValue];
    v30 = v29;

    v146 = 0;
    if (![VNValidationUtilities getBOOLValue:&v146 forKey:@"VNRectangleDetectorProcessOption_HighAccuracy" inOptions:optionsCopy withDefaultValue:1 error:error])
    {
      goto LABEL_51;
    }

    *&v31 = width;
    *&v32 = height;
    *&v33 = x;
    *&v34 = y;
    v35.i64[0] = __PAIR64__(v34, v33);
    v35.i64[1] = __PAIR64__(v34, v33);
    v36.i64[0] = __PAIR64__(v32, v31);
    v36.i64[1] = __PAIR64__(v32, v31);
    v37 = vmovn_s16(vuzp1q_s16(vcgeq_f32(v35, xmmword_1A6038CB0), vcgeq_f32(xmmword_1A6038CB0, v36)));
    v38 = vmovn_s16(vuzp1q_s16(vcgtq_f32(xmmword_1A6038CB0, v35), vcgtq_f32(v36, xmmword_1A6038CB0)));
    v38.i16[0] = v37.i16[0];
    v38.i16[3] = v37.i16[3];
    if (vmaxv_u8(v38))
    {
      if (error)
      {
        v39 = MEMORY[0x1E696AEC0];
        v40 = VNHumanReadableCGRect(x, y, width, height);
        v41 = [v39 stringWithFormat:@"invalid region of interest: %@", v40];

        *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v41];
      }

      goto LABEL_51;
    }

    if (![v115 getCameraOpticalCenterIfAvailable:&v145])
    {
      __asm { FMOV            V0.2D, #0.5 }

      goto LABEL_39;
    }

    orientation = [v115 orientation];
    v44 = 0x3F0000003F000000;
    if (orientation <= 4)
    {
      if (orientation <= 2)
      {
        if (orientation < 2)
        {
          v45 = v145;
LABEL_37:
          v44 = vcvt_f32_f64(v45);
          goto LABEL_38;
        }

        if (orientation == 2)
        {
          _Q1.f64[0] = 1.0;
          v45.f64[0] = 1.0 - v145.f64[0];
          v51 = &v145.f64[1];
          goto LABEL_32;
        }

LABEL_38:
        _Q0 = vcvtq_f64_f32(v44);
LABEL_39:
        v107 = _Q0;
        v144 = 0.0;
        LODWORD(_Q1.f64[0]) = 1.0;
        if ([VNValidationUtilities getFloatValue:&v144 forKey:@"VNRectangleDetectorProcessOption_MinimumAspectRatio" inOptions:optionsCopy minimumValue:error maximumValue:0.0 error:_Q1.f64[0]])
        {
          v143 = 0.0;
          LODWORD(v54) = 1.0;
          if ([VNValidationUtilities getFloatValue:&v143 forKey:@"VNRectangleDetectorProcessOption_MaximumAspectRatio" inOptions:optionsCopy minimumValue:error maximumValue:0.0 error:v54])
          {
            if (v144 > v143)
            {
              if (error)
              {
                v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VNRectangleDetectorProcessOption_MinimumAspectRatio value, %f is greater than VNRectangleDetectorProcessOption_MaximumAspectRatio value, %f", v144, v143];
                *error = [VNError errorWithCode:4 message:v143];
              }

              goto LABEL_51;
            }

            v142 = 0;
            LODWORD(v55) = 1110704128;
            if ([VNValidationUtilities getFloatValue:&v142 forKey:@"VNRectangleDetectorProcessOption_QuadratureTolerance" inOptions:optionsCopy minimumValue:error maximumValue:0.0 error:v55])
            {
              v141 = 0;
              LODWORD(v57) = 1.0;
              if ([VNValidationUtilities getFloatValue:&v141 forKey:@"VNRectangleDetectorProcessOption_MinimumSize" inOptions:optionsCopy minimumValue:error maximumValue:0.0 error:v57])
              {
                v140 = 0.0;
                LODWORD(v58) = 1.0;
                if ([VNValidationUtilities getFloatValue:&v140 forKey:@"VNRectangleDetectorProcessOption_MinimumConfidence" inOptions:optionsCopy minimumValue:error maximumValue:0.0 error:v58])
                {
                  v139 = 0;
                  if ([VNValidationUtilities getIntValue:&v139 forKey:@"VNRectangleDetectorProcessOption_MaximumNumber" inOptions:optionsCopy minimumValue:1 maximumValue:0x7FFFFFFFLL error:error])
                  {
                    std::vector<float>::vector[abi:ne200100](v138, 8 * v139);
                    std::vector<float>::vector[abi:ne200100](__p, v139);
                    v59 = v138[0];
                    v136 = 0;
                    v135.data = CVPixelBufferGetBaseAddress(buffer);
                    v135.height = CVPixelBufferGetHeight(buffer);
                    v135.width = CVPixelBufferGetWidth(buffer);
                    v135.rowBytes = CVPixelBufferGetBytesPerRow(buffer);
                    height = [v115 height];
                    width = [v115 width];
                    v62 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_OriginalScaleFactor"];
                    [v62 floatValue];
                    v64 = v63;

                    v134 = 0.0;
                    [v115 getPixelFocalLengthIfAvailable:&v134];
                    *&v68 = v134;
                    if (v134 < 0.0)
                    {
                      if (!error)
                      {
                        v20 = 0;
                        goto LABEL_92;
                      }

                      v134 = [MEMORY[0x1E696AEC0] stringWithFormat:@" PixelFocalLength value is out of bounds: %f", v134];
                      [VNError errorWithCode:4 message:v134];
                      *error = v20 = 0;
LABEL_91:

LABEL_92:
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v138[0])
                      {
                        v138[1] = v138[0];
                        operator delete(v138[0]);
                      }

                      goto LABEL_52;
                    }

                    v71.f64[0] = width;
                    v71.f64[1] = height;
                    __asm { FMOV            V1.2D, #-1.0 }

                    v73 = vaddq_f64(v71, _Q1);
                    _Q1.f64[0] = v112;
                    _Q1.f64[1] = v109;
                    v113 = _Q1;
                    HIDWORD(v74) = HIDWORD(v107.f64[0]);
                    v105 = v73;
                    v75 = vmulq_n_f64(vmlaq_f64(vnegq_f64(_Q1), v73, v107), (1.0 / v64));
                    if (!(_NF ^ _VF | _ZF))
                    {
                      *&v68 = v134 / v64;
                      v134 = v134 / v64;
                    }

                    v76 = vcvt_f32_f64(v75);
                    v110 = *&v76;
                    if (v147 == 2)
                    {
                      v123 = *ymmword_1A6038CC0;
                      v124 = 0x43F000000;
                      v130 = v141;
                      v131 = v140;
                      v125 = v142;
                      v126 = v144;
                      v127 = v143;
                      v128 = LODWORD(v68);
                      v129 = v76;
                      v132 = v139;
                      v133 = 0;
                      v122 = 0;
                      v77 = QuadDetect(&v135, &v123, v59, __p[0], &v122);
                      if (v77)
                      {
                        v136 = v122;
                      }

                      goto LABEL_66;
                    }

                    if (!self->_perMeshPtr)
                    {
                      PerMeshForFFTSIZE = createPerMeshForFFTSIZE();
                      self->_perMeshPtr = PerMeshForFFTSIZE;
                      if (!PerMeshForFFTSIZE)
                      {
                        LOBYTE(v77) = 0;
                        goto LABEL_66;
                      }

                      *&v68 = v134;
                    }

                    v123 = v135;
                    *&v74 = v144;
                    *v73.f64 = v143;
                    LODWORD(v65) = v141;
                    LODWORD(v66) = v142;
                    *&v67 = v27 / v30;
                    LOBYTE(v77) = CCRectLowLevel(&v123, v68, v110, COERCE_DOUBLE(__PAIR64__(HIDWORD(v135.width), HIDWORD(v110))), v74, v73.f64[0], v65, v66, v67, v64, v140);
LABEL_66:
                    v79 = objc_alloc(MEMORY[0x1E695DF70]);
                    v80 = v136;
                    v81 = [v79 initWithCapacity:v136];
                    v82 = [optionsCopy objectForKeyedSubscript:@"VNRectangleDetectorProcessOption_TargetScaleY"];
                    intValue = [v82 intValue];

                    v84 = !v77;
                    if (!v80)
                    {
                      v84 = 1;
                    }

                    if ((v84 & 1) == 0)
                    {
                      v85 = 0;
                      v86 = 0;
                      v87 = v138[0];
                      __asm { FMOV            V0.2D, #1.0 }

                      v111 = vdivq_f64(_Q0, v105);
                      v89 = intValue + -1.0;
                      do
                      {
                        v90 = 0;
                        v91 = v147;
                        do
                        {
                          if (v91 == 2)
                          {
                            v92 = &v87[v90];
                            v93 = v64 * (v89 - v87[v90 + 1]);
                            *v92 = v64 * v87[v90];
                            v92[1] = v93;
                          }

                          *&v87[v90] = vcvt_f32_f64(vmulq_f64(v111, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v113, vcvtq_f64_f32(*&v87[v90]))))));
                          v90 += 2;
                        }

                        while (v90 != 8);
                        if (v91 == 1)
                        {
                          v94 = v87[7];
                          v95 = v87[3];
                          if (v94 >= v95)
                          {
                            v99 = v87 + 6;
                            v106 = v87[1];
                            v97 = v87 + 2;
                            v98 = v87 + 4;
                            v108 = v87[7];
                            v94 = v87[5];
                            v96 = v87;
                          }

                          else
                          {
                            v108 = v87[1];
                            v96 = v87 + 2;
                            v97 = v87 + 4;
                            v106 = v87[3];
                            v95 = v87[5];
                            v98 = v87 + 6;
                            v99 = v87;
                          }
                        }

                        else
                        {
                          v108 = v87[1];
                          v96 = v87 + 2;
                          v106 = v87[3];
                          v97 = v87 + 4;
                          v95 = v87[5];
                          v98 = v87 + 6;
                          v99 = v87;
                          v94 = v87[7];
                        }

                        v100 = [[VNRectangleObservation alloc] initWithOriginatingRequestSpecifier:v19 topLeft:*v99 topRight:v108 bottomRight:*v96 bottomLeft:v106, *v97, v95, *v98, v94];

                        v86 = v100;
                        if (v100)
                        {
                          LODWORD(v101) = *(__p[0] + v85);
                          [(VNObservation *)v100 setConfidence:v101];
                          [v81 addObject:v100];
                        }

                        v87 += 8;
                        ++v85;
                      }

                      while (v85 != v80);
                    }

                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    v134 = v81;
                    v102 = [v134 countByEnumeratingWithState:&v118 objects:v148 count:16];
                    if (v102)
                    {
                      v103 = *v119;
                      do
                      {
                        for (i = 0; i != v102; ++i)
                        {
                          if (*v119 != v103)
                          {
                            objc_enumerationMutation(v134);
                          }

                          [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:optionsCopy toObservation:*(*(&v118 + 1) + 8 * i)];
                        }

                        v102 = [v134 countByEnumeratingWithState:&v118 objects:v148 count:16];
                      }

                      while (v102);
                    }

                    v20 = v134;
                    goto LABEL_91;
                  }
                }
              }
            }
          }
        }

LABEL_51:
        v20 = 0;
LABEL_52:

        goto LABEL_53;
      }

      if (orientation == 3)
      {
        __asm { FMOV            V1.2D, #1.0 }

        v45 = vsubq_f64(_Q1, v145);
        goto LABEL_37;
      }

      v52 = v145.f64[1];
      v45.f64[0] = v145.f64[0];
LABEL_29:
      _Q1.f64[0] = 1.0 - v52;
      v45.f64[1] = _Q1.f64[0];
      goto LABEL_37;
    }

    if (orientation > 6)
    {
      if (orientation != 7)
      {
        if (orientation != 8)
        {
          goto LABEL_38;
        }

        v45.f64[0] = v145.f64[1];
        v52 = v145.f64[0];
        goto LABEL_29;
      }

      __asm { FMOV            V1.2D, #1.0 }

      v53 = vsubq_f64(_Q1, v145);
    }

    else
    {
      if (orientation != 5)
      {
        _Q1.f64[0] = 1.0;
        v45.f64[0] = 1.0 - v145.f64[1];
        v51 = &v145;
LABEL_32:
        v45.f64[1] = v51->f64[0];
        goto LABEL_37;
      }

      v53 = v145;
    }

    v44 = vrev64_s32(vcvt_f32_f64(v53));
    goto LABEL_38;
  }

  v20 = MEMORY[0x1E695E0F0];
LABEL_53:

LABEL_54:

  return v20;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v20 = v19;
  if (v19 && (v21 = [v19 height], v22 = objc_msgSend(v20, "width"), v23 = v22, v46.origin.x = x * v23, v46.size.width = width * v23, v24 = v21, v46.origin.y = y * v24, v46.size.height = height * v24, v47 = CGRectIntegral(v46), v25 = v47.origin.x, v26 = v47.origin.y, v27 = v47.size.width, v28 = v47.size.height, v45 = 0, +[VNValidationUtilities getIntValue:forKey:inOptions:minimumValue:maximumValue:error:](VNValidationUtilities, "getIntValue:forKey:inOptions:minimumValue:maximumValue:error:", &v45, @"VNRectangleDetectorProcessOption_Version", optionsCopy, 1, 2, error)))
  {
    if (v45 == 2)
    {
      if (v22 < 5 || v21 <= 4)
      {
        VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, 5);
        v33 = 1;
        goto LABEL_17;
      }

      v29 = 256.0;
      if (v27 <= v28)
      {
        if (v27 <= 256.0)
        {
          v29 = v27;
        }

        v31 = v27 / v29;
        v43 = v28 / (v27 / v29);
        v30 = roundf(v43);
      }

      else
      {
        if (v28 <= 256.0)
        {
          v30 = v28;
        }

        else
        {
          v30 = 256.0;
        }

        v31 = v28 / v30;
        v32 = v27 / (v28 / v30);
        v29 = roundf(v32);
      }
    }

    else
    {
      v31 = v28 * 0.00390625;
      v29 = 256.0;
      v30 = 256.0;
    }

    v44 = 0;
    v34 = [v20 croppedBufferWithWidth:v29 height:v30 format:1111970369 cropRect:optionsCopy options:error error:&v44 pixelBufferRepsCacheKey:{v25, v26, v27, v28}];
    v35 = v44;
    *buffer = v34;
    v33 = v34 != 0;
    if (v34)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      [optionsCopy setObject:v36 forKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_X"];

      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
      [optionsCopy setObject:v37 forKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Y"];

      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
      [optionsCopy setObject:v38 forKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Width"];

      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [optionsCopy setObject:v39 forKeyedSubscript:@"VNRectangleDetectorProcessOption_CropRect_Hight"];

      v40 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
      [optionsCopy setObject:v40 forKeyedSubscript:@"VNRectangleDetectorProcessOption_OriginalScaleFactor"];

      v41 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
      [optionsCopy setObject:v41 forKeyedSubscript:@"VNRectangleDetectorProcessOption_TargetScaleY"];

      [(VNDetector *)self recordImageCropQuickLookInfoToOptions:optionsCopy cacheKey:v35 imageBuffer:v20];
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_17:

  return v33;
}

- (void)dealloc
{
  perMeshPtr = self->_perMeshPtr;
  if (perMeshPtr)
  {
    free(perMeshPtr);
    self->_perMeshPtr = 0;
  }

  v4.receiver = self;
  v4.super_class = VNRectangleDetector;
  [(VNDetector *)&v4 dealloc];
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  if ([VNValidationUtilities getIntValue:&v10 forKey:@"VNRectangleDetectorProcessOption_Version" inOptions:options minimumValue:1 maximumValue:2 error:error])
  {
    v4 = v10 == 1;
    v5 = [[VNSizeRange alloc] initWithMinimumDimension:256 maximumDimension:-1 idealDimension:256];
    if (v4)
    {
      v6 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 pixelsWideRange:v5 pixelsHighRange:v5 aspectRatioHandling:0 idealOrientation:1 orientationAgnostic:1];
    }

    else
    {
      v6 = [[VNSupportedImageSize alloc] initWithIdealFormat:1111970369 pixelsWideRange:v5 pixelsHighRange:v5 aspectRatioHandling:1 idealOrientation:1 orientationAgnostic:1];
    }

    v8 = v6;

    v11[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end