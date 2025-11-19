@interface ADPearlColorInFieldCalibrationExecutor
- (BOOL)normalizedDX:(__CVBuffer *)a3 toDepth:(__CVBuffer *)a4 withMultiplier:(double)a5 andOffset:(double)a6;
- (__n128)setWmcamToMcamExtrinsics:(__n128)a3;
- (id)initForEngineType:(unint64_t)a3;
- (id)initForEngineType:(unint64_t)a3 andExecutorParameters:(id)a4;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)executePreprocessedInputsWithInterSessionData:(id)a3 outResult:(id)a4;
- (int64_t)prepare;
- (uint64_t)preprocessInputColorFrame:(double)a3 pearlDepth:(double)a4 pearlPoses:(double)a5 pceCameraCalibration:(double)a6 pearlCameraCalibrationTransform:(double)a7 colorCameraCalibration:(double)a8 timestamp:(double)a9;
- (uint64_t)preprocessInputColorFrame:(double)a3 pearlNormalizedDX:(double)a4 pearlPoses:(double)a5 disparityNormalizationMultiplier:(double)a6 disparityNormalizationOffset:(double)a7 pceCameraCalibration:(uint64_t)a8 pearlCameraCalibrationTransform:(uint64_t)a9 colorCameraCalibration:(__CVBuffer *)a10 timestamp:(void *)a11;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
- (void)setColorCameraCalibration:(id)a3;
- (void)setPearlCameraCalibration:(id)a3;
@end

@implementation ADPearlColorInFieldCalibrationExecutor

- (__n128)setWmcamToMcamExtrinsics:(__n128)a3
{
  result[23] = a2;
  result[24] = a3;
  result[25] = a4;
  result[26] = a5;
  return result;
}

- (int64_t)executePreprocessedInputsWithInterSessionData:(id)a3 outResult:(id)a4
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_preProcessInputColorFrameDone)
  {
    v8 = [(ADExecutor *)self executorParameters];
    v9 = [v8 logger];
    v10 = [v6 persistenceData];
    [v9 logDictionary:v10 name:"inputIntersessionData" timestamp:self->_lastColorTimestamp];

    self->_preProcessInputColorFrameDone = 0;
    [v7 setExecuted:0];
    if (self->_isPrepared)
    {
      if (self->_backendEspressoRunner && self->_frontendEspressoRunner)
      {
        if (v7)
        {
          v11 = [(ADExecutor *)self executorParameters];
          v98 = [v11 stepsToExecute];

          v12 = [(ADExecutor *)self executorParameters];
          v99 = [v12 timeProfiler];

          v96 = v98 - 1;
          if (v98 < 1)
          {
            v16 = -22977;
LABEL_33:

            goto LABEL_34;
          }

          kdebug_trace();
          [v99 startWithUTFString:"first network execution"];
          [(ADExecutor *)self frameExecutionStart];
          v13 = [(ADExecutor *)self executorParameters];
          v14 = [v13 timeProfiler];
          [v14 start:@"BackendProcess"];

          v15 = +[ADTimeProfiler currentTimeUsec];
          v16 = [(ADEspressoRunner *)self->_backendEspressoRunner execute];
          v17 = +[ADTimeProfiler currentTimeUsec];
          if (v16)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed executing backend", buf, 2u);
            }

            goto LABEL_33;
          }

          v18 = v17;
          v19 = [(ADExecutor *)self executorParameters];
          v20 = [v19 timeProfiler];
          [v20 stop:@"BackendProcess"];

          v95 = [v6 inFieldCalibrationTelemetryData];
          [v95 reportBackendRunTime:v18 - v15];
          v21 = [(ADExecutor *)self executorParameters];
          v22 = [v21 logger];
          [v22 logRawBuffer:-[ADEspressoBufferHandle data](self->_featuresOutputEspressoBufferHandle size:"data") name:self->_backendSingleResultSize timestamp:{"featureVectorItr", self->_lastColorTimestamp}];

          memcpy(self->_backendResultAggregated + self->_backendSingleResultSize * self->_backendResultAggregationCounter, [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle data], self->_backendSingleResultSize);
          LODWORD(v18) = self->_backendResultAggregationCounter + 1;
          self->_backendResultAggregationCounter = v18;
          v23 = [(ADExecutor *)self executorParameters];
          v24 = [v23 pipelineParameters];
          LODWORD(v22) = [v24 featuresVectorAggregationSize];

          if (v18 == v22)
          {
            v25 = [(ADExecutor *)self executorParameters];
            v26 = [v25 timeProfiler];
            [v26 start:@"FrontendProcess"];

            v97 = +[ADTimeProfiler currentTimeUsec];
            self->_backendResultAggregationCounter = 0;
            [v99 stopWithUTFString:"first network execution"];
            kdebug_trace();
            if (v98 == 1)
            {
              goto LABEL_31;
            }

            kdebug_trace();
            [v99 startWithUTFString:"preprocess features"];
            pipeline = self->_pipeline;
            backendResultAggregated = self->_backendResultAggregated;
            v29 = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle data];
            v30 = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensions];
            v16 = [(ADPearlColorInFieldCalibrationPipeline *)pipeline processIntermediateResultsWithBackendFeaturesOutputVector:backendResultAggregated frontendEspressoFeaturesInput:v29 dimensions:v30];

            if (v16)
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

            [v99 stopWithUTFString:"preprocess features"];
            kdebug_trace();
            if (v98 < 3)
            {
              goto LABEL_31;
            }

            kdebug_trace();
            [v99 startWithUTFString:"second network execution"];
            v16 = [(ADEspressoRunner *)self->_frontendEspressoRunner execute];
            if (v16)
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
            v36 = [(ADExecutor *)self executorParameters];
            v37 = [v36 timeProfiler];
            [v37 stop:@"FrontendProcess"];

            [v95 reportFrontendRunTime:v35 - v97];
            v38 = [(ADEspressoBufferHandle *)self->_frontendFeaturesInputEspressoBufferHandle dimensionsProduct];
            frontendFeaturesInputElementSize = self->_frontendFeaturesInputElementSize;
            v40 = [(ADExecutor *)self executorParameters];
            v41 = [v40 logger];
            [v41 logRawBuffer:-[ADEspressoBufferHandle data](self->_frontendFeaturesInputEspressoBufferHandle size:"data") name:frontendFeaturesInputElementSize * v38 timestamp:{"featureVectorAvg", self->_lastColorTimestamp}];

            [v99 stopWithUTFString:"second network execution"];
            kdebug_trace();
            if (v98 == 3)
            {
LABEL_31:
              v16 = -22977;
              goto LABEL_32;
            }

            kdebug_trace();
            [v99 startWithUTFString:"postprocess rotation"];
            v42 = [(ADExecutor *)self executorParameters];
            v43 = [v42 timeProfiler];
            [v43 start:@"PostProcess"];

            v16 = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline postProcessFrontendOutputX:[(ADEspressoBufferHandle *)self->_frontendRotationXOutputEspressoBufferHandle data] frontendOutputY:[(ADEspressoBufferHandle *)self->_frontendRotationYOutputEspressoBufferHandle data] frontendOutputZ:[(ADEspressoBufferHandle *)self->_frontendRotationZOutputEspressoBufferHandle data] frontendOutputErrorX:[(ADEspressoBufferHandle *)self->_frontendErrorXOutputEspressoBufferHandle data] frontendOutputErrorY:[(ADEspressoBufferHandle *)self->_frontendErrorYOutputEspressoBufferHandle data] frontendOutputErrorZ:[(ADEspressoBufferHandle *)self->_frontendErrorZOutputEspressoBufferHandle data] interSessionData:v6 pearlColorInFieldCalibrationResult:v7];
            if (v16)
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

            v44 = [(ADExecutor *)self executorParameters];
            v45 = [v44 timeProfiler];
            [v45 stop:@"PostProcess"];

            v46 = [(ADExecutor *)self executorParameters];
            v47 = [v46 logger];
            v48 = [v7 dictionaryRepresentation];
            [v47 logDictionary:v48 name:"internalUseResults" timestamp:self->_lastColorTimestamp];

            v49 = [(ADExecutor *)self executorParameters];
            v50 = [v49 logger];
            [v7 pearlToColorExtrinsics];
            [v50 logMatrix4x3:"depthToColorExtrinsics" name:? timestamp:?];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              [v7 preRelative2FactoryX];
              v52 = v51;
              [v7 preRelative2FactoryY];
              v54 = v53;
              [v7 preRelative2FactoryZ];
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
              [v7 postRelative2FactoryX];
              v57 = v56;
              [v7 postRelative2FactoryY];
              v59 = v58;
              [v7 postRelative2FactoryZ];
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
              [v7 deltaRotationX];
              v62 = v61;
              [v7 deltaRotationY];
              v64 = v63;
              [v7 deltaRotationZ];
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
              [v7 postRelative2PrevX];
              v67 = v66;
              [v7 postRelative2PrevY];
              v69 = v68;
              [v7 postRelative2PrevZ];
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
              [v7 absoluteRotationX];
              v72 = v71;
              [v7 absoluteRotationY];
              v74 = v73;
              [v7 absoluteRotationZ];
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
              [v7 absoluteRotationPostISFX];
              v77 = v76;
              [v7 absoluteRotationPostISFY];
              v79 = v78;
              [v7 absoluteRotationPostISFZ];
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
              [v7 factoryRotationX];
              v82 = v81;
              [v7 factoryRotationY];
              v84 = v83;
              [v7 factoryRotationZ];
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
              [v7 stdX];
              v87 = v86;
              [v7 stdY];
              v89 = v88;
              [v7 stdZ];
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
              v91 = [v7 executed];
              [v7 confidence];
              *buf = 67109376;
              *v101 = v91;
              *&v101[4] = 2048;
              *&v101[6] = v92;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ADPearlColorInFieldCalibration run executed: %d with std: %f]", buf, 0x12u);
            }

            [v95 increaseRunTimesByOne];
            [v95 updateLastExecutionTime:{+[ADTimeProfiler currentTimeUsec](ADTimeProfiler, "currentTimeUsec")}];
            v93 = [(ADExecutor *)self executorParameters];
            v94 = [v93 reportTelemetry];

            v96 = v98 - 4;
            if (v94)
            {
              [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline reportTelemetry:v7 withInterSessionData:v6];
              [v95 reset];
            }

            v33 = "postprocess rotation";
          }

          else
          {

            v7 = 0;
            v33 = "first network execution";
          }

          [v99 stopWithUTFString:v33];
          kdebug_trace();
          if (v96)
          {
            [(ADExecutor *)self frameExecutionEnd];
            v16 = 0;
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to ADPearlColorInFieldCalibrationResult", buf, 2u);
        }

        v7 = 0;
        v16 = -22953;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing executor", buf, 2u);
        }

        v16 = -22960;
      }
    }

    else
    {
      v16 = -22970;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "running executeForPreprocesed before preProcessInputColorFrame called", buf, 2u);
    }

    v16 = -22961;
  }

LABEL_34:

  return v16;
}

- (uint64_t)preprocessInputColorFrame:(double)a3 pearlDepth:(double)a4 pearlPoses:(double)a5 pceCameraCalibration:(double)a6 pearlCameraCalibrationTransform:(double)a7 colorCameraCalibration:(double)a8 timestamp:(double)a9
{
  v53 = a13;
  v54 = a14;
  v56 = 335684824;
  v57 = 0u;
  v58 = 0u;
  kdebug_trace();
  *(a1 + 176) = 0;
  *(a1 + 312) = a17;
  v20 = [a1 executorParameters];
  v21 = [v20 logger];
  [v21 logMatrix4x4:"inputIrToDepthTransform" name:a6 timestamp:{a7, a8, a9, *(a1 + 312)}];

  [a1 setColorCameraCalibration:v54];
  [a1 setPearlCameraCalibration:v53];
  v22 = [a1 executorParameters];
  v23 = [v22 stepsToExecute];

  v24 = [a1 executorParameters];
  v25 = [v24 timeProfiler];

  if (v23 < 1)
  {
    goto LABEL_7;
  }

  kdebug_trace();
  [v25 startWithUTFString:"preprocess pearl"];
  [a1 frameExecutionStart];
  v26 = [a1 executorParameters];
  v27 = [v26 timeProfiler];
  [v27 start:@"preprocessColor"];

  v28 = [a1 executorParameters];
  v29 = [v28 logger];
  [v29 logPixelBuffer:a11 name:"inputColor" timestamp:*(a1 + 312)];

  v30 = [*(a1 + 336) preProcessColor:a11 processedColor:*(a1 + 184) referenceCameraCalibration:*(a1 + 168) colorCameraCalibration:*(a1 + 344)];
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

  v33 = [a1 executorParameters];
  v34 = [v33 logger];
  [v34 logPixelBuffer:*(a1 + 184) name:"processedColor" timestamp:*(a1 + 312)];

  v35 = [a1 executorParameters];
  v36 = [v35 timeProfiler];
  [v36 stop:@"preprocessColor"];

  [v25 stopWithUTFString:"preprocess pearl"];
  kdebug_trace();
  if (v23 == 1)
  {
LABEL_7:
    v30 = -22977;
    goto LABEL_8;
  }

  kdebug_trace();
  [v25 startWithUTFString:"preprocess color"];
  v38 = [a1 executorParameters];
  v39 = [v38 timeProfiler];
  [v39 start:@"ProjectPearlPoints"];

  v40 = [a1 executorParameters];
  v41 = [v40 logger];
  [v41 logPixelBuffer:a12 name:"inputPearl" timestamp:*(a1 + 312)];

  [*(a1 + 336) setPearlToColorCurrentTransform:{a6, a7, a8, a9}];
  v30 = [*(a1 + 336) preProcessPearl:a12 referenceCameraCalibration:*(a1 + 168) pearlCameraCalibration:*(a1 + 352) reprojectedPointsBuffer:*(a1 + 192) reprojectedPointsMaskBuffer:*(a1 + 200)];
  v42 = [a1 executorParameters];
  v43 = [v42 timeProfiler];
  [v43 stop:@"ProjectPearlPoints"];

  if (!v30)
  {
    v44 = [a1 executorParameters];
    v45 = [v44 logger];
    [v45 logPixelBuffer:*(a1 + 192) name:"pearlProcessed" timestamp:*(a1 + 312)];

    v46 = [a1 executorParameters];
    v47 = [v46 logger];
    [v47 logPixelBuffer:*(a1 + 200) name:"pearlMaskProcessed" timestamp:*(a1 + 312)];

    v30 = 0;
    *(a1 + 176) = 1;
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

- (uint64_t)preprocessInputColorFrame:(double)a3 pearlNormalizedDX:(double)a4 pearlPoses:(double)a5 disparityNormalizationMultiplier:(double)a6 disparityNormalizationOffset:(double)a7 pceCameraCalibration:(uint64_t)a8 pearlCameraCalibrationTransform:(uint64_t)a9 colorCameraCalibration:(__CVBuffer *)a10 timestamp:(void *)a11
{
  v29 = a11;
  v30 = a12;
  Width = CVPixelBufferGetWidth(a10);
  Height = CVPixelBufferGetHeight(a10);
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
    [a1 normalizedDX:a10 toDepth:pixelBufferOut withMultiplier:a6 andOffset:a7];
    v37 = [a1 preprocessInputColorFrame:a9 pearlDepth:v35 pearlPoses:v29 pceCameraCalibration:v30 pearlCameraCalibrationTransform:a2 colorCameraCalibration:a3 timestamp:{a4, a5, a17, a19, a21, a23, a25}];
    CVPixelBufferRelease(v35);
  }

  return v37;
}

- (BOOL)normalizedDX:(__CVBuffer *)a3 toDepth:(__CVBuffer *)a4 withMultiplier:(double)a5 andOffset:(double)a6
{
  Width = CVPixelBufferGetWidth(a3);
  if (Width != CVPixelBufferGetWidth(a4))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(a3);
  if (Height != CVPixelBufferGetHeight(a4) || CVPixelBufferGetPixelFormatType(a3) != 825306677 || CVPixelBufferGetPixelFormatType(a4) != 825437747)
  {
    return 0;
  }

  v12 = CVPixelBufferGetWidth(a3);
  v13 = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  v15 = CVPixelBufferGetBytesPerRow(a3);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v17 = CVPixelBufferGetBaseAddress(a4);
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
          v22 = vcvtd_n_s64_f64(1.0 / (a6 + v23 * a5) * 1000.0, 3uLL);
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
  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  return v19;
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
    v11 = [(ADPearlColorInFieldCalibrationPipeline *)pipeline createReferenceCameraForColor:v10 withExtrinsics:?];
    mcamPCameraCalibration = self->_mcamPCameraCalibration;
    self->_mcamPCameraCalibration = v11;

    v13 = [(ADExecutor *)self executorParameters];
    v14 = [v13 logger];
    [v14 logCalibration:self->_mcamPCameraCalibration name:"referenceColorCameraCalibration" timestamp:self->_lastColorTimestamp];
  }
}

- (void)setPearlCameraCalibration:(id)a3
{
  v9 = a3;
  v4 = [(ADExecutor *)self executorParameters];
  v5 = [v4 logger];
  [v5 logCalibration:v9 name:"inputPearlCalibration" timestamp:self->_lastColorTimestamp];

  pearlCameraCalibration = self->_pearlCameraCalibration;
  if (!pearlCameraCalibration || ([(ADCameraCalibration *)pearlCameraCalibration isEqual:v9]& 1) == 0)
  {
    v7 = [v9 copy];
    v8 = self->_pearlCameraCalibration;
    self->_pearlCameraCalibration = v7;

    [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline updatePearlCamera:self->_pearlCameraCalibration];
  }
}

- (int64_t)prepare
{
  v2 = self;
  objc_sync_enter(v2);
  v22 = 335680140;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "pearl color infield calibration executor: preparing executor", v21, 2u);
  }

  v3 = [(ADPearlColorInFieldCalibrationPipeline *)v2->_pipeline backendInferenceDescriptor];
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
    v11 = [(ADPearlColorInFieldCalibrationPipeline *)v2->_pipeline frontendInferenceDescriptor];
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
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "preparing pearl color in field calibration executor", v21, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *v21 = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "preparing pearl color in field calibration executor", v21, 2u);
      }

      v19 = [(ADPearlColorInFieldCalibrationExecutor *)v2 allocateIntermediateBuffers];
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
  [(ADPearlColorInFieldCalibrationExecutor *)self deallocateEspressoBuffers];
  v52 = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline backendInferenceDescriptor];
  v3 = [(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline frontendInferenceDescriptor];
  backendEspressoRunner = self->_backendEspressoRunner;
  v5 = [v52 colorInput];
  self->_itmPreProcessedColor = [(ADEspressoRunner *)backendEspressoRunner createAndRegisterPixelBufferForDescriptor:v5];

  v6 = self->_backendEspressoRunner;
  v7 = [v52 pearlInput];
  self->_itmPreProcessedPearl = [(ADEspressoRunner *)v6 createAndRegisterPixelBufferForDescriptor:v7];

  v8 = [v52 pearlMaskInput];

  if (v8)
  {
    v9 = self->_backendEspressoRunner;
    v10 = [v52 pearlMaskInput];
    self->_itmPreProcessedPearlMask = [(ADEspressoRunner *)v9 createAndRegisterPixelBufferForDescriptor:v10];
  }

  v11 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedColor" moduleName:@"RGBP"];
  [ADUtils updatePixelBufferIOSurfaceLabel:v11 pixelBuffer:self->_itmPreProcessedColor];
  v12 = [ADUtils getStandardNameForBufferOfType:@"itmPreProcessedPearl" moduleName:@"RGBP"];

  v51 = v12;
  [ADUtils updatePixelBufferIOSurfaceLabel:v12 pixelBuffer:self->_itmPreProcessedPearl];
  v13 = self->_backendEspressoRunner;
  v14 = [v52 featuresOutput];
  v15 = [(ADEspressoRunner *)v13 registerDescriptor:v14];
  featuresOutputEspressoBufferHandle = self->_featuresOutputEspressoBufferHandle;
  self->_featuresOutputEspressoBufferHandle = v15;

  frontendEspressoRunner = self->_frontendEspressoRunner;
  v18 = [v3 featuresInput];
  v19 = [(ADEspressoRunner *)frontendEspressoRunner registerDescriptor:v18];
  frontendFeaturesInputEspressoBufferHandle = self->_frontendFeaturesInputEspressoBufferHandle;
  self->_frontendFeaturesInputEspressoBufferHandle = v19;

  v21 = self->_frontendEspressoRunner;
  v22 = [v3 rotationXOutput];
  v23 = [(ADEspressoRunner *)v21 registerDescriptor:v22];
  frontendRotationXOutputEspressoBufferHandle = self->_frontendRotationXOutputEspressoBufferHandle;
  self->_frontendRotationXOutputEspressoBufferHandle = v23;

  v25 = self->_frontendEspressoRunner;
  v26 = [v3 rotationYOutput];
  v27 = [(ADEspressoRunner *)v25 registerDescriptor:v26];
  frontendRotationYOutputEspressoBufferHandle = self->_frontendRotationYOutputEspressoBufferHandle;
  self->_frontendRotationYOutputEspressoBufferHandle = v27;

  v29 = [v3 rotationZOutput];

  if (v29)
  {
    v30 = self->_frontendEspressoRunner;
    v31 = [v3 rotationZOutput];
    v32 = [(ADEspressoRunner *)v30 registerDescriptor:v31];
    frontendRotationZOutputEspressoBufferHandle = self->_frontendRotationZOutputEspressoBufferHandle;
    self->_frontendRotationZOutputEspressoBufferHandle = v32;
  }

  v34 = self->_frontendEspressoRunner;
  v35 = [v3 errorXOutput];
  v36 = [(ADEspressoRunner *)v34 registerDescriptor:v35];
  frontendErrorXOutputEspressoBufferHandle = self->_frontendErrorXOutputEspressoBufferHandle;
  self->_frontendErrorXOutputEspressoBufferHandle = v36;

  v38 = self->_frontendEspressoRunner;
  v39 = [v3 errorYOutput];
  v40 = [(ADEspressoRunner *)v38 registerDescriptor:v39];
  frontendErrorYOutputEspressoBufferHandle = self->_frontendErrorYOutputEspressoBufferHandle;
  self->_frontendErrorYOutputEspressoBufferHandle = v40;

  v42 = [v3 errorZOutput];

  if (v42)
  {
    v43 = self->_frontendEspressoRunner;
    v44 = [v3 errorZOutput];
    v45 = [(ADEspressoRunner *)v43 registerDescriptor:v44];
    frontendErrorZOutputEspressoBufferHandle = self->_frontendErrorZOutputEspressoBufferHandle;
    self->_frontendErrorZOutputEspressoBufferHandle = v45;
  }

  if (self->_itmPreProcessedColor && self->_itmPreProcessedPearl && self->_featuresOutputEspressoBufferHandle && self->_frontendFeaturesInputEspressoBufferHandle && self->_frontendRotationXOutputEspressoBufferHandle && self->_frontendRotationYOutputEspressoBufferHandle && self->_frontendErrorXOutputEspressoBufferHandle && self->_frontendErrorYOutputEspressoBufferHandle && (![(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline isPearlMaskExpected]|| self->_itmPreProcessedPearlMask) && (![(ADPearlColorInFieldCalibrationPipeline *)self->_pipeline isZused]|| self->_frontendRotationZOutputEspressoBufferHandle && self->_frontendErrorZOutputEspressoBufferHandle))
  {
    v47 = [(ADEspressoBufferHandle *)self->_featuresOutputEspressoBufferHandle dimensionsProduct];
    v48 = [(ADExecutor *)self executorParameters];
    v49 = [v48 pipelineParameters];
    [v49 featuresVectorAggregationSize];

    self->_backendSingleResultSize = self->_backendFeaturesOutputElementSize * v47;
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

- (id)initForEngineType:(unint64_t)a3
{
  kdebug_trace();
  v5 = objc_alloc_init(ADPearlColorInFieldCalibrationExecutorParameters);
  v6 = [(ADPearlColorInFieldCalibrationExecutor *)self initForEngineType:a3 andExecutorParameters:v5];

  kdebug_trace();
  return v6;
}

- (id)initForEngineType:(unint64_t)a3 andExecutorParameters:(id)a4
{
  v6 = a4;
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
  v10 = [v6 pipelineParameters];
  v11 = [(ADPearlColorInFieldCalibrationPipeline *)v9 initWithParameters:v10 espressoEngine:a3];
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

  v8->super._engineType = a3;
  backendEspressoRunner = v8->_backendEspressoRunner;
  v8->_backendEspressoRunner = 0;

  frontendEspressoRunner = v8->_frontendEspressoRunner;
  v8->_frontendEspressoRunner = 0;

  mcamPCameraCalibration = v8->_mcamPCameraCalibration;
  v8->_mcamPCameraCalibration = 0;

  v16 = [ADPearlColorInFieldCalibrationExecutorParameters alloc];
  v17 = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline pipelineParameters];
  v18 = [(ADPearlColorInFieldCalibrationExecutorParameters *)v16 initWithPipelineParameters:v17];
  [(ADExecutor *)v8 setExecutorParameters:v18];

  v19 = [(ADExecutor *)v8 executorParameters];

  if (!v19)
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

  v28 = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline frontendInferenceDescriptor];
  v29 = [v28 featuresInput];
  v30 = [v29 imageDescriptor];
  v8->_frontendFeaturesInputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([v30 pixelFormat], 0);

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

  v32 = [(ADPearlColorInFieldCalibrationPipeline *)v8->_pipeline backendInferenceDescriptor];
  v33 = [v32 featuresOutput];
  v34 = [v33 imageDescriptor];
  v8->_backendFeaturesOutputElementSize = PixelBufferUtils::pixelSizeForPixelFormat([v34 pixelFormat], 0);

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