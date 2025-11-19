@interface ADVisualDepthExecutor
- (ADVisualDepthExecutor)initWithOutputDimensions:(CGSize)a3;
- (BOOL)isReadyForExecution;
- (id)execute;
- (id)getIntermediates;
- (int64_t)executeWithOutput:(id)a3;
- (int64_t)prepareForInputRoi:(CGRect)a3;
- (int64_t)pushKeyframes:(id)a3;
- (int64_t)pushMesh:(id)a3;
- (uint64_t)pushPrimaryColorImage:(__n128)a3 timestamp:(__n128)a4 pose:(__n128)a5;
- (uint64_t)pushSecondaryColorImage:(uint64_t)a3 timestamp:(uint64_t)a4 pose:;
- (void)checkProjectionChanged:(id)a3 newCalib:(id)a4;
- (void)dealloc;
- (void)deallocateVisualDepthBuffers;
- (void)setPrimaryColorCameraCalibration:(id)a3;
- (void)setPrimaryDisparityCalibration:(id)a3;
- (void)setPrimaryTargetCameraCalibration:(id)a3;
- (void)setSecondaryColorCameraCalibration:(id)a3;
- (void)setSecondaryDisparityCalibration:(id)a3;
- (void)setSecondaryTargetCameraCalibration:(id)a3;
- (void)updatePixelBufferAllocationForImageDescriptor:(id)a3 pixelBuffer:(__CVBuffer *)a4;
@end

@implementation ADVisualDepthExecutor

- (id)getIntermediates
{
  v52[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  vdSqrtInfoPrimaryMeshInput = self->_vdSqrtInfoPrimaryMeshInput;
  if (vdSqrtInfoPrimaryMeshInput)
  {
    v51[0] = @"name";
    v51[1] = @"image";
    v52[0] = @"VD primary mesh sqrt info";
    v52[1] = vdSqrtInfoPrimaryMeshInput;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v3 addObject:v5];
  }

  vdSqrtInfoSecondaryMeshInput = self->_vdSqrtInfoSecondaryMeshInput;
  if (vdSqrtInfoSecondaryMeshInput)
  {
    v49[0] = @"name";
    v49[1] = @"image";
    v50[0] = @"VD secondary mesh sqrt info";
    v50[1] = vdSqrtInfoSecondaryMeshInput;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    [v3 addObject:v7];
  }

  vdPrimaryMeshIntermediate = self->_vdPrimaryMeshIntermediate;
  if (vdPrimaryMeshIntermediate)
  {
    v47[0] = @"name";
    v47[1] = @"image";
    v48[0] = @"VD primary mesh input";
    v48[1] = vdPrimaryMeshIntermediate;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    [v3 addObject:v9];
  }

  vdSecondaryMeshIntermediate = self->_vdSecondaryMeshIntermediate;
  if (vdSecondaryMeshIntermediate)
  {
    v45[0] = @"name";
    v45[1] = @"image";
    v46[0] = @"VD secondary mesh input";
    v46[1] = vdSecondaryMeshIntermediate;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    [v3 addObject:v11];
  }

  vdPrimaryInput = self->_vdPrimaryInput;
  if (vdPrimaryInput)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"VD primary color input";
    v44[1] = vdPrimaryInput;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v13];
  }

  vdSecondaryInput = self->_vdSecondaryInput;
  if (vdSecondaryInput)
  {
    v41[0] = @"name";
    v41[1] = @"image";
    v42[0] = @"VD secondary color input";
    v42[1] = vdSecondaryInput;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v15];
  }

  vdPrimaryDepthOutput = self->_vdPrimaryDepthOutput;
  if (vdPrimaryDepthOutput)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"VD primary depth estimation";
    v40[1] = vdPrimaryDepthOutput;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v17];
  }

  vdPrimaryConfOutput = self->_vdPrimaryConfOutput;
  if (vdPrimaryConfOutput)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"VD primary conf estimation";
    v38[1] = vdPrimaryConfOutput;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v19];
  }

  vdPrimaryOcclusionOutput = self->_vdPrimaryOcclusionOutput;
  if (vdPrimaryOcclusionOutput)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"VD primary occlusion estimation";
    v36[1] = vdPrimaryOcclusionOutput;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v21];
  }

  vdSecondaryDepthOutput = self->_vdSecondaryDepthOutput;
  if (vdSecondaryDepthOutput)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"VD secondary depth estimation";
    v34[1] = vdSecondaryDepthOutput;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v23];
  }

  vdSecondaryConfOutput = self->_vdSecondaryConfOutput;
  if (vdSecondaryConfOutput)
  {
    v31[0] = @"name";
    v31[1] = @"image";
    v32[0] = @"VD secondary conf estimation";
    v32[1] = vdSecondaryConfOutput;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 addObject:v25];
  }

  vdSecondaryOcclusionOutput = self->_vdSecondaryOcclusionOutput;
  if (vdSecondaryOcclusionOutput)
  {
    v29[0] = @"name";
    v29[1] = @"image";
    v30[0] = @"VD secondary occlusion estimation";
    v30[1] = vdSecondaryOcclusionOutput;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v3 addObject:v27];
  }

  return v3;
}

- (void)deallocateVisualDepthBuffers
{
  CVPixelBufferRelease(self->_vdSqrtInfoPrimaryMeshInput);
  self->_vdSqrtInfoPrimaryMeshInput = 0;
  CVPixelBufferRelease(self->_vdSqrtInfoSecondaryMeshInput);
  self->_vdSqrtInfoSecondaryMeshInput = 0;
  CVPixelBufferRelease(self->_vdPrimaryMeshIntermediate);
  self->_vdPrimaryMeshIntermediate = 0;
  CVPixelBufferRelease(self->_vdSecondaryMeshIntermediate);
  self->_vdSecondaryMeshIntermediate = 0;
  CVPixelBufferRelease(self->_vdPrimaryInput);
  self->_vdPrimaryInput = 0;
  CVPixelBufferRelease(self->_vdPrimaryItm1);
  self->_vdPrimaryItm1 = 0;
  CVPixelBufferRelease(self->_vdPrimaryItm2);
  self->_vdPrimaryItm2 = 0;
  CVPixelBufferRelease(self->_vdSecondaryInput);
  self->_vdSecondaryInput = 0;
  CVPixelBufferRelease(self->_vdSecondaryItm1);
  self->_vdSecondaryItm1 = 0;
  CVPixelBufferRelease(self->_vdSecondaryItm2);
  self->_vdSecondaryItm2 = 0;
  CVPixelBufferRelease(self->_vdPrimaryDepthOutput);
  self->_vdPrimaryDepthOutput = 0;
  CVPixelBufferRelease(self->_vdPrimaryConfOutput);
  self->_vdPrimaryConfOutput = 0;
  CVPixelBufferRelease(self->_vdSecondaryDepthOutput);
  self->_vdSecondaryDepthOutput = 0;
  CVPixelBufferRelease(self->_vdSecondaryConfOutput);
  self->_vdSecondaryConfOutput = 0;
  CVPixelBufferRelease(self->_vdPrimaryOcclusionOutput);
  self->_vdPrimaryOcclusionOutput = 0;
  CVPixelBufferRelease(self->_vdSecondaryOcclusionOutput);
  self->_vdSecondaryOcclusionOutput = 0;
}

- (void)dealloc
{
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth executor deallocated", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "visual depth executor deallocated", buf, 2u);
  }

  [(ADVisualDepthExecutor *)self deallocateVisualDepthBuffers];
  v3.receiver = self;
  v3.super_class = ADVisualDepthExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (BOOL)isReadyForExecution
{
  v3 = [(ADVisualDepthPipeline *)self->_pipeline metalDescriptor];
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_13;
  }

  lastReceivedPrimaryColor = self->_lastReceivedPrimaryColor;
  if (!lastReceivedPrimaryColor)
  {
    v7 = [v3 primaryColorInput];
    if (v7)
    {
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_lastReceivedSecondaryColor)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_12;
    }

LABEL_10:
    v8 = [v4 secondaryColorInput];
    v6 = v8 == 0;

    if (lastReceivedPrimaryColor)
    {
      goto LABEL_13;
    }

    v7 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if (!self->_lastReceivedSecondaryColor)
  {
    goto LABEL_10;
  }

  v6 = 1;
LABEL_13:

  return v6;
}

- (id)execute
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [ADVisualDepthOutput outputWithDepthForPrimaryPoV:self->_vdPrimaryDepthOutput depthForSecondaryPoV:self->_vdSecondaryDepthOutput confidenceForPrimaryPoV:self->_vdPrimaryConfOutput confidenceForSecondaryPoV:self->_vdSecondaryConfOutput occlusionForPrimaryPoV:self->_vdPrimaryOcclusionOutput occlusionForSecondaryPoV:self->_vdSecondaryOcclusionOutput];
  if ([(ADVisualDepthExecutor *)self executeWithOutput:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "returning ADVisualDepthOutput %p", &v7, 0xCu);
  }

  return v5;
}

- (int64_t)executeWithOutput:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  kdebug_trace();
  v5 = self;
  objc_sync_enter(v5);
  if ([(ADVisualDepthExecutor *)v5 isReadyForExecution])
  {
    v6 = [(ADExecutor *)v5 executorParameters];
    v7 = [v6 stepsToExecute];

    v8 = [(ADExecutor *)v5 executorParameters];
    v40 = [v8 timeProfiler];

    v9 = v7 - 1;
    if (v7 < 1)
    {
      v11 = -22977;
LABEL_37:

      goto LABEL_38;
    }

    kdebug_trace();
    [v40 startWithUTFString:"preprocess metal inputs"];
    [(ADExecutor *)v5 frameExecutionStart];
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      lastReceivedPrimaryColorTimestamp = v5->_lastReceivedPrimaryColorTimestamp;
      *buf = 134217984;
      v42 = lastReceivedPrimaryColorTimestamp;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth: running visual depth for timestamp:%f", buf, 0xCu);
    }

    if ([v4 confidenceForPrimaryPoV])
    {
      vdPrimaryConfOutput = [v4 confidenceForPrimaryPoV];
    }

    else
    {
      vdPrimaryConfOutput = v5->_vdPrimaryConfOutput;
    }

    if ([v4 confidenceForSecondaryPoV])
    {
      vdSecondaryConfOutput = [v4 confidenceForSecondaryPoV];
    }

    else
    {
      vdSecondaryConfOutput = v5->_vdSecondaryConfOutput;
    }

    v39 = +[ADVisualDepthBuffer inputWithImage:confidence:calibration:](ADVisualDepthBuffer, "inputWithImage:confidence:calibration:", [v4 depthForPrimaryPoV], vdPrimaryConfOutput, 0);
    v38 = +[ADVisualDepthBuffer inputWithImage:confidence:calibration:](ADVisualDepthBuffer, "inputWithImage:confidence:calibration:", [v4 depthForSecondaryPoV], vdSecondaryConfOutput, 0);
    if (v5->_requiredVDInit)
    {
      [v40 stopWithUTFString:"preprocess metal inputs"];
      kdebug_trace();
      if (v7 == 1)
      {
        goto LABEL_18;
      }

      kdebug_trace();
      [v40 startWithUTFString:"build metal pipeline"];
      pipeline = v5->_pipeline;
      mtlCommandQueue = v5->_mtlCommandQueue;
      lastReceivedPrimaryColor = v5->_lastReceivedPrimaryColor;
      if (lastReceivedPrimaryColor)
      {
        v35 = [(ADVisualDepthBuffer *)v5->_lastReceivedPrimaryColor calibration];
        v18 = [v35 distortionModel];
      }

      else
      {
        v18 = 0;
      }

      v11 = [(ADVisualDepthPipeline *)pipeline buildMetalPipelineWithQueue:mtlCommandQueue lensDistortion:v18];
      if (lastReceivedPrimaryColor)
      {
      }

      if (v11)
      {
        goto LABEL_36;
      }

      v9 = v7 - 2;
      v5->_requiredVDInit = 0;
      v12 = "build metal pipeline";
    }

    else
    {
      v12 = "preprocess metal inputs";
    }

    v11 = [(ADVisualDepthPipeline *)v5->_pipeline addMeshInput:v5->_meshInput];
    if (v11)
    {
      goto LABEL_36;
    }

    v11 = [(ADVisualDepthPipeline *)v5->_pipeline addKeyframeInput:v5->_keyframeInput timestamp:v5->_lastReceivedPrimaryColorTimestamp];
    if (v11)
    {
      goto LABEL_36;
    }

    if ([(ADVisualDepthPipeline *)v5->_pipeline shouldExecuteForTimestamp:v5->_lastReceivedPrimaryColorTimestamp poseMillimeters:*v5->_anon_b0, *&v5->_anon_b0[16], *&v5->_anon_b0[32], *&v5->_anon_b0[48]])
    {
      v13 = v5->_lastReceivedPrimaryColorTimestamp;
      [v40 stopWithUTFString:v12];
      kdebug_trace();
      if (!v9)
      {
        goto LABEL_18;
      }

      kdebug_trace();
      [v40 startWithUTFString:"prediction encode"];
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "running visual depth", buf, 2u);
      }

      v14 = [(MTLCommandQueue *)v5->_mtlCommandQueue commandBufferWithUnretainedReferences];
      LODWORD(v34) = 0;
      v11 = -[ADVisualDepthPipeline encodePredictionToCommandBuffer:primaryColorInput:secondaryColorInput:primaryPredictionOutput:secondaryPredictionOutput:primaryOcclusionOutput:secondaryOcclusionOutput:predictionTimestamp:predictionPose:poseSessionID:poseReinitCount:](v5->_pipeline, "encodePredictionToCommandBuffer:primaryColorInput:secondaryColorInput:primaryPredictionOutput:secondaryPredictionOutput:primaryOcclusionOutput:secondaryOcclusionOutput:predictionTimestamp:predictionPose:poseSessionID:poseReinitCount:", v14, v5->_lastReceivedPrimaryColor, v5->_lastReceivedSecondaryColor, v39, v38, [v4 occlusionForPrimaryPoV], v13, *v5->_anon_b0, *&v5->_anon_b0[16], *&v5->_anon_b0[32], *&v5->_anon_b0[48], objc_msgSend(v4, "occlusionForSecondaryPoV"), 0, v34);
      if (v11)
      {
LABEL_47:

        goto LABEL_36;
      }

      [v40 stopWithUTFString:"prediction encode"];
      kdebug_trace();
      if (v9 == 1)
      {
        v11 = -22977;
        goto LABEL_47;
      }

      kdebug_trace();
      [v40 startWithUTFString:"metal execution"];
      [v14 encodeSignalEvent:v5->_completionEvent value:(v13 * 1000.0)];
      [v14 commitAndWaitUntilSubmitted];
      if (([(MTLSharedEventSPI *)v5->_completionEvent waitUntilSignaledValue:(v13 * 1000.0) timeoutMS:500]& 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v42) = 500;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to receive completion event in %d ms", buf, 8u);
        }

        v11 = -22950;
        goto LABEL_47;
      }

      v24 = [v39 calibration];
      v25 = [v38 calibration];
      [v4 addPrimaryCalibration:v24 secondaryCalibration:v25 timestamp:v13];

      v26 = [(ADExecutor *)v5 executorParameters];
      v27 = [v26 logger];
      [v27 logPixelBuffer:objc_msgSend(v4 name:"depthForPrimaryPoV") timestamp:{"primaryDepthPrediction", v13}];

      v28 = [(ADExecutor *)v5 executorParameters];
      v29 = [v28 logger];
      [v29 logPixelBuffer:vdPrimaryConfOutput name:"primaryConfOutputPrediction" timestamp:v13];

      v30 = [(ADExecutor *)v5 executorParameters];
      v31 = [v30 logger];
      [v31 logPixelBuffer:objc_msgSend(v4 name:"depthForSecondaryPoV") timestamp:{"secondaryDepthPrediction", v13}];

      v32 = [(ADExecutor *)v5 executorParameters];
      v33 = [v32 logger];
      [v33 logPixelBuffer:vdSecondaryConfOutput name:"secondaryConfOutputPrediction" timestamp:v13];

      v9 -= 2;
      v12 = "metal execution";
    }

    v20 = v5->_lastReceivedPrimaryColor;
    v5->_lastReceivedPrimaryColor = 0;

    lastReceivedSecondaryColor = v5->_lastReceivedSecondaryColor;
    v5->_lastReceivedSecondaryColor = 0;

    meshInput = v5->_meshInput;
    v5->_meshInput = 0;

    keyframeInput = v5->_keyframeInput;
    v5->_keyframeInput = 0;

    [v40 stopWithUTFString:v12];
    kdebug_trace();
    if (v9)
    {
      [(ADExecutor *)v5 frameExecutionEnd];
      v11 = 0;
      goto LABEL_36;
    }

LABEL_18:
    v11 = -22977;
LABEL_36:

    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot run visual depth. inputs not ready", buf, 2u);
  }

  v11 = -22973;
LABEL_38:
  objc_sync_exit(v5);

  kdebug_trace();
  return v11;
}

- (int64_t)prepareForInputRoi:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth executor: preparing executor", &v24, 2u);
  }

  v8 = [(ADVisualDepthPipeline *)self->_pipeline metalDescriptor];
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218752;
      v25 = x;
      v26 = 2048;
      v27 = y;
      v28 = 2048;
      v29 = width;
      v30 = 2048;
      v31 = height;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth executor: preparing executor for visual depth roi: [%f,%f,%f,%f]", &v24, 0x2Au);
    }

    v9->_vdColorInputCrop.origin.x = x;
    v9->_vdColorInputCrop.origin.y = y;
    v9->_vdColorInputCrop.size.width = width;
    v9->_vdColorInputCrop.size.height = height;
    v10 = [v8 primaryColorInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v10 pixelBuffer:&v9->_vdPrimaryInput];

    v11 = [v8 secondaryColorInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v11 pixelBuffer:&v9->_vdSecondaryInput];

    v12 = [v8 primaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v12 pixelBuffer:&v9->_vdSqrtInfoPrimaryMeshInput];

    v13 = [v8 secondaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v13 pixelBuffer:&v9->_vdSqrtInfoSecondaryMeshInput];

    v14 = [v8 primaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v14 pixelBuffer:&v9->_vdPrimaryMeshIntermediate];

    v15 = [v8 secondaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v15 pixelBuffer:&v9->_vdSecondaryMeshIntermediate];

    v16 = [v8 primaryPredictionOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v16 pixelBuffer:&v9->_vdPrimaryDepthOutput];

    v17 = [v8 primaryPredictionConfidenceOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v17 pixelBuffer:&v9->_vdPrimaryConfOutput];

    v18 = [v8 secondaryPredictionOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v18 pixelBuffer:&v9->_vdSecondaryDepthOutput];

    v19 = [v8 secondaryPredictionConfidenceOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v19 pixelBuffer:&v9->_vdSecondaryConfOutput];

    v20 = [v8 primaryOcclusionMapOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v20 pixelBuffer:&v9->_vdPrimaryOcclusionOutput];

    v21 = [v8 secondaryOcclusionMapOutput];
    [(ADVisualDepthExecutor *)v9 updatePixelBufferAllocationForImageDescriptor:v21 pixelBuffer:&v9->_vdSecondaryOcclusionOutput];

    objc_sync_exit(v9);
    v22 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot prepare visual depth buffers. not supported by pipeline", &v24, 2u);
    }

    v22 = -22951;
  }

  return v22;
}

- (void)setSecondaryDisparityCalibration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating secondary disparity calibration", buf, 2u);
    }

    v6 = [(ADExecutor *)v5 executorParameters];
    v7 = [v6 logger];
    [v7 logCalibration:v4 name:"secondaryDisparityCalibration" priority:1];

    v8 = v4;
    secondaryDisparityCalibration = v5->_secondaryDisparityCalibration;
    v5->_secondaryDisparityCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "secondaryDisparityCalibration property set to nil. this may indicate incorrect usage.", v10, 2u);
    }

    secondaryDisparityCalibration = v5->_secondaryDisparityCalibration;
    v5->_secondaryDisparityCalibration = 0;
  }

  objc_sync_exit(v5);
}

- (void)setPrimaryDisparityCalibration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating primary disparity calibration", buf, 2u);
    }

    v6 = [(ADExecutor *)v5 executorParameters];
    v7 = [v6 logger];
    [v7 logCalibration:v4 name:"primaryDisparityCalibration" priority:1];

    v8 = v4;
    primaryDisparityCalibration = v5->_primaryDisparityCalibration;
    v5->_primaryDisparityCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryDisparityCalibration property set to nil. this may indicate incorrect usage.", v10, 2u);
    }

    primaryDisparityCalibration = v5->_primaryDisparityCalibration;
    v5->_primaryDisparityCalibration = 0;
  }

  objc_sync_exit(v5);
}

- (void)setSecondaryTargetCameraCalibration:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "secondaryTargetCameraCalibration is deprecated.", v3, 2u);
  }
}

- (void)setPrimaryTargetCameraCalibration:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryTargetCameraCalibration is deprecated.", v3, 2u);
  }
}

- (void)setSecondaryColorCameraCalibration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating secondary color calibration", buf, 2u);
    }

    v6 = [(ADExecutor *)v5 executorParameters];
    v7 = [v6 logger];
    [v7 logCalibration:v4 name:"secondaryColorCalibration" priority:1];

    v8 = [v4 mutableCopy];
    v9 = [(ADVisualDepthPipeline *)v5->_pipeline metalDescriptor];
    v10 = [v9 secondaryColorInput];
    [v10 sizeForLayout:255];
    v11 = [v8 scale:?];

    if ((v11 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed setting secondary color calibration", v14, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "secondaryColorCameraCalibration property set to nil. this may indicate incorrect usage.", v13, 2u);
    }

    v8 = 0;
  }

  secondaryColorCameraCalibration = v5->_secondaryColorCameraCalibration;
  v5->_secondaryColorCameraCalibration = v8;

  objc_sync_exit(v5);
}

- (void)setPrimaryColorCameraCalibration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating primary color calibration", buf, 2u);
    }

    v6 = [(ADExecutor *)v5 executorParameters];
    v7 = [v6 logger];
    [v7 logCalibration:v4 name:"primaryColorCalibration" priority:1];

    [(ADVisualDepthExecutor *)v5 checkProjectionChanged:v5->_primaryColorCameraCalibration newCalib:v4];
    v8 = [v4 mutableCopy];
    v9 = [(ADVisualDepthPipeline *)v5->_pipeline metalDescriptor];
    v10 = [v9 primaryColorInput];
    [v10 sizeForLayout:255];
    v11 = [v8 scale:?];

    if ((v11 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed setting primary color calibration", v14, 2u);
    }

    primaryColorCameraCalibration = v5->_primaryColorCameraCalibration;
    v5->_primaryColorCameraCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryColorCameraCalibration property set to nil. this may indicate incorrect usage.", v13, 2u);
    }

    primaryColorCameraCalibration = v5->_primaryColorCameraCalibration;
    v5->_primaryColorCameraCalibration = 0;
  }

  objc_sync_exit(v5);
}

- (void)checkProjectionChanged:(id)a3 newCalib:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v17 = MEMORY[0x277D86220];
        v18 = "visual depth executor reinitialization required: no prev calib";
        v19 = &v26;
        v20 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_19;
      }

LABEL_20:
      self->_requiredVDInit = 1;
      goto LABEL_21;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v25 = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "visual depth executor reinitialization required: no prev calib";
    v19 = &v25;
LABEL_18:
    v20 = OS_LOG_TYPE_INFO;
    goto LABEL_19;
  }

  v8 = [v6 distortionModel];
  v9 = [v7 distortionModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v17 = MEMORY[0x277D86220];
        v18 = "visual depth executor reinitialization required: distortion type changed";
        v19 = &v24;
        v20 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v17 = MEMORY[0x277D86220];
    v18 = "visual depth executor reinitialization required: distortion type changed";
    v19 = buf;
    goto LABEL_18;
  }

  v11 = [v6 distortionModel];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v6 distortionModel];
    v14 = [v13 XThetaType];

    v15 = [v7 distortionModel];
    v16 = [v15 XThetaType];

    if (v14 != v16)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v22 = 0;
          v17 = MEMORY[0x277D86220];
          v18 = "visual depth executor reinitialization required: XTheta projection changed";
          v19 = &v22;
          v20 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
          _os_log_impl(&dword_2402F6000, v17, v20, v18, v19, 2u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v21 = 0;
      v17 = MEMORY[0x277D86220];
      v18 = "visual depth executor reinitialization required: XTheta projection changed";
      v19 = &v21;
      goto LABEL_18;
    }
  }

LABEL_21:
}

- (int64_t)pushKeyframes:(id)a3
{
  v5 = a3;
  v11 = 335684248;
  v12 = 0u;
  v13 = 0u;
  kdebug_trace();
  if (v5)
  {
    v6 = [v5 meshKeyframes];
    if ([v6 count])
    {
      v7 = [v5 metricDepth];

      if (v7)
      {
        objc_storeStrong(&self->_keyframeInput, a3);
        v8 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ignoring empty keyframe input", v10, 2u);
  }

  v8 = -22953;
LABEL_9:
  kdebug_trace();

  return v8;
}

- (int64_t)pushMesh:(id)a3
{
  v5 = a3;
  v11 = 335684248;
  v12 = 0u;
  v13 = 0u;
  kdebug_trace();
  if (v5 && ([v5 meshChunks], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    objc_storeStrong(&self->_meshInput, a3);
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ignoring empty mesh input", v10, 2u);
    }

    v8 = -22953;
  }

  kdebug_trace();

  return v8;
}

- (uint64_t)pushSecondaryColorImage:(uint64_t)a3 timestamp:(uint64_t)a4 pose:
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (a4 && a1[49])
  {
    v7 = a1;
    objc_sync_enter(v7);
    v8 = [v7 executorParameters];
    v9 = [v8 timeProfiler];

    [v9 start:@"pushSecondaryColor"];
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7[59];
      *buf = 134218240;
      v20 = a2;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pushed secondary color image for ts:%f while calib is: %p", buf, 0x16u);
    }

    v11 = [v7 executorParameters];
    v12 = [v11 logger];
    [v12 logPixelBuffer:a4 name:"secondaryColorImage" priority:1 timestamp:a2];

    [ADUtils scaleConvertRotateImage:a4 rotateBy:0 cropBy:a1[49] scaleInto:v7 + 50 intermediateScalingBuffer:v7 + 51 intermediateRotatingBuffer:1 useVT:*(v7 + 32), *(v7 + 33), *(v7 + 34), *(v7 + 35)];
    v13 = [ADVisualDepthBuffer inputWithImage:a1[49] confidence:0 calibration:v7[59]];
    v14 = v7[19];
    v7[19] = v13;

    v15 = [v7 executorParameters];
    v16 = [v15 logger];
    [v16 logPixelBuffer:a1[49] name:"secondaryColorImageProcessed" priority:1 timestamp:a2];

    [v9 stop:@"pushSecondaryColor"];
    if (v7[19])
    {
      v17 = 0;
    }

    else
    {
      v17 = -22950;
    }

    objc_sync_exit(v7);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pushed secondary color but preset do not support stereo", buf, 2u);
    }

    v17 = -22961;
  }

  kdebug_trace();
  return v17;
}

- (uint64_t)pushPrimaryColorImage:(__n128)a3 timestamp:(__n128)a4 pose:(__n128)a5
{
  v35 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v11 = a1;
  objc_sync_enter(v11);
  v12 = [v11 executorParameters];
  v13 = [v12 timeProfiler];

  [v13 start:@"pushPrimaryColor"];
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v11 + 58);
    *buf = 134218240;
    v32 = a2;
    v33 = 2048;
    v34 = v14;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pushed primary color image for ts:%f while calib is: %p", buf, 0x16u);
  }

  v15 = [v11 executorParameters];
  v16 = [v15 logger];
  [v16 logPixelBuffer:a8 name:"primaryColorImage" priority:1 timestamp:a2];

  [ADUtils scaleConvertRotateImage:a8 rotateBy:0 cropBy:*(v11 + 46) scaleInto:v11 + 376 intermediateScalingBuffer:v11 + 384 intermediateRotatingBuffer:1 useVT:*(v11 + 32), *(v11 + 33), *(v11 + 34), *(v11 + 35)];
  v17 = [ADVisualDepthBuffer inputWithImage:*(v11 + 46) confidence:0 calibration:*(v11 + 58)];
  v18 = *(v11 + 18);
  *(v11 + 18) = v17;

  *(v11 + 20) = a2;
  *(v11 + 11) = v24;
  *(v11 + 12) = v26;
  *(v11 + 13) = v28;
  *(v11 + 14) = v30;
  v19 = [v11 executorParameters];
  v20 = [v19 logger];
  [v20 logPixelBuffer:*(v11 + 46) name:"primaryColorImageProcessed" priority:1 timestamp:a2];

  [v13 stop:@"pushPrimaryColor"];
  v21 = *(v11 + 18);

  objc_sync_exit(v11);
  kdebug_trace();
  if (v21)
  {
    return 0;
  }

  else
  {
    return -22950;
  }
}

- (void)updatePixelBufferAllocationForImageDescriptor:(id)a3 pixelBuffer:(__CVBuffer *)a4
{
  v7 = a3;
  if (v7)
  {
    [v7 sizeForLayout:255];
    +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v7 pixelFormat], a4, v5, v6);
  }
}

- (ADVisualDepthExecutor)initWithOutputDimensions:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = 335680416;
  v27 = 0u;
  v28 = 0u;
  kdebug_trace();
  v25.receiver = self;
  v25.super_class = ADVisualDepthExecutor;
  v6 = [(ADExecutor *)&v25 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v6->_vdSqrtInfoPrimaryMeshInput = 0;
  v6->_vdSqrtInfoSecondaryMeshInput = 0;
  v6->_vdPrimaryMeshIntermediate = 0;
  v6->_vdSecondaryMeshIntermediate = 0;
  v6->_vdPrimaryInput = 0;
  v6->_vdPrimaryItm1 = 0;
  v6->_vdPrimaryItm2 = 0;
  v6->_vdSecondaryInput = 0;
  v6->_vdSecondaryItm1 = 0;
  v6->_vdSecondaryItm2 = 0;
  v6->_vdPrimaryDepthOutput = 0;
  v6->_vdPrimaryConfOutput = 0;
  v6->_vdPrimaryOcclusionOutput = 0;
  v6->_vdSecondaryDepthOutput = 0;
  v6->_vdSecondaryConfOutput = 0;
  v6->_vdSecondaryOcclusionOutput = 0;
  lastReceivedPrimaryColor = v6->_lastReceivedPrimaryColor;
  v6->_lastReceivedPrimaryColor = 0;

  lastReceivedSecondaryColor = v7->_lastReceivedSecondaryColor;
  v7->_lastReceivedSecondaryColor = 0;

  v7->_requiredVDInit = 0;
  v7->_visualDepthResolution.width = width;
  v7->_visualDepthResolution.height = height;
  v10 = MTLCreateSystemDefaultDevice();
  mtlDevice = v7->_mtlDevice;
  v7->_mtlDevice = v10;

  v12 = [(MTLDevice *)v7->_mtlDevice newCommandQueue];
  mtlCommandQueue = v7->_mtlCommandQueue;
  v7->_mtlCommandQueue = v12;

  v14 = [(MTLDevice *)v7->_mtlDevice newSharedEvent];
  completionEvent = v7->_completionEvent;
  v7->_completionEvent = v14;

  [(MTLSharedEventSPI *)v7->_completionEvent setLabel:@"visualDepth-completion-event"];
  v16 = [[ADVisualDepthPipeline alloc] initWithMetalCommandQueue:v7->_mtlCommandQueue dimensions:875836518 format:v7->_visualDepthResolution.width, v7->_visualDepthResolution.height];
  pipeline = v7->_pipeline;
  v7->_pipeline = v16;

  if (v7->_pipeline)
  {
    v18 = [[ADVisualDepthExecutorParameters alloc] initForPipeline:v7->_pipeline];
    [(ADExecutor *)v7 setExecutorParameters:v18];

    v19 = [(ADExecutor *)v7 executorParameters];
    v20 = [v19 logger];
    v21 = objc_opt_new();
    [v20 addHandler:v21];

LABEL_4:
    v22 = v7;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v24 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "visual depth pipeline failed to init for preset", &v24, 2u);
  }

  v22 = 0;
LABEL_8:
  kdebug_trace();

  return v22;
}

@end