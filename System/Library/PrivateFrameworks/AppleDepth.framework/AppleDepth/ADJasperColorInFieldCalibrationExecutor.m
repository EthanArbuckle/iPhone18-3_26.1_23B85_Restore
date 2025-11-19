@interface ADJasperColorInFieldCalibrationExecutor
+ (id)defaults;
- (id)initForEngineType:(unint64_t)a3;
- (id)initForEngineType:(unint64_t)a3 andExecutorParameters:(id)a4;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executePreprocessedInputsWithInterSessionData:(id)a3 outResult:(id)a4;
- (int64_t)prepare;
- (uint64_t)preprocessInputColorFrame:(double)a3 colorPose:(double)a4 jasperPointClouds:(double)a5 jasperPoses:(double)a6 jasperCameraCalibration:(uint64_t)a7 colorCameraCalibration:(uint64_t)a8 timestamp:(void *)a9 colorMetadata:(uint64_t)a10;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)setColorCameraCalibration:(id)a3;
- (void)setJasperCameraCalibration:(id)a3;
@end

@implementation ADJasperColorInFieldCalibrationExecutor

- (int64_t)executePreprocessedInputsWithInterSessionData:(id)a3 outResult:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v7 setExecutionStatus:-22950];
  v8 = [(ADExecutor *)self executorParameters];
  v9 = [v8 logger];
  v10 = [v6 persistenceData];
  [v9 logDictionary:v10 name:"inputIntersessionData" timestamp:self->_lastColorTimestamp];

  if ([v6 intersessionFeaturesHistoryCount])
  {
    v11 = [v6 intersessionFeaturesHistoryCount];
    v12 = [(ADExecutor *)self executorParameters];
    v13 = [v12 pipelineParameters];
    v14 = [v13 featuresVectorAggregationSize];

    if (v11 <= v14)
    {
      self->_backendResultAggregationCounter = [v6 intersessionFeaturesHistoryCount];
      backendResultAggregated = self->_backendResultAggregated;
      v19 = [v6 intersessionFeaturesHistory];
      v20 = [v19 bytes];
      v21 = [v6 intersessionFeaturesHistory];
      memcpy(backendResultAggregated, v20, [v21 length]);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v6 intersessionFeaturesHistoryCount];
      v16 = [(ADExecutor *)self executorParameters];
      v17 = [v16 pipelineParameters];
      *buf = 67109376;
      *v117 = v15;
      *&v117[4] = 1024;
      *&v117[6] = [v17 featuresVectorAggregationSize];
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "mismatch intersession features count of %d against aggregation size of %d, history will not be loaded", buf, 0xEu);
    }
  }

  if (self->_preProcessInputColorFrameDone)
  {
    self->_preProcessInputColorFrameDone = 0;
    [v7 setExecuted:0];
    v22 = [v6 inFieldCalibrationTelemetryData];
    [v22 updateValidPointsSum:{-[ADJasperPointCloud length](self->_aggregatedPointCloud, "length")}];
    if (!self->_isPrepared)
    {
      v28 = -22970;
LABEL_43:

      goto LABEL_44;
    }

    if (!self->_backendEspressoRunner || !self->_frontendEspressoRunner)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing executor", buf, 2u);
      }

      v28 = -22960;
      goto LABEL_43;
    }

    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to ADJasperColorInFieldCalibrationResult", buf, 2u);
      }

      v28 = -22953;
      goto LABEL_43;
    }

    v23 = [(ADExecutor *)self executorParameters];
    v114 = [v23 stepsToExecute];

    v24 = [(ADExecutor *)self executorParameters];
    v115 = [v24 timeProfiler];

    v112 = v114 - 1;
    if (v114 < 1)
    {
      goto LABEL_41;
    }

    kdebug_trace();
    [v115 startWithUTFString:"first network execution"];
    [(ADExecutor *)self frameExecutionStart];
    v25 = [(ADExecutor *)self executorParameters];
    v26 = [v25 timeProfiler];
    [v26 start:@"BackendProcess"];

    v27 = +[ADTimeProfiler currentTimeUsec];
    v28 = [(ADEspressoRunner *)self->_backendEspressoRunner execute];
    [v22 reportBackendRunTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec") - v27}];
    if (v28)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
LABEL_42:

        goto LABEL_43;
      }

      *buf = 0;
      v29 = MEMORY[0x277D86220];
      v30 = "failed executing backend";
LABEL_15:
      _os_log_error_impl(&dword_2402F6000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
      goto LABEL_42;
    }

    v31 = [(ADExecutor *)self executorParameters];
    v32 = [v31 timeProfiler];
    [v32 stop:@"BackendProcess"];

    v33 = [(ADExecutor *)self executorParameters];
    v34 = [v33 logger];
    [v34 logRawBuffer:-[ADEspressoBufferHandle data](self->_featuresOutputEspressoBufferHandle size:"data") name:self->_backendSingleResultSize timestamp:{"featureVectorItr", self->_lastColorTimestamp}];

    memcpy(self->_backendResultAggregated + self->_backendSingleResultSize * self->_backendResultAggregationCounter, [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle data], self->_backendSingleResultSize);
    backendResultAggregationCounter = self->_backendResultAggregationCounter + 1;
    self->_backendResultAggregationCounter = backendResultAggregationCounter;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(ADExecutor *)self executorParameters];
      v37 = [v36 pipelineParameters];
      v38 = [v37 featuresVectorAggregationSize];
      *buf = 67109376;
      *v117 = backendResultAggregationCounter;
      *&v117[4] = 1024;
      *&v117[6] = v38;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "executeForPreprocesed features index %d/%d", buf, 0xEu);

      backendResultAggregationCounter = self->_backendResultAggregationCounter;
    }

    v39 = [(ADExecutor *)self executorParameters];
    v40 = [v39 pipelineParameters];
    v41 = backendResultAggregationCounter < [v40 featuresVectorAggregationSize];

    if (v41)
    {
      [v7 setExecutionStatus:-22973];
      v42 = "first network execution";
    }

    else
    {
      v45 = [(ADExecutor *)self executorParameters];
      v46 = [v45 timeProfiler];
      [v46 start:@"FrontendProcess"];

      v113 = +[ADTimeProfiler currentTimeUsec];
      self->_backendResultAggregationCounter = 0;
      [v115 stopWithUTFString:"first network execution"];
      kdebug_trace();
      if (v114 == 1)
      {
        goto LABEL_41;
      }

      kdebug_trace();
      [v115 startWithUTFString:"preprocess features"];
      pipeline = self->_pipeline;
      v48 = self->_backendResultAggregated;
      v49 = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle data];
      v50 = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensions];
      v28 = [(ADJasperColorInFieldCalibrationPipeline *)pipeline processIntermediateResultsWithBackendFeaturesOutputVector:v48 frontendEspressoFeaturesInput:v49 dimensions:v50];

      if (v28)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v29 = MEMORY[0x277D86220];
        v30 = "failed processing intermediate results (backend features vector output to frontend features input)";
        goto LABEL_15;
      }

      [v115 stopWithUTFString:"preprocess features"];
      kdebug_trace();
      if (v114 < 3)
      {
        goto LABEL_41;
      }

      kdebug_trace();
      [v115 startWithUTFString:"second network execution"];
      v28 = [(ADEspressoRunner *)self->_frontendEspressoRunner execute];
      if (v28)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v29 = MEMORY[0x277D86220];
        v30 = "failed executing frontend";
        goto LABEL_15;
      }

      v52 = +[ADTimeProfiler currentTimeUsec];
      v53 = [(ADExecutor *)self executorParameters];
      v54 = [v53 timeProfiler];
      [v54 stop:@"FrontendProcess"];

      [v22 reportFrontendRunTime:v52 - v113];
      v55 = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle dimensionsProduct];
      frontendFeaturesInputElementSize = self->_frontendFeaturesInputElementSize;
      v57 = [(ADExecutor *)self executorParameters];
      v58 = [v57 logger];
      [v58 logRawBuffer:-[ADEspressoBufferHandle data](self->_frontendFeaturesInputEspressoBufferHandle size:"data") name:frontendFeaturesInputElementSize * v55 timestamp:{"featureVectorAvg", self->_lastColorTimestamp}];

      [v115 stopWithUTFString:"second network execution"];
      kdebug_trace();
      if (v114 == 3)
      {
LABEL_41:
        v28 = -22977;
        goto LABEL_42;
      }

      kdebug_trace();
      [v115 startWithUTFString:"postprocess rotation"];
      v59 = [(ADExecutor *)self executorParameters];
      v60 = [v59 timeProfiler];
      [v60 start:@"PostProcess"];

      v28 = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline postProcessFrontendOutputX:[(ADEspressoBufferHandle *)self->_frontendRotXOutputEspressoBufferHandle data] frontendOutputY:[(ADEspressoBufferHandle *)self->_frontendRotYOutputEspressoBufferHandle data] frontendOutputZ:[(ADEspressoBufferHandle *)self->_frontendRotZOutputEspressoBufferHandle data] frontendOutputErrorX:[(ADEspressoBufferHandle *)self->_frontendRotErrorXOutputEspressoBufferHandle data] frontendOutputErrotY:[(ADEspressoBufferHandle *)self->_frontendRotErrorYOutputEspressoBufferHandle data] frontendOutputErrorZ:[(ADEspressoBufferHandle *)self->_frontendRotErrorZOutputEspressoBufferHandle data] interSessionData:v6 jasperColorInFieldCalibrationResult:v7];
      if (v28)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v29 = MEMORY[0x277D86220];
        v30 = "failed post processing pipeline results";
        goto LABEL_15;
      }

      v61 = [(ADExecutor *)self executorParameters];
      v62 = [v61 timeProfiler];
      [v62 stop:@"PostProcess"];

      v63 = [(ADExecutor *)self executorParameters];
      v64 = [v63 logger];
      v65 = [v7 dictionaryRepresentation];
      [v64 logDictionary:v65 name:"internalUseResults" timestamp:self->_lastColorTimestamp];

      v66 = [(ADExecutor *)self executorParameters];
      v67 = [v66 logger];
      [v7 jasperToColorExtrinsics];
      [v67 logMatrix4x3:"depthToColorExtrinsics" name:? timestamp:?];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 preRelative2FactoryX];
        v69 = v68;
        [v7 preRelative2FactoryY];
        v71 = v70;
        [v7 preRelative2FactoryZ];
        *buf = 134218496;
        *v117 = v69;
        *&v117[8] = 2048;
        *&v117[10] = v71;
        v118 = 2048;
        v119 = v72;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results relative to factory [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 postRelative2FactoryX];
        v74 = v73;
        [v7 postRelative2FactoryY];
        v76 = v75;
        [v7 postRelative2FactoryZ];
        *buf = 134218496;
        *v117 = v74;
        *&v117[8] = 2048;
        *&v117[10] = v76;
        v118 = 2048;
        v119 = v77;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results relative to factory post ISF [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 deltaRotationX];
        v79 = v78;
        [v7 deltaRotationY];
        v81 = v80;
        [v7 deltaRotationZ];
        *buf = 134218496;
        *v117 = v79;
        *&v117[8] = 2048;
        *&v117[10] = v81;
        v118 = 2048;
        v119 = v82;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results relative to previouse [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 postRelative2PrevX];
        v84 = v83;
        [v7 postRelative2PrevY];
        v86 = v85;
        [v7 postRelative2PrevZ];
        *buf = 134218496;
        *v117 = v84;
        *&v117[8] = 2048;
        *&v117[10] = v86;
        v118 = 2048;
        v119 = v87;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results relative to previouse post ISF [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 absoluteRotationX];
        v89 = v88;
        [v7 absoluteRotationY];
        v91 = v90;
        [v7 absoluteRotationZ];
        *buf = 134218496;
        *v117 = v89;
        *&v117[8] = 2048;
        *&v117[10] = v91;
        v118 = 2048;
        v119 = v92;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results absolute [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 absoluteRotationPostISFX];
        v94 = v93;
        [v7 absoluteRotationPostISFY];
        v96 = v95;
        [v7 absoluteRotationPostISFZ];
        *buf = 134218496;
        *v117 = v94;
        *&v117[8] = 2048;
        *&v117[10] = v96;
        v118 = 2048;
        v119 = v97;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run results absolute post ISF [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 factoryRotationX];
        v99 = v98;
        [v7 factoryRotationY];
        v101 = v100;
        [v7 factoryRotationZ];
        *buf = 134218496;
        *v117 = v99;
        *&v117[8] = 2048;
        *&v117[10] = v101;
        v118 = 2048;
        v119 = v102;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run factory [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [v7 stdX];
        v104 = v103;
        [v7 stdY];
        v106 = v105;
        [v7 stdZ];
        *buf = 134218496;
        *v117 = v104;
        *&v117[8] = 2048;
        *&v117[10] = v106;
        v118 = 2048;
        v119 = v107;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run std [%f, %f, %f]", buf, 0x20u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v108 = [v7 executed];
        [v7 confidence];
        *buf = 67109376;
        *v117 = v108;
        *&v117[4] = 2048;
        *&v117[6] = v109;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run executed: %d with std: %f]", buf, 0x12u);
      }

      [v22 increaseRunTimesByOne];
      [v22 updateLastExecutionTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec")}];
      v110 = [(ADExecutor *)self executorParameters];
      v111 = [v110 reportTelemetry];

      v112 = v114 - 4;
      if (v111)
      {
        [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline reportTelemetry:v7 withInterSessionData:v6];
        [v22 reset];
      }

      v42 = "postprocess rotation";
    }

    [v6 setIntersessionFeaturesHistoryCount:self->_backendResultAggregationCounter];
    v43 = self->_backendResultAggregationCounter;
    if (v43)
    {
      v44 = [MEMORY[0x277CBEA90] dataWithBytes:self->_backendResultAggregated length:self->_backendSingleResultSize * v43];
    }

    else
    {
      v44 = objc_opt_new();
    }

    [v6 setIntersessionFeaturesHistory:v44];

    [v115 stopWithUTFString:v42];
    kdebug_trace();
    if (v112)
    {
      [(ADExecutor *)self frameExecutionEnd];
      v28 = 0;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "running executeForPreprocesed before preProcessInputColorFrame called", buf, 2u);
  }

  v28 = -22961;
LABEL_44:

  return v28;
}

- (uint64_t)preprocessInputColorFrame:(double)a3 colorPose:(double)a4 jasperPointClouds:(double)a5 jasperPoses:(double)a6 jasperCameraCalibration:(uint64_t)a7 colorCameraCalibration:(uint64_t)a8 timestamp:(void *)a9 colorMetadata:(uint64_t)a10
{
  v18 = a9;
  v86 = a11;
  v87 = a12;
  v19 = a13;
  v88 = v19;
  if (a6 == 0.0 && v19 != 0)
  {
    [MEMORY[0x277CED070] getMidExposureTimestampFromMetadataDictionary:v19];
    a6 = v21;
  }

  v22 = 0;
  *(a1 + 296) = a6;
  while (1)
  {
    v23 = v22;
    if ([v18 count] <= v22)
    {
      break;
    }

    v24 = [a1 executorParameters];
    v25 = [v24 logger];
    v26 = [v18 objectAtIndexedSubscript:v23];
    *(&v90.__r_.__value_.__s + 23) = 15;
    strcpy(&v90, "inputPointCloud");
    std::to_string(&v89, v23);
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v89;
    }

    else
    {
      v27 = v89.__r_.__value_.__r.__words[0];
    }

    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v89.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v90, v27, size);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v92 = v29->__r_.__value_.__r.__words[2];
    *buf = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    if (v92 >= 0)
    {
      v31 = buf;
    }

    else
    {
      v31 = *buf;
    }

    [v25 logPointCloud:v26 name:v31 timestamp:*(a1 + 296)];
    if (SHIBYTE(v92) < 0)
    {
      operator delete(*buf);
      if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    else if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v89.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    operator delete(v90.__r_.__value_.__l.__data_);
LABEL_8:

    v22 = v23 + 1;
  }

  *(a1 + 304) = 0;
  [a1 setColorCameraCalibration:v87];
  [a1 setJasperCameraCalibration:v86];
  v32 = [a1 executorParameters];
  v33 = [v32 stepsToExecute];

  v34 = [a1 executorParameters];
  v35 = [v34 timeProfiler];

  if (v33 < 1)
  {
    goto LABEL_34;
  }

  kdebug_trace();
  [v35 startWithUTFString:"preprocess color"];
  [a1 frameExecutionStart];
  v36 = [a1 executorParameters];
  v37 = [v36 timeProfiler];
  [v37 start:@"preprocessColor"];

  v38 = [a1 executorParameters];
  v39 = [v38 logger];
  [v39 logPixelBuffer:a8 name:"inputColor" timestamp:*(a1 + 296)];

  if (v88 && (([a1 executorParameters], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "logger"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "logDictionary:name:timestamp:", v88, "inputColorMetadata", *(a1 + 296)), v41, v40, *(a1 + 308)) || objc_msgSend(v18, "count") >= 3) && (objc_msgSend(*(a1 + 312), "isAngularVelocityValid:", v88) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration preprocessInputColorFrameImpl fail for to high angular velocity", buf, 2u);
    }

    v42 = -22964;
  }

  else
  {
    v42 = [*(a1 + 312) preProcessColor:a8 processedColor:*(a1 + 176) referenceCameraCalibration:*(a1 + 160) colorCameraCalibration:*(a1 + 320) colorMetadata:v88];
    v43 = [a1 executorParameters];
    v44 = [v43 timeProfiler];
    [v44 stop:@"preprocessColor"];

    v45 = [a1 executorParameters];
    v46 = [v45 logger];
    [v46 logPixelBuffer:*(a1 + 176) name:"processedColor" timestamp:*(a1 + 296)];

    if (v42)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preProcessColor jasper", buf, 2u);
      }

      goto LABEL_46;
    }

    [v35 stopWithUTFString:"preprocess color"];
    kdebug_trace();
    if (v33 == 1)
    {
LABEL_34:
      v42 = -22977;
      goto LABEL_46;
    }

    kdebug_trace();
    [v35 startWithUTFString:"preprocess jasper"];
    [*(a1 + 160) cameraToPlatformTransform];
    v81 = v47;
    v82 = v48;
    v80 = v49;
    v83 = v50;
    [*(a1 + 328) cameraToPlatformTransform];
    v76 = v51;
    v77 = v52;
    v78 = v53;
    v79 = v54;
    v55 = [a1 executorParameters];
    v56 = [v55 timeProfiler];
    [v56 start:@"AggregateAndProjectJasperPoints"];

    v85 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:v18];
    v57 = [*(a1 + 312) pipelineParameters];
    v58 = [v57 pointCloudFilterParameters];
    v59 = [v85 pointCloudByApplyingFilter:v58];
    v60 = vzip1q_s32(vzip2q_s32(v81, v80), vdupq_laneq_s32(v82, 2));
    v61 = vzip1q_s32(v81, v80);
    v62 = vtrn2q_s32(v81, v82);
    v62.i32[2] = v80.i32[1];
    v63 = vzip1q_s32(v61, v82);
    v64 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v83.f32[0]), v62, *v83.f32, 1), v60, v83, 2));
    v64.i32[3] = 1.0;
    v60.i32[3] = 0;
    v65 = vzip2q_s32(v61, vdupq_lane_s32(*v82.i8, 1));
    v65.i32[3] = 0;
    v63.i32[3] = 0;
    v82.i64[0] = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v76.f32[0]), v65, *v76.f32, 1), v60, v76, 2), 0, v64).u64[0];
    v81.i64[0] = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v77.f32[0]), v65, *v77.f32, 1), v60, v77, 2), 0, v64).u64[0];
    v79.i64[0] = vaddq_f32(v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v79.f32[0]), v65, *v79.f32, 1), v60, v79, 2)).u64[0];
    v80.i64[0] = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v78.f32[0]), v65, *v78.f32, 1), v60, v78, 2), 0, v64).u64[0];

    v66 = [v59 pointCloudByChangingPointOfViewByTransform:*(a1 + 160) to:{*v82.i64, *v81.i64, *v80.i64, *v79.i64}];
    v67 = *(a1 + 168);
    *(a1 + 168) = v66;

    v68 = [a1 executorParameters];
    v69 = [v68 logger];
    [v69 logPointCloud:*(a1 + 168) name:"aggregatedJasper" timestamp:*(a1 + 296)];

    v42 = [*(a1 + 312) preProcessJasper:*(a1 + 168) referenceCameraCalibration:*(a1 + 160) jasperCameraCalibration:*(a1 + 328) reprojectedPointsBuffer:*(a1 + 184)];
    v70 = [a1 executorParameters];
    v71 = [v70 timeProfiler];
    v72 = v59;
    [v71 stop:@"AggregateAndProjectJasperPoints"];

    if (v42)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preProcessJasper jasper", buf, 2u);
      }
    }

    else
    {
      v73 = [a1 executorParameters];
      v74 = [v73 logger];
      [v74 logPixelBuffer:*(a1 + 184) name:"jasperProcessed" timestamp:*(a1 + 296)];

      [v35 stopWithUTFString:"preprocess jasper"];
      kdebug_trace();
      if (v33 >= 3)
      {
        [a1 frameExecutionEnd];
        v42 = 0;
        *(a1 + 304) = 1;
      }

      else
      {
        v42 = -22977;
      }

      v72 = v59;
    }
  }

LABEL_46:

  return v42;
}

- (void)setColorCameraCalibration:(id)a3
{
  v15 = a3;
  v4 = [(ADExecutor *)self executorParameters];
  v5 = [v4 logger];
  [v5 logCalibration:v15 name:"inputColorCalibration" timestamp:self->_lastColorTimestamp];

  colorCameraCalibration = self->_colorCameraCalibration;
  if (!colorCameraCalibration || ([(ADCameraCalibration *)colorCameraCalibration isEqual:v15]& 1) == 0)
  {
    v7 = [v15 copy];
    v8 = self->_colorCameraCalibration;
    self->_colorCameraCalibration = v7;

    pipeline = self->_pipeline;
    v10 = self->_colorCameraCalibration;
    [(ADCameraCalibration *)v10 cameraToPlatformTransform];
    v11 = [(ADJasperColorInFieldCalibrationPipeline *)pipeline createReferenceCameraForColor:v10 withExtrinsics:?];
    mcamJCameraCalibration = self->_mcamJCameraCalibration;
    self->_mcamJCameraCalibration = v11;

    v13 = [(ADExecutor *)self executorParameters];
    v14 = [v13 logger];
    [v14 logCalibration:self->_mcamJCameraCalibration name:"referenceColorCameraCalibration" timestamp:self->_lastColorTimestamp];
  }
}

- (void)setJasperCameraCalibration:(id)a3
{
  v9 = a3;
  v4 = [(ADExecutor *)self executorParameters];
  v5 = [v4 logger];
  [v5 logCalibration:v9 name:"inputPointCloudCalibration" timestamp:self->_lastColorTimestamp];

  jasperCameraCalibration = self->_jasperCameraCalibration;
  if (!jasperCameraCalibration || ([(ADCameraCalibration *)jasperCameraCalibration isEqual:v9]& 1) == 0)
  {
    v7 = [v9 copy];
    v8 = self->_jasperCameraCalibration;
    self->_jasperCameraCalibration = v7;

    [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline updateJasperCamera:v9];
  }
}

- (int64_t)prepare
{
  v2 = self;
  objc_sync_enter(v2);
  v22 = 335687084;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "jasper color infield calibration executor: preparing executor", v21, 2u);
  }

  v3 = [(ADJasperColorInFieldCalibrationPipeline *)v2->_pipeline backendInferenceDescriptor];
  v4 = objc_alloc(MEMORY[0x277CED060]);
  v5 = [v3 networkURL];
  v6 = [v5 absoluteString];
  engineType = v2->super._engineType;
  v8 = [v3 configurationNameForLayout:{-[ADExecutor layout](v2, "layout")}];
  v9 = [v4 initWithPath:v6 forEngine:engineType configurationName:v8];
  backendEspressoRunner = v2->_backendEspressoRunner;
  v2->_backendEspressoRunner = v9;

  if (v2->_backendEspressoRunner)
  {
    v11 = [(ADJasperColorInFieldCalibrationPipeline *)v2->_pipeline frontendInferenceDescriptor];
    v12 = objc_alloc(MEMORY[0x277CED060]);
    v13 = [v11 networkURL];
    v14 = [v13 absoluteString];
    v15 = v2->super._engineType;
    v16 = [v11 configurationNameForLayout:{-[ADExecutor layout](v2, "layout")}];
    v17 = [v12 initWithPath:v14 forEngine:v15 configurationName:v16];
    frontendEspressoRunner = v2->_frontendEspressoRunner;
    v2->_frontendEspressoRunner = v17;

    if (v2->_frontendEspressoRunner)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "preparing jasper color in field calibration executor", v21, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *v21 = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "preparing jasper color in field calibration executor", v21, 2u);
      }

      v19 = [(ADJasperColorInFieldCalibrationExecutor *)v2 allocateIntermediateBuffers];
      if (v19)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to allocate buffers", v21, 2u);
        }
      }

      else
      {
        v2->_isPrepared = 1;
      }
    }

    else
    {
      v19 = -22960;
    }
  }

  else
  {
    v19 = -22960;
  }

  kdebug_trace();
  objc_sync_exit(v2);

  return v19;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADJasperColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  v49 = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline backendInferenceDescriptor];
  v3 = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline frontendInferenceDescriptor];
  backendEspressoRunner = self->_backendEspressoRunner;
  v5 = [v49 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunner *)backendEspressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedColor" moduleName:@"RGBJ"];
  [ADUtils updatePixelBufferIOSurfaceLabel:v6 pixelBuffer:self->_itmPreProcessedColor];
  v7 = self->_backendEspressoRunner;
  v8 = [v49 jasperInput];
  self->_itmPreProcessedJasper = [(ADEspressoRunner *)v7 createAndRegisterPixelBufferForDescriptor:v8];

  v9 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedJasper" moduleName:@"RGBJ"];

  v50 = v9;
  [ADUtils updatePixelBufferIOSurfaceLabel:v9 pixelBuffer:self->_itmPreProcessedJasper];
  v10 = self->_backendEspressoRunner;
  v11 = [v49 featuresOutput];
  v12 = [(ADEspressoRunner *)v10 registerDescriptor:v11];
  featuresOutputEspressoBufferHandle = self->_featuresOutputEspressoBufferHandle;
  self->_featuresOutputEspressoBufferHandle = v12;

  frontendEspressoRunner = self->_frontendEspressoRunner;
  v15 = [v3 featuresInput];
  v16 = [(ADEspressoRunner *)frontendEspressoRunner registerDescriptor:v15];
  frontendFeaturesInputEspressoBufferHandle = self->_frontendFeaturesInputEspressoBufferHandle;
  self->_frontendFeaturesInputEspressoBufferHandle = v16;

  v18 = self->_frontendEspressoRunner;
  v19 = [v3 rotationXOutput];
  v20 = [(ADEspressoRunner *)v18 registerDescriptor:v19];
  frontendRotXOutputEspressoBufferHandle = self->_frontendRotXOutputEspressoBufferHandle;
  self->_frontendRotXOutputEspressoBufferHandle = v20;

  v22 = self->_frontendEspressoRunner;
  v23 = [v3 rotationYOutput];
  v24 = [(ADEspressoRunner *)v22 registerDescriptor:v23];
  frontendRotYOutputEspressoBufferHandle = self->_frontendRotYOutputEspressoBufferHandle;
  self->_frontendRotYOutputEspressoBufferHandle = v24;

  v26 = self->_frontendEspressoRunner;
  v27 = [v3 errorXOutput];
  v28 = [(ADEspressoRunner *)v26 registerDescriptor:v27];
  frontendRotErrorXOutputEspressoBufferHandle = self->_frontendRotErrorXOutputEspressoBufferHandle;
  self->_frontendRotErrorXOutputEspressoBufferHandle = v28;

  v30 = self->_frontendEspressoRunner;
  v31 = [v3 errorYOutput];
  v32 = [(ADEspressoRunner *)v30 registerDescriptor:v31];
  frontendRotErrorYOutputEspressoBufferHandle = self->_frontendRotErrorYOutputEspressoBufferHandle;
  self->_frontendRotErrorYOutputEspressoBufferHandle = v32;

  v34 = [v3 rotationZOutput];
  if (v34)
  {
    v35 = [v3 errorZOutput];

    if (v35)
    {
      v36 = self->_frontendEspressoRunner;
      v37 = [v3 rotationZOutput];
      v38 = [(ADEspressoRunner *)v36 registerDescriptor:v37];
      frontendRotZOutputEspressoBufferHandle = self->_frontendRotZOutputEspressoBufferHandle;
      self->_frontendRotZOutputEspressoBufferHandle = v38;

      v40 = self->_frontendEspressoRunner;
      v41 = [v3 errorZOutput];
      v42 = [(ADEspressoRunner *)v40 registerDescriptor:v41];
      frontendRotErrorZOutputEspressoBufferHandle = self->_frontendRotErrorZOutputEspressoBufferHandle;
      self->_frontendRotErrorZOutputEspressoBufferHandle = v42;
    }
  }

  if (self->_itmPreProcessedColor)
  {
    if (self->_itmPreProcessedJasper)
    {
      v44 = self->_featuresOutputEspressoBufferHandle;
      if (v44)
      {
        if (self->_frontendFeaturesInputEspressoBufferHandle && self->_frontendRotXOutputEspressoBufferHandle && self->_frontendRotYOutputEspressoBufferHandle && self->_frontendRotErrorXOutputEspressoBufferHandle && self->_frontendRotErrorYOutputEspressoBufferHandle)
        {
          v45 = [(ADEspressoBufferHandle *)v44 dimensionsProduct];
          v46 = [(ADExecutor *)self executorParameters];
          v47 = [v46 pipelineParameters];
          [v47 featuresVectorAggregationSize];

          self->_backendSingleResultSize = self->_backendFeaturesOutputElementSize * v45;
          operator new[]();
        }
      }
    }
  }

  [(ADJasperColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];

  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  self->_itmPreProcessedJasper = 0;
}

- (void)dealloc
{
  if (self->_backendResultAggregated)
  {
    MEMORY[0x245CBFC90]();
  }

  [(ADJasperColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  v3.receiver = self;
  v3.super_class = ADJasperColorInFieldCalibrationExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (id)initForEngineType:(unint64_t)a3
{
  kdebug_trace();
  v5 = objc_alloc_init(ADJasperColorInFieldCalibrationExecutorParameters);
  v6 = [(ADJasperColorInFieldCalibrationExecutor *)self initForEngineType:a3 andExecutorParameters:v5];

  kdebug_trace();
  return v6;
}

- (id)initForEngineType:(unint64_t)a3 andExecutorParameters:(id)a4
{
  v6 = a4;
  v45 = 335682504;
  v46 = 0u;
  v47 = 0u;
  kdebug_trace();
  v44.receiver = self;
  v44.super_class = ADJasperColorInFieldCalibrationExecutor;
  v7 = [(ADExecutor *)&v44 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v7->_isPrepared = 0;
  v7->_preProcessInputColorFrameDone = 0;
  v9 = [ADJasperColorInFieldCalibrationPipeline alloc];
  v10 = [v6 pipelineParameters];
  v11 = [(ADJasperColorInFieldCalibrationPipeline *)v9 initWithParameters:v10 espressoEngine:a3];
  pipeline = v8->_pipeline;
  v8->_pipeline = v11;

  v13 = [objc_opt_class() defaults];
  [v13 floatForKey:kADDeviceConfigurationKeyJasperColorInFieldForceAngularVelocityLogic];
  v8->_forceAngularVelocityLogic = v14;

  if (!v8->_pipeline)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v43 = 0;
    v40 = MEMORY[0x277D86220];
    v41 = "Jasper Color In Field Calibration pipeline failed to init ";
LABEL_18:
    _os_log_error_impl(&dword_2402F6000, v40, OS_LOG_TYPE_ERROR, v41, &v43, 2u);
    goto LABEL_19;
  }

  v8->super._engineType = a3;
  backendEspressoRunner = v8->_backendEspressoRunner;
  v8->_backendEspressoRunner = 0;

  frontendEspressoRunner = v8->_frontendEspressoRunner;
  v8->_frontendEspressoRunner = 0;

  mcamJCameraCalibration = v8->_mcamJCameraCalibration;
  v8->_mcamJCameraCalibration = 0;

  v18 = [ADJasperColorInFieldCalibrationExecutorParameters alloc];
  v19 = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline pipelineParameters];
  v20 = [(ADJasperColorInFieldCalibrationExecutorParameters *)v18 initWithPipelineParameters:v19];
  [(ADExecutor *)v8 setExecutorParameters:v20];

  v21 = [(ADExecutor *)v8 executorParameters];

  if (!v21)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v43 = 0;
    v40 = MEMORY[0x277D86220];
    v41 = "Jasper Color In Field Calibration executor parameters failed to init ";
    goto LABEL_18;
  }

  aggregatedPointCloud = v8->_aggregatedPointCloud;
  v8->_aggregatedPointCloud = 0;

  v8->_itmPreProcessedColor = 0;
  v8->_itmPreProcessedJasper = 0;
  featuresOutputEspressoBufferHandle = v8->_featuresOutputEspressoBufferHandle;
  v8->_featuresOutputEspressoBufferHandle = 0;

  frontendFeaturesInputEspressoBufferHandle = v8->_frontendFeaturesInputEspressoBufferHandle;
  v8->_frontendFeaturesInputEspressoBufferHandle = 0;

  frontendRotErrorXOutputEspressoBufferHandle = v8->_frontendRotErrorXOutputEspressoBufferHandle;
  v8->_frontendRotErrorXOutputEspressoBufferHandle = 0;

  frontendRotErrorYOutputEspressoBufferHandle = v8->_frontendRotErrorYOutputEspressoBufferHandle;
  v8->_frontendRotErrorYOutputEspressoBufferHandle = 0;

  frontendRotErrorZOutputEspressoBufferHandle = v8->_frontendRotErrorZOutputEspressoBufferHandle;
  v8->_frontendRotErrorZOutputEspressoBufferHandle = 0;

  frontendRotXOutputEspressoBufferHandle = v8->_frontendRotXOutputEspressoBufferHandle;
  v8->_frontendRotXOutputEspressoBufferHandle = 0;

  frontendRotYOutputEspressoBufferHandle = v8->_frontendRotYOutputEspressoBufferHandle;
  v8->_frontendRotYOutputEspressoBufferHandle = 0;

  frontendRotZOutputEspressoBufferHandle = v8->_frontendRotZOutputEspressoBufferHandle;
  v8->_frontendRotZOutputEspressoBufferHandle = 0;

  v31 = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline frontendInferenceDescriptor];
  v32 = [v31 featuresInput];
  v33 = [v32 imageDescriptor];
  v8->_frontendFeaturesInputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([v33 pixelFormat], 0);

  frontendFeaturesInputElementSize = v8->_frontendFeaturesInputElementSize;
  if (frontendFeaturesInputElementSize != 2 && frontendFeaturesInputElementSize != 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v43 = 0;
    v40 = MEMORY[0x277D86220];
    v41 = "Unexpected pixel format for frontend input";
    goto LABEL_18;
  }

  v35 = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline backendInferenceDescriptor];
  v36 = [v35 featuresOutput];
  v37 = [v36 imageDescriptor];
  v8->_backendFeaturesOutputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([v37 pixelFormat], 0);

  backendFeaturesOutputElementSize = v8->_backendFeaturesOutputElementSize;
  if (backendFeaturesOutputElementSize != 2 && backendFeaturesOutputElementSize != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v43 = 0;
      v40 = MEMORY[0x277D86220];
      v41 = "Unexpected pixel format for backend output";
      goto LABEL_18;
    }

LABEL_19:
    v39 = 0;
    goto LABEL_20;
  }

  v8->_backendResultAggregated = 0;
  v8->_backendResultAggregationCounter = 0;
  v8->_backendSingleResultSize = 0;
  v8->_lastColorTimestamp = 0.0;
LABEL_9:
  v39 = v8;
LABEL_20:
  kdebug_trace();

  return v39;
}

+ (id)defaults
{
  v7[1] = *MEMORY[0x277D85DE8];
  p_vtable = &OBJC_METACLASS___ADStereoV2Pipeline.vtable;
  {
    v6 = kADDeviceConfigurationKeyJasperColorInFieldForceAngularVelocityLogic;
    v7[0] = &unk_28524A758;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    +[ADJasperColorInFieldCalibrationExecutor defaults]::result = [ADDeviceConfiguration preferencesWithDefaultValues:v5];

    p_vtable = (&OBJC_METACLASS___ADStereoV2Pipeline + 24);
  }

  v3 = p_vtable[455];

  return v3;
}

@end