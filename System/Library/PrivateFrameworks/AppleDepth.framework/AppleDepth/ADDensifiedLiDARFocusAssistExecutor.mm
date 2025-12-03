@interface ADDensifiedLiDARFocusAssistExecutor
- (ADDensifiedLiDARFocusAssistExecutor)init;
- (ADDensifiedLiDARFocusAssistExecutor)initWithParameters:(id)parameters;
- (CGRect)colorRoi;
- (CGRect)validDepthRect;
- (CGSize)expectedOutputSize;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)color timestamp:(double)timestamp pointClouds:(id)clouds lidarCalibration:(id)calibration colorMetadata:(id)metadata colorCameraCalibration:(id)cameraCalibration outputDepthMap:(__CVBuffer *)map outputConfidenceMap:(__CVBuffer *)self0 outputCalibration:(id *)self1;
- (int64_t)prepareForColorROI:(CGRect)i;
- (int64_t)updateColorROI:(CGRect)i;
- (uint64_t)executeWithColor:(double)color pointCloud:(double)cloud lidarToColorTransform:(double)transform colorCameraCalibration:(uint64_t)calibration outputDepthMap:(uint64_t)map outputConfidenceMap:(void *)confidenceMap outputCalibration:(void *)outputCalibration;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADDensifiedLiDARFocusAssistExecutor

- (CGRect)validDepthRect
{
  x = self->_validDepthRect.origin.x;
  y = self->_validDepthRect.origin.y;
  width = self->_validDepthRect.size.width;
  height = self->_validDepthRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)getIntermediates
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v23[0] = @"name";
    v23[1] = @"image";
    v24[0] = @"PreProcessed Color";
    v24[1] = itmPreProcessedColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [v3 addObject:v5];
  }

  itmPreProcessedLidar = self->_itmPreProcessedLidar;
  if (itmPreProcessedLidar)
  {
    v21[0] = @"name";
    v21[1] = @"image";
    v22[0] = @"PreProcessed Jasper";
    v22[1] = itmPreProcessedLidar;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v3 addObject:v7];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v19[0] = @"name";
    v19[1] = @"image";
    v20[0] = @"Unprocessed Depth";
    v20[1] = itmUnprocessedDepth;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v3 addObject:v9];
  }

  itmUnprocessedUncertainty = self->_itmUnprocessedUncertainty;
  if (itmUnprocessedUncertainty)
  {
    v17[0] = @"name";
    v17[1] = @"image";
    v18[0] = @"Unprocessed Uncertainty";
    v18[1] = itmUnprocessedUncertainty;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [v3 addObject:v11];
  }

  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  if (itmPovChangedPointCloud)
  {
    v15[0] = @"name";
    v15[1] = @"pointcloud";
    v16[0] = @"Pov-Changed Point Cloud";
    v16[1] = itmPovChangedPointCloud;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 addObject:v13];
  }

  return v3;
}

- (void)dealloc
{
  [(ADDensifiedLiDARFocusAssistExecutor *)self deallocateEspressoBuffers];
  colorProcessingSession = self->_colorProcessingSession;
  if (colorProcessingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
    MEMORY[0x245CBFCB0]();
  }

  v4.receiver = self;
  v4.super_class = ADDensifiedLiDARFocusAssistExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (uint64_t)executeWithColor:(double)color pointCloud:(double)cloud lidarToColorTransform:(double)transform colorCameraCalibration:(uint64_t)calibration outputDepthMap:(uint64_t)map outputConfidenceMap:(void *)confidenceMap outputCalibration:(void *)outputCalibration
{
  v34[1] = *MEMORY[0x277D85DE8];
  confidenceMapCopy = confidenceMap;
  outputCalibrationCopy = outputCalibration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v22) = 1.0;
  v23 = [v21 initWithIntrinsics:0 cameraToPlatformTransform:*MEMORY[0x277D860B0] pixelSize:*(MEMORY[0x277D860B0] + 16) referenceDimensions:*(MEMORY[0x277D860B0] + 32) distortionModel:{a2, color, cloud, transform, v22, 0, 0}];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [processInfo systemUptime];
  v26 = v25;
  v34[0] = confidenceMapCopy;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v28 = [selfCopy executeWithColor:map timestamp:v27 pointClouds:v23 lidarCalibration:0 colorMetadata:outputCalibrationCopy colorCameraCalibration:a10 outputDepthMap:v26 outputConfidenceMap:a11 outputCalibration:a12];

  objc_sync_exit(selfCopy);
  return v28;
}

- (int64_t)executeWithColor:(__CVBuffer *)color timestamp:(double)timestamp pointClouds:(id)clouds lidarCalibration:(id)calibration colorMetadata:(id)metadata colorCameraCalibration:(id)cameraCalibration outputDepthMap:(__CVBuffer *)map outputConfidenceMap:(__CVBuffer *)self0 outputCalibration:(id *)self1
{
  v124 = *MEMORY[0x277D85DE8];
  cloudsCopy = clouds;
  calibrationCopy = calibration;
  metadataCopy = metadata;
  cameraCalibrationCopy = cameraCalibration;
  v119 = 335686992;
  v120 = 0u;
  v121 = 0u;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  executorParameters = [(ADExecutor *)selfCopy executorParameters];
  logger = [executorParameters logger];

  for (i = 0; ; i = v21 + 1)
  {
    v21 = i;
    if ([cloudsCopy count] <= i)
    {
      break;
    }

    v22 = [cloudsCopy objectAtIndexedSubscript:i];
    *(&v118.__r_.__value_.__s + 23) = 15;
    strcpy(&v118, "inputPointCloud");
    std::to_string(&v117, v21);
    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v117;
    }

    else
    {
      v23 = v117.__r_.__value_.__r.__words[0];
    }

    if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v117.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v118, v23, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v123 = v25->__r_.__value_.__r.__words[2];
    *buf = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (v123 >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    [logger logPointCloud:v22 name:v27 timestamp:timestamp];
    if (SHIBYTE(v123) < 0)
    {
      operator delete(*buf);
      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_17:
        operator delete(v117.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_17;
    }

    if ((SHIBYTE(v118.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    operator delete(v118.__r_.__value_.__l.__data_);
LABEL_15:
  }

  v28 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:cloudsCopy];
  [logger logCalibration:calibrationCopy name:"inputPointCloudCalibration" timestamp:timestamp];
  executorParameters2 = [(ADExecutor *)selfCopy executorParameters];
  autoSetColorROI = [executorParameters2 autoSetColorROI];

  if (!autoSetColorROI)
  {
    goto LABEL_28;
  }

  Width = CVPixelBufferGetWidth(color);
  Height = CVPixelBufferGetHeight(color);
  if (metadataCopy)
  {
    [logger logDictionary:metadataCopy name:"inputColorMetadata" timestamp:timestamp];
    [MEMORY[0x277CED070] calcSensorCrop:metadataCopy onImageWithDimensions:1 metadataDictionary:selfCopy->_expectedSensorCrop.origin.x negativeCropHandling:{selfCopy->_expectedSensorCrop.origin.y, selfCopy->_expectedSensorCrop.size.width, selfCopy->_expectedSensorCrop.size.height, Width, Height}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    v41 = (selfCopy->_expectedSensorCrop.size.height + selfCopy->_expectedSensorCrop.origin.y * 2.0) / selfCopy->_expectedSensorCrop.size.height;
    v38 = (Width / v41);
    v40 = (Height / v41);
    v34 = (Width - v38) * 0.5;
    v36 = (Height - v40) * 0.5;
  }

  v127.origin.x = v34;
  v127.origin.y = v36;
  v127.size.width = v38;
  v127.size.height = v40;
  if (!CGRectIsNull(v127))
  {
    execute = [(ADDensifiedLiDARFocusAssistExecutor *)selfCopy updateColorROI:v34, v36, v38, v40];
    if (execute)
    {
      v43 = v28;
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = execute;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cannot create crop rectangle error: %ld", buf, 0xCu);
      }

      goto LABEL_59;
    }

LABEL_28:
    if (!selfCopy->_isPrepared)
    {
      execute = [(ADDensifiedLiDARFocusAssistExecutor *)selfCopy prepareForColorROI:selfCopy->super._inputRoi.origin.x, selfCopy->super._inputRoi.origin.y, selfCopy->super._inputRoi.size.width, selfCopy->super._inputRoi.size.height];
      if (execute)
      {
        v43 = v28;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed preparing for executor for engine and ROI", buf, 2u);
        }

        goto LABEL_59;
      }
    }

    if (color)
    {
      if (v28)
      {
        if (map)
        {
          [(ADDensifiedLiDARFocusAssistExecutor *)selfCopy expectedOutputSize];
          v45 = v44;
          v47 = v46;
          if (*map && (v44 != CVPixelBufferGetWidth(*map) || v47 != CVPixelBufferGetHeight(*map)))
          {
            v43 = v28;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v48 = MEMORY[0x277D86220];
              v49 = "Output depth buffer size does not match descriptor";
              goto LABEL_57;
            }

LABEL_58:
            execute = -22953;
            goto LABEL_59;
          }

          if (confidenceMap && *confidenceMap && (v45 != CVPixelBufferGetWidth(*confidenceMap) || v47 != CVPixelBufferGetHeight(*confidenceMap)))
          {
            v43 = v28;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_58;
            }

            *buf = 0;
            v48 = MEMORY[0x277D86220];
            v49 = "Output confidence buffer width does not match descriptor";
            goto LABEL_57;
          }

          [logger logPixelBuffer:color name:"inputColor" timestamp:timestamp];
          [logger logCalibration:cameraCalibrationCopy name:"inputColorCalibration" timestamp:timestamp];
          executorParameters3 = [(ADExecutor *)selfCopy executorParameters];
          stepsToExecute = [executorParameters3 stepsToExecute];

          executorParameters4 = [(ADExecutor *)selfCopy executorParameters];
          timeProfiler = [executorParameters4 timeProfiler];

          if (stepsToExecute < 1)
          {
            goto LABEL_71;
          }

          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess color"];
          [(ADExecutor *)selfCopy frameExecutionStart];
          colorProcessingSession = selfCopy->_colorProcessingSession;
          if (colorProcessingSession)
          {
            if (PixelBufferUtilsSession::verifyInput(colorProcessingSession, color) && PixelBufferUtilsSession::verifyOutput(selfCopy->_colorProcessingSession, selfCopy->_itmPreProcessedColor))
            {
              updated = PixelBufferUtilsSession::updateCrop(selfCopy->_colorProcessingSession, selfCopy->super._inputRoi);
              if (updated)
              {
                if (PixelBufferUtilsSession::run(selfCopy->_colorProcessingSession, color, selfCopy->_itmPreProcessedColor))
                {
                  [logger logPixelBuffer:selfCopy->_itmPreProcessedColor name:"modelInputColor" timestamp:timestamp];
                  [timeProfiler stopWithUTFString:"preprocess color"];
                  kdebug_trace();
                  if (stepsToExecute == 1)
                  {
                    goto LABEL_71;
                  }

                  kdebug_trace();
                  [timeProfiler startWithUTFString:"preprocess jasper"];
                  capacity = [(ADMutableJasperPointCloud *)selfCopy->_itmPovChangedPointCloud capacity];
                  if (capacity >= [v28 length])
                  {
                    [(ADMutableJasperPointCloud *)selfCopy->_itmPovChangedPointCloud resize:0];
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "increasing point cloud capacity", buf, 2u);
                    }

                    v59 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:{objc_msgSend(v28, "length")}];
                    itmPovChangedPointCloud = selfCopy->_itmPovChangedPointCloud;
                    selfCopy->_itmPovChangedPointCloud = v59;
                  }

                  pipeline = selfCopy->_pipeline;
                  [calibrationCopy cameraToPlatformTransform];
                  execute = [(ADDensifiedLiDARFocusAssistPipeline *)pipeline changePointCloudPOV:v28 targetCamera:cameraCalibrationCopy lidarToCameraTransform:selfCopy->_itmPovChangedPointCloud outputPointCloud:?];
                  [logger logPointCloud:selfCopy->_itmPovChangedPointCloud name:"intermediatepovChangedPointCloud" timestamp:timestamp];
                  if (execute)
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v62 = MEMORY[0x277D86220];
                      v63 = "changePointCloudPOV failed";
                      goto LABEL_92;
                    }

                    goto LABEL_78;
                  }

                  x = selfCopy->super._inputRoi.origin.x;
                  y = selfCopy->super._inputRoi.origin.y;
                  v66 = selfCopy->super._inputRoi.size.width;
                  v67 = selfCopy->super._inputRoi.size.height;
                  v128.origin.x = x;
                  v128.origin.y = y;
                  v128.size.width = v66;
                  v128.size.height = v67;
                  if (CGRectIsEmpty(v128))
                  {
                    v66 = CVPixelBufferGetWidth(color);
                    v67 = CVPixelBufferGetHeight(color);
                    x = 0.0;
                    y = 0.0;
                  }

                  execute = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline projectLidarPoints:selfCopy->_itmPovChangedPointCloud crop:selfCopy->_itmPreProcessedLidar projectedPointsBuffer:(v66 + x * 2.0 - (v66 + v66)) * 0.5, (v67 + y * 2.0 - (v67 + v67)) * 0.5];
                  if (execute)
                  {
                    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_78;
                    }

                    *buf = 0;
                    v62 = MEMORY[0x277D86220];
                    v63 = "Projecting jasper points failed";
                    goto LABEL_92;
                  }

                  [logger logPixelBuffer:selfCopy->_itmPreProcessedLidar name:"modelInputProjectedPointCloud" timestamp:timestamp];
                  pixelBuffera = v28;
                  v106 = y;
                  v107 = x;
                  if ([logger enabled])
                  {
                    v68 = CVPixelBufferGetWidth(selfCopy->_itmPreProcessedLidar);
                    v69 = CVPixelBufferGetHeight(selfCopy->_itmPreProcessedLidar);
                    v70 = vcvtd_n_f64_u64(v68, 1uLL);
                    v71 = vcvtd_n_f64_u64(v69, 1uLL);
                    dbgPointCloudCropped = selfCopy->_dbgPointCloudCropped;
                    if (!dbgPointCloudCropped)
                    {
                      v73 = v69;
                      v74 = v71;
                      v75 = v70;
                      PixelFormatType = CVPixelBufferGetPixelFormatType(selfCopy->_itmPreProcessedLidar);
                      dbgPointCloudCropped = PixelBufferUtils::createPixelBuffer(v75, v74, PixelFormatType, 1);
                      selfCopy->_dbgPointCloudCropped = dbgPointCloudCropped;
                      v70 = v75;
                      v71 = v74;
                      v69 = v73;
                    }

                    v77 = (v68 - v70) * 0.5;
                    v78 = (v69 - v71) * 0.5;
                    v129.origin.x = 0.0;
                    v129.origin.y = 0.0;
                    v129.size.width = v70;
                    v129.size.height = v71;
                    PixelBufferUtils::cropAndScalePixelBuffer(selfCopy->_itmPreProcessedLidar, dbgPointCloudCropped, 0, *(&v70 - 2), v129);
                    [logger logPixelBuffer:selfCopy->_dbgPointCloudCropped name:"intermediatepointCloudCropped" timestamp:timestamp];
                  }

                  v108 = *map != 0;
                  if (*map)
                  {
                    v28 = pixelBuffera;
                    v79 = CVPixelBufferGetPixelFormatType(*map);
                    inferenceDescriptor = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
                    depthOutput = [inferenceDescriptor depthOutput];
                    imageDescriptor = [depthOutput imageDescriptor];
                    v83 = v79 == [imageDescriptor pixelFormat];

                    if (v83)
                    {
                      v108 = 0;
                      p_itmUnprocessedDepth = map;
LABEL_105:
                      v90 = *p_itmUnprocessedDepth;
                      espressoRunner = selfCopy->super._espressoRunner;
                      inferenceDescriptor2 = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
                      depthOutput2 = [inferenceDescriptor2 depthOutput];
                      [(ADEspressoRunnerProtocol *)espressoRunner registerPixelBuffer:v90 forDescriptor:depthOutput2];

                      [timeProfiler stopWithUTFString:"preprocess jasper"];
                      kdebug_trace();
                      if (stepsToExecute >= 3)
                      {
                        kdebug_trace();
                        [timeProfiler startWithUTFString:"network execution"];
                        execute = [(ADEspressoRunnerProtocol *)selfCopy->super._espressoRunner execute];
                        [logger logPixelBuffer:v90 name:"modelOutputDepth" timestamp:timestamp];
                        [logger logPixelBuffer:selfCopy->_itmUnprocessedUncertainty name:"modelOutputUncertainty" timestamp:timestamp];
                        if (!execute)
                        {
                          [timeProfiler stopWithUTFString:"network execution"];
                          kdebug_trace();
                          if (stepsToExecute == 3)
                          {
                            goto LABEL_124;
                          }

                          kdebug_trace();
                          [timeProfiler startWithUTFString:"postprocess depth"];
                          if (v108)
                          {
                            [ADUtils postProcessDepth:v90 depthOutput:*map];
                            [logger logPixelBuffer:*map name:"outputDepth" timestamp:timestamp];
                          }

                          [timeProfiler stopWithUTFString:"postprocess depth"];
                          kdebug_trace();
                          if (stepsToExecute < 5)
                          {
                            goto LABEL_124;
                          }

                          kdebug_trace();
                          [timeProfiler startWithUTFString:"postprocess confidence"];
                          if (confidenceMap)
                          {
                            v94 = *confidenceMap;
                            if (!*confidenceMap)
                            {
                              inferenceDescriptor3 = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
                              uncertaintyOutput = [inferenceDescriptor3 uncertaintyOutput];
                              imageDescriptor2 = [uncertaintyOutput imageDescriptor];
                              pixelFormat = [imageDescriptor2 pixelFormat];
                              v126.width = v45;
                              v126.height = v47;
                              *confidenceMap = PixelBufferUtils::createPixelBuffer(pixelFormat, v126, 1);

                              v94 = *confidenceMap;
                            }

                            v99 = selfCopy->_pipeline;
                            itmUnprocessedUncertainty = selfCopy->_itmUnprocessedUncertainty;
                            executorParameters5 = [(ADExecutor *)selfCopy executorParameters];
                            pipelineParameters = [executorParameters5 pipelineParameters];
                            execute = -[ADDensifiedLiDARFocusAssistPipeline postProcessUncertainty:outputConfidence:confidenceUnits:](v99, "postProcessUncertainty:outputConfidence:confidenceUnits:", itmUnprocessedUncertainty, v94, [pipelineParameters confidenceUnits]);

                            if (execute)
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                *buf = 0;
                                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed uncertainty post processing", buf, 2u);
                              }

                              v28 = pixelBuffera;
                              goto LABEL_78;
                            }

                            [logger logPixelBuffer:*confidenceMap name:"outputUncertainty" timestamp:timestamp];
                          }

                          if (outputCalibration)
                          {
                            v103 = [cameraCalibrationCopy mutableCopy];
                            [v103 crop:{v107, v106, v66, v67}];
                            v104 = CVPixelBufferGetWidth(v90);
                            [v103 scale:{v104, CVPixelBufferGetHeight(v90)}];
                            v105 = v103;
                            *outputCalibration = v103;
                            [logger logCalibration:v103 name:"outputDepthCalibration" timestamp:timestamp];
                          }

                          [timeProfiler stopWithUTFString:"postprocess confidence"];
                          kdebug_trace();
                          if (stepsToExecute == 5)
                          {
LABEL_124:
                            execute = -22977;
                            v28 = pixelBuffera;
                          }

                          else
                          {
                            v28 = pixelBuffera;
                            [(ADExecutor *)selfCopy frameExecutionEnd];
                            execute = 0;
                          }

LABEL_78:

                          v43 = v28;
                          goto LABEL_59;
                        }

                        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_78;
                        }

                        *buf = 0;
                        v62 = MEMORY[0x277D86220];
                        v63 = "Failed executing network";
LABEL_92:
                        _os_log_error_impl(&dword_2402F6000, v62, OS_LOG_TYPE_ERROR, v63, buf, 2u);
                        goto LABEL_78;
                      }

LABEL_71:
                      execute = -22977;
                      goto LABEL_78;
                    }

                    p_itmUnprocessedDepth = &selfCopy->_itmUnprocessedDepth;
                    if (selfCopy->_itmUnprocessedDepth)
                    {
                      v108 = 1;
                      goto LABEL_105;
                    }

                    v89 = selfCopy->super._espressoRunner;
                    inferenceDescriptor4 = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
                    depthOutput3 = [inferenceDescriptor4 depthOutput];
                    *p_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v89 createAndRegisterPixelBufferForDescriptor:depthOutput3];
                    v28 = pixelBuffera;
                  }

                  else
                  {
                    inferenceDescriptor4 = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
                    depthOutput3 = [inferenceDescriptor4 depthOutput];
                    imageDescriptor3 = [depthOutput3 imageDescriptor];
                    pixelFormat2 = [imageDescriptor3 pixelFormat];
                    v125.width = v45;
                    v125.height = v47;
                    *map = PixelBufferUtils::createPixelBuffer(pixelFormat2, v125, 1);

                    v28 = pixelBuffera;
                    p_itmUnprocessedDepth = map;
                  }

                  goto LABEL_105;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v56 = MEMORY[0x277D86220];
                  v57 = "Failed scaling color image";
LABEL_76:
                  _os_log_error_impl(&dword_2402F6000, v56, OS_LOG_TYPE_ERROR, v57, buf, 2u);
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v56 = MEMORY[0x277D86220];
                v57 = "Failed configuring color scaling session";
                goto LABEL_76;
              }

              execute = -22950;
              goto LABEL_78;
            }

            v54 = selfCopy->_colorProcessingSession;
            if (v54)
            {
              PixelBufferUtilsSession::~PixelBufferUtilsSession(v54);
              MEMORY[0x245CBFCB0]();
            }
          }

          CVPixelBufferGetWidth(color);
          CVPixelBufferGetHeight(color);
          CVPixelBufferGetPixelFormatType(color);
          CVPixelBufferGetWidth(selfCopy->_itmPreProcessedColor);
          CVPixelBufferGetHeight(selfCopy->_itmPreProcessedColor);
          CVPixelBufferGetPixelFormatType(selfCopy->_itmPreProcessedColor);
          PixelBufferUtilsSession::createCropScaleConvertRotateSession();
        }

        v43 = v28;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v48 = MEMORY[0x277D86220];
        v49 = "Must provide a pointer to outputDepthMap";
      }

      else
      {
        v43 = 0;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 0;
        v48 = MEMORY[0x277D86220];
        v49 = "Must provide point cloud";
      }
    }

    else
    {
      v43 = v28;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v48 = MEMORY[0x277D86220];
      v49 = "Must provide input color image";
    }

LABEL_57:
    _os_log_error_impl(&dword_2402F6000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
    goto LABEL_58;
  }

  v43 = v28;
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cannot create crop rectangle", buf, 2u);
  }

  execute = -22957;
LABEL_59:

  objc_sync_exit(selfCopy);
  kdebug_trace();

  return execute;
}

- (CGSize)expectedOutputSize
{
  inferenceDescriptor = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  depthOutput = [inferenceDescriptor depthOutput];
  imageDescriptor = [depthOutput imageDescriptor];
  [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)updateColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  v24 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(i))
  {
    goto LABEL_7;
  }

  inferenceDescriptor = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  v12 = v11;
  v14 = v13;

  if (fabs(height * v12 - width * v14) <= width * 0.001 * v12)
  {

LABEL_7:
    result = 0;
    self->super._inputRoi.origin.x = x;
    self->super._inputRoi.origin.y = y;
    self->super._inputRoi.size.width = width;
    self->super._inputRoi.size.height = height;
    return result;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218752;
    v17 = width;
    v18 = 2048;
    v19 = height;
    v20 = 2048;
    v21 = v12;
    v22 = 2048;
    v23 = v14;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to update color ROI: aspect ratio (%fx%f) differs from the one used during prepare (%fx%f)", &v16, 0x2Au);
  }

  return -22957;
}

- (int64_t)prepareForColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inferenceDescriptor = [(ADDensifiedLiDARFocusAssistPipeline *)selfCopy->_pipeline inferenceDescriptor];
  engineType = selfCopy->super._engineType;
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:engineType roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height)
  {
    height = [(ADDensifiedLiDARFocusAssistExecutor *)selfCopy allocateIntermediateBuffers];
    if (!height)
    {
      colorProcessingSession = selfCopy->_colorProcessingSession;
      if (colorProcessingSession)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
        MEMORY[0x245CBFCB0]();
      }

      height = 0;
      selfCopy->_colorProcessingSession = 0;
      selfCopy->_isPrepared = 1;
    }
  }

  objc_sync_exit(selfCopy);
  kdebug_trace();
  return height;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADDensifiedLiDARFocusAssistExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  lidarInput = [inferenceDescriptor2 lidarInput];
  self->_itmPreProcessedLidar = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:lidarInput];

  v9 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:576];
  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  self->_itmPovChangedPointCloud = v9;

  v11 = self->super._espressoRunner;
  inferenceDescriptor3 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  uncertaintyOutput = [inferenceDescriptor3 uncertaintyOutput];
  self->_itmUnprocessedUncertainty = [(ADEspressoRunnerProtocol *)v11 createAndRegisterPixelBufferForDescriptor:uncertaintyOutput];

  if (self->_itmPreProcessedColor && self->_itmPreProcessedLidar && self->_itmPovChangedPointCloud && self->_itmUnprocessedUncertainty)
  {
    return 0;
  }

  [(ADDensifiedLiDARFocusAssistExecutor *)self deallocateEspressoBuffers];
  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmPreProcessedLidar);
  self->_itmPreProcessedLidar = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
  CVPixelBufferRelease(self->_itmUnprocessedUncertainty);
  self->_itmUnprocessedUncertainty = 0;
  CVPixelBufferRelease(self->_dbgPointCloudCropped);
  self->_dbgPointCloudCropped = 0;
}

- (ADDensifiedLiDARFocusAssistExecutor)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v24 = 335686432;
  v25 = 0u;
  v26 = 0u;
  kdebug_trace();
  v23.receiver = self;
  v23.super_class = ADDensifiedLiDARFocusAssistExecutor;
  v5 = [(ADExecutor *)&v23 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  v5->super._engineType = 4;
  v7 = [ADDensifiedLiDARFocusAssistPipeline alloc];
  engineType = v6->super._engineType;
  pipelineParameters = [parametersCopy pipelineParameters];
  v10 = [(ADDensifiedLiDARFocusAssistPipeline *)v7 initWithEspressoEngine:engineType andParameters:pipelineParameters];
  pipeline = v6->_pipeline;
  v6->_pipeline = v10;

  if (!v6->_pipeline)
  {
    executorParameters = 0;
    goto LABEL_7;
  }

  [(ADExecutor *)v6 setExecutorParameters:parametersCopy];
  executorParameters = [(ADExecutor *)v6 executorParameters];

  if (executorParameters)
  {
    [(ADDensifiedLiDARFocusAssistPipeline *)v6->_pipeline validDepthRect];
    v6->_validDepthRect.origin.x = v13;
    v6->_validDepthRect.origin.y = v14;
    v6->_validDepthRect.size.width = v15;
    v6->_validDepthRect.size.height = v16;
    [(ADDensifiedLiDARFocusAssistPipeline *)v6->_pipeline expectedColorSensorROI];
    v6->_expectedSensorCrop.origin.x = v17;
    v6->_expectedSensorCrop.origin.y = v18;
    v6->_expectedSensorCrop.size.width = v19;
    v6->_expectedSensorCrop.size.height = v20;
    v6->_itmPreProcessedColor = 0;
    v6->_colorProcessingSession = 0;
    v6->_itmUnprocessedDepth = 0;
    v6->_itmUnprocessedUncertainty = 0;
    itmPovChangedPointCloud = v6->_itmPovChangedPointCloud;
    v6->_itmPovChangedPointCloud = 0;

    v6->_isPrepared = 0;
LABEL_5:
    executorParameters = v6;
  }

LABEL_7:
  kdebug_trace();

  return executorParameters;
}

- (ADDensifiedLiDARFocusAssistExecutor)init
{
  v3 = objc_opt_new();
  v4 = [(ADDensifiedLiDARFocusAssistExecutor *)self initWithParameters:v3];

  return v4;
}

- (CGRect)colorRoi
{
  x = self->super._inputRoi.origin.x;
  y = self->super._inputRoi.origin.y;
  width = self->super._inputRoi.size.width;
  height = self->super._inputRoi.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end