@interface CVAPortraitVideoPipeline_Impl
+ (void)drawDisparity:(const __CVBuffer *)a3 onColor:(__CVBuffer *)a4 canonical:(BOOL)a5 rawShiftInvalidThreshold:(int)a6 focusMachineState:(int)a7 offsetX:(unint64_t)a8 offsetY:(unint64_t)a9;
- (BOOL)validateDisparityPostprocessingRequest:(id)a3 error:(id *)a4;
- (BOOL)validateMattingRequest:(id)a3 error:(id *)a4;
- (BOOL)validatePortraitRequest:(id)a3 error:(id *)a4;
- (BOOL)validateSegmentationPixelBuffer:(__CVBuffer *)a3 matchFormat:(id)a4 error:(id *)a5;
- (CVAPortraitVideoPipeline_Impl)initWithProperties:(id)a3 commandQueue:(id)a4 notificationQueue:(id)a5 error:(id *)a6;
- (CVAVideoPipelineProperties)videoPipelineProperties;
- (id).cxx_construct;
- (id)internal_extractMatteWithRequest:(id)a3 disparityPostprocessingResult:(id)a4 usePostprocessedDisparity:(BOOL)a5 dilateForegroundMask:(BOOL)a6 gravity:(CVAVector)a7 transitionData:(const TransitionData *)a8 isMattingNeeded:(BOOL)a9 mattingCompletionHandler:(id)a10 isFinalStage:(BOOL)a11 status:(int *)a12;
- (id)internal_postprocessDisparityWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 isFinalStage:(BOOL)a5 status:(int *)a6;
- (int)extractMatteWithRequest:(id)a3;
- (int)extractMatteWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 mattingCompletionHandler:(id)a5;
- (int)internal_fixFocusPositionWithDisparityPostprocessingRequest:(id)a3;
- (int)makeMetalContextWithOptionalCommandQueue:(id)a3 error:(id *)a4;
- (int)postprocessDisparityWithRequest:(id)a3;
- (int)postprocessDisparityWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4;
- (int)renderSingleEffectWithRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 error:(id *)a5 disparityPostprocessingCompletionHandler:(id)a6 mattingCompletionHandler:(id)a7 portraitCompletionHandler:(id)a8 requestFrom:(id)a9 requestTo:(id)a10;
- (int)renderWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 mattingCompletionHandler:(id)a5 portraitCompletionHandler:(id)a6;
- (void)dealloc;
- (void)internal_relightWithRequest:(id)a3 intermediateSourceBuffer:(__CVBuffer *)a4 faceKitProcessOutput:(id)a5 portraitStyleStrength:(float)a6 mattingResult:(id)a7 singleCubeData:(id)a8 portraitCompletionHandler:(id)a9 timestamp:(int64_t)a10 status:(int *)a11;
- (void)internal_renderStageLightWithRequest:(id)a3 mattingResult:(id)a4 portraitCompletionHandler:(id)a5 status:(int *)a6;
- (void)internal_renderWithRequest:(id)a3 dstBuffer:(__CVBuffer *)a4 mattingResult:(id)a5 portraitCompletionHandler:(id)a6 status:(int *)a7 timestamp:(int64_t)a8;
- (void)setVideoPipelineProperties:(id)a3;
@end

@implementation CVAPortraitVideoPipeline_Impl

- (id).cxx_construct
{
  self->_vmPostprocessingParams.useFaceAsFocus = 0;
  self->_vmPostprocessingParams.faceSizeRatioInFocus = 1.0;
  self->_vmPostprocessingParams.fillLargeHolesWithBackground = 0;
  *&self->_vmPostprocessingParams.disparityIntervalInHoleSearch = 1050673152;
  self->_vmPostprocessingParams.useTemporalRejection = 1;
  v3 = +[CVAPreferenceManager defaults];
  v4 = [v3 integerForKey:@"colorWidth"];

  if (v4 != v4)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v4, 0x80000000, 0x7FFFFFFF);
    LODWORD(v4) = 0;
  }

  self->_vmStaticParams.colorWidth = v4;
  v5 = +[CVAPreferenceManager defaults];
  v6 = [v5 integerForKey:@"colorHeight"];

  if (v6 != v6)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v6, 0x80000000, 0x7FFFFFFF);
    LODWORD(v6) = 0;
  }

  self->_vmStaticParams.colorHeight = v6;
  v7 = +[CVAPreferenceManager defaults];
  v8 = [v7 integerForKey:@"shiftWidth"];

  if (v8 != v8)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v8, 0x80000000, 0x7FFFFFFF);
    LODWORD(v8) = 0;
  }

  self->_vmStaticParams.shiftWidth = v8;
  v9 = +[CVAPreferenceManager defaults];
  v10 = [v9 integerForKey:@"shiftHeight"];

  if (v10 != v10)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v10, 0x80000000, 0x7FFFFFFF);
    LODWORD(v10) = 0;
  }

  self->_vmStaticParams.shiftHeight = v10;
  v11 = +[CVAPreferenceManager defaults];
  v12 = [v11 integerForKey:@"alphaWidth"];

  if (v12 != v12)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v12, 0x80000000, 0x7FFFFFFF);
    LODWORD(v12) = 0;
  }

  self->_vmStaticParams.alphaWidth = v12;
  v13 = +[CVAPreferenceManager defaults];
  v14 = [v13 integerForKey:@"alphaHeight"];

  if (v14 != v14)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v14, 0x80000000, 0x7FFFFFFF);
    LODWORD(v14) = 0;
  }

  self->_vmStaticParams.alphaHeight = v14;
  v15 = +[CVAPreferenceManager defaults];
  v16 = [v15 integerForKey:@"kernelSize"];

  if (v16 != v16)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v16, 0x80000000, 0x7FFFFFFF);
    LODWORD(v16) = 0;
  }

  self->_vmStaticParams.kernelSize = v16;
  v17 = +[CVAPreferenceManager defaults];
  [v17 floatForKey:@"referenceShift"];
  v19 = v18;

  self->_vmStaticParams.referenceShift = v19;
  v20 = +[CVAPreferenceManager defaults];
  [v20 floatForKey:@"guidedFilterUnconfidentWeight"];
  v22 = v21;

  self->_vmStaticParams.guidedFilterUnconfidentWeight = v22;
  v23 = +[CVAPreferenceManager defaults];
  [v23 floatForKey:@"guidedFilterMinDistToDeweight"];
  v25 = v24;

  self->_vmStaticParams.guidedFilterMinDistToDeweight = v25;
  v26 = +[CVAPreferenceManager defaults];
  [v26 floatForKey:@"alphaMaxLaplacian"];
  v28 = v27;

  self->_vmStaticParams.alphaMaxLaplacian = v28;
  v29 = +[CVAPreferenceManager defaults];
  [v29 floatForKey:@"alphaContrastExponent"];
  v31 = v30;

  self->_vmStaticParams.alphaContrastExponent = v31;
  v32 = +[CVAPreferenceManager defaults];
  [v32 floatForKey:@"shiftFilterColorStd"];
  v34 = v33;

  self->_vmStaticParams.shiftFilterColorStd = v34;
  v35 = +[CVAPreferenceManager defaults];
  [v35 floatForKey:@"shiftFilterUpdateRate"];
  v37 = v36;

  self->_vmStaticParams.shiftFilterUpdateRate = v37;
  v38 = +[CVAPreferenceManager defaults];
  [v38 floatForKey:@"maxShiftFillingInconsistency"];
  v40 = v39;

  self->_vmStaticParams.maxShiftFillingInconsistency = v40;
  v41 = +[CVAPreferenceManager defaults];
  [v41 floatForKey:@"maxShiftFillingDistFromFg"];
  v43 = v42;

  self->_vmStaticParams.maxShiftFillingDistFromFg = v43;
  v44 = +[CVAPreferenceManager defaults];
  v45 = [v44 integerForKey:@"maxDistToPushShiftEdgesFwd"];

  if (v45 != v45)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v45, 0x80000000, 0x7FFFFFFF);
    LODWORD(v45) = 0;
  }

  self->_vmStaticParams.maxDistToPushShiftEdgesFwd = v45;
  v46 = +[CVAPreferenceManager defaults];
  v47 = [v46 integerForKey:@"maxDistToPushShiftEdgesRev"];

  if (v47 != v47)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v47, 0x80000000, 0x7FFFFFFF);
    LODWORD(v47) = 0;
  }

  self->_vmStaticParams.maxDistToPushShiftEdgesRev = v47;
  v48 = +[CVAPreferenceManager defaults];
  v49 = [v48 integerForKey:@"shiftPushingBgToFgShiftDifference"];

  if (v49 != v49)
  {
    syslog(3, "Integer %ld is outside [%d, %d]", v49, 0x80000000, 0x7FFFFFFF);
    LODWORD(v49) = 0;
  }

  self->_vmStaticParams.shiftPushingBgToFgShiftDifference = v49;
  *&self->_vmDynamicParams.doDisparityHoleFilling = 257;
  self->_transitionData._inTransition = 0;
  *&self->_disparityConversion.__ptr_ = 0u;
  *&self->_focusStatsPostprocessing.__ptr_ = 0u;
  *&self->_disparityStatistics.__ptr_ = 0u;
  *&self->_stageLightStateMachine.__ptr_ = 0u;
  self->_intermediateTransitionBufferFrom.m_ptr = 0;
  self->_intermediateTransitionBufferTo.m_ptr = 0;
  self->_intermediateRelightSourceBuffer.m_ptr = 0;
  *&self->_metalContext.figMetalContext = 0u;
  *&self->_metalContext.commandQueue = 0u;
  *&self->_metalContext.pipelineLibrary = 0u;
  operator new();
}

- (int)renderSingleEffectWithRequest:(id)a3 destinationColorPixelBuffer:(__CVBuffer *)a4 error:(id *)a5 disparityPostprocessingCompletionHandler:(id)a6 mattingCompletionHandler:(id)a7 portraitCompletionHandler:(id)a8 requestFrom:(id)a9 requestTo:(id)a10
{
  v15 = a3;
  v91 = a6;
  v90 = a7;
  v89 = a8;
  v16 = a9;
  v17 = a10;
  v18 = [v15 post];
  if (v18 && ([v15 post], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) != 0))
  {
    v21 = [v15 post];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v15 background];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  if (v23)
  {
    v24 = [v15 background];
    v25 = [v24 sourceColorPixelBuffer];
    if (v21)
    {
      v26 = [v21 singleColorCube];
    }

    else
    {
      v26 = 0;
    }

    v29 = [CVAVideoPipelineLibrary colorCubePortraitRequestForPortraitVideoPipeline:self withWithSourceColorPixelBuffer:v25 destinationColorPixelBuffer:a4 cubeData:v26];
    if (v21)
    {
    }

    [v29 setParentGenericRequestFrom:v16];
    [v29 setParentGenericRequestTo:v17];
    v30 = self;
    v32 = v90;
    v31 = v91;
    v33 = v89;
    v34 = [(CVAPortraitVideoPipeline_Impl *)v30 renderWithRequest:v29 disparityPostprocessingCompletionHandler:v91 mattingCompletionHandler:v90 portraitCompletionHandler:v89];
    v35 = v34;
    if (a5 && v34 == -22914)
    {
      *a5 = +[CVAPhotoExceptionMetalResourceUnavailable error];
      v35 = -22914;
    }

    goto LABEL_64;
  }

  v27 = [v15 background];
  objc_opt_class();
  v85 = objc_opt_isKindOfClass();

  if (v21)
  {
    v28 = [v21 singleColorCube];

    if (v28)
    {
      v29 = [v21 singleColorCube];
      [v21 singleColorCube];
    }

    else
    {
      v29 = [v21 foregroundColorCube];
      [v21 backgroundColorCube];
    }
    v87 = ;
  }

  else
  {
    v87 = 0;
    v29 = 0;
  }

  v86 = [v15 background];
  v36 = [v86 mattingRequest];
  self->_vmDynamicParams.applyRotation = [v36 applyRotation];

  v37 = [v15 background];
  objc_opt_class();
  LOBYTE(v36) = objc_opt_isKindOfClass();

  if (v36)
  {
    v38 = [v15 background];
    v39 = [v38 sbufMetadata];
    metadata = self->_metadata;
    self->_metadata = v39;

    [(VideoMattingMetal *)self->_vmAccelerator setSbufMetadata:self->_metadata];
    [v38 simulatedFocalRatio];
    v42 = v41;
    if ((atomic_load_explicit(&qword_1ECDE1368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1368))
    {
      v81 = +[CVAPreferenceManager defaults];
      v84 = [v81 BOOLForKey:@"CVAPhotoFSliderOverridesPortraitStyleStrength"];

      byte_1ECDE1360 = v84;
      __cxa_guard_release(&qword_1ECDE1368);
    }

    if (byte_1ECDE1360 == 1 && ([v15 light], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
    {
      [v38 simulatedFocalRatio];
      v45 = (v44 + -1.4) / 14.6;
      v46 = fminf(v45 + 0.0, 1.0);
      if (v45 >= 0.0)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0.0;
      }

      v42 = 4.5;
    }

    else
    {
      v47 = NAN;
    }

    [v38 primaryCaptureRect];
    if (CGRectIsNull(v92))
    {
      v50 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferWidth];
      v51 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferHeight];
      v52 = v50;
      v53 = v51;
      v54 = 0.0;
      v55 = 0.0;
    }

    else
    {
      [v38 primaryCaptureRect];
    }

    [(VideoMattingMetal *)self->_vmAccelerator setPrimaryCaptureRect:v54, v55, v52, v53];
    v48 = [v38 mattingRequest];
    [v38 sourceColorGain];
    v57 = v56;
    [v38 sourceColorLux];
    LODWORD(v59) = v58;
    LODWORD(v60) = 0.5;
    *&v61 = v42;
    LODWORD(v62) = v57;
    v24 = [CVAVideoPipelineLibrary syntheticDepthOfFieldPortraitRequestWithMattingRequest:v48 destinationColorPixelBuffer:a4 backgroundColorCube:v87 foregroundColorCube:v29 colorCubeIntensity:v60 simulatedFocalRatio:v61 sourceColorGain:v62 sourceColorLux:v59];
  }

  else
  {
    if ((v85 & 1) == 0)
    {
      v24 = 0;
      v47 = NAN;
      goto LABEL_37;
    }

    v38 = [v15 background];
    v48 = [v38 mattingRequest];
    LODWORD(v49) = 1.0;
    v24 = [CVAVideoPipelineLibrary syntheticDepthOfFieldPortraitRequestWithMattingRequest:v48 destinationColorPixelBuffer:a4 backgroundColorCube:0 foregroundColorCube:v29 colorCubeIntensity:0.0 simulatedFocalRatio:v49 sourceColorGain:0.0 sourceColorLux:0.0];
    v47 = NAN;
  }

LABEL_37:
  v63 = [v15 light];

  if (v63)
  {
    v64 = [v15 light];
    v65 = [v64 faceKitProcessOutput];
    faceKitProcessOutput = self->_faceKitProcessOutput;
    self->_faceKitProcessOutput = v65;

    self->_portraitStyleStrength = v47;
    v67 = [v15 light];
    objc_opt_class();
    v68 = objc_opt_isKindOfClass();

    if (v68)
    {
      if (v85)
      {
        v69 = 5;
      }

      else
      {
        v69 = 1;
      }

LABEL_55:
      [(CVAVideoPipelinePropertiesSPI *)self->_properties setRelightDisplayMode:v69];
      goto LABEL_56;
    }

    v71 = [v15 light];
    objc_opt_class();
    v72 = objc_opt_isKindOfClass();

    if (v72)
    {
      if ((atomic_load_explicit(&qword_1ECDE1378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1378))
      {
        v82 = +[CVAPreferenceManager defaults];
        v83 = [v82 BOOLForKey:@"CVAPhotoEnforceNewAPI"] ^ 1;

        byte_1ECDE1370 = v83;
        __cxa_guard_release(&qword_1ECDE1378);
      }

      if (byte_1ECDE1370 == 1)
      {
        v73 = [v15 post];
        if (!v73)
        {
          goto LABEL_48;
        }

        v74 = [v15 post];
        objc_opt_class();
        v75 = objc_opt_isKindOfClass();

        if ((v75 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v77 = [v15 post];
        v78 = [v77 isMono];

        if (!v78)
        {
LABEL_48:
          v76 = 3;
          goto LABEL_52;
        }
      }

      v76 = 4;
LABEL_52:
      if (v85)
      {
        v69 = v76;
      }

      else
      {
        v69 = 2;
      }

      goto LABEL_55;
    }
  }

  else
  {
    v70 = self->_faceKitProcessOutput;
    self->_faceKitProcessOutput = 0;

    self->_portraitStyleStrength = NAN;
  }

  [(CVAVideoPipelinePropertiesSPI *)self->_properties setRelightDisplayMode:0];
LABEL_56:
  if ([v15 isTmpConfig])
  {
    [(CVAVideoPipelinePropertiesSPI *)self->_properties setRelightDisplayMode:0x7FFFFFFFLL];
  }

  [v24 setParentGenericRequestFrom:v16];
  [v24 setParentGenericRequestTo:v17];
  if (v24)
  {
    v35 = [(CVAPortraitVideoPipeline_Impl *)self renderWithRequest:v24 disparityPostprocessingCompletionHandler:v91 mattingCompletionHandler:v90 portraitCompletionHandler:v89];
    v79 = self->_faceKitProcessOutput;
    self->_faceKitProcessOutput = 0;

    if (a5 && v35 == -22914)
    {
      *a5 = +[CVAPhotoExceptionMetalResourceUnavailable error];
      v35 = -22914;
    }
  }

  else
  {
    v35 = -22913;
  }

  v32 = v90;
  v31 = v91;
  v33 = v89;
LABEL_64:

  return v35;
}

- (int)renderWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 mattingCompletionHandler:(id)a5 portraitCompletionHandler:(id)a6
{
  v125 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v118 = a4;
  v117 = a5;
  v115 = a6;
  sub_1DED70280(v123, &self->_metalContext, self->_debugGPUCaptureFrameNumber);
  v114.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((atomic_load_explicit(&qword_1ECDE12F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE12F8))
  {
    qword_1ECDE12F0 = [MEMORY[0x1E696AD98] numberWithBool:1];
    __cxa_guard_release(&qword_1ECDE12F8);
  }

  if ((byte_1ECDE1300 & 1) == 0)
  {
    HIBYTE(__p[2]) = 10;
    strcpy(__p, "enableSDoF");
    sub_1DED2C8A0(&qword_1ECDE12F0, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE1300 = 1;
  }

  if ((atomic_load_explicit(&qword_1ECDE1310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1310))
  {
    qword_1ECDE1308 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1310);
  }

  if ((byte_1ECDE1318 & 1) == 0)
  {
    HIBYTE(__p[2]) = 16;
    strcpy(__p, "enableRelighting");
    sub_1DED2C8A0(&qword_1ECDE1308, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    byte_1ECDE1318 = 1;
  }

  if ((atomic_load_explicit(&qword_1ECDE1328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1328))
  {
    qword_1ECDE1320 = [MEMORY[0x1E696AD98] numberWithBool:1];
    __cxa_guard_release(&qword_1ECDE1328);
  }

  if ((byte_1ECDE1330 & 1) == 0)
  {
    operator new();
  }

  v11 = [(CVAVideoPipelinePropertiesSPI *)self->_properties relightDisplayMode];
  if ((byte_1ECDE1649 & 1) == 0)
  {
    v12 = v11;
    if ((atomic_load_explicit(&qword_1ECDE1188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1188))
    {
      sub_1DED2E5B4();
      __cxa_atexit(sub_1DED2EBF0, &xmmword_1ECDE0FE8, &dword_1DED23000);
      __cxa_guard_release(&qword_1ECDE1188);
    }

    if ((atomic_load_explicit(&qword_1ECDE1190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1190))
    {
      if (v12 == 0x7FFFFFFF)
      {
        v102 = 0;
      }

      else
      {
        v102 = v12 + 1;
      }

      dword_1ECDE1388 = v102;
      __cxa_guard_release(&qword_1ECDE1190);
    }

    if (dword_1ECDE1388 != v12)
    {
      dword_1ECDE1388 = v12;
      if (v12 == 0x7FFFFFFF)
      {
        v13 = qword_1ECDE1070;
        qword_1ECDE1070 = 0;

        v14 = qword_1ECDE1060;
        qword_1ECDE1060 = 0;

        if ((byte_1ECDE1088 & 1) == 0)
        {
          goto LABEL_27;
        }

        v15 = 0x7FFFFFFFLL;
        goto LABEL_25;
      }

      if ([qword_1ECDE1068 count])
      {
        v15 = (v12 % [qword_1ECDE1068 count]);
        if ((v15 & 0x80000000) != 0)
        {
          v15 = v15 + [qword_1ECDE1068 count];
        }

        v16 = qword_1ECDE1078;
        v17 = [qword_1ECDE1068 objectAtIndexedSubscript:v15];
        v18 = [v16 stringByAppendingString:v17];
        v19 = qword_1ECDE1070;
        qword_1ECDE1070 = v18;

        v20 = qword_1ECDE1060;
        qword_1ECDE1060 = 0;

        if (byte_1ECDE1088 == 1)
        {
LABEL_25:
          NSLog(&cfstr_FileconfigSwit.isa, &xmmword_1ECDE0FE8, v15);
        }
      }

      else
      {
        v21 = qword_1ECDE1070;
        qword_1ECDE1070 = 0;
      }
    }
  }

LABEL_27:
  sub_1DED2CAE8();
  v22 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferWidth];
  v23 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferHeight];
  v24 = [v10 mattingRequest];
  [v24 primaryCaptureRect];
  IsEmpty = CGRectIsEmpty(v126);

  if (IsEmpty)
  {
    v26 = v22;
    v27 = v23;
    v28 = 0.0;
    v29 = 0.0;
  }

  else
  {
    v30 = [v10 mattingRequest];
    [v30 primaryCaptureRect];
    v28 = v31;
    v29 = v32;
    v26 = v33;
    v27 = v34;
  }

  [(VideoMattingMetal *)self->_vmAccelerator setPrimaryCaptureRect:v28, v29, v26, v27];
  [(VideoRelightingMetal *)self->_vrAccelerator setPrimaryCaptureRect:v28, v29, v26, v27];
  v121 = 0;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();
  v120 = 0;
  v37 = [(CVAPortraitVideoPipeline_Impl *)self validatePortraitRequest:v10 error:&v120];
  v116 = v120;
  if (v37)
  {
    v38 = [qword_1ECDE12F0 BOOLValue];
    if (isKindOfClass)
    {
      v39 = [qword_1ECDE1308 BOOLValue] & (v36 ^ 1);
      if (!(v36 & 1 | ((v39 & 1) == 0)))
      {
        v40 = [qword_1ECDE1320 BOOLValue];
        v112 = v38;
        if ((v36 & 1) == 0)
        {
LABEL_34:
          v41 = v39 & (v38 ^ 1);
          goto LABEL_41;
        }

LABEL_40:
        v41 = 1;
LABEL_41:
        if ([qword_1ECDE12F0 BOOLValue])
        {
          v111 = 0;
        }

        else
        {
          v111 = sub_1DED2E054("enableSDoF");
        }

        if (v40)
        {
          v43 = [v10 mattingRequest];
          v44 = [v43 disparityPostprocessingRequest];
          [v44 sourceColorPixelBufferGravity];
          __p[0] = v45;
          __p[1] = v46;
          __p[2] = v47;

          v48 = sub_1DED415CC(__p);
          v50 = v49;
          v52 = v51;
        }

        else
        {
          v48 = NAN;
          v50 = NAN;
          v52 = NAN;
        }

        v53 = [v10 mattingRequest];
        if ([v53 segmentationPixelBuffer])
        {
          v54 = [(CVAVideoPipelinePropertiesSPI *)self->_properties sceneMonitorUsesDisparityStatistics];

          if ((v54 & 1) == 0)
          {
            vmAccelerator = self->_vmAccelerator;
            v56 = [v10 mattingRequest];
            v57 = [v56 segmentationPixelBuffer];
            notificationQueue = self->_notificationQueue;
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 3221225472;
            v119[2] = sub_1DED2E31C;
            v119[3] = &unk_1E869AB58;
            v119[4] = self;
            [(VideoMattingMetal *)vmAccelerator segmentationAverage:v57 callbackQueue:notificationQueue callback:v119];

            if (v41 & 1 | ((isKindOfClass & 1) == 0))
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }
        }

        else
        {
        }

        self->_previousFramePersonSegmentationRatio = 0.0;
        if (v41 & 1 | ((isKindOfClass & 1) == 0))
        {
LABEL_56:
          if (v41)
          {
            v62 = self->_vmAccelerator;
            if (v36)
            {
              v63 = [v10 proxyCubeData];
              v64 = [v10 cubeData];
              [(VideoMattingMetal *)v62 setStageLightProxyCubeData:v63 cubeData:v64];
            }

            else
            {
              [(VideoMattingMetal *)self->_vmAccelerator setStageLightProxyCubeData:0 cubeData:0];
            }
          }

          v65 = [v10 mattingRequest];
          v66 = [v65 disparityPostprocessingRequest];
          v113 = [(CVAPortraitVideoPipeline_Impl *)self internal_postprocessDisparityWithRequest:v66 disparityPostprocessingCompletionHandler:v118 isFinalStage:0 status:&v121];

          v67 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]);
          v68 = (v67 >> 40) & (v67 == 1);
          if ((v67 >> 40) & (v67 == 1) | v41 & 1)
          {
            v69 = 1;
          }

          else if ((v67 & 0xFFFFFFFB) != 0)
          {
            v69 = 0;
          }

          else
          {
            v70 = [v10 mattingRequest];
            v69 = [v70 segmentationPixelBuffer] == 0;
          }

          v71 = ((v41 | v39) & 1) != 0 || !self->_renderForegroundBlur;
          v72 = [v10 mattingRequest];
          LOBYTE(v110) = v41 & 1;
          v73 = [(CVAPortraitVideoPipeline_Impl *)self internal_extractMatteWithRequest:v72 disparityPostprocessingResult:v113 usePostprocessedDisparity:v69 dilateForegroundMask:v68 gravity:&self->_transitionData transitionData:v71 isMattingNeeded:v48 mattingCompletionHandler:v50 isFinalStage:v52 status:v117, v110, &v121];

          if ((atomic_load_explicit(&qword_1ECDE1338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1338))
          {
            v103 = +[CVAPreferenceManager defaults];
            v104 = [v103 BOOLForKey:@"CVAPhotoDebugBuffers"];

            byte_1ECDE1331 = v104;
            __cxa_guard_release(&qword_1ECDE1338);
          }

          if (byte_1ECDE1331 == 1)
          {
            v74 = [v73 disparityPostprocessingResult];
            v75 = [v10 mattingRequest];
            v76 = [v75 disparityPostprocessingRequest];
            sub_1DED2E4D4(@"IN.colorPixelBuffer", [v76 sourceColorPixelBuffer]);

            v77 = [v10 mattingRequest];
            v78 = [v77 disparityPostprocessingRequest];
            v79 = [v78 fixedPointDisparityPixelBuffer] == 0;

            if (!v79)
            {
              v80 = [v10 mattingRequest];
              v81 = [v80 disparityPostprocessingRequest];
              sub_1DED2E4D4(@"IN.fixedPointDisparityPixelBuffer", [v81 fixedPointDisparityPixelBuffer]);
            }

            v82 = [v10 mattingRequest];
            v83 = [v82 segmentationPixelBuffer] == 0;

            if (!v83)
            {
              v84 = [v10 mattingRequest];
              sub_1DED2E4D4(@"IN.segmentationPixelBuffer", [v84 segmentationPixelBuffer]);
            }

            v85 = [v10 mattingRequest];
            v86 = [v85 skinSegmentationPixelBuffer] == 0;

            if (!v86)
            {
              v87 = [v10 mattingRequest];
              sub_1DED2E4D4(@"IN.skinSegmentationPixelBuffer", [v87 skinSegmentationPixelBuffer]);
            }

            if (v74 && [v74 postprocessedDisparityPixelBuffer])
            {
              sub_1DED2E4D4(@"OUT.postprocessedDisparityPixelBuffer", [v74 postprocessedDisparityPixelBuffer]);
            }

            if ([v73 alphaMattePixelBuffer])
            {
              sub_1DED2E4D4(@"OUT.alphaMattePixelBuffer", [v73 alphaMattePixelBuffer]);
            }

            if ([v10 destinationColorPixelBuffer])
            {
              sub_1DED2E4D4(@"OUT.colorPixelBuffer", [v10 destinationColorPixelBuffer]);
            }
          }

          if ((atomic_load_explicit(&qword_1ECDE1348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1348))
          {
            v105 = +[CVAPreferenceManager defaults];
            v106 = [v105 BOOLForKey:@"CVAPhotoLogValidation"];

            byte_1ECDE1340 = v106;
            __cxa_guard_release(&qword_1ECDE1348);
          }

          if (byte_1ECDE1340 == 1)
          {
            if ((atomic_load_explicit(&qword_1ECDE1358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1358))
            {
              v107 = +[CVAPreferenceManager defaults];
              v108 = [v107 BOOLForKey:@"CVAPhotoLogValidationPassed"];

              byte_1ECDE1350 = v108;
              __cxa_guard_release(&qword_1ECDE1358);
            }

            if ((sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) & 0x1000000000000) != 0)
            {
              v88 = [v10 mattingRequest];
              v89 = [v88 segmentationPixelBuffer] == 0;

              if (v89)
              {
                NSLog(&cfstr_SMattingreques.isa, "> > > CVAPhoto validation FAILED:");
              }

              else if (byte_1ECDE1350 == 1)
              {
                NSLog(&cfstr_SMattingreques_0.isa, "> > > CVAPhoto validation PASSED:");
              }
            }
          }

          v90 = v114.__d_.__rep_ / 1000;
          if (v39)
          {
            if (v112)
            {
              if (!self->_intermediateRelightSourceBuffer.m_ptr)
              {
                sub_1DED2A664(__p, [v10 destinationColorPixelBuffer]);
                m_ptr = self->_intermediateRelightSourceBuffer.m_ptr;
                self->_intermediateRelightSourceBuffer.m_ptr = __p[0];
                if (m_ptr)
                {
                  CFRelease(m_ptr);
                  v92 = self->_intermediateRelightSourceBuffer.m_ptr;
                }
              }

              [CVAPortraitVideoPipeline_Impl internal_renderWithRequest:"internal_renderWithRequest:dstBuffer:mattingResult:portraitCompletionHandler:status:timestamp:" dstBuffer:v10 mattingResult:? portraitCompletionHandler:? status:? timestamp:?];
              v93 = self->_intermediateRelightSourceBuffer.m_ptr;
            }

            else
            {
              v93 = 0;
            }

            v94 = [(CVAVideoPipelinePropertiesSPI *)self->_properties faceKitProcessOutputOverride];
            if (v94)
            {
              faceKitProcessOutput = [(CVAVideoPipelinePropertiesSPI *)self->_properties faceKitProcessOutputOverride];
            }

            else
            {
              faceKitProcessOutput = self->_faceKitProcessOutput;
            }

            [(CVAVideoPipelinePropertiesSPI *)self->_properties portraitStyleStrengthOverride];
            [(CVAVideoPipelinePropertiesSPI *)self->_properties portraitStyleStrengthOverride];
            v97 = v96;
            v98 = [v10 foregroundColorCube];
            LODWORD(v99) = v97;
            [(CVAPortraitVideoPipeline_Impl *)self internal_relightWithRequest:v10 intermediateSourceBuffer:v93 faceKitProcessOutput:faceKitProcessOutput portraitStyleStrength:v73 mattingResult:v98 singleCubeData:v115 portraitCompletionHandler:v99 timestamp:v90 status:&v121];

            if (v94)
            {
            }
          }

          else if (v36 & 1 | ((v111 & 1) == 0))
          {
            if (isKindOfClass)
            {
              -[CVAPortraitVideoPipeline_Impl internal_renderWithRequest:dstBuffer:mattingResult:portraitCompletionHandler:status:timestamp:](self, "internal_renderWithRequest:dstBuffer:mattingResult:portraitCompletionHandler:status:timestamp:", v10, [v10 destinationColorPixelBuffer], v73, v115, &v121, v90);
            }

            else if (v36)
            {
              [(CVAPortraitVideoPipeline_Impl *)self internal_renderStageLightWithRequest:v10 mattingResult:v73 portraitCompletionHandler:v115 status:&v121];
            }
          }

          v42 = v121;

          goto LABEL_109;
        }

LABEL_53:
        v59 = self->_vmAccelerator;
        if (v39)
        {
          [(VideoMattingMetal *)self->_vmAccelerator setPortraitForegroundCubeData:0 backgroundCubeData:0];
        }

        else
        {
          v60 = [v10 foregroundColorCube];
          v61 = [v10 backgroundColorCube];
          [(VideoMattingMetal *)v59 setPortraitForegroundCubeData:v60 backgroundCubeData:v61];
        }

        goto LABEL_56;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = v36;
    v112 = v38;
    if ((v36 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LODWORD(__p[0]) = 138412290;
    *(__p + 4) = v116;
    _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", __p, 0xCu);
  }

  v42 = [v116 code];
LABEL_109:

  if (!v124)
  {
    v109 = sub_1DED25F90();

    objc_end_catch();
    sub_1DED2A9B4(v123);

    _Unwind_Resume(v109);
  }

  (*(*v124 + 48))(v124);
  if (v124 == v123)
  {
    (*(*v124 + 32))(v124);
  }

  else if (v124)
  {
    (*(*v124 + 40))();
  }

  v100 = *MEMORY[0x1E69E9840];
  return v42;
}

- (int)extractMatteWithRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v14 = 0;
  v5 = [(CVAPortraitVideoPipeline_Impl *)self validateMattingRequest:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [v4 disparityPostprocessingRequest];
    v8 = [(CVAPortraitVideoPipeline_Impl *)self internal_postprocessDisparityWithRequest:v7 disparityPostprocessingCompletionHandler:0 isFinalStage:0 status:&v15];

    buf[0] = 0;
    LOBYTE(v13) = 1;
    v9 = [(CVAPortraitVideoPipeline_Impl *)self internal_extractMatteWithRequest:v4 disparityPostprocessingResult:v8 usePostprocessedDisparity:1 dilateForegroundMask:0 gravity:buf transitionData:0 mattingCompletionHandler:NAN isFinalStage:NAN status:NAN, v13, &v15];
    v10 = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    v10 = [v6 code];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)extractMatteWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 mattingCompletionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v20 = 0;
  v11 = [(CVAPortraitVideoPipeline_Impl *)self validateMattingRequest:v8 error:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [v8 disparityPostprocessingRequest];
    v14 = [(CVAPortraitVideoPipeline_Impl *)self internal_postprocessDisparityWithRequest:v13 disparityPostprocessingCompletionHandler:v9 isFinalStage:0 status:&v21];

    buf[0] = 0;
    LOBYTE(v19) = 1;
    v15 = [(CVAPortraitVideoPipeline_Impl *)self internal_extractMatteWithRequest:v8 disparityPostprocessingResult:v14 usePostprocessedDisparity:1 dilateForegroundMask:0 gravity:buf transitionData:v10 mattingCompletionHandler:NAN isFinalStage:NAN status:NAN, v19, &v21];
    v16 = v21;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = v12;
      _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    v16 = [v12 code];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (int)postprocessDisparityWithRequest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v11 = 0;
  v5 = [(CVAPortraitVideoPipeline_Impl *)self validateDisparityPostprocessingRequest:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [(CVAPortraitVideoPipeline_Impl *)self internal_postprocessDisparityWithRequest:v4 disparityPostprocessingCompletionHandler:0 isFinalStage:1 status:&v12];
    v8 = v12;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    v8 = [v6 code];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int)postprocessDisparityWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v14 = 0;
  v8 = [(CVAPortraitVideoPipeline_Impl *)self validateDisparityPostprocessingRequest:v6 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [(CVAPortraitVideoPipeline_Impl *)self internal_postprocessDisparityWithRequest:v6 disparityPostprocessingCompletionHandler:v7 isFinalStage:1 status:&v15];
    v11 = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    v11 = [v9 code];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)internal_relightWithRequest:(id)a3 intermediateSourceBuffer:(__CVBuffer *)a4 faceKitProcessOutput:(id)a5 portraitStyleStrength:(float)a6 mattingResult:(id)a7 singleCubeData:(id)a8 portraitCompletionHandler:(id)a9 timestamp:(int64_t)a10 status:(int *)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [v19 disparityPostprocessingResult];
  v23 = [CVAPortraitResult_Impl alloc];
  v24 = [v17 destinationColorPixelBuffer];
  [(VideoRelightingMetal *)self->_vrAccelerator relightingStability];
  LODWORD(v26) = v25;
  LODWORD(v27) = 1.0;
  v64 = [(CVAPortraitResult_Impl *)v23 initWithMattingResult:v19 portraitPixelBuffer:v24 portraitStability:v27 relightingStability:v26];
  if ((atomic_load_explicit(&qword_1ECDE12E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE12E0))
  {
    qword_1ECDE12D8 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE12E0);
  }

  if ((byte_1ECDE12E8 & 1) == 0)
  {
    HIBYTE(v72[2]) = 21;
    strcpy(v72, "drawDisparityOverride");
    sub_1DED2C8A0(&qword_1ECDE12D8, v72);
    if (SHIBYTE(v72[2]) < 0)
    {
      operator delete(v72[0]);
    }

    byte_1ECDE12E8 = 1;
  }

  if (sub_1DED2E054("drawDisparityOverride"))
  {
    v28 = [qword_1ECDE12D8 BOOLValue];
  }

  else
  {
    v28 = self->_preferences.overlayShiftOnRendering != 0;
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = sub_1DED30478;
  v65[3] = &unk_1E869AB08;
  v65[4] = self;
  v29 = v17;
  v66 = v29;
  v71 = v28;
  v30 = v22;
  v67 = v30;
  v31 = v21;
  v69 = v31;
  v32 = v64;
  v68 = v32;
  v70 = a10;
  v33 = MEMORY[0x1E12C94B0](v65);
  v34 = v33;
  if (self->_preferences.bypassGPUProcessing)
  {
    dispatch_async(self->_notificationQueue, v33);
    v35 = v34;
  }

  else
  {
    v58 = v33;
    v59 = v19;
    v61 = v20;
    v62 = v18;
    v36 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]);
    v56 = v37;
    v38 = v36;
    vrAccelerator = self->_vrAccelerator;
    v60 = a4;
    if (!a4)
    {
      v49 = [v29 mattingRequest];
      v48 = [v49 disparityPostprocessingRequest];
      v60 = [v48 sourceColorPixelBuffer];
    }

    v54 = [v19 alphaMattePixelBuffer];
    v57 = v38;
    if (v38 == 1)
    {
      v53 = 0;
    }

    else
    {
      v50 = [v29 mattingRequest];
      v53 = [v50 segmentationPixelBuffer] != 0;
    }

    applyRotation = self->_vmDynamicParams.applyRotation;
    yuvSourceDownsampledAlias = self->_yuvSourceDownsampledAlias;
    v39 = [v29 mattingRequest];
    v40 = [v39 skinSegmentationPixelBuffer];
    v41 = [v29 destinationColorPixelBuffer];
    v42 = [(VideoMattingMetal *)self->_vmAccelerator colorSim];
    v43 = [(VideoMattingMetal *)self->_vmAccelerator filteredBeforeSmoothDisparity];
    notificationQueue = self->_notificationQueue;
    properties = self->_properties;
    *&v46 = 1.0 / self->_vmDynamicParams.focusCanonicalDisparity;
    v35 = v58;
    *&v47 = a6;
    [(VideoRelightingMetal *)vrAccelerator renderWithSrcImage:v60 srcAlpha:v54 trustAlpha:v53 isAfterPreviewStitcher:v56 & 1 applyRotation:applyRotation yuvSourceDownsampled:yuvSourceDownsampledAlias skinSegmentation:v47 dstImage:v46 faceKitProcessOutput:v40 portraitStyleStrength:v41 colorSim:v62 disparity:v42 focusDistance:v43 singleCubeData:v61 properties:properties callbackQueue:notificationQueue callback:v58];

    if (v57 != 1)
    {
    }

    v20 = v61;
    v18 = v62;
    v19 = v59;
    if (!a4)
    {
    }
  }

  if (a11)
  {
    *a11 = 0;
  }
}

- (void)internal_renderStageLightWithRequest:(id)a3 mattingResult:(id)a4 portraitCompletionHandler:(id)a5 status:(int *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 disparityPostprocessingResult];
  v13 = *(self->_stageLightStateMachine.__ptr_ + 5);
  [v9 vignetteIntensity];
  [v9 vignetteIntensity];
  v15 = v14;
  [v9 stageLightIntensity];
  [v9 stageLightIntensity];
  v17 = v16;
  v18 = [CVAPortraitResult_Impl alloc];
  v19 = [v9 destinationColorPixelBuffer];
  LODWORD(v20) = v13;
  v40 = [(CVAPortraitResult_Impl *)v18 initWithMattingResult:v10 portraitPixelBuffer:v19 portraitStability:v20];
  if ((atomic_load_explicit(&qword_1ECDE12C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE12C8))
  {
    qword_1ECDE12C0 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE12C8);
  }

  if ((byte_1ECDE12D0 & 1) == 0)
  {
    HIBYTE(v47[2]) = 21;
    strcpy(v47, "drawDisparityOverride");
    sub_1DED2C8A0(&qword_1ECDE12C0, v47);
    if (SHIBYTE(v47[2]) < 0)
    {
      operator delete(v47[0]);
    }

    byte_1ECDE12D0 = 1;
  }

  if (sub_1DED2E054("drawDisparityOverride"))
  {
    v21 = [qword_1ECDE12C0 BOOLValue];
  }

  else
  {
    v21 = self->_preferences.overlayShiftOnRendering != 0;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1DED30AEC;
  v41[3] = &unk_1E869AB30;
  v41[4] = self;
  v22 = v9;
  v42 = v22;
  v46 = v21;
  v23 = v12;
  v43 = v23;
  v24 = v11;
  v45 = v24;
  v25 = v40;
  v44 = v25;
  v26 = MEMORY[0x1E12C94B0](v41);
  if (!self->_preferences.bypassGPUProcessing)
  {
    vmAccelerator = self->_vmAccelerator;
    v38 = v10;
    [v22 mattingRequest];
    v37 = v36 = vmAccelerator;
    v29 = [v37 disparityPostprocessingRequest];
    v30 = [v29 sourceColorPixelBuffer];
    v31 = [v10 alphaMattePixelBuffer];
    v32 = [v23 canonicalDisparityPixelBuffer];
    v33 = [v22 destinationColorPixelBuffer];
    LODWORD(v34) = v17;
    LODWORD(v35) = v15;
    [(VideoMattingMetal *)v36 renderStageLightWithSource:v30 alpha:v31 canonicalDisparity:v32 dstColor:v33 blackBackgroundIntensity:1 vignetteIntensity:self->_notificationQueue isFinalStage:v34 callbackQueue:v35 withCallback:v26];

    v10 = v38;
    v27 = a6;
    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  dispatch_async(self->_notificationQueue, v26);
  v27 = a6;
  if (a6)
  {
LABEL_11:
    *v27 = 0;
  }

LABEL_12:
}

- (void)internal_renderWithRequest:(id)a3 dstBuffer:(__CVBuffer *)a4 mattingResult:(id)a5 portraitCompletionHandler:(id)a6 status:(int *)a7 timestamp:(int64_t)a8
{
  v12 = a3;
  v13 = a5;
  v128 = a6;
  v129 = v13;
  v131 = v12;
  v132 = [v13 disparityPostprocessingResult];
  [(CVAVideoPipelinePropertiesSPI *)self->_properties offsetNoiseBitCalculation];
  v15 = v14;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties gainMultiplierNoiseBitCalculation];
  v17 = v16;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties luxMultiplierNoiseBitCalculation];
  v19 = v18;
  [v12 sourceColorGain];
  v21 = v20;
  [v12 sourceColorLux];
  v23 = v22;
  v24 = log2f(fmaxf(v21, 1.0));
  v25 = log2f(fmaxf(v23, 1.0));
  focusCanonicalDisparity = self->_vmDynamicParams.focusCanonicalDisparity;
  sdofDeltaCanonicalDisparity = self->_vmDynamicParams.sdofDeltaCanonicalDisparity;
  [v132 focusDisparity];
  v28 = v27;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"sdof.cutoffCanonicalDisparity = %5.3f", (v28 - self->_vmDynamicParams.sdofDeltaCanonicalDisparity)];
  }

  fNumber_tenths = self->_preferences.fNumber_tenths;
  if (fNumber_tenths < 1)
  {
    [v12 simulatedFocalRatio];
  }

  else
  {
    v30 = fNumber_tenths / 10.0;
  }

  v124 = v30;
  ptr = self->_sdofIntensityStateMachine.__ptr_;
  v32 = [v12 mattingRequest];
  v33 = [v32 disparityPostprocessingRequest];
  v34 = [v33 isFocalPlaneLocked];
  v35 = *self->_focusStateMachine.__ptr_;
  v36 = [v131 mattingRequest];
  v37 = [v36 disparityPostprocessingRequest];
  [v37 sourceColorPixelBufferOrientation];
  v140[0] = v38;
  v140[1] = v39;
  v140[2] = v40;
  v140[3] = v41;
  v141[0] = sub_1DED26B30(v140);
  v141[1] = v42;
  v141[2] = v43;
  v141[3] = v44;
  v45 = sub_1DED26C1C(ptr + 3, v141);
  if (((v35 != 0) & ~v34) != 0 || (v46 = ptr, v45 >= *(ptr + 1)))
  {
    v46 = (ptr + 4);
  }

  *(ptr + 4) = fmaxf(fminf(*v46 + *(ptr + 4), 1.0), 0.0);
  *(ptr + 3) = sub_1DED26B30(v140);
  *(ptr + 4) = v47;
  *(ptr + 5) = v48;
  *(ptr + 6) = v49;
  v50 = *(ptr + 4);

  v51 = [v131 mattingRequest];
  [v51 primaryCaptureRect];
  self->_vmDynamicParams.primaryCaptureRect.origin.x = v52;
  self->_vmDynamicParams.primaryCaptureRect.origin.y = v53;
  self->_vmDynamicParams.primaryCaptureRect.size.width = v54;
  self->_vmDynamicParams.primaryCaptureRect.size.height = v55;

  v56 = [v131 mattingRequest];
  v120 = v25;
  v121 = focusCanonicalDisparity;
  v122 = v24;
  v123 = v19;
  self->_vmDynamicParams.applyRotation = [v56 applyRotation];

  v57 = v131;
  [v132 backgroundDisparitySumVariance];
  v59 = v58;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties stableBackgroundDisparitySumVariance];
  v61 = v60;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties unstableBackgroundDisparitySumVariance];
  v63 = (v59 - v61) / (v62 - v61);
  v64 = fminf(v63, 1.0);
  v65 = v63 < 0.0;
  v66 = 0.0;
  if (!v65)
  {
    v66 = v64;
  }

  v119 = v66;
  [v132 invalidDisparityRatio];
  v68 = v67;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties stableInvalidDisparityRatio];
  v70 = v69;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties unstableInvalidDisparityRatio];
  v72 = (v68 - v70) / (v71 - v70);
  v73 = fminf(v72, 1.0);
  if (v72 >= 0.0)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0.0;
  }

  if ([(CVAVideoPipelinePropertiesSPI *)self->_properties modulateFocalRatio])
  {
    v75 = 2.0 - v50;
  }

  else
  {
    [(CVAVideoPipelinePropertiesSPI *)self->_properties fNumberMultiplier];
    v75 = v76;
  }

  v77 = [CVAPortraitResult_Impl alloc];
  *&v78 = v50;
  v126 = [(CVAPortraitResult_Impl *)v77 initWithMattingResult:v13 portraitPixelBuffer:a4 portraitStability:v78];
  if ((atomic_load_explicit(&qword_1ECDE12B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE12B0))
  {
    qword_1ECDE12A8 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE12B0);
    v57 = v131;
  }

  if ((byte_1ECDE12B8 & 1) == 0)
  {
    HIBYTE(v141[2]) = 21;
    strcpy(v141, "drawDisparityOverride");
    sub_1DED2C8A0(&qword_1ECDE12A8, v141);
    if (SHIBYTE(v141[2]) < 0)
    {
      operator delete(*&v141[0]);
    }

    byte_1ECDE12B8 = 1;
  }

  if (sub_1DED2E054("drawDisparityOverride"))
  {
    v79 = [qword_1ECDE12A8 BOOLValue];
  }

  else
  {
    v79 = self->_preferences.overlayShiftOnRendering != 0;
  }

  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = sub_1DED31560;
  v133[3] = &unk_1E869AB08;
  v133[4] = self;
  v80 = v57;
  v134 = v80;
  v139 = v79;
  v81 = v132;
  v135 = v81;
  v82 = v128;
  v137 = v82;
  v83 = v126;
  v136 = v83;
  v138 = a8;
  v84 = MEMORY[0x1E12C94B0](v133);
  if (self->_preferences.bypassGPUProcessing)
  {
    if ([v80 destinationColorPixelBuffer] == a4)
    {
      dispatch_async(self->_notificationQueue, v84);
    }
  }

  else
  {
    v116 = v74;
    v118 = v84;
    [(CVAVideoPipelinePropertiesSPI *)self->_properties renderingDisparityUpdateRate];
    if (self->_transitionData._inTransition)
    {
      v86 = 1.0;
    }

    else
    {
      v86 = v85;
    }

    if (sub_1DED31798())
    {
      NSLog(&cfstr_CvaphotoTransi_1.isa, v86);
    }

    if (self->_deadzoneInCinematic)
    {
      v87 = [v81 canonicalDisparityPixelBuffer];
    }

    else
    {
      v87 = [v81 postprocessedDisparityPixelBuffer];
    }

    v88 = v87;
    vmAccelerator = self->_vmAccelerator;
    v117 = [v80 mattingRequest];
    v90 = [v117 disparityPostprocessingRequest];
    v114 = vmAccelerator;
    v115 = v88;
    v91 = v28;
    v113 = [v90 sourceColorPixelBuffer];
    v92 = [v80 mattingRequest];
    v93 = [v92 segmentationPixelBuffer];
    v94 = [v129 alphaMattePixelBuffer];
    [(CVAVideoPipelinePropertiesSPI *)self->_properties focusThresholdHardness];
    v96 = v95;
    [v80 colorCubeIntensity];
    v98 = v97;
    p_notificationQueue = &self->_notificationQueue;
    notificationQueue = self->_notificationQueue;
    v100 = p_notificationQueue[1];
    v102 = [v80 destinationColorPixelBuffer];
    *&v109 = fmaxf((v15 + (v17 * v122)) + (v123 * v120), 1.0);
    LODWORD(v110) = 1.0;
    v111 = v118;
    if (v102 != a4)
    {
      v111 = 0;
    }

    LOBYTE(v112) = 1;
    *&v104 = v91;
    *&v106 = v86;
    LODWORD(v107) = v96;
    *&v103 = v121 - sdofDeltaCanonicalDisparity;
    *&v105 = v124 * v75;
    *&v108 = ((v50 * (1.0 - ((v119 * v119) * ((v119 * -2.0) + 3.0)))) * (1.0 - ((v116 * v116) * ((v116 * -2.0) + 3.0)))) * v98;
    [(VideoMattingMetal *)v114 renderContinuousWithSource:v113 segmentationPixelBuffer:v93 alpha:v94 canonicalDisparity:v115 disparityInFocus:1 focusCanonicalDisparity:v103 fNumber:v104 infConvolutionScale:v105 noiseBits:v110 disparityUpdateRate:v109 focusThresholdHardness:v106 cubeIntensity:v107 usePostprocessedDisparity:v108 dstColor:v112 isFinalStage:v100 properties:notificationQueue callbackQueue:v111 withCallback:?];

    v84 = v118;
  }

  if (a7)
  {
    *a7 = 0;
  }
}

- (id)internal_extractMatteWithRequest:(id)a3 disparityPostprocessingResult:(id)a4 usePostprocessedDisparity:(BOOL)a5 dilateForegroundMask:(BOOL)a6 gravity:(CVAVector)a7 transitionData:(const TransitionData *)a8 isMattingNeeded:(BOOL)a9 mattingCompletionHandler:(id)a10 isFinalStage:(BOOL)a11 status:(int *)a12
{
  v12 = a9;
  z = a7.z;
  x = a7.x;
  y = a7.y;
  v17 = a3;
  v18 = a4;
  v73 = a10;
  mattingCoeffUpdateRate = self->_vmDynamicMetaParams.mattingCoeffUpdateRate;
  mattingCoeffColorStd = self->_vmDynamicMetaParams.mattingCoeffColorStd;
  v21 = [v17 disparityPostprocessingRequest];
  v22 = [v21 isFocalPlaneLocked];

  if ((v22 & 1) == 0)
  {
    if (*self->_focusStateMachine.__ptr_ == 1 || *(self->_sdofIntensityStateMachine.__ptr_ + 4) < 0.5)
    {
      mattingCoeffUpdateRate = self->_vmDynamicMetaParams.mattingCoeffUpdateRateFast;
      mattingCoeffColorStd = self->_vmDynamicMetaParams.mattingCoeffColorStdFast;
      if ((atomic_load_explicit(&qword_1ECDE1238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1238))
      {
        LODWORD(v62) = -1.0;
        qword_1ECDE1230 = [MEMORY[0x1E696AD98] numberWithFloat:v62];
        __cxa_guard_release(&qword_1ECDE1238);
      }

      if ((byte_1ECDE1240 & 1) == 0)
      {
        operator new();
      }

      if ((atomic_load_explicit(&qword_1ECDE1250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1250))
      {
        LODWORD(v63) = -1.0;
        qword_1ECDE1248 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
        __cxa_guard_release(&qword_1ECDE1250);
      }

      if ((byte_1ECDE1258 & 1) == 0)
      {
        operator new();
      }

      if (sub_1DED2E054("mattingUpdateRateFastOverride"))
      {
        [qword_1ECDE1230 floatValue];
        mattingCoeffUpdateRate = v23;
      }

      if (sub_1DED2E054("mattingColorStdFastOverride"))
      {
        [qword_1ECDE1248 floatValue];
LABEL_24:
        mattingCoeffColorStd = v24;
      }
    }

    else
    {
      mattingCoeffUpdateRate = self->_vmDynamicMetaParams.mattingCoeffUpdateRate;
      mattingCoeffColorStd = self->_vmDynamicMetaParams.mattingCoeffColorStd;
      if ((atomic_load_explicit(&qword_1ECDE1268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1268))
      {
        LODWORD(v64) = -1.0;
        qword_1ECDE1260 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
        __cxa_guard_release(&qword_1ECDE1268);
      }

      if ((byte_1ECDE1270 & 1) == 0)
      {
        operator new();
      }

      if ((atomic_load_explicit(&qword_1ECDE1280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1280))
      {
        LODWORD(v65) = -1.0;
        qword_1ECDE1278 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
        __cxa_guard_release(&qword_1ECDE1280);
      }

      if ((byte_1ECDE1288 & 1) == 0)
      {
        operator new();
      }

      if (sub_1DED2E054("mattingUpdateRateSlowOverride"))
      {
        [qword_1ECDE1260 floatValue];
        mattingCoeffUpdateRate = v25;
      }

      if (sub_1DED2E054("mattingColorStdSlowOverride"))
      {
        [qword_1ECDE1278 floatValue];
        goto LABEL_24;
      }
    }
  }

  if ((atomic_load_explicit(&qword_1ECDE1290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1290))
  {
    v58 = +[CVAPreferenceManager defaults];
    v59 = [v58 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1289 = v59;
    __cxa_guard_release(&qword_1ECDE1290);
  }

  if (byte_1ECDE1289 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"mattingUpdateRate = %.3f", mattingCoeffUpdateRate];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"mattingColorStd = %.3f", mattingCoeffColorStd];
  }

  if (a8->_inTransition)
  {
    mattingCoeffUpdateRate = 1.0;
  }

  if (sub_1DED31798())
  {
    NSLog(&cfstr_CvaphotoTransi_0.isa, mattingCoeffUpdateRate);
  }

  self->_vmDynamicParams.updateRate = mattingCoeffUpdateRate;
  self->_vmDynamicParams.alphaCoeffFilterColorStd = mattingCoeffColorStd;
  [v18 focusDisparity];
  self->_vmDynamicParams.focusCanonicalDisparity = v26;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties focusThresholdHardness];
  self->_vmDynamicParams.thresholdHardness = v27;
  v28.f64[0] = y;
  v28.f64[1] = x;
  v29 = z;
  *self->_vmDynamicParams.gravity.__elems_ = vneg_f32(vcvt_f32_f64(v28));
  self->_vmDynamicParams.gravity.__elems_[2] = -v29;
  v30 = -[CVAMattingResult_Impl initWithDisparityPostprocessingResult:alphaMattePixelBuffer:]([CVAMattingResult_Impl alloc], "initWithDisparityPostprocessingResult:alphaMattePixelBuffer:", v18, [v17 destinationAlphaMattePixelBuffer]);
  if ((atomic_load_explicit(&qword_1ECDE12A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE12A0))
  {
    v60 = +[CVAPreferenceManager defaults];
    v61 = [v60 BOOLForKey:@"CVAPhotoDebugSceneMonitorValues"];

    byte_1ECDE1298 = v61;
    __cxa_guard_release(&qword_1ECDE12A0);
  }

  if (byte_1ECDE1298 == 1)
  {
    v31 = MEMORY[0x1E696AEC0];
    [v18 backgroundDisparitySum];
    [v31 stringWithFormat:@"backgroundDisparitySum: %f", v32];

    v33 = MEMORY[0x1E696AEC0];
    [v18 invalidDisparityRatio];
    [v33 stringWithFormat:@"invalidDisparityRatio: %f", v34];

    v35 = MEMORY[0x1E696AEC0];
    [v18 closeCanonicalDisparityAverage];
    [v35 stringWithFormat:@"closeCanonicalDisparityAverage: %f", v36];

    v37 = MEMORY[0x1E696AEC0];
    v38 = [v18 faceCanonicalDisparityAverage];
    [v37 stringWithFormat:@"faceCanonicalDisparityAverage: %@", v38];

    v39 = MEMORY[0x1E696AEC0];
    [v18 erodedForegroundRatio];
    [v39 stringWithFormat:@"erodedForegroundRatio: %f", v40];

    v41 = MEMORY[0x1E696AEC0];
    [v18 foregroundRatio];
    [v41 stringWithFormat:@"foregroundRatio: %f", v42];
  }

  if ([v17 segmentationPixelBuffer])
  {
    v43 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedInputSegmentationPixelBufferPixelFormats];
    v44 = [MEMORY[0x1E696AD98] numberWithInt:{CVPixelBufferGetPixelFormatType(objc_msgSend(v17, "segmentationPixelBuffer"))}];
    if ([v43 containsObject:v44])
    {
      v45 = [v17 segmentationPixelBuffer];
    }

    else
    {
      v45 = 0;
    }

    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v45 = 0;
    if (!v12)
    {
      goto LABEL_44;
    }
  }

  if (!self->_preferences.bypassGPUProcessing)
  {
    vmAccelerator = self->_vmAccelerator;
    v47 = [v18 postprocessedDisparityPixelBuffer];
    v48 = [v17 disparityPostprocessingRequest];
    v72 = v30;
    v67 = v18;
    v49 = [v48 sourceColorPixelBuffer];
    v50 = [v17 destinationAlphaMattePixelBuffer];
    notificationQueue = self->_notificationQueue;
    properties = self->_properties;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = sub_1DED323E0;
    v74[3] = &unk_1E869AAE0;
    v77 = v73;
    v75 = v17;
    v76 = v72;
    BYTE2(v66) = a6;
    BYTE1(v66) = a11;
    LOBYTE(v66) = a5;
    [VideoMattingMetal alphaMattingWithPostprocessedDisparity:"alphaMattingWithPostprocessedDisparity:source:inSegmentation:alpha:staticParams:dynamicParams:usePostprocessedDisparity:isFinalStage:dilateForegroundMask:properties:callbackQueue:callback:" source:v47 inSegmentation:v49 alpha:v45 staticParams:v50 dynamicParams:&self->_vmStaticParams usePostprocessedDisparity:&self->_vmDynamicParams isFinalStage:v66 dilateForegroundMask:properties properties:notificationQueue callbackQueue:v74 callback:?];
    v53 = &v77;
    v54 = &v75;
    v55 = &v76;

    v18 = v67;
    v30 = v72;
    goto LABEL_45;
  }

LABEL_44:
  v56 = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DED323C0;
  block[3] = &unk_1E869AAE0;
  v53 = &v81;
  v81 = v73;
  v54 = &v79;
  v79 = v17;
  v55 = &v80;
  v80 = v30;
  dispatch_async(v56, block);
LABEL_45:

  [v17 segmentationPixelBuffer];
  [v17 skinSegmentationPixelBuffer];
  if (a12)
  {
    *a12 = 0;
  }

  return v30;
}

- (int)internal_fixFocusPositionWithDisparityPostprocessingRequest:(id)a3
{
  v4 = a3;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties focusUpdateRateFast];
  v6 = v5;
  v7 = [(CVAVideoPipelinePropertiesSPI *)self->_properties maxFramesWithoutFace];
  [v4 currentFocusPosition];
  v9 = v8;
  ptr = self->_focusStateMachine.__ptr_;
  if (*(ptr + 2) == INFINITY)
  {
    *(ptr + 2) = v8;
  }

  v11 = (*(&off_1F59FA040 + *ptr))(ptr + 4, ptr + 12, v8);
  *ptr = v11;
  if (self->_referenceLensPosition_um == INFINITY)
  {
    self->_referenceLensPosition_um = v9;
    v6 = 1.0;
  }

  else
  {
    v44 = v11;
    if (![v4 isFocalPlaneLocked])
    {
      if (v44 == 2)
      {
        syslog(3, "NUM_STATES is not a state. You're doing it wrong.");
        goto LABEL_5;
      }

      if (v44 == 1)
      {
        [(CVAVideoPipelinePropertiesSPI *)self->_properties focusUpdateRateFast];
      }

      else
      {
        if (v44)
        {
          goto LABEL_5;
        }

        [(CVAVideoPipelinePropertiesSPI *)self->_properties focusUpdateRateSlow];
      }

      v6 = v46;
      goto LABEL_5;
    }

    v6 = 0.0;
    if (!self->_renderForegroundBlur)
    {
      v45 = 0;
      goto LABEL_33;
    }
  }

LABEL_5:
  v12 = [v4 focusRegion];
  if (!v12 || ([v4 focusRegion], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    syslog(3, "Focus region not present");
LABEL_32:
    v45 = -22903;
    goto LABEL_33;
  }

  v15 = [v4 focusRegion];
  v16 = [v4 focusRegion];
  v17 = [v15 objectAtIndexedSubscript:{objc_msgSend(v16, "count") - 1}];
  v18 = [v17 objectForKeyedSubscript:@"X"];
  [v18 floatValue];
  v20 = v19;

  v57 = v20;
  v21 = [v4 focusRegion];
  v22 = [v4 focusRegion];
  v23 = [v21 objectAtIndexedSubscript:{objc_msgSend(v22, "count") - 1}];
  v24 = [v23 objectForKeyedSubscript:@"Y"];
  [v24 floatValue];
  v26 = v25;

  v56 = v26;
  v27 = [v4 focusRegion];
  v28 = [v4 focusRegion];
  v29 = [v27 objectAtIndexedSubscript:{objc_msgSend(v28, "count") - 1}];
  v30 = [v29 objectForKeyedSubscript:@"Width"];
  [v30 floatValue];
  v32 = v31;

  v55 = v32;
  v33 = [v4 focusRegion];
  v34 = [v4 focusRegion];
  v35 = [v33 objectAtIndexedSubscript:{objc_msgSend(v34, "count") - 1}];
  v36 = [v35 objectForKeyedSubscript:@"Height"];
  [v36 floatValue];
  v38 = v37;

  v54 = v38;
  if ((sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) & 0x100000000000000) != 0)
  {
    if ((v39 & 0x100) != 0)
    {
      v57 = (1.0 - (v20 + (v32 * 0.5))) - (v32 * 0.5);
    }

    else
    {
      v40 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]);
      v41 = (v26 + (v38 * 0.5)) + -1.0;
      v42 = -v41;
      v43 = v41 + 1.0;
      if (v40)
      {
        v43 = v42;
      }

      v54 = v32;
      v55 = v38;
      v56 = (v20 + (v32 * 0.5)) - (v32 * 0.5);
      v57 = v43 - (v38 * 0.5);
    }

    sub_1DED32AB4(&v57, &v56, &v55, &v54, self->_metadata);
    v38 = v54;
    v32 = v55;
  }

  if (v32 <= 0.0 || v38 <= 0.0)
  {
    syslog(3, "Invalid focus region (%.3f %.3f %.3f %.3f)", v57, v56, v32, v38);
    goto LABEL_32;
  }

  if (v32 > 1.0 || v38 > 1.0)
  {
    v56 = v56 / 1000.0;
    v57 = v57 / 1000.0;
    v32 = v32 / 1000.0;
    v38 = v38 / 1000.0;
  }

  if ((sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) & 0x100000000000000) == 0)
  {
    if (self->_renderForegroundBlur)
    {
      if ([v4 focusRegionType] == 2)
      {
        v47 = fmaxf(v38, 0.2);
        v48 = fmaxf(v32, 0.2);
      }

      else
      {
        v47 = 0.2;
        v48 = 0.2;
      }
    }

    else
    {
      v48 = fmaxf(v32, 0.2);
      v47 = fmaxf(v38, 0.2);
    }

    v56 = fmaxf(v56 - ((v47 - v38) * 0.5), 0.0);
    v57 = fmaxf(v57 - ((v48 - v32) * 0.5), 0.0);
    v38 = v47;
    v32 = v48;
  }

  if ((sub_1DED2E328(-[CVAVideoPipelinePropertiesSPI videoPipelineDevice](self->_properties, "videoPipelineDevice")) & 0x100000000) != 0 && [v4 focusRegionType] != 1)
  {
    if (v6 < 0.0 || v6 > 1.0)
    {
      goto LABEL_49;
    }

    v53 = 0;
    v50 = self->_disparityAutofocus.__ptr_;
    v32 = 0.5;
    v51 = 0.25;
    v52 = 0.25;
    v38 = 0.5;
  }

  else
  {
    v50 = self->_disparityAutofocus.__ptr_;
    v52 = v56;
    v51 = v57;
    v53 = [v4 focusRegionType];
    if (v6 < 0.0 || v6 > 1.0)
    {
LABEL_49:
      syslog(3, "Fusion update rate (%.2f) not in [0,1]", v6);
      v45 = -22900;
      goto LABEL_33;
    }
  }

  v45 = 0;
  *(v50 + 21) = v51;
  *(v50 + 22) = v52;
  *(v50 + 23) = v32;
  *(v50 + 24) = v38;
  *(v50 + 25) = -1082130432;
  *(v50 + 26) = v53;
  *(v50 + 27) = v6;
  *(v50 + 28) = v7;
LABEL_33:

  return v45;
}

- (id)internal_postprocessDisparityWithRequest:(id)a3 disparityPostprocessingCompletionHandler:(id)a4 isFinalStage:(BOOL)a5 status:(int *)a6
{
  v444 = *MEMORY[0x1E69E9840];
  v388 = a3;
  v383 = a4;
  pixelBufferOut = 0;
  v437 = 0;
  __src = 0;
  v438 = 0;
  v8 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]);
  v10 = v9;
  v11 = [v388 facesArray];

  v389 = self;
  if (v11)
  {
    v434 = 0u;
    v435 = 0u;
    v432 = 0u;
    v433 = 0u;
    v12 = [v388 facesArray];
    v13 = [v12 countByEnumeratingWithState:&v432 objects:v443 count:16];
    if (v13)
    {
      v14 = *v433;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v433 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v432 + 1) + 8 * i) getValue:&v422 size:32];
          v17 = *&v422;
          v18 = *(&v422 + 1);
          *&v398 = v18;
          v19 = v423;
          v431 = v19;
          v20 = v424;
          v430 = v20;
          if ((v8 & 0x100000000000000) != 0)
          {
            if ((v10 & 0x100) != 0)
            {
              *v440 = (1.0 - ((v19 * 0.5) + v17)) - (v19 * 0.5);
            }

            else
            {
              v21 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)v389->_properties videoPipelineDevice]);
              v22 = ((v20 * 0.5) + v18) + -1.0;
              v23 = -v22;
              v24 = v22 + 1.0;
              if (v21)
              {
                v24 = v23;
              }

              v431 = v20;
              v430 = v19;
              *v440 = v24 - (v20 * 0.5);
              *&v398 = ((v19 * 0.5) + v17) - (v19 * 0.5);
            }

            sub_1DED32AB4(v440, &v398, &v431, &v430, v389->_metadata);
            v17 = *v440;
            v19 = v431;
          }

          v25 = v17 + (v19 * 0.5);
          if (v25 <= 1.0 && v25 >= 0.0)
          {
            v26 = v398;
            v27 = v430;
            v28 = *&v398 + (v430 * 0.5);
            if (v28 <= 1.0 && v28 >= 0.0)
            {
              v29 = v437;
              if (v437 < v438)
              {
                *v437 = v17;
                *(v29 + 1) = v26;
                v16 = (v29 + 4);
                v29[2] = v19;
                v29[3] = v27;
              }

              else
              {
                v30 = __src;
                v31 = v437 - __src;
                v32 = (v437 - __src) >> 4;
                v33 = v32 + 1;
                if ((v32 + 1) >> 60)
                {
                  sub_1DED35334();
                }

                v34 = v438 - __src;
                if ((v438 - __src) >> 3 > v33)
                {
                  v33 = v34 >> 3;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v35 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  if (!(v35 >> 60))
                  {
                    operator new();
                  }

                  sub_1DED35334();
                }

                v36 = (v437 - __src) >> 4;
                v37 = 16 * v32;
                *v37 = v17;
                *(v37 + 4) = v26;
                *(v37 + 8) = v19;
                *(v37 + 12) = v27;
                v16 = 16 * v32 + 16;
                v38 = (16 * v32 - 16 * v36);
                memcpy((v37 - 16 * v36), v30, v31);
                __src = v38;
                v437 = v16;
                v438 = 0;
                if (v30)
                {
                  operator delete(v30);
                }
              }

              v437 = v16;
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v432 objects:v443 count:16];
      }

      while (v13);
    }

    self = v389;
  }

  v424 = 0.0;
  *v427 = 0u;
  *v428 = 0u;
  v429 = 0u;
  ptr = self->_disparityConversion.__ptr_;
  v40 = self->_disparityGeometricTransformation.__ptr_;
  v381 = self->_disparityAutofocus.__ptr_;
  v373 = self->_disparityStatistics.__ptr_;
  if (self->_deadzoneInCinematic)
  {
    pixelBufferOut = [v388 destinationDisparityPixelBuffer];
  }

  else
  {
    CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], self->_canonicalDisparityPixelBufferPool, &pixelBufferOut);
  }

  v41 = v389;
  v42 = sub_1DED5BDEC;
  v43 = sub_1DED6E170;
  v44 = sub_1DED5642C;
  if (v389->_treatFixedPointDisparityAsDense && (v42 = sub_1DED5BDEC, v43 = sub_1DED6E170, v44 = sub_1DED5642C, v389->_useSixteenBitPrecisionForDenseStereoDisparityConversion))
  {
    ptr = v389->_disparityConversion.__ptr_;
    v40 = v389->_disparityGeometricTransformation.__ptr_;
    v381 = v389->_disparityAutofocus.__ptr_;
    v42 = sub_1DED5C7CC;
    v43 = sub_1DED6E838;
    v44 = sub_1DED57EB8;
    v372 = sub_1DED59B00;
    v373 = v389->_disparityStatistics.__ptr_;
    v371 = sub_1DED436E8;
  }

  else
  {
    v371 = sub_1DED4288C;
    v372 = sub_1DED593CC;
  }

  if ((atomic_load_explicit(&qword_1ECDE11C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11C8))
  {
    v352 = +[CVAPreferenceManager defaults];
    v353 = [v352 BOOLForKey:@"CVAPhotoDebugDrawDisparityConversionSettings"];

    byte_1ECDE11C2 = v353;
    __cxa_guard_release(&qword_1ECDE11C8);
    v41 = v389;
  }

  if (byte_1ECDE11C2 == 1)
  {
    if (v41->_treatFixedPointDisparityAsDense)
    {
      v45 = @"true";
    }

    else
    {
      v45 = @"false";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"_treatFixedPointDisparityAsDense: %@", v45];

    if (v389->_useSixteenBitPrecisionForDenseStereoDisparityConversion)
    {
      v46 = @"true";
    }

    else
    {
      v46 = @"false";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"_useSixteenBitPrecisionFor...Conversion: %@", v46];

    v47 = MEMORY[0x1E696AEC0];
    [(CVAVideoPipelinePropertiesSPI *)v389->_properties depthPixelBufferMaxLeftOcclusionDisparityChange];
    [v47 stringWithFormat:@"depthPixelBufferMaxLeftOcclusionDisparityChange: %f", v48];

    v49 = MEMORY[0x1E696AEC0];
    [(CVAVideoPipelinePropertiesSPI *)v389->_properties depthPixelBufferMaxRightOcclusionDisparityChange];
    [v49 stringWithFormat:@"depthPixelBufferMaxRightOcclusionDisparityChange: %f", v50];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"_disparityOffset: %f", v389->_disparityOffset];
    v41 = v389;
  }

  if (v41->_preferences.bypassCPUProcessing)
  {
    v51 = 0;
    v52 = 0;
    v384 = 0.0;
    goto LABEL_237;
  }

  properties = v41->_properties;
  v54 = v388;
  if (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)properties videoPipelineDevice]) != 2)
  {
    if (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)v389->_properties videoPipelineDevice]) == 3)
    {
      v72 = &qword_1ECDE1000;
      if ((atomic_load_explicit(&qword_1ECDE11D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11D8))
      {
        v356 = +[CVAPreferenceManager defaults];
        v357 = [v356 BOOLForKey:@"CVAPhotoDebugDrawAutofocus"];

        byte_1ECDE11D0 = v357;
        __cxa_guard_release(&qword_1ECDE11D8);
        v54 = v388;
      }

      if (byte_1ECDE11D0 == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"properties.rawShiftInvalidThreshold: %d", -[CVAVideoPipelinePropertiesSPI rawShiftInvalidThreshold](v389->_properties, "rawShiftInvalidThreshold")];

        v73 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoFocalLengthPixels];
        [v73 stringWithFormat:@"properties.disparityStereoFocalLengthPixels: %f", v74];

        v75 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoBaselineMeters];
        [v75 stringWithFormat:@"properties.disparityStereoBaselineMeters: %f", v76];

        v54 = v388;
      }

      v386 = v389->_disparityConversion.__ptr_;
      v77 = [v54 networkDisparityPixelBuffer];
      v78 = [v388 segmentationPixelBuffer];
      untransformedCanonicalDisparityPixelBuffer = v389->_untransformedCanonicalDisparityPixelBuffer;
      v80 = [(CVAVideoPipelinePropertiesSPI *)v389->_properties segmentationBinarizationThreshold];
      v370 = [(CVAVideoPipelinePropertiesSPI *)v389->_properties depthErosionRadius];
      v365 = v43;
      v366 = v40;
      v367 = v44;
      CVPixelBufferLockBaseAddress(v77, 1uLL);
      CVPixelBufferLockBaseAddress(untransformedCanonicalDisparityPixelBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v77);
      Height = CVPixelBufferGetHeight(v77);
      Width = CVPixelBufferGetWidth(v77);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v77);
      v85 = CVPixelBufferGetBaseAddress(untransformedCanonicalDisparityPixelBuffer);
      CVPixelBufferGetHeight(untransformedCanonicalDisparityPixelBuffer);
      CVPixelBufferGetWidth(untransformedCanonicalDisparityPixelBuffer);
      v86 = CVPixelBufferGetBytesPerRow(untransformedCanonicalDisparityPixelBuffer);
      if (Height && Width)
      {
        if (Width > 7)
        {
          v153 = 4 * Width;
          _CF = BaseAddress >= (&v85[Width] + v86 * (Height - 1)) || v85 >= (&BaseAddress[Width] + BytesPerRow * (Height - 1));
          if (!_CF || ((v86 | BytesPerRow) & 0x8000000000000000) != 0)
          {
            for (j = 0; j != Height; ++j)
            {
              v169 = BaseAddress;
              v170 = v85;
              v171 = Width;
              do
              {
                v172 = *v169++;
                v173 = 1.0 / v172;
                if (v172 < 0.01)
                {
                  v173 = 100.0;
                }

                *v170++ = v173;
                --v171;
              }

              while (v171);
              v85 = (v85 + v86);
              BaseAddress = (BaseAddress + BytesPerRow);
            }
          }

          else
          {
            __asm { FMOV            V0.4S, #1.0 }

            if (Width == (Width & 0xFFFFFFFFFFFFFFF8))
            {
              v159 = 0;
              v160 = (v85 + 4);
              v161 = (BaseAddress + 4);
              v162 = vdupq_n_s64(0x3F847AE147AE147BuLL);
              v163 = vdupq_n_s32(0x42C80000u);
              do
              {
                v164 = v161;
                v165 = v160;
                v166 = Width;
                do
                {
                  v167 = vbslq_s8(vuzp1q_s32(vcgtq_f64(v162, vcvtq_f64_f32(*v164)), vcgtq_f64(v162, vcvt_hight_f64_f32(*v164->f32))), v163, vdivq_f32(_Q0, *v164->f32));
                  v165[-1] = vbslq_s8(vuzp1q_s32(vcgtq_f64(v162, vcvtq_f64_f32(v164[-2])), vcgtq_f64(v162, vcvt_hight_f64_f32(*v164[-2].f32))), v163, vdivq_f32(_Q0, *v164[-2].f32));
                  *v165 = v167;
                  v165 += 2;
                  v164 += 4;
                  v166 -= 8;
                }

                while (v166);
                ++v159;
                v160 = (v160 + v86);
                v161 = (v161 + BytesPerRow);
              }

              while (v159 != Height);
            }

            else
            {
              v174 = 0;
              v175 = (v85 + 4);
              v176 = (BaseAddress + 4);
              v177 = v153 & 0xFFFFFFFFFFFFFFE0;
              v178 = (v85 + (v153 & 0xFFFFFFFFFFFFFFE0));
              v179 = (BaseAddress + v177);
              v180 = vdupq_n_s64(0x3F847AE147AE147BuLL);
              v181 = vdupq_n_s32(0x42C80000u);
              do
              {
                v182 = v176;
                v183 = v175;
                v184 = Width & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v185 = vbslq_s8(vuzp1q_s32(vcgtq_f64(v180, vcvtq_f64_f32(*v182)), vcgtq_f64(v180, vcvt_hight_f64_f32(*v182->f32))), v181, vdivq_f32(_Q0, *v182->f32));
                  v183[-1] = vbslq_s8(vuzp1q_s32(vcgtq_f64(v180, vcvtq_f64_f32(v182[-2])), vcgtq_f64(v180, vcvt_hight_f64_f32(*v182[-2].f32))), v181, vdivq_f32(_Q0, *v182[-2].f32));
                  *v183 = v185;
                  v183 += 2;
                  v182 += 4;
                  v184 -= 8;
                }

                while (v184);
                v186 = v179;
                v187 = v178;
                v188 = Width - (Width & 0xFFFFFFFFFFFFFFF8);
                do
                {
                  v189 = *v186++;
                  v190 = 1.0 / v189;
                  if (v189 < 0.01)
                  {
                    v190 = 100.0;
                  }

                  *v187++ = v190;
                  --v188;
                }

                while (v188);
                ++v174;
                v175 = (v175 + v86);
                v176 = (v176 + BytesPerRow);
                v178 = (v178 + v86);
                v179 = (v179 + BytesPerRow);
              }

              while (v174 != Height);
            }
          }
        }

        else
        {
          v87 = BaseAddress + 3;
          v88 = v85 + 3;
          do
          {
            v89 = *(v87 - 3);
            v90 = v89;
            v91 = 1.0 / v89;
            if (v90 < 0.01)
            {
              v91 = 100.0;
            }

            *(v88 - 3) = v91;
            if (Width != 1)
            {
              v92 = *(v87 - 2);
              v93 = v92;
              v94 = 1.0 / v92;
              if (v93 < 0.01)
              {
                v94 = 100.0;
              }

              *(v88 - 2) = v94;
              if (Width != 2)
              {
                v95 = *(v87 - 1);
                v96 = v95;
                v97 = 1.0 / v95;
                if (v96 < 0.01)
                {
                  v97 = 100.0;
                }

                *(v88 - 1) = v97;
                if (Width != 3)
                {
                  v98 = 1.0 / *v87;
                  if (*v87 < 0.01)
                  {
                    v98 = 100.0;
                  }

                  *v88 = v98;
                  if (Width != 4)
                  {
                    v99 = v87[1];
                    v100 = v99;
                    v101 = 1.0 / v99;
                    if (v100 < 0.01)
                    {
                      v101 = 100.0;
                    }

                    v88[1] = v101;
                    if (Width != 5)
                    {
                      v102 = v87[2];
                      v103 = v102;
                      v104 = 1.0 / v102;
                      if (v103 < 0.01)
                      {
                        v104 = 100.0;
                      }

                      v88[2] = v104;
                      if (Width != 6)
                      {
                        v105 = v87[3];
                        v106 = v105;
                        v107 = 1.0 / v105;
                        if (v106 < 0.01)
                        {
                          v107 = 100.0;
                        }

                        v88[3] = v107;
                      }
                    }
                  }
                }
              }
            }

            v87 = (v87 + BytesPerRow);
            v88 = (v88 + v86);
            --Height;
          }

          while (Height);
        }
      }

      if (v78)
      {
        v191 = *(v386 + 2);
        CVPixelBufferLockBaseAddress(v78, 1uLL);
        CVPixelBufferLockBaseAddress(v191, 0);
        v379 = CVPixelBufferGetWidth(v78);
        v376 = CVPixelBufferGetHeight(v78);
        v192 = CVPixelBufferGetWidth(v191);
        v193 = CVPixelBufferGetHeight(v191);
        v194 = CVPixelBufferGetBaseAddress(v78);
        CVPixelBufferGetHeight(v78);
        CVPixelBufferGetWidth(v78);
        v195 = CVPixelBufferGetBytesPerRow(v78);
        v196 = CVPixelBufferGetBaseAddress(v191);
        CVPixelBufferGetHeight(v191);
        CVPixelBufferGetWidth(v191);
        v197 = CVPixelBufferGetBytesPerRow(v191);
        if (v193 && v192)
        {
          for (k = 0; k != v193; ++k)
          {
            for (m = 0; m != v192; ++m)
            {
              _H6 = *&v194[2 * ((m + 0.5) * v379 / v192) + v195 * ((k + 0.5) * v376 / v193)];
              __asm { FCVT            S6, H6 }

              if (v80 <= llroundf(_S6 * 255.0))
              {
                v202 = 32;
              }

              else
              {
                v202 = 16;
              }

              v196[m] = v202;
            }

            v196 += v197;
          }
        }

        CVPixelBufferUnlockBaseAddress(v78, 1uLL);
        CVPixelBufferUnlockBaseAddress(v191, 0);
        v203 = *(v386 + 2);
        CVPixelBufferLockBaseAddress(untransformedCanonicalDisparityPixelBuffer, 0);
        CVPixelBufferLockBaseAddress(v203, 1uLL);
        v204 = CVPixelBufferGetBaseAddress(untransformedCanonicalDisparityPixelBuffer);
        v205 = CVPixelBufferGetHeight(untransformedCanonicalDisparityPixelBuffer);
        v206 = CVPixelBufferGetWidth(untransformedCanonicalDisparityPixelBuffer);
        v207 = CVPixelBufferGetBytesPerRow(untransformedCanonicalDisparityPixelBuffer);
        v377 = CVPixelBufferGetBaseAddress(v203);
        v208 = CVPixelBufferGetHeight(v203);
        v209 = CVPixelBufferGetWidth(v203);
        v210 = CVPixelBufferGetBytesPerRow(v203);
        v211 = v206;
        v72 = &qword_1ECDE1000;
        v212 = v370;
        if (v205 && v211)
        {
          v368 = v205;
          v369 = v210;
          v362 = v203;
          v363 = untransformedCanonicalDisparityPixelBuffer;
          v364 = v77;
          v213 = 0;
          v214 = v208;
          v215 = v205;
          v216 = v209;
          v217 = v211;
          v218 = v211 - 1;
          do
          {
            v219 = 0;
            v380 = v213;
            v387 = &v204[v207 * v213];
            v220 = &v377[v369 * ((v213 + 0.5) * v214 / v215)];
            v221 = v370 << 32;
            v222 = -v370;
            do
            {
              v223 = v222 & ~(v222 >> 31);
              v224 = v221 >> 32;
              if (v221 >> 32 >= v218)
              {
                v224 = v218;
              }

              v225 = v224 + 1;
              if (v225 <= v223 + 1)
              {
                v225 = v223 + 1;
              }

              v226 = ((v219 + 0.5) * v216 / v217);
              if (v226 >= 1 && v220[v226] != v220[v226 - 1])
              {
                v227 = v218 >= v212 ? v212 : v218;
                if (v223 <= v227)
                {
                  v228 = v211;
                  memset_pattern16(&v387[4 * v223], &unk_1DED74120, 4 * (v225 - v223));
                  v211 = v228;
                }
              }

              ++v219;
              ++v212;
              ++v222;
              v221 += 0x100000000;
            }

            while (v211 != v219);
            v213 = v380 + 1;
            v212 = v370;
          }

          while (v380 + 1 != v368);
          v229 = 0;
          v230 = v368 - 1;
          v231 = v204 + 1;
          v72 = &qword_1ECDE1000;
          untransformedCanonicalDisparityPixelBuffer = v363;
          v77 = v364;
          v203 = v362;
          while (1)
          {
            v232 = ((v229 + 0.5) * v216 / v217);
            if (v232 >= 1)
            {
              break;
            }

LABEL_161:
            ++v229;
            v204 += 4;
            v231 += 4;
            if (v229 == v211)
            {
              goto LABEL_189;
            }
          }

          v233 = 0;
          v234 = -v370;
          v235 = v370;
          v236 = &v377[v232];
          while (1)
          {
            v237 = v235;
            if (v235 >= v230)
            {
              v237 = v368 - 1;
            }

            v238 = v237 + 1;
            v239 = v234 & ~(v234 >> 31);
            if (v238 <= v239 + 1)
            {
              v240 = v239 + 1;
            }

            else
            {
              v240 = v238;
            }

            v241 = (v233 + v370);
            if (v241 >= v230)
            {
              v241 = v368 - 1;
            }

            v242 = v241 + 1;
            v243 = (v233 - v370) & ~((v233 - v370) >> 31);
            if (v242 <= v243 + 1)
            {
              v244 = v243 + 1;
            }

            else
            {
              v244 = v242;
            }

            v245 = ((v233 + 0.5) * v214 / v215);
            if (v245 < 1 || v236[v369 * v245] == v236[v369 * (v245 - 1)])
            {
              goto LABEL_164;
            }

            v246 = v370 + v233;
            if (v230 < (v370 + v233))
            {
              v246 = v368 - 1;
            }

            if (v243 > v246)
            {
              goto LABEL_164;
            }

            v247 = v244 - v243;
            if (v247 >= 2 && v207 == 1)
            {
              v248 = (v240 - v239) & 0xFFFFFFFFFFFFFFFELL;
              v249 = &v204[v239];
              v250 = &v231[v239];
              v251 = v247 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                *v249 = 1157627904;
                v249 += 2;
                *v250 = 1157627904;
                v250 += 2;
                v248 -= 2;
              }

              while (v248);
              if (v247 == v251)
              {
                goto LABEL_164;
              }

              v243 += v251;
            }

            v252 = v246;
            v253 = v207 * v243;
            do
            {
              *&v204[v253] = 1157627904;
              ++v243;
              v253 += v207;
            }

            while (v243 <= v252);
LABEL_164:
            ++v233;
            ++v235;
            ++v234;
            if (v233 == v368)
            {
              goto LABEL_161;
            }
          }
        }

LABEL_189:
        CVPixelBufferUnlockBaseAddress(v203, 1uLL);
        CVPixelBufferUnlockBaseAddress(untransformedCanonicalDisparityPixelBuffer, 0);
      }

      CVPixelBufferUnlockBaseAddress(v77, 1uLL);
      CVPixelBufferUnlockBaseAddress(untransformedCanonicalDisparityPixelBuffer, 0);
      [v388 primaryCaptureRect];
      v255 = v254;
      v257 = v256;
      v259 = v258;
      v261 = v260;
      v262 = [v388 cropDepthToPrimaryRect];
      v365(v366, v389->_untransformedCanonicalDisparityPixelBuffer, pixelBufferOut, v262, 1, v255, v257, v259, v261);
      [(CVAPortraitVideoPipeline_Impl *)v389 internal_fixFocusPositionWithDisparityPostprocessingRequest:v388];
      v367(v417, v381, pixelBufferOut, v389->_vmPostprocessingParams.useFaceAsFocus, &__src, v389->_vmPostprocessingParams.faceSizeRatioInFocus);
      if (v420)
      {
        v421 = v420;
        operator delete(v420);
      }

      if (v418)
      {
        v419 = v418;
        operator delete(v418);
      }

      [(CVAVideoPipelinePropertiesSPI *)v389->_properties focusDistanceOverride];
      v150 = v389;
      if (*(v72 + 464) == 1)
      {
        v263 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties focusDistanceOverride];
        [v263 stringWithFormat:@"properties.focusDistanceOverride: %f", v264];

        v150 = v389;
      }
    }

    else
    {
      if (v389->_renderForegroundBlur)
      {
        v108 = [v388 fixedPointDisparityPixelBuffer];
        [v388 primaryCaptureRect];
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;
        v117 = [v388 cropDepthToPrimaryRect];
        v43(v40, v108, pixelBufferOut, v117, v389->_vmDynamicParams.applyRotation, v110, v112, v114, v116);
        [(CVAPortraitVideoPipeline_Impl *)v389 internal_fixFocusPositionWithDisparityPostprocessingRequest:v388];
        v44(v412, v381, pixelBufferOut, v389->_vmPostprocessingParams.useFaceAsFocus, &__src, v389->_vmPostprocessingParams.faceSizeRatioInFocus);
        if (__p)
        {
          v416 = __p;
          operator delete(__p);
        }

        v118 = v389;
        if (v413)
        {
          v414 = v413;
          operator delete(v413);
        }

        goto LABEL_197;
      }

      [v388 disparityNormalizationMultiplier];
      [v388 disparityNormalizationMultiplier];
      v122 = v121;
      [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoFocalLengthPixels];
      v124 = v123;
      [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoBaselineMeters];
      v126 = 1.0 / ((v122 * v124) * v125);
      [v388 disparityNormalizationOffset];
      [v388 disparityNormalizationOffset];
      v128 = v127;
      [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoFocalLengthPixels];
      v130 = v129;
      [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoBaselineMeters];
      v132 = (v128 * v130) * v131;
      if ((atomic_load_explicit(&qword_1ECDE11E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11E8))
      {
        v358 = +[CVAPreferenceManager defaults];
        v359 = [v358 BOOLForKey:@"CVAPhotoDebugDrawAutofocus"];

        byte_1ECDE11E0 = v359;
        __cxa_guard_release(&qword_1ECDE11E8);
        v54 = v388;
      }

      if (byte_1ECDE11E0 == 1)
      {
        v133 = MEMORY[0x1E696AEC0];
        [v54 disparityNormalizationMultiplier];
        [v133 stringWithFormat:@"disparityNormalizationMultiplier: %f", v134];

        v135 = MEMORY[0x1E696AEC0];
        [v388 disparityNormalizationOffset];
        [v135 stringWithFormat:@"disparityNormalizationOffset: %f", v136];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"properties.rawShiftInvalidThreshold: %d", -[CVAVideoPipelinePropertiesSPI rawShiftInvalidThreshold](v389->_properties, "rawShiftInvalidThreshold")];
        v137 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoFocalLengthPixels];
        [v137 stringWithFormat:@"properties.disparityStereoFocalLengthPixels: %f", v138];

        v139 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties disparityStereoBaselineMeters];
        [v139 stringWithFormat:@"properties.disparityStereoBaselineMeters: %f", v140];

        v54 = v388;
      }

      v42(ptr, [v54 fixedPointDisparityPixelBuffer], -[CVAVideoPipelinePropertiesSPI rawShiftInvalidThreshold](v389->_properties, "rawShiftInvalidThreshold"), v389->_untransformedCanonicalDisparityPixelBuffer, v126, v132);
      [v54 primaryCaptureRect];
      v142 = v141;
      v144 = v143;
      v146 = v145;
      v148 = v147;
      v149 = [v54 cropDepthToPrimaryRect];
      v43(v40, v389->_untransformedCanonicalDisparityPixelBuffer, pixelBufferOut, v149, 1, v142, v144, v146, v148);
      [(CVAPortraitVideoPipeline_Impl *)v389 internal_fixFocusPositionWithDisparityPostprocessingRequest:v54];
      v44(v407, v381, pixelBufferOut, v389->_vmPostprocessingParams.useFaceAsFocus, &__src, v389->_vmPostprocessingParams.faceSizeRatioInFocus);
      if (v410)
      {
        v411 = v410;
        operator delete(v410);
      }

      if (v408)
      {
        v409 = v408;
        operator delete(v408);
      }

      [(CVAVideoPipelinePropertiesSPI *)v389->_properties focusDistanceOverride];
      v150 = v389;
      if (byte_1ECDE11E0 == 1)
      {
        v151 = MEMORY[0x1E696AEC0];
        [(CVAVideoPipelinePropertiesSPI *)v389->_properties focusDistanceOverride];
        [v151 stringWithFormat:@"properties.focusDistanceOverride: %f", v152];

        v150 = v389;
      }
    }

    [(CVAVideoPipelinePropertiesSPI *)v150->_properties focusDistanceOverride];
    v118 = v389;
    *v389->_disparityAutofocus.__ptr_ = 1.0 / v265;
    goto LABEL_197;
  }

  LODWORD(v440[0]) = 0;
  v55 = v389->_focusStatsPostprocessing.__ptr_;
  v385 = [v388 focusTileXOffset];
  v378 = [v388 focusTileYOffset];
  v375 = [v388 focusTileWidth];
  v56 = [v388 focusTileHeight];
  v57 = [v388 focusMapWidth];
  v58 = [v388 focusMapHeight];
  v59 = [v388 totalSensorCropXOffset];
  v60 = [v388 totalSensorCropYOffset];
  v61 = [v388 totalSensorCropWidth];
  v62 = [v388 totalSensorCropHeight];
  [v388 phaseToBlurFactor];
  v64 = v63;
  [v388 focusDistanceToMaxAllowedFocusDistanceRatio];
  v66 = v65;
  v67 = [v388 focusTileData];
  v68 = [v388 segmentationPixelBuffer];
  sub_1DED5D418(v55, v385, v378, v375, v56, v57, v58, v59, v64, v66, v60, v61, v62, v67, v68, pixelBufferOut, v440);

  v69 = v389->_disparityAutofocus.__ptr_;
  *v69 = v440[0];
  v71 = *(v69 + 3);
  v70 = *(v69 + 4);
  if (v70 != v71)
  {
    if (((v70 - v71) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_265;
  }

  v120 = *(v69 + 6);
  v119 = *(v69 + 7);
  if (v119 != v120)
  {
    if (((v119 - v120) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_265:
    sub_1DED35334();
  }

  v118 = v389;
LABEL_197:
  (v372)(v402, v381, pixelBufferOut, 0);
  if (v405)
  {
    v406 = v405;
    operator delete(v405);
  }

  if (v403)
  {
    v404 = v403;
    operator delete(v403);
  }

  if ([(CVAVideoPipelinePropertiesSPI *)v118->_properties sceneMonitorUsesDisparityStatistics])
  {
    v266 = v371(v373, pixelBufferOut, v118->_disparityAutofocus.__ptr_ + 4, *v118->_disparityAutofocus.__ptr_, *(v118->_disparityAutofocus.__ptr_ + 2), v118->_vmPostprocessingParams.disparityIntervalInHoleSearch);
    v267 = v266;
    v268 = *v266;
    v423 = *(v266 + 16);
    v422 = v268;
    v424 = *(v266 + 24);
    v269 = *(v266 + 40);
    v425 = *(v266 + 32);
    v426 = v269;
    if (&v422 != v266)
    {
      sub_1DED35168(v427, *(v266 + 48), *(v266 + 56), (*(v266 + 56) - *(v266 + 48)) >> 2);
      sub_1DED35168(&v428[1], *(v267 + 72), *(v267 + 80), (*(v267 + 80) - *(v267 + 72)) >> 2);
    }

    if ((atomic_load_explicit(&qword_1ECDE11F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE11F8))
    {
      v354 = +[CVAPreferenceManager defaults];
      v355 = [v354 BOOLForKey:@"CVAPhotoDebugDrawDisparityStatistics"];

      byte_1ECDE11F0 = v355;
      __cxa_guard_release(&qword_1ECDE11F8);
      v118 = v389;
    }

    if (byte_1ECDE11F0 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"bgShiftSum: %f", *&v422];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"bgShiftSumVariance: %f", *(&v422 + 1)];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"bgShiftArea: %f", *(&v422 + 2)];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidPixelCount: %d", HIDWORD(v422)];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidShiftRatio: %f", *&v423];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidShiftRatioVariance: %f", *(&v423 + 1)];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"depthQuality: (%f %f)", *&v424, *(&v424 + 1)];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"backgroundSeparationLikelihood: %f", *&v425];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"closeCanonicalDisparityAverage: %f", *(&v425 + 1)];

      v118 = v389;
    }
  }

  v270 = v118->_disparityAutofocus.__ptr_;
  v118->_vmDynamicParams.focusCanonicalDisparity = *v270;
  v118->_vmDynamicParams.backgroundCanonicalDisparity = *(v270 + 2);
  v118->_vmDynamicParams.doDisparityHoleFilling = !v118->_treatFixedPointDisparityAsDense;
  if ((atomic_load_explicit(&qword_1ECDE1208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1208))
  {
    qword_1ECDE1200 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1208);
    v118 = v389;
  }

  if ((byte_1ECDE1210 & 1) == 0)
  {
    operator new();
  }

  v271 = [qword_1ECDE1200 BOOLValue];
  v272 = v118->_disparityAutofocus.__ptr_;
  if (v271)
  {
    v273 = fmaxf(*(v272 + 3), *(v272 + 1));
  }

  else
  {
    v273 = *(v272 + 1);
  }

  v118->_vmDynamicParams.alphaMatteDeltaCanonicalDisparity = v273;
  if ((atomic_load_explicit(&qword_1ECDE1220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1220))
  {
    qword_1ECDE1218 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1220);
    v118 = v389;
  }

  if ((byte_1ECDE1228 & 1) == 0)
  {
    operator new();
  }

  v274 = [qword_1ECDE1218 BOOLValue];
  v275 = v118->_disparityAutofocus.__ptr_;
  v276 = *(v275 + 1);
  if (v274)
  {
    v277 = fmaxf(*(v275 + 3), v276);
  }

  else
  {
    v277 = *(v275 + 1);
  }

  v118->_vmDynamicParams.sdofDeltaCanonicalDisparity = v277;
  v278 = v118->_stageLightStateMachine.__ptr_;
  v279 = [v388 isFocalPlaneLocked];
  v280 = *v118->_focusStateMachine.__ptr_;
  [v388 sourceColorPixelBufferOrientation];
  v398 = v281;
  v399 = v282;
  v400 = v283;
  v401 = v284;
  v285 = *&v425;
  v440[0] = COERCE_VOID_(sub_1DED26B30(&v398));
  v440[1] = v286;
  v441 = v287;
  v442 = v288;
  v289 = sub_1DED26C1C(v278 + 3, v440);
  if (((v280 != 0) & ~v279) != 0 || v289 >= *(v278 + 1) || (v290 = v278, *(v278 + 4) >= v285))
  {
    v290 = (v278 + 4);
  }

  *(v278 + 5) = fmaxf(fminf(*v290 + *(v278 + 5), 1.0), 0.0);
  *(v278 + 3) = sub_1DED26B30(&v398);
  *(v278 + 4) = v291;
  *(v278 + 5) = v292;
  *(v278 + 6) = v293;
  v294 = v118->_sdofIntensityStateMachine.__ptr_;
  v295 = [v388 isFocalPlaneLocked];
  v296 = *v118->_focusStateMachine.__ptr_;
  [v388 sourceColorPixelBufferOrientation];
  v398 = v297;
  v399 = v298;
  v400 = v299;
  v401 = v300;
  v440[0] = COERCE_VOID_(sub_1DED26B30(&v398));
  v440[1] = v301;
  v441 = v302;
  v442 = v303;
  v304 = sub_1DED26C1C(v294 + 3, v440);
  if (((v296 != 0) & ~v295) != 0 || (v305 = v294, v304 >= *(v294 + 1)))
  {
    v305 = (v294 + 4);
  }

  *(v294 + 4) = fmaxf(fminf(*v305 + *(v294 + 4), 1.0), 0.0);
  *(v294 + 3) = sub_1DED26B30(&v398);
  *(v294 + 4) = v306;
  *(v294 + 5) = v307;
  *(v294 + 6) = v308;
  v309 = [MEMORY[0x1E695DF70] array];
  v310 = v309;
  v311 = [MEMORY[0x1E695DF70] array];
  v313 = v427[0];
  for (n = v427[1]; v313 != n; ++v313)
  {
    LODWORD(v312) = *v313;
    v315 = [MEMORY[0x1E696AD98] numberWithFloat:v312];
    [v309 addObject:v315];
  }

  v316 = v428[1];
  for (ii = v429; v316 != ii; ++v316)
  {
    LODWORD(v312) = *v316;
    v318 = [MEMORY[0x1E696AD98] numberWithFloat:v312];
    [v311 addObject:v318];
  }

  if ([v309 count])
  {
    v319 = v309;
  }

  else
  {
    v319 = 0;
  }

  v52 = v319;

  if ([v311 count])
  {
    v320 = v311;
  }

  else
  {
    v320 = 0;
  }

  v51 = v320;

  v384 = v276;
  v41 = v389;
LABEL_237:
  v321 = [CVADisparityPostprocessingResult_Impl alloc];
  v322 = [v388 destinationDisparityPixelBuffer];
  v323 = pixelBufferOut;
  focusCanonicalDisparity = v41->_vmDynamicParams.focusCanonicalDisparity;
  v325 = v426;
  v326 = *(&v422 + 4);
  v327 = v423;
  v328 = v425;
  v329 = [MEMORY[0x1E695DEC8] arrayWithArray:v52];
  v330 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
  HIDWORD(v360) = LODWORD(v41->_previousFramePersonSegmentationRatio);
  LODWORD(v360) = 0;
  *&v331 = focusCanonicalDisparity;
  LODWORD(v332) = v325;
  LODWORD(v334) = HIDWORD(v326);
  LODWORD(v333) = v326;
  LODWORD(v336) = HIDWORD(v327);
  LODWORD(v335) = LODWORD(v327);
  *&v337 = v384;
  LODWORD(v338) = v328;
  v339 = [CVADisparityPostprocessingResult_Impl initWithPostprocessedDisparityBuffer:v321 canonicalDisparityPixelBuffer:"initWithPostprocessedDisparityBuffer:canonicalDisparityPixelBuffer:focusCanonicalDisparity:backgroundDisparitySum:backgroundDisparitySumVariance:backgroundDisparityRatio:invalidDisparityRatio:invalidDisparityRatioVariance:deltaCanonicalDisparity:backgroundSeparationLikelihood:closeCanonicalDisparityAverage:faceCanonicalDisparityAverage:faceInvalidDisparityRatio:foregroundRatio:erodedForegroundRatio:personSegmentationRatio:" focusCanonicalDisparity:v322 backgroundDisparitySum:v323 backgroundDisparitySumVariance:v329 backgroundDisparityRatio:v330 invalidDisparityRatio:v331 invalidDisparityRatioVariance:v332 deltaCanonicalDisparity:v333 backgroundSeparationLikelihood:v334 closeCanonicalDisparityAverage:v335 faceCanonicalDisparityAverage:v336 faceInvalidDisparityRatio:v337 foregroundRatio:v338 erodedForegroundRatio:HIDWORD(v328) personSegmentationRatio:v360];

  if (v389->_preferences.bypassGPUProcessing)
  {
    notificationQueue = v389->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1DED352B0;
    block[3] = &unk_1E869AAE0;
    v397 = v383;
    v395 = v388;
    v396 = v339;
    dispatch_async(notificationQueue, block);
  }

  else
  {
    *v440 = *&v389->_vmPostprocessingParams.useFaceAsFocus;
    v441 = *&v389->_vmPostprocessingParams.backgroundFillMarginFromValidDisparity_px;
    if (v389->_transitionData._inTransition)
    {
      BYTE4(v441) = 0;
    }

    if (sub_1DED31798())
    {
      NSLog(&cfstr_CvaphotoTransi.isa, BYTE4(v441));
    }

    vmAccelerator = v389->_vmAccelerator;
    v342 = pixelBufferOut;
    v343 = [v388 sourceColorPixelBuffer];
    v344 = [v388 destinationDisparityPixelBuffer];
    v345 = [v388 facesArray];
    v346 = v389->_notificationQueue;
    v390[0] = MEMORY[0x1E69E9820];
    v390[1] = 3221225472;
    v390[2] = sub_1DED352D0;
    v390[3] = &unk_1E869AAE0;
    v393 = v383;
    v391 = v388;
    v392 = v339;
    LOBYTE(v361) = a5;
    v347 = [(VideoMattingMetal *)vmAccelerator disparityPostprocessingWithCanonicalDisparity:v342 color:v343 postProcessedDisparity:v344 staticParams:&v389->_vmStaticParams dynamicParams:&v389->_vmDynamicParams postProcessingParams:v440 facesArray:v345 faceModel:0 isFinalStage:v361 callbackQueue:v346 callback:v390];
    yuvSourceDownsampledAlias = v389->_yuvSourceDownsampledAlias;
    v389->_yuvSourceDownsampledAlias = v347;
  }

  if (a6)
  {
    *a6 = 0;
  }

  [v388 fixedPointDisparityPixelBuffer];
  [v388 networkDisparityPixelBuffer];
  [v388 sourceColorPixelBuffer];
  if (!v389->_deadzoneInCinematic)
  {
    CVPixelBufferRelease(pixelBufferOut);
  }

  v349 = v339;

  if (v428[1])
  {
    *&v429 = v428[1];
    operator delete(v428[1]);
  }

  if (v427[0])
  {
    v427[1] = v427[0];
    operator delete(v427[0]);
  }

  if (__src)
  {
    v437 = __src;
    operator delete(__src);
  }

  v350 = *MEMORY[0x1E69E9840];

  return v349;
}

- (BOOL)validatePortraitRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 mattingRequest];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVAPortraitRequest.mattingRequest is nil"];
  v10 = [v8 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1423, v9];
  sub_1DED25D64(v7 == 0, a4, 4294944393, v10);

  if (!v7)
  {
    goto LABEL_35;
  }

  v11 = [v6 mattingRequest];
  v12 = [(CVAPortraitVideoPipeline_Impl *)self validateMattingRequest:v11 error:a4];

  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = [v6 destinationColorPixelBuffer];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVAPortraitRequest.destinationColorPixelBuffer is nil"];
  v16 = [v14 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1437, v15];
  sub_1DED25D64(v13 == 0, a4, 4294944393, v16);

  if (!v13)
  {
    goto LABEL_35;
  }

  v17 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferWidth];
  Width = CVPixelBufferGetWidth([v6 destinationColorPixelBuffer]);
  v19 = MEMORY[0x1E696AEC0];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected width of destinationColor"];
  v21 = [v19 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1448, v20];
  sub_1DED25D64(v17 != Width, a4, 4294944393, v21);

  if (v17 != Width)
  {
    goto LABEL_35;
  }

  v22 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferHeight];
  Height = CVPixelBufferGetHeight([v6 destinationColorPixelBuffer]);
  v24 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected height of destinationColor"];
  v26 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1457, v25];
  sub_1DED25D64(v22 != Height, a4, 4294944393, v26);

  if (v22 != Height)
  {
    goto LABEL_35;
  }

  v27 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedColorPixelBufferPixelFormats];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{CVPixelBufferGetPixelFormatType(objc_msgSend(v6, "destinationColorPixelBuffer"))}];
  v29 = [v27 containsObject:v28];
  v30 = MEMORY[0x1E696AEC0];
  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format for destinationColor"];
  v32 = [v30 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1467, v31];
  sub_1DED25D64(v29 ^ 1, a4, 4294944393, v32);

  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v6;
    [v33 simulatedFocalRatio];
    v35 = v34;
    v36 = MEMORY[0x1E696AEC0];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"simulatedFocalRatio outside allowable range"];
    v38 = [v36 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1480, v37];
    sub_1DED25D64(v35 < 1.0, a4, 4294944393, v38);

    if (v35 >= 1.0)
    {
      [v33 sourceColorGain];
      v40 = v39;
      v41 = MEMORY[0x1E696AEC0];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"srcColorGain outside allowable range [0, inf"]);
      v43 = [v41 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1488, v42];
      sub_1DED25D64(v40 < 0.0, a4, 4294944393, v43);

      if (v40 >= 0.0)
      {
        [v33 sourceColorLux];
        v45 = v44;
        v46 = MEMORY[0x1E696AEC0];
        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"srcColorLux outside allowable range [0, inf"]);
        v48 = [v46 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1496, v47];
        sub_1DED25D64(v45 < 0.0, a4, 4294944393, v48);

        if (v45 >= 0.0)
        {
          v49 = [v33 backgroundColorCube];
          if (v49)
          {
            v67 = [v33 backgroundColorCube];
            v50 = sub_1DED35C5C(v67);
          }

          else
          {
            v50 = 1;
          }

          v63 = MEMORY[0x1E696AEC0];
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid background color cube data"];
          v29 = [v63 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1504, v64];
          sub_1DED25D64(!v50, a4, 4294944393, v29);

          if (v49)
          {
          }

          if (v50)
          {
            v57 = [v33 foregroundColorCube];
            if (v57)
            {
              v29 = [v33 foregroundColorCube];
              v58 = sub_1DED35C5C(v29);
            }

            else
            {
              v58 = 1;
            }

            v66 = MEMORY[0x1E696AEC0];
            v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid foreground color cube data"];
            v61 = [v66 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1512, v60];
            sub_1DED25D64(!v58, a4, 4294944393, v61);
LABEL_24:

            if (v57)
            {
            }

            if (v58)
            {
              goto LABEL_27;
            }

LABEL_35:
            v62 = 0;
            goto LABEL_36;
          }
        }
      }
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v6;
    v68 = v51;
    v52 = [v51 proxyCubeData];
    if (v52)
    {
      v29 = [v51 proxyCubeData];
      v53 = sub_1DED35C5C(v29);
    }

    else
    {
      v53 = 1;
    }

    v54 = MEMORY[0x1E696AEC0];
    v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid background color cube data"];
    v56 = [v54 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1524, v55];
    sub_1DED25D64(!v53, a4, 4294944393, v56);

    if (v52)
    {
    }

    v33 = v68;
    if (v53)
    {
      v57 = [v68 proxyCubeData];
      if (v57)
      {
        v29 = [v68 cubeData];
        v58 = sub_1DED35C5C(v29);
      }

      else
      {
        v58 = 1;
      }

      v59 = MEMORY[0x1E696AEC0];
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid background color cube data"];
      v61 = [v59 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validatePortraitRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1532, v60];
      sub_1DED25D64(!v58, a4, 4294944393, v61);
      goto LABEL_24;
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_27:
  v62 = 1;
LABEL_36:

  return v62;
}

- (BOOL)validateMattingRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 disparityPostprocessingRequest];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVAMattingRequest.disparityPostprocessingRequest is nil"];
  v10 = [v8 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateMattingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1335, v9];
  sub_1DED25D64(v7 == 0, a4, 4294944393, v10);

  if (!v7)
  {
    goto LABEL_8;
  }

  v11 = [v6 disparityPostprocessingRequest];
  v12 = [(CVAPortraitVideoPipeline_Impl *)self validateDisparityPostprocessingRequest:v11 error:a4];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v6 segmentationPixelBuffer];
  v14 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedInputSegmentationPixelBufferPixelFormats];
  LOBYTE(v13) = [(CVAPortraitVideoPipeline_Impl *)self validateSegmentationPixelBuffer:v13 matchFormat:v14 error:a4];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = [v6 skinSegmentationPixelBuffer];
  v16 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedInputSegmentationPixelBufferPixelFormats];
  LOBYTE(v15) = [(CVAPortraitVideoPipeline_Impl *)self validateSegmentationPixelBuffer:v15 matchFormat:v16 error:a4];

  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = [v6 destinationAlphaMattePixelBuffer];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVAMattingRequest.destinationAlphaMattePixelBuffer is nil"];
  v20 = [v18 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateMattingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1364, v19];
  sub_1DED25D64(v17 == 0, a4, 4294944393, v20);

  if (!v17)
  {
    goto LABEL_8;
  }

  v21 = [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMattePixelBufferWidth];
  Width = CVPixelBufferGetWidth([v6 destinationAlphaMattePixelBuffer]);
  v23 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected width of destinationAlpha"];
  v25 = [v23 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateMattingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1374, v24];
  sub_1DED25D64(v21 != Width, a4, 4294944393, v25);

  if (v21 != Width)
  {
    goto LABEL_8;
  }

  v26 = [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMattePixelBufferHeight];
  Height = CVPixelBufferGetHeight([v6 destinationAlphaMattePixelBuffer]);
  v28 = MEMORY[0x1E696AEC0];
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected height of destinationAlpha"];
  v30 = [v28 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateMattingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1382, v29];
  sub_1DED25D64(v26 != Height, a4, 4294944393, v30);

  if (v26 == Height)
  {
    v33 = [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMattePixelBufferPixelFormat];
    PixelFormatType = CVPixelBufferGetPixelFormatType([v6 destinationAlphaMattePixelBuffer]);
    v35 = MEMORY[0x1E696AEC0];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format for destinationAlpha"];
    v37 = [v35 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateMattingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1391, v36];
    sub_1DED25D64(v33 != PixelFormatType, a4, 4294944393, v37);
    v31 = v33 == PixelFormatType;
  }

  else
  {
LABEL_8:
    v31 = 0;
  }

  return v31;
}

- (BOOL)validateDisparityPostprocessingRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 sourceColorPixelBuffer];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.sourceColorPixelBuffer is nil"];
  v10 = [v8 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1158, v9];
  sub_1DED25D64(v7 == 0, a4, 4294944393, v10);

  if (!v7)
  {
    goto LABEL_24;
  }

  if (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) == 2)
  {
    v11 = [v6 segmentationPixelBuffer];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.segmentationPixelBuffer is nil"];
    v14 = [v12 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1169, v13];
    sub_1DED25D64(v11 == 0, a4, 4294944393, v14);

    if (!v11)
    {
      goto LABEL_24;
    }

    v15 = [v6 focusTileData];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.focusTileData is nil"];
    v18 = [v16 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1178, v17];
    sub_1DED25D64(v15 == 0, a4, 4294944393, v18);

    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) == 3)
    {
      v19 = [v6 networkDisparityPixelBuffer];
      v20 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.networkDisparityPixelBuffer is nil"];
      v22 = [v20 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1190, v21];
      sub_1DED25D64(v19 == 0, a4, 4294944393, v22);

      if (!v19)
      {
        goto LABEL_24;
      }

      v23 = [v6 segmentationPixelBuffer];
      v24 = MEMORY[0x1E696AEC0];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.segmentationPixelBuffer is nil"];
      v26 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1199, v25];
      sub_1DED25D64(v23 == 0, a4, 4294944393, v26);
    }

    else
    {
      v23 = [v6 fixedPointDisparityPixelBuffer];
      v27 = MEMORY[0x1E696AEC0];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.fixedPointDisparityPixelBuffer is nil"];
      v26 = [v27 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1211, v25];
      sub_1DED25D64(v23 == 0, a4, 4294944393, v26);
    }

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  v28 = [v6 destinationDisparityPixelBuffer];
  v29 = MEMORY[0x1E696AEC0];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVADisparityPostprocessingRequest.destinationDisparityPixelBuffer is nil"];
  v31 = [v29 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1221, v30];
  sub_1DED25D64(v28 == 0, a4, 4294944393, v31);

  if (v28)
  {
    v32 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferWidth];
    Width = CVPixelBufferGetWidth([v6 sourceColorPixelBuffer]);
    v34 = MEMORY[0x1E696AEC0];
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected width of srcColor"];
    v36 = [v34 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1232, v35];
    sub_1DED25D64(v32 != Width, a4, 4294944393, v36);

    if (v32 == Width)
    {
      v37 = [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferHeight];
      Height = CVPixelBufferGetHeight([v6 sourceColorPixelBuffer]);
      v39 = MEMORY[0x1E696AEC0];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected height of srcColor"];
      v41 = [v39 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1241, v40];
      sub_1DED25D64(v37 != Height, a4, 4294944393, v41);

      if (v37 == Height)
      {
        v42 = [v6 segmentationPixelBuffer];
        v43 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedInputSegmentationPixelBufferPixelFormats];
        LOBYTE(v42) = [(CVAPortraitVideoPipeline_Impl *)self validateSegmentationPixelBuffer:v42 matchFormat:v43 error:a4];

        if (v42)
        {
          if (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) != 1 && (sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]) & 0xFFFFFFFBLL) != 0)
          {
            goto LABEL_29;
          }

          v44 = [(CVAVideoPipelinePropertiesSPI *)self->_properties inputDisparityPixelBufferWidth];
          v45 = CVPixelBufferGetWidth([v6 fixedPointDisparityPixelBuffer]);
          v46 = MEMORY[0x1E696AEC0];
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected width of fixedPointDisparity: %zu != %zu", -[CVAVideoPipelinePropertiesSPI inputDisparityPixelBufferWidth](self->_properties, "inputDisparityPixelBufferWidth"), CVPixelBufferGetWidth(objc_msgSend(v6, "fixedPointDisparityPixelBuffer"))];
          v48 = [v46 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1259, v47];
          sub_1DED25D64(v44 != v45, a4, 4294944393, v48);

          if (v44 == v45)
          {
            v49 = [(CVAVideoPipelinePropertiesSPI *)self->_properties inputDisparityPixelBufferHeight];
            v50 = CVPixelBufferGetHeight([v6 fixedPointDisparityPixelBuffer]);
            v51 = MEMORY[0x1E696AEC0];
            v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected height of fixedPointDisparity"];
            v53 = [v51 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1267, v52];
            sub_1DED25D64(v49 != v50, a4, 4294944393, v53);

            if (v49 == v50)
            {
              v54 = [(CVAVideoPipelinePropertiesSPI *)self->_properties inputDisparityPixelBufferPixelFormat];
              PixelFormatType = CVPixelBufferGetPixelFormatType([v6 fixedPointDisparityPixelBuffer]);
              v56 = MEMORY[0x1E696AEC0];
              v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format for fixedPointDisparity"];
              v58 = [v56 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1275, v57];
              sub_1DED25D64(v54 != PixelFormatType, a4, 4294944393, v58);

              if (v54 == PixelFormatType)
              {
LABEL_29:
                v59 = [(CVAVideoPipelinePropertiesSPI *)self->_properties outputDisparityPixelBufferWidth];
                v60 = CVPixelBufferGetWidth([v6 destinationDisparityPixelBuffer]);
                v61 = MEMORY[0x1E696AEC0];
                v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected width of destinationDisparity"];
                v63 = [v61 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1284, v62];
                sub_1DED25D64(v59 != v60, a4, 4294944393, v63);

                if (v59 == v60)
                {
                  v64 = [(CVAVideoPipelinePropertiesSPI *)self->_properties outputDisparityPixelBufferHeight];
                  v65 = CVPixelBufferGetHeight([v6 destinationDisparityPixelBuffer]);
                  v66 = MEMORY[0x1E696AEC0];
                  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected height of destinationDisparity"];
                  v68 = [v66 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1292, v67];
                  sub_1DED25D64(v64 != v65, a4, 4294944393, v68);

                  if (v64 == v65)
                  {
                    v88 = [(CVAVideoPipelinePropertiesSPI *)self->_properties supportedColorPixelBufferPixelFormats];
                    v69 = [MEMORY[0x1E696AD98] numberWithInt:{CVPixelBufferGetPixelFormatType(objc_msgSend(v6, "sourceColorPixelBuffer"))}];
                    v70 = [v88 containsObject:v69];
                    v71 = MEMORY[0x1E696AEC0];
                    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format for srcColor"];
                    v73 = [v71 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1300, v72];
                    sub_1DED25D64(v70 ^ 1u, a4, 4294944393, v73);

                    if (v70)
                    {
                      v74 = [(CVAVideoPipelinePropertiesSPI *)self->_properties outputDisparityPixelBufferPixelFormat];
                      v75 = CVPixelBufferGetPixelFormatType([v6 destinationDisparityPixelBuffer]);
                      v76 = MEMORY[0x1E696AEC0];
                      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format for destinationDisparity"];
                      v78 = [v76 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1308, v77];
                      sub_1DED25D64(v74 != v75, a4, 4294944393, v78);

                      if (v74 == v75)
                      {
                        [v6 sourceColorPixelBufferGravity];
                        [v6 sourceColorPixelBufferGravity];
                        v84 = sqrt(v81 * v81 + v82 * v82 + v83 * v83) <= 0.00000011920929;
                        v85 = MEMORY[0x1E696AEC0];
                        v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Gravity vector should be NAN or have nonzero length"];
                        v87 = [v85 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateDisparityPostprocessingRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1317, v86];
                        sub_1DED25D64(v84, a4, 4294944393, v87);

                        v79 = !v84;
                        goto LABEL_25;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  v79 = 0;
LABEL_25:

  return v79;
}

- (BOOL)validateSegmentationPixelBuffer:(__CVBuffer *)a3 matchFormat:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v9 = [MEMORY[0x1E696AD98] numberWithInt:PixelFormatType];
    v10 = [v7 containsObject:v9];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v7 componentsJoinedByString:{@", "}];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:PixelFormatType];
    v14 = [v11 stringWithFormat:@"Unexpected pixel format for inputSegmentation. Supported formats: %@ was %@", v12, v13];
    v15 = [v11 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAPortraitVideoPipeline_Impl validateSegmentationPixelBuffer:matchFormat:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipeline.mm", 1139, v14];
    sub_1DED25D64(v10 ^ 1u, a5, 4294944393, v15);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (CVAVideoPipelineProperties)videoPipelineProperties
{
  v2 = [(CVAVideoPipelinePropertiesSPI *)self->_properties copy];

  return v2;
}

- (void)setVideoPipelineProperties:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 conformsToProtocol:&unk_1F5A0FF30])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 colorPixelBufferWidth];
  if (v7 != [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferWidth])
  {
    v79 = [MEMORY[0x1E696AAA8] currentHandler];
    [v79 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1010 description:@"Dynamic resolution change is unsupported"];
  }

  v8 = [v5 colorPixelBufferHeight];
  if (v8 != [(CVAVideoPipelinePropertiesSPI *)self->_properties colorPixelBufferHeight])
  {
    v80 = [MEMORY[0x1E696AAA8] currentHandler];
    [v80 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1012 description:@"Dynamic resolution change is unsupported"];
  }

  v9 = [v5 alphaMattePixelBufferWidth];
  if (v9 != [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMattePixelBufferWidth])
  {
    v81 = [MEMORY[0x1E696AAA8] currentHandler];
    [v81 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1014 description:@"Dynamic resolution change is unsupported"];
  }

  v10 = [v5 alphaMattePixelBufferHeight];
  if (v10 != [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMattePixelBufferHeight])
  {
    v82 = [MEMORY[0x1E696AAA8] currentHandler];
    [v82 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1016 description:@"Dynamic resolution change is unsupported"];
  }

  v11 = [v5 inputDisparityPixelBufferWidth];
  if (v11 != [(CVAVideoPipelinePropertiesSPI *)self->_properties inputDisparityPixelBufferWidth])
  {
    v83 = [MEMORY[0x1E696AAA8] currentHandler];
    [v83 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1018 description:@"Dynamic resolution change is unsupported"];
  }

  v12 = [v5 inputDisparityPixelBufferHeight];
  if (v12 != [(CVAVideoPipelinePropertiesSPI *)self->_properties inputDisparityPixelBufferHeight])
  {
    v84 = [MEMORY[0x1E696AAA8] currentHandler];
    [v84 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1020 description:@"Dynamic resolution change is unsupported"];
  }

  v13 = [v5 outputDisparityPixelBufferWidth];
  if (v13 != [(CVAVideoPipelinePropertiesSPI *)self->_properties outputDisparityPixelBufferWidth])
  {
    v85 = [MEMORY[0x1E696AAA8] currentHandler];
    [v85 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1022 description:@"Dynamic resolution change is unsupported"];
  }

  v14 = [v5 outputDisparityPixelBufferHeight];
  if (v14 == [(CVAVideoPipelinePropertiesSPI *)self->_properties outputDisparityPixelBufferHeight])
  {
    if (!v6)
    {
LABEL_48:
      v52 = sub_1DED2E328([(CVAVideoPipelinePropertiesSPI *)self->_properties videoPipelineDevice]);
      [(CVAVideoPipelinePropertiesSPI *)self->_properties guidedFilterUnconfidentWeight];
      self->_vmStaticParams.guidedFilterUnconfidentWeight = v53;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties guidedFilterMinDistToDeweight];
      self->_vmStaticParams.guidedFilterMinDistToDeweight = v54;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties referenceDisparity];
      self->_vmStaticParams.referenceShift = v55;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaMaxLaplacian];
      self->_vmStaticParams.alphaMaxLaplacian = v56;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaContrastExponent];
      self->_vmStaticParams.alphaContrastExponent = v57;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties disparityFilterColorStd];
      self->_vmStaticParams.shiftFilterColorStd = v58;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties disparityFilterUpdateRate];
      self->_vmStaticParams.shiftFilterUpdateRate = v59;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties minimumConfidenceToKeepDisparity];
      self->_vmStaticParams.minimumConfidenceToKeepDisparity = v60;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties maximumSimilarityToKeepDisparity];
      self->_vmStaticParams.maximumSimilarityToKeepDisparity = v61;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties maxDisparityFillingInconsistency];
      self->_vmStaticParams.maxShiftFillingInconsistency = v62;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties maxDisparityFillingDistFromForeground];
      self->_vmStaticParams.maxShiftFillingDistFromFg = v63;
      self->_vmStaticParams.maxDistToPushShiftEdgesFwd = [(CVAVideoPipelinePropertiesSPI *)self->_properties maxDistToPushDisparityEdgesFwd];
      self->_vmStaticParams.maxDistToPushShiftEdgesRev = [(CVAVideoPipelinePropertiesSPI *)self->_properties maxDistToPushDisparityEdgesRev];
      self->_vmStaticParams.shiftPushingBgToFgShiftDifference = [(CVAVideoPipelinePropertiesSPI *)self->_properties disparityPushingBackgroundToForegroundDisparityDifference];
      [(CVAVideoPipelinePropertiesSPI *)self->_properties foregroundMaskDilationRadius];
      self->_vmStaticParams.foregroundMaskDilationRadius = v64;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties infConvolutionDownsampling];
      self->_vmStaticParams.infConvolutionDownsampling = v65;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties mattingUpdateRate];
      self->_vmDynamicMetaParams.mattingCoeffUpdateRate = v66;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties mattingUpdateRateFast];
      self->_vmDynamicMetaParams.mattingCoeffUpdateRateFast = v67;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaCoeffFilterColorStd];
      self->_vmDynamicMetaParams.mattingCoeffColorStd = v68;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaCoeffFilterColorStdFast];
      self->_vmDynamicMetaParams.mattingCoeffColorStdFast = v69;
      self->_vmDynamicParams.updateRate = self->_vmDynamicMetaParams.mattingCoeffUpdateRate;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties deltaCanonicalDisparity];
      self->_vmDynamicParams.sdofDeltaCanonicalDisparity = v70;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties deltaCanonicalDisparity];
      self->_vmDynamicParams.alphaMatteDeltaCanonicalDisparity = v71;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties alphaGammaExponent];
      self->_vmDynamicParams.alphaGammaExponent = v72;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties focusThresholdHardness];
      self->_vmDynamicParams.thresholdHardness = v73;
      v74 = v52 & 0xFFFFFFFB;
      v75 = BYTE4(v52) & ((v52 & 0xFFFFFFFB) == 0);
      if (v52 == 3)
      {
        v75 = 1;
      }

      self->_vmPostprocessingParams.useFaceAsFocus = v75;
      [(CVAVideoPipelinePropertiesSPI *)self->_properties faceSizeRatioInFocus];
      self->_vmPostprocessingParams.faceSizeRatioInFocus = v76;
      self->_vmPostprocessingParams.fillLargeHolesWithBackground = v74 == 0;
      v77 = 10.0;
      if (!v74)
      {
        v77 = 0.0;
      }

      self->_vmPostprocessingParams.backgroundFillMarginFromValidDisparity_px = v77;
      self->_vmPostprocessingParams.useTemporalRejection = v52 == 1;
      goto LABEL_56;
    }
  }

  else
  {
    v86 = [MEMORY[0x1E696AAA8] currentHandler];
    [v86 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1024 description:@"Dynamic resolution change is unsupported"];

    if (!v6)
    {
      goto LABEL_48;
    }
  }

  [v6 backgroundDisparityUpdateRate];
  v16 = v15;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties backgroundDisparityUpdateRate];
  if (v16 != v17)
  {
    v87 = [MEMORY[0x1E696AAA8] currentHandler];
    [v87 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1032 description:@"Dynamic change to backgroundDisparityUpdateRate is unsupported"];
  }

  v18 = [v6 backgroundDisparityStatsWindowSize];
  if (v18 != [(CVAVideoPipelinePropertiesSPI *)self->_properties backgroundDisparityStatsWindowSize])
  {
    v88 = [MEMORY[0x1E696AAA8] currentHandler];
    [v88 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1034 description:@"Dynamic change to backgroundDisparityStatsWindowSize is unsupported"];
  }

  [v6 minDeltaCanonicalDisparity];
  v20 = v19;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties minDeltaCanonicalDisparity];
  if (v20 != v21)
  {
    v89 = [MEMORY[0x1E696AAA8] currentHandler];
    [v89 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1036 description:@"Dynamic change to minDeltaCanonicalDisparity is unsupported"];
  }

  [v6 maxDeltaCanonicalDisparity];
  v23 = v22;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties maxDeltaCanonicalDisparity];
  if (v23 != v24)
  {
    v90 = [MEMORY[0x1E696AAA8] currentHandler];
    [v90 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1038 description:@"Dynamic change to maxDeltaCanonicalDisparity is unsupported"];
  }

  [v6 dsCanonicalLowThld];
  v26 = v25;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties dsCanonicalLowThld];
  if (v26 != v27)
  {
    v91 = [MEMORY[0x1E696AAA8] currentHandler];
    [v91 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1040 description:@"Dynamic change to dsCanonicalLowThld is unsupported"];
  }

  [v6 dsCanonicalLowScale];
  v29 = v28;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties dsCanonicalLowScale];
  if (v29 != v30)
  {
    v92 = [MEMORY[0x1E696AAA8] currentHandler];
    [v92 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1042 description:@"Dynamic change to dsCanonicalLowScale is unsupported"];
  }

  [v6 dsCanonicalHighThld];
  v32 = v31;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties dsCanonicalHighThld];
  if (v32 != v33)
  {
    v93 = [MEMORY[0x1E696AAA8] currentHandler];
    [v93 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1044 description:@"Dynamic change to dsCanonicalHighThld is unsupported"];
  }

  [v6 dsCanonicalHighScale];
  v35 = v34;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties dsCanonicalHighScale];
  if (v35 != v36)
  {
    v94 = [MEMORY[0x1E696AAA8] currentHandler];
    [v94 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1046 description:@"Dynamic change to dsCanonicalHighScale is unsupported"];
  }

  v37 = [v6 depthPixelBufferXPadding];
  if (v37 != [(CVAVideoPipelinePropertiesSPI *)self->_properties depthPixelBufferXPadding])
  {
    v95 = [MEMORY[0x1E696AAA8] currentHandler];
    [v95 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1048 description:@"Dynamic change to depthPixelBufferXPadding is unsupported"];
  }

  v38 = [v6 depthPixelBufferYPadding];
  if (v38 != [(CVAVideoPipelinePropertiesSPI *)self->_properties depthPixelBufferYPadding])
  {
    v96 = [MEMORY[0x1E696AAA8] currentHandler];
    [v96 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1050 description:@"Dynamic change to depthPixelBufferYPadding is unsupported"];
  }

  [v6 foregroundPercentile];
  v40 = v39;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties foregroundPercentile];
  if (v40 != v41)
  {
    v97 = [MEMORY[0x1E696AAA8] currentHandler];
    [v97 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1052 description:@"Dynamic change to foregroundPercentile is unsupported"];
  }

  [v6 closeDisparityPercentile];
  v43 = v42;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties closeDisparityPercentile];
  if (v43 != v44)
  {
    v98 = [MEMORY[0x1E696AAA8] currentHandler];
    [v98 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1054 description:@"Dynamic change to closeDisparityPercentile is unsupported"];
  }

  [v6 deltaDepth];
  v46 = v45;
  [(CVAVideoPipelinePropertiesSPI *)self->_properties deltaDepth];
  if (v46 != v47)
  {
    v99 = [MEMORY[0x1E696AAA8] currentHandler];
    [v99 handleFailureInMethod:a2 object:self file:@"CVAVideoPipeline.mm" lineNumber:1056 description:@"Dynamic change to deltaDepth is unsupported"];
  }

  v100 = 0;
  v48 = [v6 validateWithError:&v100];
  v49 = v100;
  if (v48)
  {
    v50 = [v6 copy];
    properties = self->_properties;
    self->_properties = v50;

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v102 = v49;
    _os_log_fault_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
  }

LABEL_56:
  v78 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_untransformedCanonicalDisparityPixelBuffer);
  CVPixelBufferPoolRelease(self->_canonicalDisparityPixelBufferPool);
  v3.receiver = self;
  v3.super_class = CVAPortraitVideoPipeline_Impl;
  [(CVAPortraitVideoPipeline_Impl *)&v3 dealloc];
}

- (CVAPortraitVideoPipeline_Impl)initWithProperties:(id)a3 commandQueue:(id)a4 notificationQueue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v39.receiver = self;
  v39.super_class = CVAPortraitVideoPipeline_Impl;
  v13 = [(CVAPortraitVideoPipeline_Impl *)&v39 init];
  if (v13)
  {
    if (v12)
    {
      v14 = v12;
      v15 = *(v13 + 2);
      *(v13 + 2) = v14;
    }

    else
    {
      v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      v16 = dispatch_queue_create("CVAPortraitPipelineResultQueue", v15);
      v17 = *(v13 + 2);
      *(v13 + 2) = v16;
    }

    if (![v13 makeMetalContextWithOptionalCommandQueue:v11 error:a6])
    {
      if (([v10 conformsToProtocol:&unk_1F5A0FF30] & 1) == 0)
      {
        v36 = [MEMORY[0x1E696AAA8] currentHandler];
      }

      v18 = [v10 copy];
      v19 = *(v13 + 3);
      *(v13 + 3) = v18;

      if ([*(v13 + 3) validateWithError:a6])
      {
        v37 = sub_1DED2E328([*(v13 + 3) videoPipelineDevice]);
        v20 = sub_1DED5D1F8(@"guided_depth_restoration_enabled", @"com.apple.coremedia", 0);
        v21 = sub_1DED5D1F8(@"CVAPhotoForceDensePipeline", @"com.apple.coremedia", 0);
        v22 = sub_1DED5D1F8(@"portraitPreviewDisableForegroundBlur", @"com.apple.coremedia", 0);
        if ([*(v13 + 3) supportsForegroundBlur])
        {
          if (sub_1DED5D1F8(@"enableFGBlur", @"com.apple.coremedia", 1))
          {
            v23 = v22 == 0;
          }

          else
          {
            v23 = 0;
          }

          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v13[34] = v24;
        if (v37 == 1 && v20)
        {
          v25 = [*(v13 + 3) canSkipDisparityHoleFillingAndTemporalRejection];
          if (v21)
          {
            v26 = 1;
          }

          else
          {
            v26 = v25;
          }

          if ((v26 & 1) == 0)
          {
            v24 = v13[34];
            goto LABEL_28;
          }
        }

        else if (!v21)
        {
          goto LABEL_28;
        }

        v24 = 1;
LABEL_28:
        v13[32] = v24 & 1;
        v13[33] = sub_1DED5D1F8(@"CVAPhotoForceHighPrecisionForDenseDisparityConversion", @"com.apple.coremedia", 0) == 0;
        v27 = v13[34] == 1 && sub_1DED5D1F8(@"CVAPhotoDeadzoneInCinematic", @"com.apple.coremedia", 1) != 0;
        v13[548] = v27;
        if (v13[32] == 1 && v13[33] == 1)
        {
          v28 = [*(v13 + 3) inputDisparityPixelBufferWidth];
          v29 = [*(v13 + 3) inputDisparityPixelBufferHeight];
          v30 = 1751411059;
        }

        else
        {
          v28 = [*(v13 + 3) inputDisparityPixelBufferWidth];
          v29 = [*(v13 + 3) inputDisparityPixelBufferHeight];
          v30 = 1278226534;
        }

        CVPixelBufferCreate(0, v28, v29, v30, 0, v13 + 5);
        if (v13[32] == 1 && v13[33] == 1)
        {
          v31 = [*(v13 + 3) outputDisparityPixelBufferWidth];
          v32 = [*(v13 + 3) outputDisparityPixelBufferHeight];
          v33 = 1751411059;
        }

        else
        {
          v31 = [*(v13 + 3) outputDisparityPixelBufferWidth];
          v32 = [*(v13 + 3) outputDisparityPixelBufferHeight];
          v33 = 1278226534;
        }

        [CVAPortraitVideoPipeline_Impl pixelBufferPoolCreateWithWidth:v31 height:v32 pixelFormat:v33 pool:v13 + 48];
        [*(v13 + 3) inputDisparityPixelBufferWidth];
        [*(v13 + 3) inputDisparityPixelBufferHeight];
        [*(v13 + 3) outputDisparityPixelBufferWidth];
        [*(v13 + 3) outputDisparityPixelBufferHeight];
        [*(v13 + 3) depthPixelBufferXPadding];
        [*(v13 + 3) depthPixelBufferYPadding];
        if ((v13[34] & 1) == 0)
        {
          [*(v13 + 3) depthPixelBufferXReplication];
          if ((v13[34] & 1) == 0)
          {
            [*(v13 + 3) depthPixelBufferYReplication];
          }
        }

        [*(v13 + 3) depthPixelBufferMaxRightOcclusionDisparityChange];
        [*(v13 + 3) depthPixelBufferMaxLeftOcclusionDisparityChange];
        v13[32];
        [v10 outputDisparityOffset];
        *(v13 + 9) = v34;
        [*(v13 + 3) disparityStereoFocalLengthPixels];
        [*(v13 + 3) disparityStereoBaselineMeters];
        operator new();
      }
    }
  }

  else if (a6)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-22900 userInfo:0];
  }

  return 0;
}

- (int)makeMetalContextWithOptionalCommandQueue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E6991778]);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v6 initWithbundle:v7 andOptionalCommandQueue:v5];
  figMetalContext = self->_metalContext.figMetalContext;
  self->_metalContext.figMetalContext = v8;

  v10 = [(FigMetalContext *)self->_metalContext.figMetalContext device];
  device = self->_metalContext.device;
  self->_metalContext.device = v10;

  v12 = [(FigMetalContext *)self->_metalContext.figMetalContext commandQueue];
  commandQueue = self->_metalContext.commandQueue;
  self->_metalContext.commandQueue = v12;

  v14 = [(FigMetalContext *)self->_metalContext.figMetalContext library];
  library = self->_metalContext.library;
  self->_metalContext.library = v14;

  return 0;
}

+ (void)drawDisparity:(const __CVBuffer *)a3 onColor:(__CVBuffer *)a4 canonical:(BOOL)a5 rawShiftInvalidThreshold:(int)a6 focusMachineState:(int)a7 offsetX:(unint64_t)a8 offsetY:(unint64_t)a9
{
  v57 = a5;
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, 0);
  v16 = CVPixelBufferGetHeightOfPlane(a4, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, 0);
  v18 = CVPixelBufferGetBytesPerRowOfPlane(a4, 1uLL);
  pixelBuffer = a3;
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, 0);
  v20 = CVPixelBufferGetBaseAddressOfPlane(a4, 1uLL);
  if (BaseAddress)
  {
    if (BaseAddressOfPlane)
    {
      if (v20)
      {
        if (Width <= BytesPerRowOfPlane && Width <= v18)
        {
          v22 = Height;
          if (Height < HeightOfPlane)
          {
            v23 = Height >> 1;
            if (Height >> 1 < v16)
            {
              v53 = BytesPerRow;
              v54 = v20;
              if (v57)
              {
                if (Width < 89 || Height < 24)
                {
                  syslog(1, "drawText(): text does not fit: (%d..%d,%d..%d) not a subrect of (0..%d, 0..%d)", 8, 88, 8, 23, Width, Height);
                  v22 = Height;
                }

                else
                {
                  v24 = 0;
                  if (a7)
                  {
                    v25 = 102;
                  }

                  else
                  {
                    v25 = 115;
                  }

                  if (a7)
                  {
                    v26 = 97;
                  }

                  else
                  {
                    v26 = 108;
                  }

                  if (a7)
                  {
                    v27 = 115;
                  }

                  else
                  {
                    v27 = 111;
                  }

                  if (a7)
                  {
                    v28 = 116;
                  }

                  else
                  {
                    v28 = 119;
                  }

                  v29 = &BaseAddress[2 * BytesPerRow + 42];
                  v30 = 9 * v26;
                  v31 = 9 * v27;
                  v32 = 9 * v28;
                  do
                  {
                    v33 = 3 * (v24 / 5uLL);
                    if (byte_1DED74140[9 * v25 + v33])
                    {
                      *(v29 - 136) = 0;
                      *(v29 - 128) = 0;
                      *(v29 - 120) = 0;
                    }

                    v34 = &byte_1DED74140[9 * v25 + v33];
                    if (v34[1])
                    {
                      *(v29 - 108) = 0;
                      *(v29 - 116) = 0;
                      *(v29 - 100) = 0;
                    }

                    if (v34[2])
                    {
                      *(v29 - 96) = 0;
                      *(v29 - 88) = 0;
                      *(v29 - 80) = 0;
                    }

                    if (byte_1DED74140[v30 + v33])
                    {
                      *(v29 - 56) = 0;
                      *(v29 - 48) = 0;
                      *(v29 - 40) = 0;
                    }

                    v35 = &byte_1DED74140[v30 + v33];
                    if (v35[1])
                    {
                      *(v29 - 28) = 0;
                      *(v29 - 36) = 0;
                      *(v29 - 20) = 0;
                    }

                    if (v35[2])
                    {
                      *(v29 - 16) = 0;
                      *(v29 - 8) = 0;
                      *v29 = 0;
                    }

                    if (byte_1DED74140[v31 + v33])
                    {
                      *(v29 + 24) = 0;
                      *(v29 + 32) = 0;
                      *(v29 + 40) = 0;
                    }

                    v36 = &byte_1DED74140[v31 + v33];
                    if (v36[1])
                    {
                      *(v29 + 48) = 0;
                      *(v29 + 56) = 0;
                      *(v29 + 44) = 0;
                    }

                    if (v36[2])
                    {
                      *(v29 + 64) = 0;
                      *(v29 + 72) = 0;
                      *(v29 + 80) = 0;
                    }

                    if (byte_1DED74140[v32 + v33])
                    {
                      *(v29 + 104) = 0;
                      *(v29 + 112) = 0;
                      *(v29 + 120) = 0;
                    }

                    v37 = &byte_1DED74140[v32 + v33];
                    if (v37[1])
                    {
                      *(v29 + 128) = 0;
                      *(v29 + 136) = 0;
                      *(v29 + 124) = 0;
                    }

                    if (v37[2])
                    {
                      *(v29 + 144) = 0;
                      *(v29 + 152) = 0;
                      *(v29 + 160) = 0;
                    }

                    ++v24;
                    v29 += BytesPerRow;
                  }

                  while (v24 != 15);
                }
              }

              v38 = a9 >> 1;
              if (v22 >= 2)
              {
                v39 = &v54[a8 + v18 * v38];
                do
                {
                  memset(v39, 128, Width);
                  v39 += v18;
                  --v23;
                }

                while (v23);
              }

              if (Height && Width)
              {
                v40 = &v54[a8];
                if (v57)
                {
                  v41 = 0;
                  v42 = &BaseAddressOfPlane[a8 + BytesPerRowOfPlane * a9];
                  while (1)
                  {
                    for (i = 0; i != Width; ++i)
                    {
                      v46 = BaseAddress[i] / 6.6667;
                      v47 = (v46 * 255.0);
                      if (v46 > 1.0)
                      {
                        LOBYTE(v47) = -1;
                      }

                      if (v46 < 0.0)
                      {
                        LOBYTE(v47) = 0;
                      }

                      v42[i] = v47;
                      v48 = BaseAddress[i];
                      if (v48 < 0.0)
                      {
                        v44 = -27648;
                        v45 = -31;
LABEL_60:
                        v42[i] = v45;
                        *&v40[(v38 + (v41 >> 1)) * v18 + (i & 0xFFFFFFFFFFFFFFFELL)] = v44;
                        continue;
                      }

                      if (v48 == 2048.0)
                      {
                        v44 = -5420;
                        v45 = 105;
                        goto LABEL_60;
                      }
                    }

                    ++v41;
                    v42 += BytesPerRowOfPlane;
                    BaseAddress = (BaseAddress + v53);
                    if (v41 == Height)
                    {
                      goto LABEL_79;
                    }
                  }
                }

                v49 = 0;
                v50 = &BaseAddressOfPlane[a8 + BytesPerRowOfPlane * a9];
                do
                {
                  for (j = 0; j != Width; ++j)
                  {
                    LOWORD(v21) = *(BaseAddress + j);
                    v21 = LODWORD(v21) / a6;
                    v52 = (v21 * 255.0);
                    if (v21 > 1.0)
                    {
                      LOBYTE(v52) = -1;
                    }

                    if (v21 < 0.0)
                    {
                      LOBYTE(v52) = 0;
                    }

                    v50[j] = v52;
                    if (*(BaseAddress + j) >= a6)
                    {
                      v50[j] = 105;
                      *&v40[(v38 + (v49 >> 1)) * v18 + (j & 0xFFFFFFFFFFFFFFFELL)] = -5420;
                    }
                  }

                  ++v49;
                  v50 += BytesPerRowOfPlane;
                  BaseAddress = (BaseAddress + v53);
                }

                while (v49 != Height);
              }
            }
          }
        }
      }
    }
  }

LABEL_79:
  CVPixelBufferUnlockBaseAddress(a4, 0);

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

@end