@interface ADJasperColorInFieldCalibrationExecutor
+ (id)defaults;
- (id)initForEngineType:(unint64_t)type;
- (id)initForEngineType:(unint64_t)type andExecutorParameters:(id)parameters;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executePreprocessedInputsWithInterSessionData:(id)data outResult:(id)result;
- (int64_t)prepare;
- (uint64_t)preprocessInputColorFrame:(double)frame colorPose:(double)pose jasperPointClouds:(double)clouds jasperPoses:(double)poses jasperCameraCalibration:(uint64_t)calibration colorCameraCalibration:(uint64_t)cameraCalibration timestamp:(void *)timestamp colorMetadata:(uint64_t)self0;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)setColorCameraCalibration:(id)calibration;
- (void)setJasperCameraCalibration:(id)calibration;
@end

@implementation ADJasperColorInFieldCalibrationExecutor

- (int64_t)executePreprocessedInputsWithInterSessionData:(id)data outResult:(id)result
{
  v120 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  resultCopy = result;
  [resultCopy setExecutionStatus:-22950];
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  persistenceData = [dataCopy persistenceData];
  [logger logDictionary:persistenceData name:"inputIntersessionData" timestamp:self->_lastColorTimestamp];

  if ([dataCopy intersessionFeaturesHistoryCount])
  {
    intersessionFeaturesHistoryCount = [dataCopy intersessionFeaturesHistoryCount];
    executorParameters2 = [(ADExecutor *)self executorParameters];
    pipelineParameters = [executorParameters2 pipelineParameters];
    featuresVectorAggregationSize = [pipelineParameters featuresVectorAggregationSize];

    if (intersessionFeaturesHistoryCount <= featuresVectorAggregationSize)
    {
      self->_backendResultAggregationCounter = [dataCopy intersessionFeaturesHistoryCount];
      backendResultAggregated = self->_backendResultAggregated;
      intersessionFeaturesHistory = [dataCopy intersessionFeaturesHistory];
      bytes = [intersessionFeaturesHistory bytes];
      intersessionFeaturesHistory2 = [dataCopy intersessionFeaturesHistory];
      memcpy(backendResultAggregated, bytes, [intersessionFeaturesHistory2 length]);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      intersessionFeaturesHistoryCount2 = [dataCopy intersessionFeaturesHistoryCount];
      executorParameters3 = [(ADExecutor *)self executorParameters];
      pipelineParameters2 = [executorParameters3 pipelineParameters];
      *buf = 67109376;
      *v117 = intersessionFeaturesHistoryCount2;
      *&v117[4] = 1024;
      *&v117[6] = [pipelineParameters2 featuresVectorAggregationSize];
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "mismatch intersession features count of %d against aggregation size of %d, history will not be loaded", buf, 0xEu);
    }
  }

  if (self->_preProcessInputColorFrameDone)
  {
    self->_preProcessInputColorFrameDone = 0;
    [resultCopy setExecuted:0];
    inFieldCalibrationTelemetryData = [dataCopy inFieldCalibrationTelemetryData];
    [inFieldCalibrationTelemetryData updateValidPointsSum:{-[ADJasperPointCloud length](self->_aggregatedPointCloud, "length")}];
    if (!self->_isPrepared)
    {
      execute = -22970;
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

      execute = -22960;
      goto LABEL_43;
    }

    if (!resultCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to ADJasperColorInFieldCalibrationResult", buf, 2u);
      }

      execute = -22953;
      goto LABEL_43;
    }

    executorParameters4 = [(ADExecutor *)self executorParameters];
    stepsToExecute = [executorParameters4 stepsToExecute];

    executorParameters5 = [(ADExecutor *)self executorParameters];
    timeProfiler = [executorParameters5 timeProfiler];

    v112 = stepsToExecute - 1;
    if (stepsToExecute < 1)
    {
      goto LABEL_41;
    }

    kdebug_trace();
    [timeProfiler startWithUTFString:"first network execution"];
    [(ADExecutor *)self frameExecutionStart];
    executorParameters6 = [(ADExecutor *)self executorParameters];
    timeProfiler2 = [executorParameters6 timeProfiler];
    [timeProfiler2 start:@"BackendProcess"];

    v27 = +[ADTimeProfiler currentTimeUsec];
    execute = [(ADEspressoRunner *)self->_backendEspressoRunner execute];
    [inFieldCalibrationTelemetryData reportBackendRunTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec") - v27}];
    if (execute)
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

    executorParameters7 = [(ADExecutor *)self executorParameters];
    timeProfiler3 = [executorParameters7 timeProfiler];
    [timeProfiler3 stop:@"BackendProcess"];

    executorParameters8 = [(ADExecutor *)self executorParameters];
    logger2 = [executorParameters8 logger];
    [logger2 logRawBuffer:-[ADEspressoBufferHandle data](self->_featuresOutputEspressoBufferHandle size:"data") name:self->_backendSingleResultSize timestamp:{"featureVectorItr", self->_lastColorTimestamp}];

    memcpy(self->_backendResultAggregated + self->_backendSingleResultSize * self->_backendResultAggregationCounter, [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle data], self->_backendSingleResultSize);
    backendResultAggregationCounter = self->_backendResultAggregationCounter + 1;
    self->_backendResultAggregationCounter = backendResultAggregationCounter;
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      executorParameters9 = [(ADExecutor *)self executorParameters];
      pipelineParameters3 = [executorParameters9 pipelineParameters];
      featuresVectorAggregationSize2 = [pipelineParameters3 featuresVectorAggregationSize];
      *buf = 67109376;
      *v117 = backendResultAggregationCounter;
      *&v117[4] = 1024;
      *&v117[6] = featuresVectorAggregationSize2;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "executeForPreprocesed features index %d/%d", buf, 0xEu);

      backendResultAggregationCounter = self->_backendResultAggregationCounter;
    }

    executorParameters10 = [(ADExecutor *)self executorParameters];
    pipelineParameters4 = [executorParameters10 pipelineParameters];
    v41 = backendResultAggregationCounter < [pipelineParameters4 featuresVectorAggregationSize];

    if (v41)
    {
      [resultCopy setExecutionStatus:-22973];
      v42 = "first network execution";
    }

    else
    {
      executorParameters11 = [(ADExecutor *)self executorParameters];
      timeProfiler4 = [executorParameters11 timeProfiler];
      [timeProfiler4 start:@"FrontendProcess"];

      v113 = +[ADTimeProfiler currentTimeUsec];
      self->_backendResultAggregationCounter = 0;
      [timeProfiler stopWithUTFString:"first network execution"];
      kdebug_trace();
      if (stepsToExecute == 1)
      {
        goto LABEL_41;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"preprocess features"];
      pipeline = self->_pipeline;
      v48 = self->_backendResultAggregated;
      data = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle data];
      dimensions = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensions];
      execute = [(ADJasperColorInFieldCalibrationPipeline *)pipeline processIntermediateResultsWithBackendFeaturesOutputVector:v48 frontendEspressoFeaturesInput:data dimensions:dimensions];

      if (execute)
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

      [timeProfiler stopWithUTFString:"preprocess features"];
      kdebug_trace();
      if (stepsToExecute < 3)
      {
        goto LABEL_41;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"second network execution"];
      execute = [(ADEspressoRunner *)self->_frontendEspressoRunner execute];
      if (execute)
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
      executorParameters12 = [(ADExecutor *)self executorParameters];
      timeProfiler5 = [executorParameters12 timeProfiler];
      [timeProfiler5 stop:@"FrontendProcess"];

      [inFieldCalibrationTelemetryData reportFrontendRunTime:v52 - v113];
      dimensionsProduct = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle dimensionsProduct];
      frontendFeaturesInputElementSize = self->_frontendFeaturesInputElementSize;
      executorParameters13 = [(ADExecutor *)self executorParameters];
      logger3 = [executorParameters13 logger];
      [logger3 logRawBuffer:-[ADEspressoBufferHandle data](self->_frontendFeaturesInputEspressoBufferHandle size:"data") name:frontendFeaturesInputElementSize * dimensionsProduct timestamp:{"featureVectorAvg", self->_lastColorTimestamp}];

      [timeProfiler stopWithUTFString:"second network execution"];
      kdebug_trace();
      if (stepsToExecute == 3)
      {
LABEL_41:
        execute = -22977;
        goto LABEL_42;
      }

      kdebug_trace();
      [timeProfiler startWithUTFString:"postprocess rotation"];
      executorParameters14 = [(ADExecutor *)self executorParameters];
      timeProfiler6 = [executorParameters14 timeProfiler];
      [timeProfiler6 start:@"PostProcess"];

      execute = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline postProcessFrontendOutputX:[(ADEspressoBufferHandle *)self->_frontendRotXOutputEspressoBufferHandle data] frontendOutputY:[(ADEspressoBufferHandle *)self->_frontendRotYOutputEspressoBufferHandle data] frontendOutputZ:[(ADEspressoBufferHandle *)self->_frontendRotZOutputEspressoBufferHandle data] frontendOutputErrorX:[(ADEspressoBufferHandle *)self->_frontendRotErrorXOutputEspressoBufferHandle data] frontendOutputErrotY:[(ADEspressoBufferHandle *)self->_frontendRotErrorYOutputEspressoBufferHandle data] frontendOutputErrorZ:[(ADEspressoBufferHandle *)self->_frontendRotErrorZOutputEspressoBufferHandle data] interSessionData:dataCopy jasperColorInFieldCalibrationResult:resultCopy];
      if (execute)
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

      executorParameters15 = [(ADExecutor *)self executorParameters];
      timeProfiler7 = [executorParameters15 timeProfiler];
      [timeProfiler7 stop:@"PostProcess"];

      executorParameters16 = [(ADExecutor *)self executorParameters];
      logger4 = [executorParameters16 logger];
      dictionaryRepresentation = [resultCopy dictionaryRepresentation];
      [logger4 logDictionary:dictionaryRepresentation name:"internalUseResults" timestamp:self->_lastColorTimestamp];

      executorParameters17 = [(ADExecutor *)self executorParameters];
      logger5 = [executorParameters17 logger];
      [resultCopy jasperToColorExtrinsics];
      [logger5 logMatrix4x3:"depthToColorExtrinsics" name:? timestamp:?];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        [resultCopy preRelative2FactoryX];
        v69 = v68;
        [resultCopy preRelative2FactoryY];
        v71 = v70;
        [resultCopy preRelative2FactoryZ];
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
        [resultCopy postRelative2FactoryX];
        v74 = v73;
        [resultCopy postRelative2FactoryY];
        v76 = v75;
        [resultCopy postRelative2FactoryZ];
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
        [resultCopy deltaRotationX];
        v79 = v78;
        [resultCopy deltaRotationY];
        v81 = v80;
        [resultCopy deltaRotationZ];
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
        [resultCopy postRelative2PrevX];
        v84 = v83;
        [resultCopy postRelative2PrevY];
        v86 = v85;
        [resultCopy postRelative2PrevZ];
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
        [resultCopy absoluteRotationX];
        v89 = v88;
        [resultCopy absoluteRotationY];
        v91 = v90;
        [resultCopy absoluteRotationZ];
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
        [resultCopy absoluteRotationPostISFX];
        v94 = v93;
        [resultCopy absoluteRotationPostISFY];
        v96 = v95;
        [resultCopy absoluteRotationPostISFZ];
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
        [resultCopy factoryRotationX];
        v99 = v98;
        [resultCopy factoryRotationY];
        v101 = v100;
        [resultCopy factoryRotationZ];
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
        [resultCopy stdX];
        v104 = v103;
        [resultCopy stdY];
        v106 = v105;
        [resultCopy stdZ];
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
        executed = [resultCopy executed];
        [resultCopy confidence];
        *buf = 67109376;
        *v117 = executed;
        *&v117[4] = 2048;
        *&v117[6] = v109;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADJasperColorInFieldCalibration run executed: %d with std: %f]", buf, 0x12u);
      }

      [inFieldCalibrationTelemetryData increaseRunTimesByOne];
      [inFieldCalibrationTelemetryData updateLastExecutionTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec")}];
      executorParameters18 = [(ADExecutor *)self executorParameters];
      reportTelemetry = [executorParameters18 reportTelemetry];

      v112 = stepsToExecute - 4;
      if (reportTelemetry)
      {
        [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline reportTelemetry:resultCopy withInterSessionData:dataCopy];
        [inFieldCalibrationTelemetryData reset];
      }

      v42 = "postprocess rotation";
    }

    [dataCopy setIntersessionFeaturesHistoryCount:self->_backendResultAggregationCounter];
    v43 = self->_backendResultAggregationCounter;
    if (v43)
    {
      v44 = [MEMORY[0x277CBEA90] dataWithBytes:self->_backendResultAggregated length:self->_backendSingleResultSize * v43];
    }

    else
    {
      v44 = objc_opt_new();
    }

    [dataCopy setIntersessionFeaturesHistory:v44];

    [timeProfiler stopWithUTFString:v42];
    kdebug_trace();
    if (v112)
    {
      [(ADExecutor *)self frameExecutionEnd];
      execute = 0;
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "running executeForPreprocesed before preProcessInputColorFrame called", buf, 2u);
  }

  execute = -22961;
LABEL_44:

  return execute;
}

- (uint64_t)preprocessInputColorFrame:(double)frame colorPose:(double)pose jasperPointClouds:(double)clouds jasperPoses:(double)poses jasperCameraCalibration:(uint64_t)calibration colorCameraCalibration:(uint64_t)cameraCalibration timestamp:(void *)timestamp colorMetadata:(uint64_t)self0
{
  timestampCopy = timestamp;
  v86 = a11;
  v87 = a12;
  v19 = a13;
  v88 = v19;
  if (poses == 0.0 && v19 != 0)
  {
    [MEMORY[0x277CED070] getMidExposureTimestampFromMetadataDictionary:v19];
    poses = v21;
  }

  v22 = 0;
  *(self + 296) = poses;
  while (1)
  {
    v23 = v22;
    if ([timestampCopy count] <= v22)
    {
      break;
    }

    executorParameters = [self executorParameters];
    logger = [executorParameters logger];
    v26 = [timestampCopy objectAtIndexedSubscript:v23];
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

    [logger logPointCloud:v26 name:v31 timestamp:*(self + 296)];
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

  *(self + 304) = 0;
  [self setColorCameraCalibration:v87];
  [self setJasperCameraCalibration:v86];
  executorParameters2 = [self executorParameters];
  stepsToExecute = [executorParameters2 stepsToExecute];

  executorParameters3 = [self executorParameters];
  timeProfiler = [executorParameters3 timeProfiler];

  if (stepsToExecute < 1)
  {
    goto LABEL_34;
  }

  kdebug_trace();
  [timeProfiler startWithUTFString:"preprocess color"];
  [self frameExecutionStart];
  executorParameters4 = [self executorParameters];
  timeProfiler2 = [executorParameters4 timeProfiler];
  [timeProfiler2 start:@"preprocessColor"];

  executorParameters5 = [self executorParameters];
  logger2 = [executorParameters5 logger];
  [logger2 logPixelBuffer:cameraCalibration name:"inputColor" timestamp:*(self + 296)];

  if (v88 && (([self executorParameters], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "logger"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "logDictionary:name:timestamp:", v88, "inputColorMetadata", *(self + 296)), v41, v40, *(self + 308)) || objc_msgSend(timestampCopy, "count") >= 3) && (objc_msgSend(*(self + 312), "isAngularVelocityValid:", v88) & 1) == 0)
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
    v42 = [*(self + 312) preProcessColor:cameraCalibration processedColor:*(self + 176) referenceCameraCalibration:*(self + 160) colorCameraCalibration:*(self + 320) colorMetadata:v88];
    executorParameters6 = [self executorParameters];
    timeProfiler3 = [executorParameters6 timeProfiler];
    [timeProfiler3 stop:@"preprocessColor"];

    executorParameters7 = [self executorParameters];
    logger3 = [executorParameters7 logger];
    [logger3 logPixelBuffer:*(self + 176) name:"processedColor" timestamp:*(self + 296)];

    if (v42)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preProcessColor jasper", buf, 2u);
      }

      goto LABEL_46;
    }

    [timeProfiler stopWithUTFString:"preprocess color"];
    kdebug_trace();
    if (stepsToExecute == 1)
    {
LABEL_34:
      v42 = -22977;
      goto LABEL_46;
    }

    kdebug_trace();
    [timeProfiler startWithUTFString:"preprocess jasper"];
    [*(self + 160) cameraToPlatformTransform];
    v81 = v47;
    v82 = v48;
    v80 = v49;
    v83 = v50;
    [*(self + 328) cameraToPlatformTransform];
    v76 = v51;
    v77 = v52;
    v78 = v53;
    v79 = v54;
    executorParameters8 = [self executorParameters];
    timeProfiler4 = [executorParameters8 timeProfiler];
    [timeProfiler4 start:@"AggregateAndProjectJasperPoints"];

    v85 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:timestampCopy];
    pipelineParameters = [*(self + 312) pipelineParameters];
    pointCloudFilterParameters = [pipelineParameters pointCloudFilterParameters];
    v59 = [v85 pointCloudByApplyingFilter:pointCloudFilterParameters];
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

    v66 = [v59 pointCloudByChangingPointOfViewByTransform:*(self + 160) to:{*v82.i64, *v81.i64, *v80.i64, *v79.i64}];
    v67 = *(self + 168);
    *(self + 168) = v66;

    executorParameters9 = [self executorParameters];
    logger4 = [executorParameters9 logger];
    [logger4 logPointCloud:*(self + 168) name:"aggregatedJasper" timestamp:*(self + 296)];

    v42 = [*(self + 312) preProcessJasper:*(self + 168) referenceCameraCalibration:*(self + 160) jasperCameraCalibration:*(self + 328) reprojectedPointsBuffer:*(self + 184)];
    executorParameters10 = [self executorParameters];
    timeProfiler5 = [executorParameters10 timeProfiler];
    v72 = v59;
    [timeProfiler5 stop:@"AggregateAndProjectJasperPoints"];

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
      executorParameters11 = [self executorParameters];
      logger5 = [executorParameters11 logger];
      [logger5 logPixelBuffer:*(self + 184) name:"jasperProcessed" timestamp:*(self + 296)];

      [timeProfiler stopWithUTFString:"preprocess jasper"];
      kdebug_trace();
      if (stepsToExecute >= 3)
      {
        [self frameExecutionEnd];
        v42 = 0;
        *(self + 304) = 1;
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

- (void)setColorCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  [logger logCalibration:calibrationCopy name:"inputColorCalibration" timestamp:self->_lastColorTimestamp];

  colorCameraCalibration = self->_colorCameraCalibration;
  if (!colorCameraCalibration || ([(ADCameraCalibration *)colorCameraCalibration isEqual:calibrationCopy]& 1) == 0)
  {
    v7 = [calibrationCopy copy];
    v8 = self->_colorCameraCalibration;
    self->_colorCameraCalibration = v7;

    pipeline = self->_pipeline;
    v10 = self->_colorCameraCalibration;
    [(ADCameraCalibration *)v10 cameraToPlatformTransform];
    v11 = [(ADJasperColorInFieldCalibrationPipeline *)pipeline createReferenceCameraForColor:v10 withExtrinsics:?];
    mcamJCameraCalibration = self->_mcamJCameraCalibration;
    self->_mcamJCameraCalibration = v11;

    executorParameters2 = [(ADExecutor *)self executorParameters];
    logger2 = [executorParameters2 logger];
    [logger2 logCalibration:self->_mcamJCameraCalibration name:"referenceColorCameraCalibration" timestamp:self->_lastColorTimestamp];
  }
}

- (void)setJasperCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  [logger logCalibration:calibrationCopy name:"inputPointCloudCalibration" timestamp:self->_lastColorTimestamp];

  jasperCameraCalibration = self->_jasperCameraCalibration;
  if (!jasperCameraCalibration || ([(ADCameraCalibration *)jasperCameraCalibration isEqual:calibrationCopy]& 1) == 0)
  {
    v7 = [calibrationCopy copy];
    v8 = self->_jasperCameraCalibration;
    self->_jasperCameraCalibration = v7;

    [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline updateJasperCamera:calibrationCopy];
  }
}

- (int64_t)prepare
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 335687084;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "jasper color infield calibration executor: preparing executor", v21, 2u);
  }

  backendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)selfCopy->_pipeline backendInferenceDescriptor];
  v4 = objc_alloc(MEMORY[0x277CED060]);
  networkURL = [backendInferenceDescriptor networkURL];
  absoluteString = [networkURL absoluteString];
  engineType = selfCopy->super._engineType;
  v8 = [backendInferenceDescriptor configurationNameForLayout:{-[ADExecutor layout](selfCopy, "layout")}];
  v9 = [v4 initWithPath:absoluteString forEngine:engineType configurationName:v8];
  backendEspressoRunner = selfCopy->_backendEspressoRunner;
  selfCopy->_backendEspressoRunner = v9;

  if (selfCopy->_backendEspressoRunner)
  {
    frontendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)selfCopy->_pipeline frontendInferenceDescriptor];
    v12 = objc_alloc(MEMORY[0x277CED060]);
    networkURL2 = [frontendInferenceDescriptor networkURL];
    absoluteString2 = [networkURL2 absoluteString];
    v15 = selfCopy->super._engineType;
    v16 = [frontendInferenceDescriptor configurationNameForLayout:{-[ADExecutor layout](selfCopy, "layout")}];
    v17 = [v12 initWithPath:absoluteString2 forEngine:v15 configurationName:v16];
    frontendEspressoRunner = selfCopy->_frontendEspressoRunner;
    selfCopy->_frontendEspressoRunner = v17;

    if (selfCopy->_frontendEspressoRunner)
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

      allocateIntermediateBuffers = [(ADJasperColorInFieldCalibrationExecutor *)selfCopy allocateIntermediateBuffers];
      if (allocateIntermediateBuffers)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v21 = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to allocate buffers", v21, 2u);
        }
      }

      else
      {
        selfCopy->_isPrepared = 1;
      }
    }

    else
    {
      allocateIntermediateBuffers = -22960;
    }
  }

  else
  {
    allocateIntermediateBuffers = -22960;
  }

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return allocateIntermediateBuffers;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADJasperColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  backendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline backendInferenceDescriptor];
  frontendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)self->_pipeline frontendInferenceDescriptor];
  backendEspressoRunner = self->_backendEspressoRunner;
  colorInput = [backendInferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunner *)backendEspressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedColor" moduleName:@"RGBJ"];
  [ADUtils updatePixelBufferIOSurfaceLabel:v6 pixelBuffer:self->_itmPreProcessedColor];
  v7 = self->_backendEspressoRunner;
  jasperInput = [backendInferenceDescriptor jasperInput];
  self->_itmPreProcessedJasper = [(ADEspressoRunner *)v7 createAndRegisterPixelBufferForDescriptor:jasperInput];

  v9 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedJasper" moduleName:@"RGBJ"];

  v50 = v9;
  [ADUtils updatePixelBufferIOSurfaceLabel:v9 pixelBuffer:self->_itmPreProcessedJasper];
  v10 = self->_backendEspressoRunner;
  featuresOutput = [backendInferenceDescriptor featuresOutput];
  v12 = [(ADEspressoRunner *)v10 registerDescriptor:featuresOutput];
  featuresOutputEspressoBufferHandle = self->_featuresOutputEspressoBufferHandle;
  self->_featuresOutputEspressoBufferHandle = v12;

  frontendEspressoRunner = self->_frontendEspressoRunner;
  featuresInput = [frontendInferenceDescriptor featuresInput];
  v16 = [(ADEspressoRunner *)frontendEspressoRunner registerDescriptor:featuresInput];
  frontendFeaturesInputEspressoBufferHandle = self->_frontendFeaturesInputEspressoBufferHandle;
  self->_frontendFeaturesInputEspressoBufferHandle = v16;

  v18 = self->_frontendEspressoRunner;
  rotationXOutput = [frontendInferenceDescriptor rotationXOutput];
  v20 = [(ADEspressoRunner *)v18 registerDescriptor:rotationXOutput];
  frontendRotXOutputEspressoBufferHandle = self->_frontendRotXOutputEspressoBufferHandle;
  self->_frontendRotXOutputEspressoBufferHandle = v20;

  v22 = self->_frontendEspressoRunner;
  rotationYOutput = [frontendInferenceDescriptor rotationYOutput];
  v24 = [(ADEspressoRunner *)v22 registerDescriptor:rotationYOutput];
  frontendRotYOutputEspressoBufferHandle = self->_frontendRotYOutputEspressoBufferHandle;
  self->_frontendRotYOutputEspressoBufferHandle = v24;

  v26 = self->_frontendEspressoRunner;
  errorXOutput = [frontendInferenceDescriptor errorXOutput];
  v28 = [(ADEspressoRunner *)v26 registerDescriptor:errorXOutput];
  frontendRotErrorXOutputEspressoBufferHandle = self->_frontendRotErrorXOutputEspressoBufferHandle;
  self->_frontendRotErrorXOutputEspressoBufferHandle = v28;

  v30 = self->_frontendEspressoRunner;
  errorYOutput = [frontendInferenceDescriptor errorYOutput];
  v32 = [(ADEspressoRunner *)v30 registerDescriptor:errorYOutput];
  frontendRotErrorYOutputEspressoBufferHandle = self->_frontendRotErrorYOutputEspressoBufferHandle;
  self->_frontendRotErrorYOutputEspressoBufferHandle = v32;

  rotationZOutput = [frontendInferenceDescriptor rotationZOutput];
  if (rotationZOutput)
  {
    errorZOutput = [frontendInferenceDescriptor errorZOutput];

    if (errorZOutput)
    {
      v36 = self->_frontendEspressoRunner;
      rotationZOutput2 = [frontendInferenceDescriptor rotationZOutput];
      v38 = [(ADEspressoRunner *)v36 registerDescriptor:rotationZOutput2];
      frontendRotZOutputEspressoBufferHandle = self->_frontendRotZOutputEspressoBufferHandle;
      self->_frontendRotZOutputEspressoBufferHandle = v38;

      v40 = self->_frontendEspressoRunner;
      errorZOutput2 = [frontendInferenceDescriptor errorZOutput];
      v42 = [(ADEspressoRunner *)v40 registerDescriptor:errorZOutput2];
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
          dimensionsProduct = [(ADEspressoBufferHandle *)v44 dimensionsProduct];
          executorParameters = [(ADExecutor *)self executorParameters];
          pipelineParameters = [executorParameters pipelineParameters];
          [pipelineParameters featuresVectorAggregationSize];

          self->_backendSingleResultSize = self->_backendFeaturesOutputElementSize * dimensionsProduct;
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

- (id)initForEngineType:(unint64_t)type
{
  kdebug_trace();
  v5 = objc_alloc_init(ADJasperColorInFieldCalibrationExecutorParameters);
  v6 = [(ADJasperColorInFieldCalibrationExecutor *)self initForEngineType:type andExecutorParameters:v5];

  kdebug_trace();
  return v6;
}

- (id)initForEngineType:(unint64_t)type andExecutorParameters:(id)parameters
{
  parametersCopy = parameters;
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
  pipelineParameters = [parametersCopy pipelineParameters];
  v11 = [(ADJasperColorInFieldCalibrationPipeline *)v9 initWithParameters:pipelineParameters espressoEngine:type];
  pipeline = v8->_pipeline;
  v8->_pipeline = v11;

  defaults = [objc_opt_class() defaults];
  [defaults floatForKey:kADDeviceConfigurationKeyJasperColorInFieldForceAngularVelocityLogic];
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

  v8->super._engineType = type;
  backendEspressoRunner = v8->_backendEspressoRunner;
  v8->_backendEspressoRunner = 0;

  frontendEspressoRunner = v8->_frontendEspressoRunner;
  v8->_frontendEspressoRunner = 0;

  mcamJCameraCalibration = v8->_mcamJCameraCalibration;
  v8->_mcamJCameraCalibration = 0;

  v18 = [ADJasperColorInFieldCalibrationExecutorParameters alloc];
  pipelineParameters2 = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline pipelineParameters];
  v20 = [(ADJasperColorInFieldCalibrationExecutorParameters *)v18 initWithPipelineParameters:pipelineParameters2];
  [(ADExecutor *)v8 setExecutorParameters:v20];

  executorParameters = [(ADExecutor *)v8 executorParameters];

  if (!executorParameters)
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

  frontendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline frontendInferenceDescriptor];
  featuresInput = [frontendInferenceDescriptor featuresInput];
  imageDescriptor = [featuresInput imageDescriptor];
  v8->_frontendFeaturesInputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor pixelFormat], 0);

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

  backendInferenceDescriptor = [(ADJasperColorInFieldCalibrationPipeline *)v8->_pipeline backendInferenceDescriptor];
  featuresOutput = [backendInferenceDescriptor featuresOutput];
  imageDescriptor2 = [featuresOutput imageDescriptor];
  v8->_backendFeaturesOutputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

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