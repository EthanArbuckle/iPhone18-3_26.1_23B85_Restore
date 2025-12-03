@interface ADPearlColorInFieldCalibrationExecutor
- (BOOL)normalizedDX:(__CVBuffer *)x toDepth:(__CVBuffer *)depth withMultiplier:(double)multiplier andOffset:(double)offset;
- (__n128)setWmcamToMcamExtrinsics:(__n128)extrinsics;
- (id)initForEngineType:(unint64_t)type;
- (id)initForEngineType:(unint64_t)type andExecutorParameters:(id)parameters;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executePreprocessedInputsWithInterSessionData:(id)data outResult:(id)result;
- (int64_t)prepare;
- (uint64_t)preprocessInputColorFrame:(double)frame pearlDepth:(double)depth pearlPoses:(double)poses pceCameraCalibration:(double)calibration pearlCameraCalibrationTransform:(double)transform colorCameraCalibration:(double)cameraCalibration timestamp:(double)timestamp;
- (uint64_t)preprocessInputColorFrame:(double)frame pearlNormalizedDX:(double)x pearlPoses:(double)poses disparityNormalizationMultiplier:(double)multiplier disparityNormalizationOffset:(double)offset pceCameraCalibration:(uint64_t)calibration pearlCameraCalibrationTransform:(uint64_t)transform colorCameraCalibration:(__CVBuffer *)self0 timestamp:(void *)self1;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)setColorCameraCalibration:(id)calibration;
- (void)setPearlCameraCalibration:(id)calibration;
@end

@implementation ADPearlColorInFieldCalibrationExecutor

- (__n128)setWmcamToMcamExtrinsics:(__n128)extrinsics
{
  result[23] = a2;
  result[24] = extrinsics;
  result[25] = a4;
  result[26] = a5;
  return result;
}

- (int64_t)executePreprocessedInputsWithInterSessionData:(id)data outResult:(id)result
{
  v104 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  resultCopy = result;
  if (self->_preProcessInputColorFrameDone)
  {
    executorParameters = [(ADExecutor *)self executorParameters];
    logger = [executorParameters logger];
    persistenceData = [dataCopy persistenceData];
    [logger logDictionary:persistenceData name:"inputIntersessionData" timestamp:self->_lastColorTimestamp];

    self->_preProcessInputColorFrameDone = 0;
    [resultCopy setExecuted:0];
    if (self->_isPrepared)
    {
      if (self->_backendEspressoRunner && self->_frontendEspressoRunner)
      {
        if (resultCopy)
        {
          executorParameters2 = [(ADExecutor *)self executorParameters];
          stepsToExecute = [executorParameters2 stepsToExecute];

          executorParameters3 = [(ADExecutor *)self executorParameters];
          timeProfiler = [executorParameters3 timeProfiler];

          v96 = stepsToExecute - 1;
          if (stepsToExecute < 1)
          {
            execute = -22977;
LABEL_33:

            goto LABEL_34;
          }

          kdebug_trace();
          [timeProfiler startWithUTFString:"first network execution"];
          [(ADExecutor *)self frameExecutionStart];
          executorParameters4 = [(ADExecutor *)self executorParameters];
          timeProfiler2 = [executorParameters4 timeProfiler];
          [timeProfiler2 start:@"BackendProcess"];

          v15 = +[ADTimeProfiler currentTimeUsec];
          execute = [(ADEspressoRunner *)self->_backendEspressoRunner execute];
          v17 = +[ADTimeProfiler currentTimeUsec];
          if (execute)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed executing backend", buf, 2u);
            }

            goto LABEL_33;
          }

          v18 = v17;
          executorParameters5 = [(ADExecutor *)self executorParameters];
          timeProfiler3 = [executorParameters5 timeProfiler];
          [timeProfiler3 stop:@"BackendProcess"];

          inFieldCalibrationTelemetryData = [dataCopy inFieldCalibrationTelemetryData];
          [inFieldCalibrationTelemetryData reportBackendRunTime:v18 - v15];
          executorParameters6 = [(ADExecutor *)self executorParameters];
          logger2 = [executorParameters6 logger];
          [logger2 logRawBuffer:-[ADEspressoBufferHandle data](self->_featuresOutputEspressoBufferHandle size:"data") name:self->_backendSingleResultSize timestamp:{"featureVectorItr", self->_lastColorTimestamp}];

          memcpy(self->_backendResultAggregated + self->_backendSingleResultSize * self->_backendResultAggregationCounter, [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle data], self->_backendSingleResultSize);
          LODWORD(v18) = self->_backendResultAggregationCounter + 1;
          self->_backendResultAggregationCounter = v18;
          executorParameters7 = [(ADExecutor *)self executorParameters];
          pipelineParameters = [executorParameters7 pipelineParameters];
          LODWORD(logger2) = [pipelineParameters featuresVectorAggregationSize];

          if (v18 == logger2)
          {
            executorParameters8 = [(ADExecutor *)self executorParameters];
            timeProfiler4 = [executorParameters8 timeProfiler];
            [timeProfiler4 start:@"FrontendProcess"];

            v97 = +[ADTimeProfiler currentTimeUsec];
            self->_backendResultAggregationCounter = 0;
            [timeProfiler stopWithUTFString:"first network execution"];
            kdebug_trace();
            if (stepsToExecute == 1)
            {
              goto LABEL_31;
            }

            kdebug_trace();
            [timeProfiler startWithUTFString:"preprocess features"];
            pipeline = self->_pipeline;
            backendResultAggregated = self->_backendResultAggregated;
            data = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle data];
            dimensions = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensions];
            execute = [(ADPearlColorInFieldCalibrationPipeline *)pipeline processIntermediateResultsWithBackendFeaturesOutputVector:backendResultAggregated frontendEspressoFeaturesInput:data dimensions:dimensions];

            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
LABEL_32:

                goto LABEL_33;
              }

              *buf = 0;
              v31 = MEMORY[0x277D86220];
              v32 = "failed processing intermediate results (backend features vector output to frontend features input)";
LABEL_26:
              _os_log_error_impl(&dword_2402F6000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
              goto LABEL_32;
            }

            [timeProfiler stopWithUTFString:"preprocess features"];
            kdebug_trace();
            if (stepsToExecute < 3)
            {
              goto LABEL_31;
            }

            kdebug_trace();
            [timeProfiler startWithUTFString:"second network execution"];
            execute = [(ADEspressoRunner *)self->_frontendEspressoRunner execute];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_32;
              }

              *buf = 0;
              v31 = MEMORY[0x277D86220];
              v32 = "failed executing frontend";
              goto LABEL_26;
            }

            v35 = +[ADTimeProfiler currentTimeUsec];
            executorParameters9 = [(ADExecutor *)self executorParameters];
            timeProfiler5 = [executorParameters9 timeProfiler];
            [timeProfiler5 stop:@"FrontendProcess"];

            [inFieldCalibrationTelemetryData reportFrontendRunTime:v35 - v97];
            dimensionsProduct = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle dimensionsProduct];
            frontendFeaturesInputElementSize = self->_frontendFeaturesInputElementSize;
            executorParameters10 = [(ADExecutor *)self executorParameters];
            logger3 = [executorParameters10 logger];
            [logger3 logRawBuffer:-[ADEspressoBufferHandle data](self->_frontendFeaturesInputEspressoBufferHandle size:"data") name:frontendFeaturesInputElementSize * dimensionsProduct timestamp:{"featureVectorAvg", self->_lastColorTimestamp}];

            [timeProfiler stopWithUTFString:"second network execution"];
            kdebug_trace();
            if (stepsToExecute == 3)
            {
LABEL_31:
              execute = -22977;
              goto LABEL_32;
            }

            kdebug_trace();
            [timeProfiler startWithUTFString:"postprocess rotation"];
            executorParameters11 = [(ADExecutor *)self executorParameters];
            timeProfiler6 = [executorParameters11 timeProfiler];
            [timeProfiler6 start:@"PostProcess"];

            execute = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline postProcessFrontendOutputX:[(ADEspressoBufferHandle *)self->_frontendRotationXOutputEspressoBufferHandle data] frontendOutputY:[(ADEspressoBufferHandle *)self->_frontendRotationYOutputEspressoBufferHandle data] frontendOutputZ:[(ADEspressoBufferHandle *)self->_frontendRotationZOutputEspressoBufferHandle data] frontendOutputErrorX:[(ADEspressoBufferHandle *)self->_frontendErrorXOutputEspressoBufferHandle data] frontendOutputErrorY:[(ADEspressoBufferHandle *)self->_frontendErrorYOutputEspressoBufferHandle data] frontendOutputErrorZ:[(ADEspressoBufferHandle *)self->_frontendErrorZOutputEspressoBufferHandle data] interSessionData:dataCopy pearlColorInFieldCalibrationResult:resultCopy];
            if (execute)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_32;
              }

              *buf = 0;
              v31 = MEMORY[0x277D86220];
              v32 = "failed post processing pipeline results";
              goto LABEL_26;
            }

            executorParameters12 = [(ADExecutor *)self executorParameters];
            timeProfiler7 = [executorParameters12 timeProfiler];
            [timeProfiler7 stop:@"PostProcess"];

            executorParameters13 = [(ADExecutor *)self executorParameters];
            logger4 = [executorParameters13 logger];
            dictionaryRepresentation = [resultCopy dictionaryRepresentation];
            [logger4 logDictionary:dictionaryRepresentation name:"internalUseResults" timestamp:self->_lastColorTimestamp];

            executorParameters14 = [(ADExecutor *)self executorParameters];
            logger5 = [executorParameters14 logger];
            [resultCopy pearlToColorExtrinsics];
            [logger5 logMatrix4x3:"depthToColorExtrinsics" name:? timestamp:?];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy preRelative2FactoryX];
              v52 = v51;
              [resultCopy preRelative2FactoryY];
              v54 = v53;
              [resultCopy preRelative2FactoryZ];
              *buf = 134218496;
              *v101 = v52;
              *&v101[8] = 2048;
              *&v101[10] = v54;
              v102 = 2048;
              v103 = v55;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results relative to factory [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy postRelative2FactoryX];
              v57 = v56;
              [resultCopy postRelative2FactoryY];
              v59 = v58;
              [resultCopy postRelative2FactoryZ];
              *buf = 134218496;
              *v101 = v57;
              *&v101[8] = 2048;
              *&v101[10] = v59;
              v102 = 2048;
              v103 = v60;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results relative to factory post ISF [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy deltaRotationX];
              v62 = v61;
              [resultCopy deltaRotationY];
              v64 = v63;
              [resultCopy deltaRotationZ];
              *buf = 134218496;
              *v101 = v62;
              *&v101[8] = 2048;
              *&v101[10] = v64;
              v102 = 2048;
              v103 = v65;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results relative to previouse [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy postRelative2PrevX];
              v67 = v66;
              [resultCopy postRelative2PrevY];
              v69 = v68;
              [resultCopy postRelative2PrevZ];
              *buf = 134218496;
              *v101 = v67;
              *&v101[8] = 2048;
              *&v101[10] = v69;
              v102 = 2048;
              v103 = v70;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results relative to previouse post ISF [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy absoluteRotationX];
              v72 = v71;
              [resultCopy absoluteRotationY];
              v74 = v73;
              [resultCopy absoluteRotationZ];
              *buf = 134218496;
              *v101 = v72;
              *&v101[8] = 2048;
              *&v101[10] = v74;
              v102 = 2048;
              v103 = v75;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results absolute [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy absoluteRotationPostISFX];
              v77 = v76;
              [resultCopy absoluteRotationPostISFY];
              v79 = v78;
              [resultCopy absoluteRotationPostISFZ];
              *buf = 134218496;
              *v101 = v77;
              *&v101[8] = 2048;
              *&v101[10] = v79;
              v102 = 2048;
              v103 = v80;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run results absolute post ISF [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy factoryRotationX];
              v82 = v81;
              [resultCopy factoryRotationY];
              v84 = v83;
              [resultCopy factoryRotationZ];
              *buf = 134218496;
              *v101 = v82;
              *&v101[8] = 2048;
              *&v101[10] = v84;
              v102 = 2048;
              v103 = v85;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run factory [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [resultCopy stdX];
              v87 = v86;
              [resultCopy stdY];
              v89 = v88;
              [resultCopy stdZ];
              *buf = 134218496;
              *v101 = v87;
              *&v101[8] = 2048;
              *&v101[10] = v89;
              v102 = 2048;
              v103 = v90;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run std [%f, %f, %f]", buf, 0x20u);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              executed = [resultCopy executed];
              [resultCopy confidence];
              *buf = 67109376;
              *v101 = executed;
              *&v101[4] = 2048;
              *&v101[6] = v92;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run executed: %d with std: %f]", buf, 0x12u);
            }

            [inFieldCalibrationTelemetryData increaseRunTimesByOne];
            [inFieldCalibrationTelemetryData updateLastExecutionTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec")}];
            executorParameters15 = [(ADExecutor *)self executorParameters];
            reportTelemetry = [executorParameters15 reportTelemetry];

            v96 = stepsToExecute - 4;
            if (reportTelemetry)
            {
              [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline reportTelemetry:resultCopy withInterSessionData:dataCopy];
              [inFieldCalibrationTelemetryData reset];
            }

            v33 = "postprocess rotation";
          }

          else
          {

            resultCopy = 0;
            v33 = "first network execution";
          }

          [timeProfiler stopWithUTFString:v33];
          kdebug_trace();
          if (v96)
          {
            [(ADExecutor *)self frameExecutionEnd];
            execute = 0;
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to ADPearlColorInFieldCalibrationResult", buf, 2u);
        }

        resultCopy = 0;
        execute = -22953;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing executor", buf, 2u);
        }

        execute = -22960;
      }
    }

    else
    {
      execute = -22970;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "running executeForPreprocesed before preProcessInputColorFrame called", buf, 2u);
    }

    execute = -22961;
  }

LABEL_34:

  return execute;
}

- (uint64_t)preprocessInputColorFrame:(double)frame pearlDepth:(double)depth pearlPoses:(double)poses pceCameraCalibration:(double)calibration pearlCameraCalibrationTransform:(double)transform colorCameraCalibration:(double)cameraCalibration timestamp:(double)timestamp
{
  v53 = a13;
  v54 = a14;
  v56 = 335684824;
  v57 = 0u;
  v58 = 0u;
  kdebug_trace();
  *(self + 176) = 0;
  *(self + 312) = a17;
  executorParameters = [self executorParameters];
  logger = [executorParameters logger];
  [logger logMatrix4x4:"inputIrToDepthTransform" name:calibration timestamp:{transform, cameraCalibration, timestamp, *(self + 312)}];

  [self setColorCameraCalibration:v54];
  [self setPearlCameraCalibration:v53];
  executorParameters2 = [self executorParameters];
  stepsToExecute = [executorParameters2 stepsToExecute];

  executorParameters3 = [self executorParameters];
  timeProfiler = [executorParameters3 timeProfiler];

  if (stepsToExecute < 1)
  {
    goto LABEL_7;
  }

  kdebug_trace();
  [timeProfiler startWithUTFString:"preprocess pearl"];
  [self frameExecutionStart];
  executorParameters4 = [self executorParameters];
  timeProfiler2 = [executorParameters4 timeProfiler];
  [timeProfiler2 start:@"preprocessColor"];

  executorParameters5 = [self executorParameters];
  logger2 = [executorParameters5 logger];
  [logger2 logPixelBuffer:a11 name:"inputColor" timestamp:*(self + 312)];

  v30 = [*(self + 336) preProcessColor:a11 processedColor:*(self + 184) referenceCameraCalibration:*(self + 168) colorCameraCalibration:*(self + 344)];
  if (v30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = MEMORY[0x277D86220];
      v32 = "preProcessColor failed";
LABEL_5:
      _os_log_error_impl(&dword_2402F6000, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  executorParameters6 = [self executorParameters];
  logger3 = [executorParameters6 logger];
  [logger3 logPixelBuffer:*(self + 184) name:"processedColor" timestamp:*(self + 312)];

  executorParameters7 = [self executorParameters];
  timeProfiler3 = [executorParameters7 timeProfiler];
  [timeProfiler3 stop:@"preprocessColor"];

  [timeProfiler stopWithUTFString:"preprocess pearl"];
  kdebug_trace();
  if (stepsToExecute == 1)
  {
LABEL_7:
    v30 = -22977;
    goto LABEL_8;
  }

  kdebug_trace();
  [timeProfiler startWithUTFString:"preprocess color"];
  executorParameters8 = [self executorParameters];
  timeProfiler4 = [executorParameters8 timeProfiler];
  [timeProfiler4 start:@"ProjectPearlPoints"];

  executorParameters9 = [self executorParameters];
  logger4 = [executorParameters9 logger];
  [logger4 logPixelBuffer:a12 name:"inputPearl" timestamp:*(self + 312)];

  [*(self + 336) setPearlToColorCurrentTransform:{calibration, transform, cameraCalibration, timestamp}];
  v30 = [*(self + 336) preProcessPearl:a12 referenceCameraCalibration:*(self + 168) pearlCameraCalibration:*(self + 352) reprojectedPointsBuffer:*(self + 192) reprojectedPointsMaskBuffer:*(self + 200)];
  executorParameters10 = [self executorParameters];
  timeProfiler5 = [executorParameters10 timeProfiler];
  [timeProfiler5 stop:@"ProjectPearlPoints"];

  if (!v30)
  {
    executorParameters11 = [self executorParameters];
    logger5 = [executorParameters11 logger];
    [logger5 logPixelBuffer:*(self + 192) name:"pearlProcessed" timestamp:*(self + 312)];

    executorParameters12 = [self executorParameters];
    logger6 = [executorParameters12 logger];
    [logger6 logPixelBuffer:*(self + 200) name:"pearlMaskProcessed" timestamp:*(self + 312)];

    v30 = 0;
    *(self + 176) = 1;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v31 = MEMORY[0x277D86220];
    v32 = "preProcessPearl failed";
    goto LABEL_5;
  }

LABEL_8:

  kdebug_trace();
  return v30;
}

- (uint64_t)preprocessInputColorFrame:(double)frame pearlNormalizedDX:(double)x pearlPoses:(double)poses disparityNormalizationMultiplier:(double)multiplier disparityNormalizationOffset:(double)offset pceCameraCalibration:(uint64_t)calibration pearlCameraCalibrationTransform:(uint64_t)transform colorCameraCalibration:(__CVBuffer *)self0 timestamp:(void *)self1
{
  timestampCopy = timestamp;
  v30 = a12;
  Width = CVPixelBufferGetWidth(cameraCalibration);
  Height = CVPixelBufferGetHeight(cameraCalibration);
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  v34 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x31332E33u, BufferAttributes, &pixelBufferOut);
  v35 = pixelBufferOut;
  if (v34)
  {
    v36 = 1;
  }

  else
  {
    v36 = pixelBufferOut == 0;
  }

  if (v36)
  {
    v37 = -22950;
  }

  else
  {
    [self normalizedDX:cameraCalibration toDepth:pixelBufferOut withMultiplier:multiplier andOffset:offset];
    v37 = [self preprocessInputColorFrame:transform pearlDepth:v35 pearlPoses:timestampCopy pceCameraCalibration:v30 pearlCameraCalibrationTransform:a2 colorCameraCalibration:frame timestamp:{x, poses, a17, a19, a21, a23, a25}];
    CVPixelBufferRelease(v35);
  }

  return v37;
}

- (BOOL)normalizedDX:(__CVBuffer *)x toDepth:(__CVBuffer *)depth withMultiplier:(double)multiplier andOffset:(double)offset
{
  Width = CVPixelBufferGetWidth(x);
  if (Width != CVPixelBufferGetWidth(depth))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(x);
  if (Height != CVPixelBufferGetHeight(depth) || CVPixelBufferGetPixelFormatType(x) != 825306677 || CVPixelBufferGetPixelFormatType(depth) != 825437747)
  {
    return 0;
  }

  v12 = CVPixelBufferGetWidth(x);
  v13 = CVPixelBufferGetHeight(x);
  BytesPerRow = CVPixelBufferGetBytesPerRow(depth);
  v15 = CVPixelBufferGetBytesPerRow(x);
  CVPixelBufferLockBaseAddress(x, 1uLL);
  CVPixelBufferLockBaseAddress(depth, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(x);
  v17 = CVPixelBufferGetBaseAddress(depth);
  if (v13 && v12)
  {
    for (i = 0; i != v13; ++i)
    {
      v21 = v12;
      do
      {
        v23 = *BaseAddress;
        if (v23 == 0x1FFF)
        {
          v22 = 0;
        }

        else
        {
          v22 = vcvtd_n_s64_f64(1.0 / (offset + v23 * multiplier) * 1000.0, 3uLL);
        }

        *v17++ = v22;
        ++BaseAddress;
        --v21;
      }

      while (v21);
      BaseAddress += ((v15 - 2 * v12) >> 1);
      v17 += ((BytesPerRow - 2 * v12) >> 1);
    }
  }

  v19 = 1;
  CVPixelBufferUnlockBaseAddress(depth, 1uLL);
  CVPixelBufferUnlockBaseAddress(x, 1uLL);
  return v19;
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
    v11 = [(ADPearlColorInFieldCalibrationPipeline *)pipeline createReferenceCameraForColor:v10 withExtrinsics:?];
    mcamPCameraCalibration = self->_mcamPCameraCalibration;
    self->_mcamPCameraCalibration = v11;

    executorParameters2 = [(ADExecutor *)self executorParameters];
    logger2 = [executorParameters2 logger];
    [logger2 logCalibration:self->_mcamPCameraCalibration name:"referenceColorCameraCalibration" timestamp:self->_lastColorTimestamp];
  }
}

- (void)setPearlCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  [logger logCalibration:calibrationCopy name:"inputPearlCalibration" timestamp:self->_lastColorTimestamp];

  pearlCameraCalibration = self->_pearlCameraCalibration;
  if (!pearlCameraCalibration || ([(ADCameraCalibration *)pearlCameraCalibration isEqual:calibrationCopy]& 1) == 0)
  {
    v7 = [calibrationCopy copy];
    v8 = self->_pearlCameraCalibration;
    self->_pearlCameraCalibration = v7;

    [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline updatePearlCamera:self->_pearlCameraCalibration];
  }
}

- (int64_t)prepare
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 335680140;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pearl color infield calibration executor: preparing executor", v21, 2u);
  }

  backendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)selfCopy->_pipeline backendInferenceDescriptor];
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
    frontendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)selfCopy->_pipeline frontendInferenceDescriptor];
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
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "preparing pearl color in field calibration executor", v21, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *v21 = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "preparing pearl color in field calibration executor", v21, 2u);
      }

      allocateIntermediateBuffers = [(ADPearlColorInFieldCalibrationExecutor *)selfCopy allocateIntermediateBuffers];
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
  [(ADPearlColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  backendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline backendInferenceDescriptor];
  frontendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline frontendInferenceDescriptor];
  backendEspressoRunner = self->_backendEspressoRunner;
  colorInput = [backendInferenceDescriptor colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunner *)backendEspressoRunner createAndRegisterPixelBufferForDescriptor:colorInput];

  v6 = self->_backendEspressoRunner;
  pearlInput = [backendInferenceDescriptor pearlInput];
  self->_itmPreProcessedPearl = [(ADEspressoRunner *)v6 createAndRegisterPixelBufferForDescriptor:pearlInput];

  pearlMaskInput = [backendInferenceDescriptor pearlMaskInput];

  if (pearlMaskInput)
  {
    v9 = self->_backendEspressoRunner;
    pearlMaskInput2 = [backendInferenceDescriptor pearlMaskInput];
    self->_itmPreProcessedPearlMask = [(ADEspressoRunner *)v9 createAndRegisterPixelBufferForDescriptor:pearlMaskInput2];
  }

  v11 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedColor" moduleName:@"RGBP"];
  [ADUtils updatePixelBufferIOSurfaceLabel:v11 pixelBuffer:self->_itmPreProcessedColor];
  v12 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedPearl" moduleName:@"RGBP"];

  v51 = v12;
  [ADUtils updatePixelBufferIOSurfaceLabel:v12 pixelBuffer:self->_itmPreProcessedPearl];
  v13 = self->_backendEspressoRunner;
  featuresOutput = [backendInferenceDescriptor featuresOutput];
  v15 = [(ADEspressoRunner *)v13 registerDescriptor:featuresOutput];
  featuresOutputEspressoBufferHandle = self->_featuresOutputEspressoBufferHandle;
  self->_featuresOutputEspressoBufferHandle = v15;

  frontendEspressoRunner = self->_frontendEspressoRunner;
  featuresInput = [frontendInferenceDescriptor featuresInput];
  v19 = [(ADEspressoRunner *)frontendEspressoRunner registerDescriptor:featuresInput];
  frontendFeaturesInputEspressoBufferHandle = self->_frontendFeaturesInputEspressoBufferHandle;
  self->_frontendFeaturesInputEspressoBufferHandle = v19;

  v21 = self->_frontendEspressoRunner;
  rotationXOutput = [frontendInferenceDescriptor rotationXOutput];
  v23 = [(ADEspressoRunner *)v21 registerDescriptor:rotationXOutput];
  frontendRotationXOutputEspressoBufferHandle = self->_frontendRotationXOutputEspressoBufferHandle;
  self->_frontendRotationXOutputEspressoBufferHandle = v23;

  v25 = self->_frontendEspressoRunner;
  rotationYOutput = [frontendInferenceDescriptor rotationYOutput];
  v27 = [(ADEspressoRunner *)v25 registerDescriptor:rotationYOutput];
  frontendRotationYOutputEspressoBufferHandle = self->_frontendRotationYOutputEspressoBufferHandle;
  self->_frontendRotationYOutputEspressoBufferHandle = v27;

  rotationZOutput = [frontendInferenceDescriptor rotationZOutput];

  if (rotationZOutput)
  {
    v30 = self->_frontendEspressoRunner;
    rotationZOutput2 = [frontendInferenceDescriptor rotationZOutput];
    v32 = [(ADEspressoRunner *)v30 registerDescriptor:rotationZOutput2];
    frontendRotationZOutputEspressoBufferHandle = self->_frontendRotationZOutputEspressoBufferHandle;
    self->_frontendRotationZOutputEspressoBufferHandle = v32;
  }

  v34 = self->_frontendEspressoRunner;
  errorXOutput = [frontendInferenceDescriptor errorXOutput];
  v36 = [(ADEspressoRunner *)v34 registerDescriptor:errorXOutput];
  frontendErrorXOutputEspressoBufferHandle = self->_frontendErrorXOutputEspressoBufferHandle;
  self->_frontendErrorXOutputEspressoBufferHandle = v36;

  v38 = self->_frontendEspressoRunner;
  errorYOutput = [frontendInferenceDescriptor errorYOutput];
  v40 = [(ADEspressoRunner *)v38 registerDescriptor:errorYOutput];
  frontendErrorYOutputEspressoBufferHandle = self->_frontendErrorYOutputEspressoBufferHandle;
  self->_frontendErrorYOutputEspressoBufferHandle = v40;

  errorZOutput = [frontendInferenceDescriptor errorZOutput];

  if (errorZOutput)
  {
    v43 = self->_frontendEspressoRunner;
    errorZOutput2 = [frontendInferenceDescriptor errorZOutput];
    v45 = [(ADEspressoRunner *)v43 registerDescriptor:errorZOutput2];
    frontendErrorZOutputEspressoBufferHandle = self->_frontendErrorZOutputEspressoBufferHandle;
    self->_frontendErrorZOutputEspressoBufferHandle = v45;
  }

  if (self->_itmPreProcessedColor && self->_itmPreProcessedPearl && self->_featuresOutputEspressoBufferHandle && self->_frontendFeaturesInputEspressoBufferHandle && self->_frontendRotationXOutputEspressoBufferHandle && self->_frontendRotationYOutputEspressoBufferHandle && self->_frontendErrorXOutputEspressoBufferHandle && self->_frontendErrorYOutputEspressoBufferHandle && (![(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline isPearlMaskExpected]|| self->_itmPreProcessedPearlMask) && (![(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline isZused]|| self->_frontendRotationZOutputEspressoBufferHandle && self->_frontendErrorZOutputEspressoBufferHandle))
  {
    dimensionsProduct = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensionsProduct];
    executorParameters = [(ADExecutor *)self executorParameters];
    pipelineParameters = [executorParameters pipelineParameters];
    [pipelineParameters featuresVectorAggregationSize];

    self->_backendSingleResultSize = self->_backendFeaturesOutputElementSize * dimensionsProduct;
    operator new[]();
  }

  [(ADPearlColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];

  return -22971;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedColor);
  self->_itmPreProcessedColor = 0;
  CVPixelBufferRelease(self->_itmPreProcessedPearl);
  self->_itmPreProcessedPearl = 0;
  CVPixelBufferRelease(self->_itmPreProcessedPearlMask);
  self->_itmPreProcessedPearlMask = 0;
}

- (void)dealloc
{
  if (self->_backendResultAggregated)
  {
    MEMORY[0x245CBFC90]();
  }

  [(ADPearlColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  v3.receiver = self;
  v3.super_class = ADPearlColorInFieldCalibrationExecutor;
  [(ADExecutor *)&v3 dealloc];
}

- (id)initForEngineType:(unint64_t)type
{
  kdebug_trace();
  v5 = objc_alloc_init(ADPearlColorInFieldCalibrationExecutorParameters);
  v6 = [(ADPearlColorInFieldCalibrationExecutor *)self initForEngineType:type andExecutorParameters:v5];

  kdebug_trace();
  return v6;
}

- (id)initForEngineType:(unint64_t)type andExecutorParameters:(id)parameters
{
  parametersCopy = parameters;
  v42 = 335679636;
  v43 = 0u;
  v44 = 0u;
  kdebug_trace();
  v41.receiver = self;
  v41.super_class = ADPearlColorInFieldCalibrationExecutor;
  v7 = [(ADExecutor *)&v41 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v7->_isPrepared = 0;
  v9 = [ADPearlColorInFieldCalibrationPipeline alloc];
  pipelineParameters = [parametersCopy pipelineParameters];
  v11 = [(ADPearlColorInFieldCalibrationPipeline *)v9 initWithParameters:pipelineParameters espressoEngine:type];
  pipeline = v8->_pipeline;
  v8->_pipeline = v11;

  if (!v8->_pipeline)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = 0;
    v37 = MEMORY[0x277D86220];
    v38 = "Pearl Color In Field Calibration pipeline failed to init ";
LABEL_18:
    _os_log_error_impl(&dword_2402F6000, v37, OS_LOG_TYPE_ERROR, v38, &v40, 2u);
    goto LABEL_19;
  }

  v8->super._engineType = type;
  backendEspressoRunner = v8->_backendEspressoRunner;
  v8->_backendEspressoRunner = 0;

  frontendEspressoRunner = v8->_frontendEspressoRunner;
  v8->_frontendEspressoRunner = 0;

  mcamPCameraCalibration = v8->_mcamPCameraCalibration;
  v8->_mcamPCameraCalibration = 0;

  v16 = [ADPearlColorInFieldCalibrationExecutorParameters alloc];
  pipelineParameters2 = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline pipelineParameters];
  v18 = [(ADPearlColorInFieldCalibrationExecutorParameters *)v16 initWithPipelineParameters:pipelineParameters2];
  [(ADExecutor *)v8 setExecutorParameters:v18];

  executorParameters = [(ADExecutor *)v8 executorParameters];

  if (!executorParameters)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v40 = 0;
    v37 = MEMORY[0x277D86220];
    v38 = "Pearl Color In Field Calibration executor parameters failed to init ";
    goto LABEL_18;
  }

  v8->_itmPreProcessedColor = 0;
  v8->_itmPreProcessedPearl = 0;
  v8->_itmPreProcessedPearlMask = 0;
  featuresOutputEspressoBufferHandle = v8->_featuresOutputEspressoBufferHandle;
  v8->_featuresOutputEspressoBufferHandle = 0;

  frontendFeaturesInputEspressoBufferHandle = v8->_frontendFeaturesInputEspressoBufferHandle;
  v8->_frontendFeaturesInputEspressoBufferHandle = 0;

  frontendErrorXOutputEspressoBufferHandle = v8->_frontendErrorXOutputEspressoBufferHandle;
  v8->_frontendErrorXOutputEspressoBufferHandle = 0;

  frontendErrorYOutputEspressoBufferHandle = v8->_frontendErrorYOutputEspressoBufferHandle;
  v8->_frontendErrorYOutputEspressoBufferHandle = 0;

  frontendErrorZOutputEspressoBufferHandle = v8->_frontendErrorZOutputEspressoBufferHandle;
  v8->_frontendErrorZOutputEspressoBufferHandle = 0;

  frontendRotationXOutputEspressoBufferHandle = v8->_frontendRotationXOutputEspressoBufferHandle;
  v8->_frontendRotationXOutputEspressoBufferHandle = 0;

  frontendRotationYOutputEspressoBufferHandle = v8->_frontendRotationYOutputEspressoBufferHandle;
  v8->_frontendRotationYOutputEspressoBufferHandle = 0;

  frontendRotationZOutputEspressoBufferHandle = v8->_frontendRotationZOutputEspressoBufferHandle;
  v8->_frontendRotationZOutputEspressoBufferHandle = 0;

  frontendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline frontendInferenceDescriptor];
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

    v40 = 0;
    v37 = MEMORY[0x277D86220];
    v38 = "Unexpected pixel format for frontend input";
    goto LABEL_18;
  }

  backendInferenceDescriptor = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline backendInferenceDescriptor];
  featuresOutput = [backendInferenceDescriptor featuresOutput];
  imageDescriptor2 = [featuresOutput imageDescriptor];
  v8->_backendFeaturesOutputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([imageDescriptor2 pixelFormat], 0);

  backendFeaturesOutputElementSize = v8->_backendFeaturesOutputElementSize;
  if (backendFeaturesOutputElementSize != 2 && backendFeaturesOutputElementSize != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v40 = 0;
      v37 = MEMORY[0x277D86220];
      v38 = "Unexpected pixel format for backend output";
      goto LABEL_18;
    }

LABEL_19:
    v36 = 0;
    goto LABEL_20;
  }

  v8->_backendResultAggregated = 0;
  v8->_backendResultAggregationCounter = 0;
  v8->_backendSingleResultSize = 0;
  v8->_lastColorTimestamp = 0.0;
LABEL_9:
  v36 = v8;
LABEL_20:
  kdebug_trace();

  return v36;
}

@end