@interface ADVisualDepthExecutor
- (ADVisualDepthExecutor)initWithOutputDimensions:(CGSize)dimensions;
- (BOOL)isReadyForExecution;
- (id)execute;
- (id)getIntermediates;
- (int64_t)executeWithOutput:(id)output;
- (int64_t)prepareForInputRoi:(CGRect)roi;
- (int64_t)pushKeyframes:(id)keyframes;
- (int64_t)pushMesh:(id)mesh;
- (uint64_t)pushPrimaryColorImage:(__n128)image timestamp:(__n128)timestamp pose:(__n128)pose;
- (uint64_t)pushSecondaryColorImage:(uint64_t)image timestamp:(uint64_t)timestamp pose:;
- (void)checkProjectionChanged:(id)changed newCalib:(id)calib;
- (void)dealloc;
- (void)deallocateVisualDepthBuffers;
- (void)setPrimaryColorCameraCalibration:(id)calibration;
- (void)setPrimaryDisparityCalibration:(id)calibration;
- (void)setPrimaryTargetCameraCalibration:(id)calibration;
- (void)setSecondaryColorCameraCalibration:(id)calibration;
- (void)setSecondaryDisparityCalibration:(id)calibration;
- (void)setSecondaryTargetCameraCalibration:(id)calibration;
- (void)updatePixelBufferAllocationForImageDescriptor:(id)descriptor pixelBuffer:(__CVBuffer *)buffer;
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
  metalDescriptor = [(ADVisualDepthPipeline *)self->_pipeline metalDescriptor];
  v4 = metalDescriptor;
  if (!metalDescriptor)
  {
    v6 = 0;
    goto LABEL_13;
  }

  lastReceivedPrimaryColor = self->_lastReceivedPrimaryColor;
  if (!lastReceivedPrimaryColor)
  {
    primaryColorInput = [metalDescriptor primaryColorInput];
    if (primaryColorInput)
    {
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_lastReceivedSecondaryColor)
    {
      primaryColorInput = 0;
      v6 = 1;
      goto LABEL_12;
    }

LABEL_10:
    secondaryColorInput = [v4 secondaryColorInput];
    v6 = secondaryColorInput == 0;

    if (lastReceivedPrimaryColor)
    {
      goto LABEL_13;
    }

    primaryColorInput = 0;
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

- (int64_t)executeWithOutput:(id)output
{
  v43 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ADVisualDepthExecutor *)selfCopy isReadyForExecution])
  {
    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    stepsToExecute = [executorParameters stepsToExecute];

    executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
    timeProfiler = [executorParameters2 timeProfiler];

    v9 = stepsToExecute - 1;
    if (stepsToExecute < 1)
    {
      v11 = -22977;
LABEL_37:

      goto LABEL_38;
    }

    kdebug_trace();
    [timeProfiler startWithUTFString:"preprocess metal inputs"];
    [(ADExecutor *)selfCopy frameExecutionStart];
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      lastReceivedPrimaryColorTimestamp = selfCopy->_lastReceivedPrimaryColorTimestamp;
      *buf = 134217984;
      v42 = lastReceivedPrimaryColorTimestamp;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth: running visual depth for timestamp:%f", buf, 0xCu);
    }

    if ([outputCopy confidenceForPrimaryPoV])
    {
      vdPrimaryConfOutput = [outputCopy confidenceForPrimaryPoV];
    }

    else
    {
      vdPrimaryConfOutput = selfCopy->_vdPrimaryConfOutput;
    }

    if ([outputCopy confidenceForSecondaryPoV])
    {
      vdSecondaryConfOutput = [outputCopy confidenceForSecondaryPoV];
    }

    else
    {
      vdSecondaryConfOutput = selfCopy->_vdSecondaryConfOutput;
    }

    v39 = +[ADVisualDepthBuffer inputWithImage:confidence:calibration:](ADVisualDepthBuffer, "inputWithImage:confidence:calibration:", [outputCopy depthForPrimaryPoV], vdPrimaryConfOutput, 0);
    v38 = +[ADVisualDepthBuffer inputWithImage:confidence:calibration:](ADVisualDepthBuffer, "inputWithImage:confidence:calibration:", [outputCopy depthForSecondaryPoV], vdSecondaryConfOutput, 0);
    if (selfCopy->_requiredVDInit)
    {
      [timeProfiler stopWithUTFString:"preprocess metal inputs"];
      kdebug_trace();
      if (stepsToExecute == 1)
      {
        goto LABEL_18;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"build metal pipeline"];
      pipeline = selfCopy->_pipeline;
      mtlCommandQueue = selfCopy->_mtlCommandQueue;
      lastReceivedPrimaryColor = selfCopy->_lastReceivedPrimaryColor;
      if (lastReceivedPrimaryColor)
      {
        calibration = [(ADVisualDepthBuffer *)selfCopy->_lastReceivedPrimaryColor calibration];
        distortionModel = [calibration distortionModel];
      }

      else
      {
        distortionModel = 0;
      }

      v11 = [(ADVisualDepthPipeline *)pipeline buildMetalPipelineWithQueue:mtlCommandQueue lensDistortion:distortionModel];
      if (lastReceivedPrimaryColor)
      {
      }

      if (v11)
      {
        goto LABEL_36;
      }

      v9 = stepsToExecute - 2;
      selfCopy->_requiredVDInit = 0;
      v12 = "build metal pipeline";
    }

    else
    {
      v12 = "preprocess metal inputs";
    }

    v11 = [(ADVisualDepthPipeline *)selfCopy->_pipeline addMeshInput:selfCopy->_meshInput];
    if (v11)
    {
      goto LABEL_36;
    }

    v11 = [(ADVisualDepthPipeline *)selfCopy->_pipeline addKeyframeInput:selfCopy->_keyframeInput timestamp:selfCopy->_lastReceivedPrimaryColorTimestamp];
    if (v11)
    {
      goto LABEL_36;
    }

    if ([(ADVisualDepthPipeline *)selfCopy->_pipeline shouldExecuteForTimestamp:selfCopy->_lastReceivedPrimaryColorTimestamp poseMillimeters:*selfCopy->_anon_b0, *&selfCopy->_anon_b0[16], *&selfCopy->_anon_b0[32], *&selfCopy->_anon_b0[48]])
    {
      v13 = selfCopy->_lastReceivedPrimaryColorTimestamp;
      [timeProfiler stopWithUTFString:v12];
      kdebug_trace();
      if (!v9)
      {
        goto LABEL_18;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"prediction encode"];
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "running visual depth", buf, 2u);
      }

      commandBufferWithUnretainedReferences = [(MTLCommandQueue *)selfCopy->_mtlCommandQueue commandBufferWithUnretainedReferences];
      LODWORD(v34) = 0;
      v11 = -[ADVisualDepthPipeline encodePredictionToCommandBuffer:primaryColorInput:secondaryColorInput:primaryPredictionOutput:secondaryPredictionOutput:primaryOcclusionOutput:secondaryOcclusionOutput:predictionTimestamp:predictionPose:poseSessionID:poseReinitCount:](selfCopy->_pipeline, "encodePredictionToCommandBuffer:primaryColorInput:secondaryColorInput:primaryPredictionOutput:secondaryPredictionOutput:primaryOcclusionOutput:secondaryOcclusionOutput:predictionTimestamp:predictionPose:poseSessionID:poseReinitCount:", commandBufferWithUnretainedReferences, selfCopy->_lastReceivedPrimaryColor, selfCopy->_lastReceivedSecondaryColor, v39, v38, [outputCopy occlusionForPrimaryPoV], v13, *selfCopy->_anon_b0, *&selfCopy->_anon_b0[16], *&selfCopy->_anon_b0[32], *&selfCopy->_anon_b0[48], objc_msgSend(outputCopy, "occlusionForSecondaryPoV"), 0, v34);
      if (v11)
      {
LABEL_47:

        goto LABEL_36;
      }

      [timeProfiler stopWithUTFString:"prediction encode"];
      kdebug_trace();
      if (v9 == 1)
      {
        v11 = -22977;
        goto LABEL_47;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"metal execution"];
      [commandBufferWithUnretainedReferences encodeSignalEvent:selfCopy->_completionEvent value:(v13 * 1000.0)];
      [commandBufferWithUnretainedReferences commitAndWaitUntilSubmitted];
      if (([(MTLSharedEventSPI *)selfCopy->_completionEvent waitUntilSignaledValue:(v13 * 1000.0) timeoutMS:500]& 1) == 0)
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

      calibration2 = [v39 calibration];
      calibration3 = [v38 calibration];
      [outputCopy addPrimaryCalibration:calibration2 secondaryCalibration:calibration3 timestamp:v13];

      executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
      logger = [executorParameters3 logger];
      [logger logPixelBuffer:objc_msgSend(outputCopy name:"depthForPrimaryPoV") timestamp:{"primaryDepthPrediction", v13}];

      executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
      logger2 = [executorParameters4 logger];
      [logger2 logPixelBuffer:vdPrimaryConfOutput name:"primaryConfOutputPrediction" timestamp:v13];

      executorParameters5 = [(ADExecutor *)selfCopy executorParameters];
      logger3 = [executorParameters5 logger];
      [logger3 logPixelBuffer:objc_msgSend(outputCopy name:"depthForSecondaryPoV") timestamp:{"secondaryDepthPrediction", v13}];

      executorParameters6 = [(ADExecutor *)selfCopy executorParameters];
      logger4 = [executorParameters6 logger];
      [logger4 logPixelBuffer:vdSecondaryConfOutput name:"secondaryConfOutputPrediction" timestamp:v13];

      v9 -= 2;
      v12 = "metal execution";
    }

    v20 = selfCopy->_lastReceivedPrimaryColor;
    selfCopy->_lastReceivedPrimaryColor = 0;

    lastReceivedSecondaryColor = selfCopy->_lastReceivedSecondaryColor;
    selfCopy->_lastReceivedSecondaryColor = 0;

    meshInput = selfCopy->_meshInput;
    selfCopy->_meshInput = 0;

    keyframeInput = selfCopy->_keyframeInput;
    selfCopy->_keyframeInput = 0;

    [timeProfiler stopWithUTFString:v12];
    kdebug_trace();
    if (v9)
    {
      [(ADExecutor *)selfCopy frameExecutionEnd];
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
  objc_sync_exit(selfCopy);

  kdebug_trace();
  return v11;
}

- (int64_t)prepareForInputRoi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v32 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "visual depth executor: preparing executor", &v24, 2u);
  }

  metalDescriptor = [(ADVisualDepthPipeline *)self->_pipeline metalDescriptor];
  if (metalDescriptor)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
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

    selfCopy->_vdColorInputCrop.origin.x = x;
    selfCopy->_vdColorInputCrop.origin.y = y;
    selfCopy->_vdColorInputCrop.size.width = width;
    selfCopy->_vdColorInputCrop.size.height = height;
    primaryColorInput = [metalDescriptor primaryColorInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryColorInput pixelBuffer:&selfCopy->_vdPrimaryInput];

    secondaryColorInput = [metalDescriptor secondaryColorInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryColorInput pixelBuffer:&selfCopy->_vdSecondaryInput];

    primaryRasterizedMeshInput = [metalDescriptor primaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryRasterizedMeshInput pixelBuffer:&selfCopy->_vdSqrtInfoPrimaryMeshInput];

    secondaryRasterizedMeshInput = [metalDescriptor secondaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryRasterizedMeshInput pixelBuffer:&selfCopy->_vdSqrtInfoSecondaryMeshInput];

    primaryRasterizedMeshInput2 = [metalDescriptor primaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryRasterizedMeshInput2 pixelBuffer:&selfCopy->_vdPrimaryMeshIntermediate];

    secondaryRasterizedMeshInput2 = [metalDescriptor secondaryRasterizedMeshInput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryRasterizedMeshInput2 pixelBuffer:&selfCopy->_vdSecondaryMeshIntermediate];

    primaryPredictionOutput = [metalDescriptor primaryPredictionOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryPredictionOutput pixelBuffer:&selfCopy->_vdPrimaryDepthOutput];

    primaryPredictionConfidenceOutput = [metalDescriptor primaryPredictionConfidenceOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryPredictionConfidenceOutput pixelBuffer:&selfCopy->_vdPrimaryConfOutput];

    secondaryPredictionOutput = [metalDescriptor secondaryPredictionOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryPredictionOutput pixelBuffer:&selfCopy->_vdSecondaryDepthOutput];

    secondaryPredictionConfidenceOutput = [metalDescriptor secondaryPredictionConfidenceOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryPredictionConfidenceOutput pixelBuffer:&selfCopy->_vdSecondaryConfOutput];

    primaryOcclusionMapOutput = [metalDescriptor primaryOcclusionMapOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:primaryOcclusionMapOutput pixelBuffer:&selfCopy->_vdPrimaryOcclusionOutput];

    secondaryOcclusionMapOutput = [metalDescriptor secondaryOcclusionMapOutput];
    [(ADVisualDepthExecutor *)selfCopy updatePixelBufferAllocationForImageDescriptor:secondaryOcclusionMapOutput pixelBuffer:&selfCopy->_vdSecondaryOcclusionOutput];

    objc_sync_exit(selfCopy);
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

- (void)setSecondaryDisparityCalibration:(id)calibration
{
  calibrationCopy = calibration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (calibrationCopy)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating secondary disparity calibration", buf, 2u);
    }

    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    logger = [executorParameters logger];
    [logger logCalibration:calibrationCopy name:"secondaryDisparityCalibration" priority:1];

    v8 = calibrationCopy;
    secondaryDisparityCalibration = selfCopy->_secondaryDisparityCalibration;
    selfCopy->_secondaryDisparityCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "secondaryDisparityCalibration property set to nil. this may indicate incorrect usage.", v10, 2u);
    }

    secondaryDisparityCalibration = selfCopy->_secondaryDisparityCalibration;
    selfCopy->_secondaryDisparityCalibration = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setPrimaryDisparityCalibration:(id)calibration
{
  calibrationCopy = calibration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (calibrationCopy)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating primary disparity calibration", buf, 2u);
    }

    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    logger = [executorParameters logger];
    [logger logCalibration:calibrationCopy name:"primaryDisparityCalibration" priority:1];

    v8 = calibrationCopy;
    primaryDisparityCalibration = selfCopy->_primaryDisparityCalibration;
    selfCopy->_primaryDisparityCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryDisparityCalibration property set to nil. this may indicate incorrect usage.", v10, 2u);
    }

    primaryDisparityCalibration = selfCopy->_primaryDisparityCalibration;
    selfCopy->_primaryDisparityCalibration = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)setSecondaryTargetCameraCalibration:(id)calibration
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "secondaryTargetCameraCalibration is deprecated.", v3, 2u);
  }
}

- (void)setPrimaryTargetCameraCalibration:(id)calibration
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryTargetCameraCalibration is deprecated.", v3, 2u);
  }
}

- (void)setSecondaryColorCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (calibrationCopy)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating secondary color calibration", buf, 2u);
    }

    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    logger = [executorParameters logger];
    [logger logCalibration:calibrationCopy name:"secondaryColorCalibration" priority:1];

    v8 = [calibrationCopy mutableCopy];
    metalDescriptor = [(ADVisualDepthPipeline *)selfCopy->_pipeline metalDescriptor];
    secondaryColorInput = [metalDescriptor secondaryColorInput];
    [secondaryColorInput sizeForLayout:255];
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

  secondaryColorCameraCalibration = selfCopy->_secondaryColorCameraCalibration;
  selfCopy->_secondaryColorCameraCalibration = v8;

  objc_sync_exit(selfCopy);
}

- (void)setPrimaryColorCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (calibrationCopy)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "updating primary color calibration", buf, 2u);
    }

    executorParameters = [(ADExecutor *)selfCopy executorParameters];
    logger = [executorParameters logger];
    [logger logCalibration:calibrationCopy name:"primaryColorCalibration" priority:1];

    [(ADVisualDepthExecutor *)selfCopy checkProjectionChanged:selfCopy->_primaryColorCameraCalibration newCalib:calibrationCopy];
    v8 = [calibrationCopy mutableCopy];
    metalDescriptor = [(ADVisualDepthPipeline *)selfCopy->_pipeline metalDescriptor];
    primaryColorInput = [metalDescriptor primaryColorInput];
    [primaryColorInput sizeForLayout:255];
    v11 = [v8 scale:?];

    if ((v11 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed setting primary color calibration", v14, 2u);
    }

    primaryColorCameraCalibration = selfCopy->_primaryColorCameraCalibration;
    selfCopy->_primaryColorCameraCalibration = v8;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "primaryColorCameraCalibration property set to nil. this may indicate incorrect usage.", v13, 2u);
    }

    primaryColorCameraCalibration = selfCopy->_primaryColorCameraCalibration;
    selfCopy->_primaryColorCameraCalibration = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)checkProjectionChanged:(id)changed newCalib:(id)calib
{
  changedCopy = changed;
  calibCopy = calib;
  if (!changedCopy)
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

  distortionModel = [changedCopy distortionModel];
  distortionModel2 = [calibCopy distortionModel];
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

  distortionModel3 = [changedCopy distortionModel];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    distortionModel4 = [changedCopy distortionModel];
    xThetaType = [distortionModel4 XThetaType];

    distortionModel5 = [calibCopy distortionModel];
    xThetaType2 = [distortionModel5 XThetaType];

    if (xThetaType != xThetaType2)
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

- (int64_t)pushKeyframes:(id)keyframes
{
  keyframesCopy = keyframes;
  v11 = 335684248;
  v12 = 0u;
  v13 = 0u;
  kdebug_trace();
  if (keyframesCopy)
  {
    meshKeyframes = [keyframesCopy meshKeyframes];
    if ([meshKeyframes count])
    {
      metricDepth = [keyframesCopy metricDepth];

      if (metricDepth)
      {
        objc_storeStrong(&self->_keyframeInput, keyframes);
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

- (int64_t)pushMesh:(id)mesh
{
  meshCopy = mesh;
  v11 = 335684248;
  v12 = 0u;
  v13 = 0u;
  kdebug_trace();
  if (meshCopy && ([meshCopy meshChunks], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    objc_storeStrong(&self->_meshInput, mesh);
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

- (uint64_t)pushSecondaryColorImage:(uint64_t)image timestamp:(uint64_t)timestamp pose:
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (timestamp && self[49])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    executorParameters = [selfCopy executorParameters];
    timeProfiler = [executorParameters timeProfiler];

    [timeProfiler start:@"pushSecondaryColor"];
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = selfCopy[59];
      *buf = 134218240;
      v20 = a2;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pushed secondary color image for ts:%f while calib is: %p", buf, 0x16u);
    }

    executorParameters2 = [selfCopy executorParameters];
    logger = [executorParameters2 logger];
    [logger logPixelBuffer:timestamp name:"secondaryColorImage" priority:1 timestamp:a2];

    [ADUtils scaleConvertRotateImage:timestamp rotateBy:0 cropBy:self[49] scaleInto:selfCopy + 50 intermediateScalingBuffer:selfCopy + 51 intermediateRotatingBuffer:1 useVT:*(selfCopy + 32), *(selfCopy + 33), *(selfCopy + 34), *(selfCopy + 35)];
    v13 = [ADVisualDepthBuffer inputWithImage:self[49] confidence:0 calibration:selfCopy[59]];
    v14 = selfCopy[19];
    selfCopy[19] = v13;

    executorParameters3 = [selfCopy executorParameters];
    logger2 = [executorParameters3 logger];
    [logger2 logPixelBuffer:self[49] name:"secondaryColorImageProcessed" priority:1 timestamp:a2];

    [timeProfiler stop:@"pushSecondaryColor"];
    if (selfCopy[19])
    {
      v17 = 0;
    }

    else
    {
      v17 = -22950;
    }

    objc_sync_exit(selfCopy);
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

- (uint64_t)pushPrimaryColorImage:(__n128)image timestamp:(__n128)timestamp pose:(__n128)pose
{
  v35 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  executorParameters = [selfCopy executorParameters];
  timeProfiler = [executorParameters timeProfiler];

  [timeProfiler start:@"pushPrimaryColor"];
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(selfCopy + 58);
    *buf = 134218240;
    v32 = a2;
    v33 = 2048;
    v34 = v14;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pushed primary color image for ts:%f while calib is: %p", buf, 0x16u);
  }

  executorParameters2 = [selfCopy executorParameters];
  logger = [executorParameters2 logger];
  [logger logPixelBuffer:a8 name:"primaryColorImage" priority:1 timestamp:a2];

  [ADUtils scaleConvertRotateImage:a8 rotateBy:0 cropBy:*(selfCopy + 46) scaleInto:selfCopy + 376 intermediateScalingBuffer:selfCopy + 384 intermediateRotatingBuffer:1 useVT:*(selfCopy + 32), *(selfCopy + 33), *(selfCopy + 34), *(selfCopy + 35)];
  v17 = [ADVisualDepthBuffer inputWithImage:*(selfCopy + 46) confidence:0 calibration:*(selfCopy + 58)];
  v18 = *(selfCopy + 18);
  *(selfCopy + 18) = v17;

  *(selfCopy + 20) = a2;
  *(selfCopy + 11) = v24;
  *(selfCopy + 12) = v26;
  *(selfCopy + 13) = v28;
  *(selfCopy + 14) = v30;
  executorParameters3 = [selfCopy executorParameters];
  logger2 = [executorParameters3 logger];
  [logger2 logPixelBuffer:*(selfCopy + 46) name:"primaryColorImageProcessed" priority:1 timestamp:a2];

  [timeProfiler stop:@"pushPrimaryColor"];
  v21 = *(selfCopy + 18);

  objc_sync_exit(selfCopy);
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

- (void)updatePixelBufferAllocationForImageDescriptor:(id)descriptor pixelBuffer:(__CVBuffer *)buffer
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    [descriptorCopy sizeForLayout:255];
    +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [descriptorCopy pixelFormat], buffer, v5, v6);
  }
}

- (ADVisualDepthExecutor)initWithOutputDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
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

  newCommandQueue = [(MTLDevice *)v7->_mtlDevice newCommandQueue];
  mtlCommandQueue = v7->_mtlCommandQueue;
  v7->_mtlCommandQueue = newCommandQueue;

  newSharedEvent = [(MTLDevice *)v7->_mtlDevice newSharedEvent];
  completionEvent = v7->_completionEvent;
  v7->_completionEvent = newSharedEvent;

  [(MTLSharedEventSPI *)v7->_completionEvent setLabel:@"visualDepth-completion-event"];
  v16 = [[ADVisualDepthPipeline alloc] initWithMetalCommandQueue:v7->_mtlCommandQueue dimensions:875836518 format:v7->_visualDepthResolution.width, v7->_visualDepthResolution.height];
  pipeline = v7->_pipeline;
  v7->_pipeline = v16;

  if (v7->_pipeline)
  {
    v18 = [[ADVisualDepthExecutorParameters alloc] initForPipeline:v7->_pipeline];
    [(ADExecutor *)v7 setExecutorParameters:v18];

    executorParameters = [(ADExecutor *)v7 executorParameters];
    logger = [executorParameters logger];
    v21 = objc_opt_new();
    [logger addHandler:v21];

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