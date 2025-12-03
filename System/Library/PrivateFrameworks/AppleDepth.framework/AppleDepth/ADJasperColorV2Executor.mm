@interface ADJasperColorV2Executor
- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)prioritization;
- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)prioritization engineType:(unint64_t)type;
- (ADJasperColorV2Executor)initWithParameters:(id)parameters prioritization:(int64_t)prioritization engineType:(unint64_t)type;
- (CGSize)expectedOutputSize;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)prepareForColorROI:(CGRect)i;
- (uint64_t)executeWithColor:(double)color pointCloud:(double)cloud jasperToColorTransform:(double)transform colorCamera:(uint64_t)camera outputDepthMap:(__CVBuffer *)map outputConfidenceMap:(void *)confidenceMap;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADJasperColorV2Executor

- (id)getIntermediates
{
  v44[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"PreProcessed Color";
    v44[1] = itmPreProcessedColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v5];
  }

  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  if (itmPovChangedPointCloud)
  {
    v41[0] = @"name";
    v41[1] = @"pointcloud";
    v42[0] = @"Pov-Changed Point Cloud";
    v42[1] = itmPovChangedPointCloud;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedJasper = self->_itmPreProcessedJasper;
  if (itmPreProcessedJasper)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"PreProcessed Jasper";
    v40[1] = itmPreProcessedJasper;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v9];
  }

  itmPrevDepth = self->_itmPrevDepth;
  if (itmPrevDepth)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"Previous Depth";
    v38[1] = itmPrevDepth;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v11];
  }

  itmPrevColor = self->_itmPrevColor;
  if (itmPrevColor)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"Previous Color";
    v36[1] = itmPrevColor;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v13];
  }

  itmPrevUncertainty = self->_itmPrevUncertainty;
  if (itmPrevUncertainty)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"Previous Uncertainty";
    v34[1] = itmPrevUncertainty;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v15];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v31[0] = @"name";
    v31[1] = @"image";
    v32[0] = @"Unprocessed Depth";
    v32[1] = itmUnprocessedDepth;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 addObject:v17];
  }

  itmUnprocessedUncertainty = self->_itmUnprocessedUncertainty;
  if (itmUnprocessedUncertainty)
  {
    v29[0] = @"name";
    v29[1] = @"image";
    v30[0] = @"Unprocessed Uncertainty";
    v30[1] = itmUnprocessedUncertainty;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v3 addObject:v19];
  }

  itmDepthFeatures = self->_itmDepthFeatures;
  if (itmDepthFeatures)
  {
    v27[0] = @"name";
    v27[1] = @"image";
    v28[0] = @"Depth features";
    v28[1] = itmDepthFeatures;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 addObject:v21];
  }

  itmColorFeatures = self->_itmColorFeatures;
  if (itmColorFeatures)
  {
    v25[0] = @"name";
    v25[1] = @"image";
    v26[0] = @"Color features";
    v26[1] = itmColorFeatures;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v3 addObject:v23];
  }

  return v3;
}

- (void)dealloc
{
  [(ADJasperColorV2Executor *)self deallocateEspressoBuffers];
  colorProcessingSession = self->_colorProcessingSession;
  if (colorProcessingSession)
  {
    PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
    MEMORY[0x245CBFCB0]();
  }

  v4.receiver = self;
  v4.super_class = ADJasperColorV2Executor;
  [(ADExecutor *)&v4 dealloc];
}

- (uint64_t)executeWithColor:(double)color pointCloud:(double)cloud jasperToColorTransform:(double)transform colorCamera:(uint64_t)camera outputDepthMap:(__CVBuffer *)map outputConfidenceMap:(void *)confidenceMap
{
  v140 = *MEMORY[0x277D85DE8];
  confidenceMapCopy = confidenceMap;
  v17 = a9;
  v136 = 335683608;
  v137 = 0u;
  v138 = 0u;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((selfCopy[136] & 1) != 0 || (v19 = CVPixelBufferGetWidth(map), (execute = [selfCopy prepareForColorROI:{0.0, 0.0, v19, CVPixelBufferGetHeight(map)}]) == 0))
  {
    if (!map)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Must provide input color image";
        goto LABEL_69;
      }

LABEL_20:
      execute = -22953;
      goto LABEL_21;
    }

    if (!a10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Must provide a pointer to outputDepthMap";
        goto LABEL_69;
      }

      goto LABEL_20;
    }

    [selfCopy expectedOutputSize];
    v22 = v21;
    v24 = v23;
    if (*a10 && v21 != CVPixelBufferGetWidth(*a10))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Output depth buffer width does not match descriptor";
LABEL_69:
        _os_log_error_impl(&dword_2402F6000, v25, OS_LOG_TYPE_ERROR, v26, &buf, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    if (a11 && *a11 && v22 != CVPixelBufferGetWidth(*a11))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Output confidence buffer width does not match descriptor";
        goto LABEL_69;
      }

      goto LABEL_20;
    }

    executorParameters = [selfCopy executorParameters];
    logger = [executorParameters logger];

    v127 = logger;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v32 = v31;

    [logger logPixelBuffer:map name:"inputColor" timestamp:v32];
    [logger logPointCloud:confidenceMapCopy name:"inputPointCloud" timestamp:v32];
    [logger logMatrix4x3:"jasper2ColorTransform" name:a2 timestamp:{color, cloud, transform, v32}];
    [logger logCalibration:v17 name:"colorCameraCalibration" timestamp:v32];
    if (selfCopy[242] == 1)
    {
      v24 = v24 - (*(selfCopy + 32) + *(selfCopy + 31));
    }

    executorParameters2 = [selfCopy executorParameters];
    stepsToExecute = [executorParameters2 stepsToExecute];

    executorParameters3 = [selfCopy executorParameters];
    timeProfiler = [executorParameters3 timeProfiler];

    if (stepsToExecute < 1)
    {
      execute = -22977;
LABEL_72:

      goto LABEL_21;
    }

    v124 = stepsToExecute;
    kdebug_trace();
    [timeProfiler startWithUTFString:"preprocess jasper"];
    [selfCopy frameExecutionStart];
    if (confidenceMapCopy && [confidenceMapCopy length] >= 1)
    {
      capacity = [*(selfCopy + 29) capacity];
      if (capacity >= [confidenceMapCopy length])
      {
        [*(selfCopy + 29) resize:0];
      }

      else
      {
        v38 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:{objc_msgSend(confidenceMapCopy, "length")}];
        v39 = *(selfCopy + 29);
        *(selfCopy + 29) = v38;
      }

      v121 = v22;
      v122 = v24;
      v57 = v17;
      v58 = v57;
      v60 = *(selfCopy + 1);
      v59 = *(selfCopy + 2);
      v61 = *(selfCopy + 3);
      v62 = *(selfCopy + 4);
      if (selfCopy[242] == 1)
      {
        v126 = *(selfCopy + 3);
        v63 = *(selfCopy + 2);
        v64 = *(selfCopy + 1);
        v65 = *(selfCopy + 31);
        v66 = *(selfCopy + 34);
        v67 = *(selfCopy + 33);
        v68 = [v57 mutableCopy];
        [v58 referenceDimensions];
        v70 = v69;
        [v58 referenceDimensions];
        [v68 crop:{0.0, -v65 / v66, v70, v67 + v71}];

        v62 = v62 + v67;
        v72 = v68;
        v60 = v64;
        v59 = v63;
        v61 = v126;
      }

      else
      {
        v72 = v57;
      }

      v123 = v72;
      execute = [*(selfCopy + 18) changePointCloudPOV:confidenceMapCopy targetCamera:a2 jasperToCameraTransform:color outputPointCloud:{cloud, transform}];
      [v127 logPointCloud:*(selfCopy + 29) name:"povChangedPointCloud" timestamp:v32];
      if (execute)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.data) = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "changePointCloudPOV failed", &buf, 2u);
        }

        v125 = 0;
        v73 = v123;
LABEL_67:

        goto LABEL_70;
      }

      v74 = *(selfCopy + 18);
      v75 = *(selfCopy + 29);
      v76 = *(selfCopy + 9);
      v77 = *(selfCopy + 21);
      v135 = 0;
      execute = [v74 projectJasperPoints:v75 cropTo:v76 rotateBy:v77 projectedPointsBuffer:&v135 filteredPoints:{v60, v59, v61, v62}];
      v125 = v135;
      if (execute)
      {
        v73 = v123;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.data) = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Projecting jasper points failed", &buf, 2u);
        }

        goto LABEL_67;
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v79 = [confidenceMapCopy length];
          v80 = [v125 length];
          LODWORD(buf.data) = 67109376;
          HIDWORD(buf.data) = v79;
          LOWORD(buf.height) = 1024;
          *(&buf.height + 2) = v80;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorV2Executor: got input point cloud of %u points, %u were used for inference", &buf, 0xEu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v93 = [confidenceMapCopy length];
        v94 = [v125 length];
        LODWORD(buf.data) = 67109376;
        HIDWORD(buf.data) = v93;
        LOWORD(buf.height) = 1024;
        *(&buf.height + 2) = v94;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADJasperColorV2Executor: got input point cloud of %u points, %u were used for inference", &buf, 0xEu);
      }

      if (selfCopy[242] == 1)
      {
        CVPixelBufferLockBaseAddress(*(selfCopy + 21), 0);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(*(selfCopy + 21), *MEMORY[0x277CBF3A0], &buf);
        data = buf.data;
        rowBytes = buf.rowBytes;
        bzero(buf.data, *(selfCopy + 31) * buf.rowBytes);
        bzero(&data[(buf.height - *(selfCopy + 32)) * rowBytes], *(selfCopy + 32) * rowBytes);
        CVPixelBufferUnlockBaseAddress(*(selfCopy + 21), 0);
      }

      v22 = v121;
      v24 = v122;
    }

    else
    {
      v125 = 0;
      PixelBufferUtils::blacken(*(selfCopy + 21), v36);
    }

    [v127 logPixelBuffer:*(selfCopy + 21) name:"processedJasper" timestamp:v32];
    [timeProfiler stopWithUTFString:"preprocess jasper"];
    kdebug_trace();
    if (v124 == 1)
    {
      goto LABEL_31;
    }

    kdebug_trace();
    [timeProfiler startWithUTFString:"preprocess color"];
    v40 = *(selfCopy + 20);
    if (!v40)
    {
LABEL_38:
      CVPixelBufferGetWidth(map);
      CVPixelBufferGetHeight(map);
      CVPixelBufferGetPixelFormatType(map);
      CVPixelBufferGetWidth(*(selfCopy + 19));
      CVPixelBufferGetHeight(*(selfCopy + 19));
      CVPixelBufferGetPixelFormatType(*(selfCopy + 19));
      PixelBufferUtilsSession::createCropScaleConvertRotateSession();
    }

    if (!PixelBufferUtilsSession::verifyInput(v40, map) || !PixelBufferUtilsSession::verifyOutput(*(selfCopy + 20), *(selfCopy + 19)))
    {
      v41 = *(selfCopy + 20);
      if (v41)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(v41);
        MEMORY[0x245CBFCB0]();
      }

      goto LABEL_38;
    }

    if ((PixelBufferUtilsSession::run(*(selfCopy + 20), map, *(selfCopy + 19)) & 1) == 0)
    {
      v78 = v125;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed scaling color image", &buf, 2u);
      }

      execute = -22950;
      goto LABEL_71;
    }

    v42 = v127;
    if (selfCopy[242] == 1)
    {
      CVPixelBufferLockBaseAddress(*(selfCopy + 19), 0);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(*(selfCopy + 19), *MEMORY[0x277CBF3A0], &buf);
      v43 = *(selfCopy + 31);
      if (v43)
      {
        v44 = 0;
        v45 = 1;
        v46 = buf.data;
        v47 = buf.rowBytes;
        do
        {
          memcpy(&v46[v47 * v44], &v46[v47 * v43], v47);
          v44 = v45;
          v43 = *(selfCopy + 31);
          ++v45;
        }

        while (v43 > v44);
      }

      v48 = *(selfCopy + 32);
      if (v48)
      {
        v49 = 0;
        v50 = buf.rowBytes;
        v51 = 1;
        v52 = buf.data;
        height = buf.height;
        do
        {
          memcpy(&v52[(height + ~v49) * v50], &v52[(height + ~v48) * v50], v50);
          v49 = v51;
          v48 = *(selfCopy + 32);
          ++v51;
        }

        while (v48 > v49);
      }

      CVPixelBufferUnlockBaseAddress(*(selfCopy + 19), 0);
      v42 = v127;
    }

    [v42 logPixelBuffer:*(selfCopy + 19) name:"processedColor" timestamp:v32];
    [timeProfiler stopWithUTFString:"preprocess color"];
    kdebug_trace();
    if (v124 >= 3)
    {
      kdebug_trace();
      [timeProfiler startWithUTFString:"network execution"];
      if (selfCopy[240] == 1)
      {
        [v127 logPixelBuffer:*(selfCopy + 22) name:"prevDepth" timestamp:v32];
        [v127 logPixelBuffer:*(selfCopy + 23) name:"prevColor" timestamp:v32];
        v54 = *(selfCopy + 24);
        if (v54)
        {
          [v127 logPixelBuffer:v54 name:"prevUncertainty" timestamp:v32];
        }
      }

      execute = [*(selfCopy + 7) execute];
      [v127 logPixelBuffer:*(selfCopy + 25) name:"outputDepth" timestamp:v32];
      [v127 logPixelBuffer:*(selfCopy + 26) name:"outputUncertainty" timestamp:v32];
      if (execute)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_70;
        }

        LOWORD(buf.data) = 0;
        v55 = MEMORY[0x277D86220];
        v56 = "Failed executing network";
LABEL_55:
        _os_log_error_impl(&dword_2402F6000, v55, OS_LOG_TYPE_ERROR, v56, &buf, 2u);
        goto LABEL_70;
      }

      [timeProfiler stopWithUTFString:"network execution"];
      kdebug_trace();
      if (v124 != 3)
      {
        kdebug_trace();
        [timeProfiler startWithUTFString:"postprocess depth"];
        if (!*a10)
        {
          inferenceDescriptor = [*(selfCopy + 18) inferenceDescriptor];
          depthOutput = [inferenceDescriptor depthOutput];
          imageDescriptor = [depthOutput imageDescriptor];
          pixelFormat = [imageDescriptor pixelFormat];
          v141.width = v22;
          v141.height = v24;
          *a10 = PixelBufferUtils::createPixelBuffer(pixelFormat, v141, 1);
        }

        if (a11)
        {
          v87 = *a11;
          if (!*a11)
          {
            inferenceDescriptor2 = [*(selfCopy + 18) inferenceDescriptor];
            uncertaintyOutput = [inferenceDescriptor2 uncertaintyOutput];
            imageDescriptor2 = [uncertaintyOutput imageDescriptor];
            pixelFormat2 = [imageDescriptor2 pixelFormat];
            v142.width = v22;
            v142.height = v24;
            *a11 = PixelBufferUtils::createPixelBuffer(pixelFormat2, v142, 1);

            v87 = *a11;
          }
        }

        else
        {
          v87 = 0;
        }

        Width = CVPixelBufferGetWidth(*(selfCopy + 25));
        execute = [*(selfCopy + 18) postProcessDepth:*(selfCopy + 25) uncertainty:*(selfCopy + 26) filteredPointCloud:v125 outputDepth:*a10 outputUncertainty:v87 depthRoi:{(Width - v22) * 0.5, (CVPixelBufferGetHeight(*(selfCopy + 25)) - v24) * 0.5, v22, v24}];
        if (execute)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_70;
          }

          LOWORD(buf.data) = 0;
          v55 = MEMORY[0x277D86220];
          v56 = "Failed depth post processing";
          goto LABEL_55;
        }

        [v127 logPixelBuffer:*a10 name:"outputProcessedDepth" timestamp:v32];
        [timeProfiler stopWithUTFString:"postprocess depth"];
        kdebug_trace();
        if (v124 >= 5)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"postprocess confidence"];
          if (a11)
          {
            execute = [*(selfCopy + 18) postProcessUncertainty:v87 outputConfidence:*a11 confidenceUnits:0];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              LOWORD(buf.data) = 0;
              v55 = MEMORY[0x277D86220];
              v56 = "Failed uncertainty post processing";
              goto LABEL_55;
            }

            [v127 logPixelBuffer:*a11 name:"outputProcessedConfidence" timestamp:v32];
          }

          [timeProfiler stopWithUTFString:"postprocess confidence"];
          kdebug_trace();
          if (v124 != 5)
          {
            kdebug_trace();
            [timeProfiler startWithUTFString:"postprocess previous depth"];
            if (selfCopy[240] == 1)
            {
              if (*(selfCopy + 27) && *(selfCopy + 28))
              {
                v95 = *(selfCopy + 7);
                inferenceDescriptor3 = [*(selfCopy + 18) inferenceDescriptor];
                prevDepthInput = [inferenceDescriptor3 prevDepthInput];
                inferenceDescriptor4 = [*(selfCopy + 18) inferenceDescriptor];
                depthFeaturesOutput = [inferenceDescriptor4 depthFeaturesOutput];
                execute = [v95 updateFeedbackLoopInputBuffer:selfCopy + 176 inputDescriptor:prevDepthInput outputBuffer:selfCopy + 216 outputDescriptor:depthFeaturesOutput];

                if (execute)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  LOWORD(buf.data) = 0;
                  v55 = MEMORY[0x277D86220];
                  v56 = "Failed updating previous depth buffer";
                  goto LABEL_55;
                }

                v108 = *(selfCopy + 7);
                inferenceDescriptor5 = [*(selfCopy + 18) inferenceDescriptor];
                prevColorInput = [inferenceDescriptor5 prevColorInput];
                inferenceDescriptor6 = [*(selfCopy + 18) inferenceDescriptor];
                colorFeaturesOutput = [inferenceDescriptor6 colorFeaturesOutput];
                execute = [v108 updateFeedbackLoopInputBuffer:selfCopy + 184 inputDescriptor:prevColorInput outputBuffer:selfCopy + 224 outputDescriptor:colorFeaturesOutput];

                if (execute)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  LOWORD(buf.data) = 0;
                  v55 = MEMORY[0x277D86220];
                  v56 = "Failed updating previous color buffer";
                  goto LABEL_55;
                }
              }

              else
              {
                v99 = *(selfCopy + 7);
                inferenceDescriptor7 = [*(selfCopy + 18) inferenceDescriptor];
                prevDepthInput2 = [inferenceDescriptor7 prevDepthInput];
                inferenceDescriptor8 = [*(selfCopy + 18) inferenceDescriptor];
                depthOutput2 = [inferenceDescriptor8 depthOutput];
                execute = [v99 updateFeedbackLoopInputBuffer:selfCopy + 176 inputDescriptor:prevDepthInput2 outputBuffer:selfCopy + 200 outputDescriptor:depthOutput2];

                if (execute)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  LOWORD(buf.data) = 0;
                  v55 = MEMORY[0x277D86220];
                  v56 = "Failed updating previous depth buffer";
                  goto LABEL_55;
                }

                v103 = *(selfCopy + 7);
                inferenceDescriptor9 = [*(selfCopy + 18) inferenceDescriptor];
                prevColorInput2 = [inferenceDescriptor9 prevColorInput];
                inferenceDescriptor10 = [*(selfCopy + 18) inferenceDescriptor];
                colorInput = [inferenceDescriptor10 colorInput];
                execute = [v103 updateFeedbackLoopInputBuffer:selfCopy + 184 inputDescriptor:prevColorInput2 outputBuffer:selfCopy + 152 outputDescriptor:colorInput];

                if (execute)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  LOWORD(buf.data) = 0;
                  v55 = MEMORY[0x277D86220];
                  v56 = "Failed updating previous color buffer";
                  goto LABEL_55;
                }
              }

              inferenceDescriptor11 = [*(selfCopy + 18) inferenceDescriptor];
              prevUncertaintyInput = [inferenceDescriptor11 prevUncertaintyInput];
              v115 = prevUncertaintyInput == 0;

              if (!v115)
              {
                v116 = *(selfCopy + 7);
                inferenceDescriptor12 = [*(selfCopy + 18) inferenceDescriptor];
                prevUncertaintyInput2 = [inferenceDescriptor12 prevUncertaintyInput];
                inferenceDescriptor13 = [*(selfCopy + 18) inferenceDescriptor];
                uncertaintyOutput2 = [inferenceDescriptor13 uncertaintyOutput];
                execute = [v116 updateFeedbackLoopInputBuffer:selfCopy + 192 inputDescriptor:prevUncertaintyInput2 outputBuffer:selfCopy + 208 outputDescriptor:uncertaintyOutput2];

                if (execute)
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_70;
                  }

                  LOWORD(buf.data) = 0;
                  v55 = MEMORY[0x277D86220];
                  v56 = "Failed updating previous uncertainty buffer";
                  goto LABEL_55;
                }
              }
            }

            [timeProfiler stopWithUTFString:"postprocess previous depth"];
            kdebug_trace();
            if (v124 >= 7)
            {
              [selfCopy frameExecutionEnd];
              execute = 0;
              goto LABEL_70;
            }
          }
        }
      }
    }

LABEL_31:
    execute = -22977;
LABEL_70:
    v78 = v125;
LABEL_71:

    goto LABEL_72;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed preparing for executor for engine and ROI", &buf, 2u);
  }

LABEL_21:
  objc_sync_exit(selfCopy);

  kdebug_trace();
  return execute;
}

- (CGSize)expectedOutputSize
{
  inferenceDescriptor = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
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

- (int64_t)prepareForColorROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  kdebug_trace();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inferenceDescriptor = [(ADJasperColorV2Pipeline *)selfCopy->_pipeline inferenceDescriptor];
  v10 = [MEMORY[0x277CED0C0] layoutForSize:{width, height}];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  [imageDescriptor sizeForLayout:v10];
  v14 = v13;
  v16 = v15;

  selfCopy->_colorScaleFactor = v14 / width;
  v17 = (height * (v14 / width));
  selfCopy->_isPaddingRequired = v16 > v17;
  v18 = v16 - v17;
  selfCopy->_paddingLinesTop = (v18 * 0.5);
  v19 = (v18 - (v18 * 0.5));
  selfCopy->_paddingLinesBottom = v19;
  selfCopy->_preScaledPaddingLines = (selfCopy->_paddingLinesTop + v19) / (v14 / width);
  engineType = selfCopy->super._engineType;
  colorInput2 = [inferenceDescriptor colorInput];
  imageDescriptor2 = [colorInput2 imageDescriptor];
  height = [(ADExecutor *)selfCopy prepareForEngineType:engineType roi:imageDescriptor2 descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height)
  {
    height = [(ADJasperColorV2Executor *)selfCopy allocateIntermediateBuffers];
    if (!height)
    {
      PixelBufferUtils::blacken(selfCopy->_itmPrevDepth, v24);
      PixelBufferUtils::blacken(selfCopy->_itmPrevColor, v25);
      if (!selfCopy->_temporalConsistencyWithFeatures)
      {
        PixelBufferUtils::blacken(selfCopy->_itmPrevUncertainty, v26);
      }

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
  [(ADJasperColorV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  inferenceDescriptor = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->super._espressoRunner;
  inferenceDescriptor2 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  jasperInput = [inferenceDescriptor2 jasperInput];
  self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:jasperInput];

  if (self->_temporalConsistencySupported)
  {
    v9 = self->super._espressoRunner;
    inferenceDescriptor3 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    prevDepthInput = [inferenceDescriptor3 prevDepthInput];
    self->_itmPrevDepth = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:prevDepthInput];

    v12 = self->super._espressoRunner;
    inferenceDescriptor4 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    prevColorInput = [inferenceDescriptor4 prevColorInput];
    self->_itmPrevColor = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:prevColorInput];

    LODWORD(prevColorInput) = self->_temporalConsistencyWithFeatures;
    v15 = self->super._espressoRunner;
    inferenceDescriptor5 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    inferenceDescriptor6 = inferenceDescriptor5;
    if (prevColorInput == 1)
    {
      depthFeaturesOutput = [inferenceDescriptor5 depthFeaturesOutput];
      self->_itmDepthFeatures = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:depthFeaturesOutput];

      v19 = self->super._espressoRunner;
      inferenceDescriptor6 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
      colorFeaturesOutput = [inferenceDescriptor6 colorFeaturesOutput];
      v21 = [(ADEspressoRunnerProtocol *)v19 createAndRegisterPixelBufferForDescriptor:colorFeaturesOutput];
      v22 = &OBJC_IVAR___ADJasperColorV2Executor__itmColorFeatures;
    }

    else
    {
      colorFeaturesOutput = [inferenceDescriptor5 prevUncertaintyInput];
      v21 = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:colorFeaturesOutput];
      v22 = &OBJC_IVAR___ADJasperColorV2Executor__itmPrevUncertainty;
    }

    *(&self->super.super.isa + *v22) = v21;
  }

  v23 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:336];
  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  self->_itmPovChangedPointCloud = v23;

  v25 = self->super._espressoRunner;
  inferenceDescriptor7 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  depthOutput = [inferenceDescriptor7 depthOutput];
  self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v25 createAndRegisterPixelBufferForDescriptor:depthOutput];

  v28 = self->super._espressoRunner;
  inferenceDescriptor8 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  uncertaintyOutput = [inferenceDescriptor8 uncertaintyOutput];
  self->_itmUnprocessedUncertainty = [(ADEspressoRunnerProtocol *)v28 createAndRegisterPixelBufferForDescriptor:uncertaintyOutput];

  if (!self->_itmPreProcessedColor || !self->_itmPreProcessedJasper || !self->_itmUnprocessedDepth || !self->_itmUnprocessedUncertainty || !self->_itmPovChangedPointCloud)
  {
    goto LABEL_21;
  }

  if (!self->_temporalConsistencySupported)
  {
    if (!self->_temporalConsistencyWithFeatures)
    {
      return 0;
    }

    goto LABEL_18;
  }

  if (!self->_itmPrevDepth || !self->_itmPrevColor)
  {
    goto LABEL_21;
  }

  if (self->_temporalConsistencyWithFeatures)
  {
LABEL_18:
    if (!self->_itmDepthFeatures || !self->_itmColorFeatures)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (self->_itmPrevUncertainty)
  {
    return 0;
  }

LABEL_21:
  [(ADJasperColorV2Executor *)self deallocateEspressoBuffers];
  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  self->_itmPreProcessedJasper = 0;
  CVPixelBufferRelease(self->_itmPrevDepth);
  self->_itmPrevDepth = 0;
  CVPixelBufferRelease(self->_itmPrevColor);
  self->_itmPrevColor = 0;
  CVPixelBufferRelease(self->_itmPrevUncertainty);
  self->_itmPrevUncertainty = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
  CVPixelBufferRelease(self->_itmUnprocessedUncertainty);
  self->_itmUnprocessedUncertainty = 0;
  CVPixelBufferRelease(self->_itmDepthFeatures);
  self->_itmDepthFeatures = 0;
  CVPixelBufferRelease(self->_itmColorFeatures);
  self->_itmColorFeatures = 0;
}

- (ADJasperColorV2Executor)initWithParameters:(id)parameters prioritization:(int64_t)prioritization engineType:(unint64_t)type
{
  parametersCopy = parameters;
  v23 = 335685812;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  v22.receiver = self;
  v22.super_class = ADJasperColorV2Executor;
  v9 = [(ADExecutor *)&v22 init];
  if (v9)
  {
    if (!parametersCopy)
    {
      parametersCopy = objc_opt_new();
    }

    [(ADExecutor *)v9 setExecutorParameters:parametersCopy];
    v10 = [ADJasperColorV2Pipeline alloc];
    executorParameters = [(ADExecutor *)v9 executorParameters];
    pipelineParameters = [executorParameters pipelineParameters];
    v13 = [(ADJasperColorV2Pipeline *)v10 initWithInputPrioritization:prioritization espressoEngine:type andParameters:pipelineParameters];
    pipeline = v9->_pipeline;
    v9->_pipeline = v13;

    if (!v9->_pipeline)
    {
      v20 = 0;
      goto LABEL_8;
    }

    v9->super._engineType = type;
    v9->_itmPreProcessedColor = 0;
    v9->_colorProcessingSession = 0;
    v9->_itmPreProcessedJasper = 0;
    v9->_itmPrevDepth = 0;
    v9->_itmPrevColor = 0;
    v9->_itmPrevUncertainty = 0;
    v9->_itmUnprocessedDepth = 0;
    v9->_itmUnprocessedUncertainty = 0;
    itmPovChangedPointCloud = v9->_itmPovChangedPointCloud;
    v9->_itmPovChangedPointCloud = 0;

    v9->_itmDepthFeatures = 0;
    v9->_itmColorFeatures = 0;
    v9->_isPrepared = 0;
    inferenceDescriptor = [(ADJasperColorV2Pipeline *)v9->_pipeline inferenceDescriptor];
    prevDepthInput = [inferenceDescriptor prevDepthInput];
    v9->_temporalConsistencySupported = prevDepthInput != 0;

    inferenceDescriptor2 = [(ADJasperColorV2Pipeline *)v9->_pipeline inferenceDescriptor];
    depthFeaturesOutput = [inferenceDescriptor2 depthFeaturesOutput];
    v9->_temporalConsistencyWithFeatures = depthFeaturesOutput != 0;

    v9->_isPaddingRequired = 0;
    v9->_paddingLinesBottom = 0;
    v9->_paddingLinesTop = 0;
    v9->_preScaledPaddingLines = 0.0;
    v9->_colorScaleFactor = 1.0;
  }

  v20 = v9;
LABEL_8:
  kdebug_trace();

  return v20;
}

- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)prioritization engineType:(unint64_t)type
{
  v7 = objc_opt_new();
  v8 = [(ADJasperColorV2Executor *)self initWithParameters:v7 prioritization:prioritization engineType:type];

  return v8;
}

- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)prioritization
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return [(ADJasperColorV2Executor *)self initWithInputPrioritization:prioritization engineType:v5];
}

@end