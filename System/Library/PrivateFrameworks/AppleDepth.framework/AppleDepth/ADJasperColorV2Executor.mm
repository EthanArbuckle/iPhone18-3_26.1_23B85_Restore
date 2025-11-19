@interface ADJasperColorV2Executor
- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)a3;
- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)a3 engineType:(unint64_t)a4;
- (ADJasperColorV2Executor)initWithParameters:(id)a3 prioritization:(int64_t)a4 engineType:(unint64_t)a5;
- (CGSize)expectedOutputSize;
- (id)getIntermediates;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)prepareForColorROI:(CGRect)a3;
- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 jasperToColorTransform:(double)a5 colorCamera:(uint64_t)a6 outputDepthMap:(__CVBuffer *)a7 outputConfidenceMap:(void *)a8;
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

- (uint64_t)executeWithColor:(double)a3 pointCloud:(double)a4 jasperToColorTransform:(double)a5 colorCamera:(uint64_t)a6 outputDepthMap:(__CVBuffer *)a7 outputConfidenceMap:(void *)a8
{
  v140 = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a9;
  v136 = 335683608;
  v137 = 0u;
  v138 = 0u;
  kdebug_trace();
  v18 = a1;
  objc_sync_enter(v18);
  if ((v18[136] & 1) != 0 || (v19 = CVPixelBufferGetWidth(a7), (v20 = [v18 prepareForColorROI:{0.0, 0.0, v19, CVPixelBufferGetHeight(a7)}]) == 0))
  {
    if (!a7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        v25 = MEMORY[0x277D86220];
        v26 = "Must provide input color image";
        goto LABEL_69;
      }

LABEL_20:
      v20 = -22953;
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

    [v18 expectedOutputSize];
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

    v28 = [v18 executorParameters];
    v29 = [v28 logger];

    v127 = v29;
    v30 = [MEMORY[0x277CCAC38] processInfo];
    [v30 systemUptime];
    v32 = v31;

    [v29 logPixelBuffer:a7 name:"inputColor" timestamp:v32];
    [v29 logPointCloud:v16 name:"inputPointCloud" timestamp:v32];
    [v29 logMatrix4x3:"jasper2ColorTransform" name:a2 timestamp:{a3, a4, a5, v32}];
    [v29 logCalibration:v17 name:"colorCameraCalibration" timestamp:v32];
    if (v18[242] == 1)
    {
      v24 = v24 - (*(v18 + 32) + *(v18 + 31));
    }

    v33 = [v18 executorParameters];
    v34 = [v33 stepsToExecute];

    v35 = [v18 executorParameters];
    v128 = [v35 timeProfiler];

    if (v34 < 1)
    {
      v20 = -22977;
LABEL_72:

      goto LABEL_21;
    }

    v124 = v34;
    kdebug_trace();
    [v128 startWithUTFString:"preprocess jasper"];
    [v18 frameExecutionStart];
    if (v16 && [v16 length] >= 1)
    {
      v37 = [*(v18 + 29) capacity];
      if (v37 >= [v16 length])
      {
        [*(v18 + 29) resize:0];
      }

      else
      {
        v38 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:{objc_msgSend(v16, "length")}];
        v39 = *(v18 + 29);
        *(v18 + 29) = v38;
      }

      v121 = v22;
      v122 = v24;
      v57 = v17;
      v58 = v57;
      v60 = *(v18 + 1);
      v59 = *(v18 + 2);
      v61 = *(v18 + 3);
      v62 = *(v18 + 4);
      if (v18[242] == 1)
      {
        v126 = *(v18 + 3);
        v63 = *(v18 + 2);
        v64 = *(v18 + 1);
        v65 = *(v18 + 31);
        v66 = *(v18 + 34);
        v67 = *(v18 + 33);
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
      v20 = [*(v18 + 18) changePointCloudPOV:v16 targetCamera:a2 jasperToCameraTransform:a3 outputPointCloud:{a4, a5}];
      [v127 logPointCloud:*(v18 + 29) name:"povChangedPointCloud" timestamp:v32];
      if (v20)
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

      v74 = *(v18 + 18);
      v75 = *(v18 + 29);
      v76 = *(v18 + 9);
      v77 = *(v18 + 21);
      v135 = 0;
      v20 = [v74 projectJasperPoints:v75 cropTo:v76 rotateBy:v77 projectedPointsBuffer:&v135 filteredPoints:{v60, v59, v61, v62}];
      v125 = v135;
      if (v20)
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
          v79 = [v16 length];
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
        v93 = [v16 length];
        v94 = [v125 length];
        LODWORD(buf.data) = 67109376;
        HIDWORD(buf.data) = v93;
        LOWORD(buf.height) = 1024;
        *(&buf.height + 2) = v94;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ADJasperColorV2Executor: got input point cloud of %u points, %u were used for inference", &buf, 0xEu);
      }

      if (v18[242] == 1)
      {
        CVPixelBufferLockBaseAddress(*(v18 + 21), 0);
        memset(&buf, 0, sizeof(buf));
        PixelBufferUtils::asVImageBuffer(*(v18 + 21), *MEMORY[0x277CBF3A0], &buf);
        data = buf.data;
        rowBytes = buf.rowBytes;
        bzero(buf.data, *(v18 + 31) * buf.rowBytes);
        bzero(&data[(buf.height - *(v18 + 32)) * rowBytes], *(v18 + 32) * rowBytes);
        CVPixelBufferUnlockBaseAddress(*(v18 + 21), 0);
      }

      v22 = v121;
      v24 = v122;
    }

    else
    {
      v125 = 0;
      PixelBufferUtils::blacken(*(v18 + 21), v36);
    }

    [v127 logPixelBuffer:*(v18 + 21) name:"processedJasper" timestamp:v32];
    [v128 stopWithUTFString:"preprocess jasper"];
    kdebug_trace();
    if (v124 == 1)
    {
      goto LABEL_31;
    }

    kdebug_trace();
    [v128 startWithUTFString:"preprocess color"];
    v40 = *(v18 + 20);
    if (!v40)
    {
LABEL_38:
      CVPixelBufferGetWidth(a7);
      CVPixelBufferGetHeight(a7);
      CVPixelBufferGetPixelFormatType(a7);
      CVPixelBufferGetWidth(*(v18 + 19));
      CVPixelBufferGetHeight(*(v18 + 19));
      CVPixelBufferGetPixelFormatType(*(v18 + 19));
      PixelBufferUtilsSession::createCropScaleConvertRotateSession();
    }

    if (!PixelBufferUtilsSession::verifyInput(v40, a7) || !PixelBufferUtilsSession::verifyOutput(*(v18 + 20), *(v18 + 19)))
    {
      v41 = *(v18 + 20);
      if (v41)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(v41);
        MEMORY[0x245CBFCB0]();
      }

      goto LABEL_38;
    }

    if ((PixelBufferUtilsSession::run(*(v18 + 20), a7, *(v18 + 19)) & 1) == 0)
    {
      v78 = v125;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed scaling color image", &buf, 2u);
      }

      v20 = -22950;
      goto LABEL_71;
    }

    v42 = v127;
    if (v18[242] == 1)
    {
      CVPixelBufferLockBaseAddress(*(v18 + 19), 0);
      memset(&buf, 0, sizeof(buf));
      PixelBufferUtils::asVImageBuffer(*(v18 + 19), *MEMORY[0x277CBF3A0], &buf);
      v43 = *(v18 + 31);
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
          v43 = *(v18 + 31);
          ++v45;
        }

        while (v43 > v44);
      }

      v48 = *(v18 + 32);
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
          v48 = *(v18 + 32);
          ++v51;
        }

        while (v48 > v49);
      }

      CVPixelBufferUnlockBaseAddress(*(v18 + 19), 0);
      v42 = v127;
    }

    [v42 logPixelBuffer:*(v18 + 19) name:"processedColor" timestamp:v32];
    [v128 stopWithUTFString:"preprocess color"];
    kdebug_trace();
    if (v124 >= 3)
    {
      kdebug_trace();
      [v128 startWithUTFString:"network execution"];
      if (v18[240] == 1)
      {
        [v127 logPixelBuffer:*(v18 + 22) name:"prevDepth" timestamp:v32];
        [v127 logPixelBuffer:*(v18 + 23) name:"prevColor" timestamp:v32];
        v54 = *(v18 + 24);
        if (v54)
        {
          [v127 logPixelBuffer:v54 name:"prevUncertainty" timestamp:v32];
        }
      }

      v20 = [*(v18 + 7) execute];
      [v127 logPixelBuffer:*(v18 + 25) name:"outputDepth" timestamp:v32];
      [v127 logPixelBuffer:*(v18 + 26) name:"outputUncertainty" timestamp:v32];
      if (v20)
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

      [v128 stopWithUTFString:"network execution"];
      kdebug_trace();
      if (v124 != 3)
      {
        kdebug_trace();
        [v128 startWithUTFString:"postprocess depth"];
        if (!*a10)
        {
          v83 = [*(v18 + 18) inferenceDescriptor];
          v84 = [v83 depthOutput];
          v85 = [v84 imageDescriptor];
          v86 = [v85 pixelFormat];
          v141.width = v22;
          v141.height = v24;
          *a10 = PixelBufferUtils::createPixelBuffer(v86, v141, 1);
        }

        if (a11)
        {
          v87 = *a11;
          if (!*a11)
          {
            v88 = [*(v18 + 18) inferenceDescriptor];
            v89 = [v88 uncertaintyOutput];
            v90 = [v89 imageDescriptor];
            v91 = [v90 pixelFormat];
            v142.width = v22;
            v142.height = v24;
            *a11 = PixelBufferUtils::createPixelBuffer(v91, v142, 1);

            v87 = *a11;
          }
        }

        else
        {
          v87 = 0;
        }

        Width = CVPixelBufferGetWidth(*(v18 + 25));
        v20 = [*(v18 + 18) postProcessDepth:*(v18 + 25) uncertainty:*(v18 + 26) filteredPointCloud:v125 outputDepth:*a10 outputUncertainty:v87 depthRoi:{(Width - v22) * 0.5, (CVPixelBufferGetHeight(*(v18 + 25)) - v24) * 0.5, v22, v24}];
        if (v20)
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
        [v128 stopWithUTFString:"postprocess depth"];
        kdebug_trace();
        if (v124 >= 5)
        {
          kdebug_trace();
          [v128 startWithUTFString:"postprocess confidence"];
          if (a11)
          {
            v20 = [*(v18 + 18) postProcessUncertainty:v87 outputConfidence:*a11 confidenceUnits:0];
            if (v20)
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

          [v128 stopWithUTFString:"postprocess confidence"];
          kdebug_trace();
          if (v124 != 5)
          {
            kdebug_trace();
            [v128 startWithUTFString:"postprocess previous depth"];
            if (v18[240] == 1)
            {
              if (*(v18 + 27) && *(v18 + 28))
              {
                v95 = *(v18 + 7);
                v131 = [*(v18 + 18) inferenceDescriptor];
                v96 = [v131 prevDepthInput];
                v97 = [*(v18 + 18) inferenceDescriptor];
                v98 = [v97 depthFeaturesOutput];
                v20 = [v95 updateFeedbackLoopInputBuffer:v18 + 176 inputDescriptor:v96 outputBuffer:v18 + 216 outputDescriptor:v98];

                if (v20)
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

                v108 = *(v18 + 7);
                v109 = [*(v18 + 18) inferenceDescriptor];
                v110 = [v109 prevColorInput];
                v111 = [*(v18 + 18) inferenceDescriptor];
                v112 = [v111 colorFeaturesOutput];
                v20 = [v108 updateFeedbackLoopInputBuffer:v18 + 184 inputDescriptor:v110 outputBuffer:v18 + 224 outputDescriptor:v112];

                if (v20)
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
                v99 = *(v18 + 7);
                v132 = [*(v18 + 18) inferenceDescriptor];
                v100 = [v132 prevDepthInput];
                v101 = [*(v18 + 18) inferenceDescriptor];
                v102 = [v101 depthOutput];
                v20 = [v99 updateFeedbackLoopInputBuffer:v18 + 176 inputDescriptor:v100 outputBuffer:v18 + 200 outputDescriptor:v102];

                if (v20)
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

                v103 = *(v18 + 7);
                v104 = [*(v18 + 18) inferenceDescriptor];
                v105 = [v104 prevColorInput];
                v106 = [*(v18 + 18) inferenceDescriptor];
                v107 = [v106 colorInput];
                v20 = [v103 updateFeedbackLoopInputBuffer:v18 + 184 inputDescriptor:v105 outputBuffer:v18 + 152 outputDescriptor:v107];

                if (v20)
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

              v113 = [*(v18 + 18) inferenceDescriptor];
              v114 = [v113 prevUncertaintyInput];
              v115 = v114 == 0;

              if (!v115)
              {
                v116 = *(v18 + 7);
                v117 = [*(v18 + 18) inferenceDescriptor];
                v118 = [v117 prevUncertaintyInput];
                v119 = [*(v18 + 18) inferenceDescriptor];
                v120 = [v119 uncertaintyOutput];
                v20 = [v116 updateFeedbackLoopInputBuffer:v18 + 192 inputDescriptor:v118 outputBuffer:v18 + 208 outputDescriptor:v120];

                if (v20)
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

            [v128 stopWithUTFString:"postprocess previous depth"];
            kdebug_trace();
            if (v124 >= 7)
            {
              [v18 frameExecutionEnd];
              v20 = 0;
              goto LABEL_70;
            }
          }
        }
      }
    }

LABEL_31:
    v20 = -22977;
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
  objc_sync_exit(v18);

  kdebug_trace();
  return v20;
}

- (CGSize)expectedOutputSize
{
  v3 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
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

- (int64_t)prepareForColorROI:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  kdebug_trace();
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ADJasperColorV2Pipeline *)v8->_pipeline inferenceDescriptor];
  v10 = [MEMORY[0x277CED0C0] layoutForSize:{width, height}];
  v11 = [v9 colorInput];
  v12 = [v11 imageDescriptor];
  [v12 sizeForLayout:v10];
  v14 = v13;
  v16 = v15;

  v8->_colorScaleFactor = v14 / width;
  v17 = (height * (v14 / width));
  v8->_isPaddingRequired = v16 > v17;
  v18 = v16 - v17;
  v8->_paddingLinesTop = (v18 * 0.5);
  v19 = (v18 - (v18 * 0.5));
  v8->_paddingLinesBottom = v19;
  v8->_preScaledPaddingLines = (v8->_paddingLinesTop + v19) / (v14 / width);
  engineType = v8->super._engineType;
  v21 = [v9 colorInput];
  v22 = [v21 imageDescriptor];
  v23 = [(ADExecutor *)v8 prepareForEngineType:engineType roi:v22 descriptorForROI:1 exifOrientation:2 rotationPreference:v9 inferenceDescriptor:x, y, width, height];

  if (!v23)
  {
    v23 = [(ADJasperColorV2Executor *)v8 allocateIntermediateBuffers];
    if (!v23)
    {
      PixelBufferUtils::blacken(v8->_itmPrevDepth, v24);
      PixelBufferUtils::blacken(v8->_itmPrevColor, v25);
      if (!v8->_temporalConsistencyWithFeatures)
      {
        PixelBufferUtils::blacken(v8->_itmPrevUncertainty, v26);
      }

      colorProcessingSession = v8->_colorProcessingSession;
      if (colorProcessingSession)
      {
        PixelBufferUtilsSession::~PixelBufferUtilsSession(colorProcessingSession);
        MEMORY[0x245CBFCB0]();
      }

      v23 = 0;
      v8->_colorProcessingSession = 0;
      v8->_isPrepared = 1;
    }
  }

  objc_sync_exit(v8);
  kdebug_trace();
  return v23;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADJasperColorV2Executor *)self deallocateEspressoBuffers];
  espressoRunner = self->super._espressoRunner;
  v4 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  v5 = [v4 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunnerProtocol *)espressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->super._espressoRunner;
  v7 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  v8 = [v7 jasperInput];
  self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)v6 createAndRegisterPixelBufferForDescriptor:v8];

  if (self->_temporalConsistencySupported)
  {
    v9 = self->super._espressoRunner;
    v10 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    v11 = [v10 prevDepthInput];
    self->_itmPrevDepth = [(ADEspressoRunnerProtocol *)v9 createAndRegisterPixelBufferForDescriptor:v11];

    v12 = self->super._espressoRunner;
    v13 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    v14 = [v13 prevColorInput];
    self->_itmPrevColor = [(ADEspressoRunnerProtocol *)v12 createAndRegisterPixelBufferForDescriptor:v14];

    LODWORD(v14) = self->_temporalConsistencyWithFeatures;
    v15 = self->super._espressoRunner;
    v16 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
    v17 = v16;
    if (v14 == 1)
    {
      v18 = [v16 depthFeaturesOutput];
      self->_itmDepthFeatures = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:v18];

      v19 = self->super._espressoRunner;
      v17 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
      v20 = [v17 colorFeaturesOutput];
      v21 = [(ADEspressoRunnerProtocol *)v19 createAndRegisterPixelBufferForDescriptor:v20];
      v22 = &OBJC_IVAR___ADJasperColorV2Executor__itmColorFeatures;
    }

    else
    {
      v20 = [v16 prevUncertaintyInput];
      v21 = [(ADEspressoRunnerProtocol *)v15 createAndRegisterPixelBufferForDescriptor:v20];
      v22 = &OBJC_IVAR___ADJasperColorV2Executor__itmPrevUncertainty;
    }

    *(&self->super.super.isa + *v22) = v21;
  }

  v23 = [objc_alloc(MEMORY[0x277CED0E8]) initWithCapacity:336];
  itmPovChangedPointCloud = self->_itmPovChangedPointCloud;
  self->_itmPovChangedPointCloud = v23;

  v25 = self->super._espressoRunner;
  v26 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  v27 = [v26 depthOutput];
  self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v25 createAndRegisterPixelBufferForDescriptor:v27];

  v28 = self->super._espressoRunner;
  v29 = [(ADJasperColorV2Pipeline *)self->_pipeline inferenceDescriptor];
  v30 = [v29 uncertaintyOutput];
  self->_itmUnprocessedUncertainty = [(ADEspressoRunnerProtocol *)v28 createAndRegisterPixelBufferForDescriptor:v30];

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

- (ADJasperColorV2Executor)initWithParameters:(id)a3 prioritization:(int64_t)a4 engineType:(unint64_t)a5
{
  v8 = a3;
  v23 = 335685812;
  v24 = 0u;
  v25 = 0u;
  kdebug_trace();
  v22.receiver = self;
  v22.super_class = ADJasperColorV2Executor;
  v9 = [(ADExecutor *)&v22 init];
  if (v9)
  {
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    [(ADExecutor *)v9 setExecutorParameters:v8];
    v10 = [ADJasperColorV2Pipeline alloc];
    v11 = [(ADExecutor *)v9 executorParameters];
    v12 = [v11 pipelineParameters];
    v13 = [(ADJasperColorV2Pipeline *)v10 initWithInputPrioritization:a4 espressoEngine:a5 andParameters:v12];
    pipeline = v9->_pipeline;
    v9->_pipeline = v13;

    if (!v9->_pipeline)
    {
      v20 = 0;
      goto LABEL_8;
    }

    v9->super._engineType = a5;
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
    v16 = [(ADJasperColorV2Pipeline *)v9->_pipeline inferenceDescriptor];
    v17 = [v16 prevDepthInput];
    v9->_temporalConsistencySupported = v17 != 0;

    v18 = [(ADJasperColorV2Pipeline *)v9->_pipeline inferenceDescriptor];
    v19 = [v18 depthFeaturesOutput];
    v9->_temporalConsistencyWithFeatures = v19 != 0;

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

- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)a3 engineType:(unint64_t)a4
{
  v7 = objc_opt_new();
  v8 = [(ADJasperColorV2Executor *)self initWithParameters:v7 prioritization:a3 engineType:a4];

  return v8;
}

- (ADJasperColorV2Executor)initWithInputPrioritization:(int64_t)a3
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return [(ADJasperColorV2Executor *)self initWithInputPrioritization:a3 engineType:v5];
}

@end