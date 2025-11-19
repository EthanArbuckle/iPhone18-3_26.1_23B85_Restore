@interface ADDensifiedLiDARFocusAssistExecutor
- (ADDensifiedLiDARFocusAssistExecutor)init;
- (ADDensifiedLiDARFocusAssistExecutor)initWithParameters:(id)a3;
- (CGRect)colorRoi;
- (CGRect)validDepthRect;
- (CGSize)expectedOutputSize;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executeWithColor:(__CVBuffer *)a3 timestamp:(double)a4 pointClouds:(id)a5 lidarCalibration:(id)a6 colorMetadata:(id)a7 colorCameraCalibration:(id)a8 outputDepthMap:(__CVBuffer *)a9 outputConfidenceMap:(__CVBuffer *)a10 outputCalibration:(id *)a11;
- (int64_t)prepareForColorROI:(CGRect)a3;
- (int64_t)updateColorROI:(CGRect)a3;
- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 lidarToColorTransform:(double)a5 colorCameraCalibration:(uint64_t)a6 outputDepthMap:(uint64_t)a7 outputConfidenceMap:(void *)a8 outputCalibration:(void *)a9;
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

- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 lidarToColorTransform:(double)a5 colorCameraCalibration:(uint64_t)a6 outputDepthMap:(uint64_t)a7 outputConfidenceMap:(void *)a8 outputCalibration:(void *)a9
{
  v34[1] = *MEMORY[0x277D85DE8];
  v18 = a8;
  v19 = a9;
  v20 = a1;
  objc_sync_enter(v20);
  v21 = objc_alloc(MEMORY[0x277CED040]);
  LODWORD(v22) = 1.0;
  v23 = [v21 initWithIntrinsics:0 cameraToPlatformTransform:*MEMORY[0x277D860B0] pixelSize:*(MEMORY[0x277D860B0] + 16) referenceDimensions:*(MEMORY[0x277D860B0] + 32) distortionModel:{a2, a3, a4, a5, v22, 0, 0}];
  v24 = [MEMORY[0x277CCAC38] processInfo];
  [v24 systemUptime];
  v26 = v25;
  v34[0] = v18;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v28 = [v20 executeWithColor:a7 timestamp:v27 pointClouds:v23 lidarCalibration:0 colorMetadata:v19 colorCameraCalibration:a10 outputDepthMap:v26 outputConfidenceMap:a11 outputCalibration:a12];

  objc_sync_exit(v20);
  return v28;
}

- (int64_t)executeWithColor:(__CVBuffer *)a3 timestamp:(double)a4 pointClouds:(id)a5 lidarCalibration:(id)a6 colorMetadata:(id)a7 colorCameraCalibration:(id)a8 outputDepthMap:(__CVBuffer *)a9 outputConfidenceMap:(__CVBuffer *)a10 outputCalibration:(id *)a11
{
  v124 = *MEMORY[0x277D85DE8];
  v16 = a5;
  v116 = a6;
  v115 = a7;
  v114 = a8;
  v119 = 335686992;
  v120 = 0u;
  v121 = 0u;
  kdebug_trace();
  v17 = self;
  objc_sync_enter(v17);
  v18 = [(ADExecutor *)v17 executorParameters];
  v19 = [v18 logger];

  for (i = 0; ; i = v21 + 1)
  {
    v21 = i;
    if ([v16 count] <= i)
    {
      break;
    }

    v22 = [v16 objectAtIndexedSubscript:i];
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

    [v19 logPointCloud:v22 name:v27 timestamp:a4];
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

  v28 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:v16];
  [v19 logCalibration:v116 name:"inputPointCloudCalibration" timestamp:a4];
  v29 = [(ADExecutor *)v17 executorParameters];
  v30 = [v29 autoSetColorROI];

  if (!v30)
  {
    goto LABEL_28;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (v115)
  {
    [v19 logDictionary:v115 name:"inputColorMetadata" timestamp:a4];
    [MEMORY[0x277CED070] calcSensorCrop:v115 onImageWithDimensions:1 metadataDictionary:v17->_expectedSensorCrop.origin.x negativeCropHandling:{v17->_expectedSensorCrop.origin.y, v17->_expectedSensorCrop.size.width, v17->_expectedSensorCrop.size.height, Width, Height}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    v41 = (v17->_expectedSensorCrop.size.height + v17->_expectedSensorCrop.origin.y * 2.0) / v17->_expectedSensorCrop.size.height;
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
    v42 = [(ADDensifiedLiDARFocusAssistExecutor *)v17 updateColorROI:v34, v36, v38, v40];
    if (v42)
    {
      v43 = v28;
      if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v42;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cannot create crop rectangle error: %ld", buf, 0xCu);
      }

      goto LABEL_59;
    }

LABEL_28:
    if (!v17->_isPrepared)
    {
      v42 = [(ADDensifiedLiDARFocusAssistExecutor *)v17 prepareForColorROI:v17->super._inputRoi.origin.x, v17->super._inputRoi.origin.y, v17->super._inputRoi.size.width, v17->super._inputRoi.size.height];
      if (v42)
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

    if (a3)
    {
      if (v28)
      {
        if (a9)
        {
          [(ADDensifiedLiDARFocusAssistExecutor *)v17 expectedOutputSize];
          v45 = v44;
          v47 = v46;
          if (*a9 && (v44 != CVPixelBufferGetWidth(*a9) || v47 != CVPixelBufferGetHeight(*a9)))
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
            v42 = -22953;
            goto LABEL_59;
          }

          if (a10 && *a10 && (v45 != CVPixelBufferGetWidth(*a10) || v47 != CVPixelBufferGetHeight(*a10)))
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

          [v19 logPixelBuffer:a3 name:"inputColor" timestamp:a4];
          [v19 logCalibration:v114 name:"inputColorCalibration" timestamp:a4];
          v51 = [(ADExecutor *)v17 executorParameters];
          v109 = [v51 stepsToExecute];

          v52 = [(ADExecutor *)v17 executorParameters];
          v110 = [v52 timeProfiler];

          if (v109 < 1)
          {
            goto LABEL_71;
          }

          kdebug_trace();
          [v110 startWithUTFString:"preprocess color"];
          [(ADExecutor *)v17 frameExecutionStart];
          colorProcessingSession = v17->_colorProcessingSession;
          if (colorProcessingSession)
          {
            if (PixelBufferUtilsSession::verifyInput(colorProcessingSession, a3) && PixelBufferUtilsSession::verifyOutput(v17->_colorProcessingSession, v17->_itmPreProcessedColor))
            {
              updated = PixelBufferUtilsSession::updateCrop(v17->_colorProcessingSession, v17->super._inputRoi);
              if (updated)
              {
                if (PixelBufferUtilsSession::run(v17->_colorProcessingSession, a3, v17->_itmPreProcessedColor))
                {
                  [v19 logPixelBuffer:v17->_itmPreProcessedColor name:"modelInputColor" timestamp:a4];
                  [v110 stopWithUTFString:"preprocess color"];
                  kdebug_trace();
                  if (v109 == 1)
                  {
                    goto LABEL_71;
                  }

                  kdebug_trace();
                  [v110 startWithUTFString:"preprocess jasper"];
                  v58 = [(ADMutableJasperPointCloud *)v17->_itmPovChangedPointCloud capacity];
                  if (v58 >= [v28 length])
                  {
                    [(ADMutableJasperPointCloud *)v17->_itmPovChangedPointCloud resize:0];
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "increasing point cloud capacity", buf, 2u);
                    }

                    v59 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:{objc_msgSend(v28, "length")}];
                    itmPovChangedPointCloud = v17->_itmPovChangedPointCloud;
                    v17->_itmPovChangedPointCloud = v59;
                  }

                  pipeline = v17->_pipeline;
                  [v116 cameraToPlatformTransform];
                  v42 = [(ADDensifiedLiDARFocusAssistPipeline *)pipeline changePointCloudPOV:v28 targetCamera:v114 lidarToCameraTransform:v17->_itmPovChangedPointCloud outputPointCloud:?];
                  [v19 logPointCloud:v17->_itmPovChangedPointCloud name:"intermediatepovChangedPointCloud" timestamp:a4];
                  if (v42)
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

                  x = v17->super._inputRoi.origin.x;
                  y = v17->super._inputRoi.origin.y;
                  v66 = v17->super._inputRoi.size.width;
                  v67 = v17->super._inputRoi.size.height;
                  v128.origin.x = x;
                  v128.origin.y = y;
                  v128.size.width = v66;
                  v128.size.height = v67;
                  if (CGRectIsEmpty(v128))
                  {
                    v66 = CVPixelBufferGetWidth(a3);
                    v67 = CVPixelBufferGetHeight(a3);
                    x = 0.0;
                    y = 0.0;
                  }

                  v42 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline projectLidarPoints:v17->_itmPovChangedPointCloud crop:v17->_itmPreProcessedLidar projectedPointsBuffer:(v66 + x * 2.0 - (v66 + v66)) * 0.5, (v67 + y * 2.0 - (v67 + v67)) * 0.5];
                  if (v42)
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

                  [v19 logPixelBuffer:v17->_itmPreProcessedLidar name:"modelInputProjectedPointCloud" timestamp:a4];
                  pixelBuffera = v28;
                  v106 = y;
                  v107 = x;
                  if ([v19 enabled])
                  {
                    v68 = CVPixelBufferGetWidth(v17->_itmPreProcessedLidar);
                    v69 = CVPixelBufferGetHeight(v17->_itmPreProcessedLidar);
                    v70 = vcvtd_n_f64_u64(v68, 1uLL);
                    v71 = vcvtd_n_f64_u64(v69, 1uLL);
                    dbgPointCloudCropped = v17->_dbgPointCloudCropped;
                    if (!dbgPointCloudCropped)
                    {
                      v73 = v69;
                      v74 = v71;
                      v75 = v70;
                      PixelFormatType = CVPixelBufferGetPixelFormatType(v17->_itmPreProcessedLidar);
                      dbgPointCloudCropped = PixelBufferUtils::createPixelBuffer(v75, v74, PixelFormatType, 1);
                      v17->_dbgPointCloudCropped = dbgPointCloudCropped;
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
                    PixelBufferUtils::cropAndScalePixelBuffer(v17->_itmPreProcessedLidar, dbgPointCloudCropped, 0, *(&v70 - 2), v129);
                    [v19 logPixelBuffer:v17->_dbgPointCloudCropped name:"intermediatepointCloudCropped" timestamp:a4];
                  }

                  v108 = *a9 != 0;
                  if (*a9)
                  {
                    v28 = pixelBuffera;
                    v79 = CVPixelBufferGetPixelFormatType(*a9);
                    v80 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline inferenceDescriptor];
                    v81 = [v80 depthOutput];
                    v82 = [v81 imageDescriptor];
                    v83 = v79 == [v82 pixelFormat];

                    if (v83)
                    {
                      v108 = 0;
                      p_itmUnprocessedDepth = a9;
LABEL_105:
                      v90 = *p_itmUnprocessedDepth;
                      espressoRunner = v17->super._espressoRunner;
                      v92 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline inferenceDescriptor];
                      v93 = [v92 depthOutput];
                      [(ADEspressoRunnerProtocol *)espressoRunner registerPixelBuffer:v90 forDescriptor:v93];

                      [v110 stopWithUTFString:"preprocess jasper"];
                      kdebug_trace();
                      if (v109 >= 3)
                      {
                        kdebug_trace();
                        [v110 startWithUTFString:"network execution"];
                        v42 = [(ADEspressoRunnerProtocol *)v17->super._espressoRunner execute];
                        [v19 logPixelBuffer:v90 name:"modelOutputDepth" timestamp:a4];
                        [v19 logPixelBuffer:v17->_itmUnprocessedUncertainty name:"modelOutputUncertainty" timestamp:a4];
                        if (!v42)
                        {
                          [v110 stopWithUTFString:"network execution"];
                          kdebug_trace();
                          if (v109 == 3)
                          {
                            goto LABEL_124;
                          }

                          kdebug_trace();
                          [v110 startWithUTFString:"postprocess depth"];
                          if (v108)
                          {
                            [ADUtils postProcessDepth:v90 depthOutput:*a9];
                            [v19 logPixelBuffer:*a9 name:"outputDepth" timestamp:a4];
                          }

                          [v110 stopWithUTFString:"postprocess depth"];
                          kdebug_trace();
                          if (v109 < 5)
                          {
                            goto LABEL_124;
                          }

                          kdebug_trace();
                          [v110 startWithUTFString:"postprocess confidence"];
                          if (a10)
                          {
                            v94 = *a10;
                            if (!*a10)
                            {
                              v95 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline inferenceDescriptor];
                              v96 = [v95 uncertaintyOutput];
                              v97 = [v96 imageDescriptor];
                              v98 = [v97 pixelFormat];
                              v126.width = v45;
                              v126.height = v47;
                              *a10 = PixelBufferUtils::createPixelBuffer(v98, v126, 1);

                              v94 = *a10;
                            }

                            v99 = v17->_pipeline;
                            itmUnprocessedUncertainty = v17->_itmUnprocessedUncertainty;
                            v101 = [(ADExecutor *)v17 executorParameters];
                            v102 = [v101 pipelineParameters];
                            v42 = -[ADDensifiedLiDARFocusAssistPipeline postProcessUncertainty:outputConfidence:confidenceUnits:](v99, "postProcessUncertainty:outputConfidence:confidenceUnits:", itmUnprocessedUncertainty, v94, [v102 confidenceUnits]);

                            if (v42)
                            {
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                *buf = 0;
                                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed uncertainty post processing", buf, 2u);
                              }

                              v28 = pixelBuffera;
                              goto LABEL_78;
                            }

                            [v19 logPixelBuffer:*a10 name:"outputUncertainty" timestamp:a4];
                          }

                          if (a11)
                          {
                            v103 = [v114 mutableCopy];
                            [v103 crop:{v107, v106, v66, v67}];
                            v104 = CVPixelBufferGetWidth(v90);
                            [v103 scale:{v104, CVPixelBufferGetHeight(v90)}];
                            v105 = v103;
                            *a11 = v103;
                            [v19 logCalibration:v103 name:"outputDepthCalibration" timestamp:a4];
                          }

                          [v110 stopWithUTFString:"postprocess confidence"];
                          kdebug_trace();
                          if (v109 == 5)
                          {
LABEL_124:
                            v42 = -22977;
                            v28 = pixelBuffera;
                          }

                          else
                          {
                            v28 = pixelBuffera;
                            [(ADExecutor *)v17 frameExecutionEnd];
                            v42 = 0;
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
                      v42 = -22977;
                      goto LABEL_78;
                    }

                    p_itmUnprocessedDepth = &v17->_itmUnprocessedDepth;
                    if (v17->_itmUnprocessedDepth)
                    {
                      v108 = 1;
                      goto LABEL_105;
                    }

                    v89 = v17->super._espressoRunner;
                    v85 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline inferenceDescriptor];
                    v86 = [v85 depthOutput];
                    *p_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v89 createAndRegisterPixelBufferForDescriptor:v86];
                    v28 = pixelBuffera;
                  }

                  else
                  {
                    v85 = [(ADDensifiedLiDARFocusAssistPipeline *)v17->_pipeline inferenceDescriptor];
                    v86 = [v85 depthOutput];
                    v87 = [v86 imageDescriptor];
                    v88 = [v87 pixelFormat];
                    v125.width = v45;
                    v125.height = v47;
                    *a9 = PixelBufferUtils::createPixelBuffer(v88, v125, 1);

                    v28 = pixelBuffera;
                    p_itmUnprocessedDepth = a9;
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

              v42 = -22950;
              goto LABEL_78;
            }

            v54 = v17->_colorProcessingSession;
            if (v54)
            {
              PixelBufferUtilsSession::~PixelBufferUtilsSession(v54);
              MEMORY[0x245CBFCB0]();
            }
          }

          CVPixelBufferGetWidth(a3);
          CVPixelBufferGetHeight(a3);
          CVPixelBufferGetPixelFormatType(a3);
          CVPixelBufferGetWidth(v17->_itmPreProcessedColor);
          CVPixelBufferGetHeight(v17->_itmPreProcessedColor);
          CVPixelBufferGetPixelFormatType(v17->_itmPreProcessedColor);
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

  v42 = -22957;
LABEL_59:

  objc_sync_exit(v17);
  kdebug_trace();

  return v42;
}

- (CGSize)expectedOutputSize
{
  v3 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  v4 = [v3 depthOutput];
  v5 = [v4 imageDescriptor];
  [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)updateColorROI:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(a3))
  {
    goto LABEL_7;
  }

  v8 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  v9 = [v8 colorInput];
  v10 = [v9 imageDescriptor];
  [v10 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
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

- (int64_t)prepareForColorROI:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  kdebug_trace();
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ADDensifiedLiDARFocusAssistPipeline *)v8->_pipeline inferenceDescriptor];
  engineType = v8->super._engineType;
  v11 = [v9 colorInput];
  v12 = [v11 imageDescriptor];
  v13 = [(ADExecutor *)v8 prepareForEngineType:engineType roi:v12 descriptorForROI:1 exifOrientation:2 rotationPreference:v9 inferenceDescriptor:x, y, width, height];

  if (!v13)
  {
    v13 = [(ADDensifiedLiDARFocusAssistExecutor *)v8 allocateIntermediateBuffers];
    if (!v13)
    {
      colorProcessingSession = v8->_colorProcessingSession;
      if (colorProcessingSession)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
        MEMORY[0x245CBFCB0]();
      }

      v13 = 0;
      v8->_colorProcessingSession = 0;
      v8->_isPrepared = 1;
    }
  }

  objc_sync_exit(v8);
  kdebug_trace();
  return v13;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADDensifiedLiDARFocusAssistExecutor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 lidarInput];
  self->_itmPreProcessedLidar = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:576];
  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  self->_itmPovChangedPointCloud = v9;

  v11 = self->super._espressoRunner;
  v12 = [(ADDensifiedLiDARFocusAssistPipeline *)self->_pipeline inferenceDescriptor];
  v13 = [v12 uncertaintyOutput];
  self->_itmUnprocessedUncertainty = [(ADEspressoRunnerProtocol *)v11 createAndRegisterPixelBufferForDescriptor:v13];

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

- (ADDensifiedLiDARFocusAssistExecutor)initWithParameters:(id)a3
{
  v4 = a3;
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
  v9 = [v4 pipelineParameters];
  v10 = [(ADDensifiedLiDARFocusAssistPipeline *)v7 initWithEspressoEngine:engineType andParameters:v9];
  pipeline = v6->_pipeline;
  v6->_pipeline = v10;

  if (!v6->_pipeline)
  {
    v12 = 0;
    goto LABEL_7;
  }

  [(ADExecutor *)v6 setExecutorParameters:v4];
  v12 = [(ADExecutor *)v6 executorParameters];

  if (v12)
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
    v12 = v6;
  }

LABEL_7:
  kdebug_trace();

  return v12;
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