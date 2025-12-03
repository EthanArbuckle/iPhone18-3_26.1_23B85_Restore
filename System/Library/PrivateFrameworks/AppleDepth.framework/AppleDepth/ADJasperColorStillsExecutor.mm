@interface ADJasperColorStillsExecutor
- (ADJasperColorStillsExecutor)init;
- (ADJasperColorStillsExecutor)initWithParameters:(id)parameters;
- (id)getIntermediates;
- (id)initForDevice:(id)device;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)numberOfExecutionSteps;
- (int64_t)prepareForEngineType:(unint64_t)type inputROI:(CGRect)i;
- (uint64_t)executeWithColor:(__n128)color pointCloudArray:(__n128)array pointCloud2ColorTransform:(__n128)transform colorCameraCalibration:(uint64_t)calibration outDepthMap:(__CVBuffer *)map;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADJasperColorStillsExecutor

- (int64_t)numberOfExecutionSteps
{
  executorParameters = [(ADExecutor *)self executorParameters];
  performJasperToColorTransformCorrection = [executorParameters performJasperToColorTransformCorrection];

  if (performJasperToColorTransformCorrection)
  {
    return 9;
  }

  else
  {
    return 5;
  }
}

- (id)getIntermediates
{
  v44[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    v43[0] = @"name";
    v43[1] = @"image";
    v44[0] = @"CroppedScaledColor";
    v44[1] = itmCroppedScaledColor;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    [v3 addObject:v5];
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    v41[0] = @"name";
    v41[1] = @"image";
    v42[0] = @"RotatedColor";
    v42[1] = itmRotatedColor;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    [v3 addObject:v7];
  }

  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    v39[0] = @"name";
    v39[1] = @"image";
    v40[0] = @"PreProcessed Color";
    v40[1] = itmPreProcessedColor;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    [v3 addObject:v9];
  }

  itmPreProcessedJasper = self->_itmPreProcessedJasper;
  if (itmPreProcessedJasper)
  {
    v37[0] = @"name";
    v37[1] = @"image";
    v38[0] = @"PreProcessed Jasper";
    v38[1] = itmPreProcessedJasper;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 addObject:v11];
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    v35[0] = @"name";
    v35[1] = @"image";
    v36[0] = @"Unprocessed Depth";
    v36[1] = itmUnprocessedDepth;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v3 addObject:v13];
  }

  itmUnscaledProcessedDepth = self->_itmUnscaledProcessedDepth;
  if (itmUnscaledProcessedDepth)
  {
    v33[0] = @"name";
    v33[1] = @"image";
    v34[0] = @"Unscaled processed Depth";
    v34[1] = itmUnscaledProcessedDepth;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 addObject:v15];
  }

  itmPreProcessedJasperForCorrection = self->_itmPreProcessedJasperForCorrection;
  if (itmPreProcessedJasperForCorrection)
  {
    v31[0] = @"name";
    v31[1] = @"image";
    v32[0] = @"Unprocessed point cloud for correction";
    v32[1] = itmPreProcessedJasperForCorrection;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 addObject:v17];
  }

  aggregatedPointCloud = self->_aggregatedPointCloud;
  if (aggregatedPointCloud)
  {
    v29[0] = @"name";
    v29[1] = @"pointcloud";
    v30[0] = @"Aggregated point cloud";
    v30[1] = aggregatedPointCloud;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v3 addObject:v19];
  }

  aggregatedPointCloudBeforeCorrection = self->_aggregatedPointCloudBeforeCorrection;
  if (aggregatedPointCloudBeforeCorrection)
  {
    v27[0] = @"name";
    v27[1] = @"pointcloud";
    v28[0] = @"Aggregated point cloud before correction";
    v28[1] = aggregatedPointCloudBeforeCorrection;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 addObject:v21];
  }

  correctionLogString = self->_correctionLogString;
  if (correctionLogString)
  {
    v25[0] = @"name";
    v25[1] = @"string";
    v26[0] = @"Correction results";
    v26[1] = correctionLogString;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v3 addObject:v23];
  }

  return v3;
}

- (void)dealloc
{
  itmCroppedScaledColor = self->_itmCroppedScaledColor;
  if (itmCroppedScaledColor)
  {
    CVPixelBufferRelease(itmCroppedScaledColor);
  }

  itmRotatedColor = self->_itmRotatedColor;
  if (itmRotatedColor)
  {
    CVPixelBufferRelease(itmRotatedColor);
  }

  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    CVPixelBufferRelease(itmPreProcessedColor);
  }

  itmPreProcessedJasper = self->_itmPreProcessedJasper;
  if (itmPreProcessedJasper)
  {
    CVPixelBufferRelease(itmPreProcessedJasper);
  }

  itmPreProcessedJasperForCorrection = self->_itmPreProcessedJasperForCorrection;
  if (itmPreProcessedJasperForCorrection)
  {
    CVPixelBufferRelease(itmPreProcessedJasperForCorrection);
  }

  itmUnprocessedDepth = self->_itmUnprocessedDepth;
  if (itmUnprocessedDepth)
  {
    CVPixelBufferRelease(itmUnprocessedDepth);
  }

  itmUnscaledProcessedDepth = self->_itmUnscaledProcessedDepth;
  if (itmUnscaledProcessedDepth)
  {
    CVPixelBufferRelease(itmUnscaledProcessedDepth);
  }

  v10.receiver = self;
  v10.super_class = ADJasperColorStillsExecutor;
  [(ADExecutor *)&v10 dealloc];
}

- (uint64_t)executeWithColor:(__n128)color pointCloudArray:(__n128)array pointCloud2ColorTransform:(__n128)transform colorCameraCalibration:(uint64_t)calibration outDepthMap:(__CVBuffer *)map
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = a2.n128_f64[0];
  v43 = color.n128_f64[0];
  v49[0] = a2;
  v49[1] = color;
  v44 = array.n128_f64[0];
  v49[2] = array;
  v49[3] = transform;
  v46 = transform.n128_f64[0];
  v13 = a8;
  v47 = a9;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v48 = selfCopy;
  if ((*(selfCopy + 136) & 1) != 0 || (v15 = map, Width = CVPixelBufferGetWidth(map), v17 = [selfCopy prepareForEngineType:*(selfCopy + 6) inputSize:{Width, CVPixelBufferGetHeight(v15)}], map = v15, !v17))
  {
    if (*(selfCopy + 7))
    {
      if (a10)
      {
        executorParameters = [selfCopy executorParameters];
        logger = [executorParameters logger];

        processInfo = [MEMORY[0x277CCAC38] processInfo];
        [processInfo systemUptime];
        v22 = v21;

        kdebug_trace();
        [logger logPixelBuffer:map name:"inputColor" timestamp:v22];
        [logger logCalibration:v47 name:"inputColorCameraCalibration" timestamp:v22];
        [logger logMatrix4x3:"inputPointCloud2ColorTransform" name:v42 timestamp:{v43, v44, v46, v22}];
        for (i = 0; [v13 count] > i; ++i)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputPointCloud_%d", i];
          v25 = [v13 objectAtIndexedSubscript:i];
          [logger logPointCloud:v25 name:objc_msgSend(v24 timestamp:{"UTF8String"), v22}];
        }

        v26 = 0;
        v27 = 0;
        v28 = MEMORY[0x277D86220];
        while (1)
        {
          v29 = v26;
          if ([v13 count] <= v26)
          {
            break;
          }

          v30 = [v13 objectAtIndexedSubscript:v26];
          v31 = [v30 length] > 0;

          if (v31)
          {
            v32 = [v13 objectAtIndexedSubscript:v29];
            v33 = *[v32 bankIds];

            v34 = 1 << v33;
            if ((v34 & v27) != 0 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v13 objectAtIndexedSubscript:v29];
              v36 = *[v35 bankIds];
              *buf = 67109120;
              *&buf[4] = v36;
              _os_log_impl(&dword_2402F6000, v28, OS_LOG_TYPE_DEFAULT, "Warning: Bank %d appears in more than one input point cloud", buf, 8u);
            }

            v27 |= v34;
          }

          v26 = v29 + 1;
          selfCopy = v48;
        }

        executorParameters2 = [selfCopy executorParameters];
        stepsToExecute = [executorParameters2 stepsToExecute];

        executorParameters3 = [v48 executorParameters];
        timeProfiler = [executorParameters3 timeProfiler];

        if (stepsToExecute >= 1)
        {
          kdebug_trace();
          [timeProfiler startWithUTFString:"preprocess jasper"];
          [v48 frameExecutionStart];
          mergePointCloudsUsingSameTransform(v47, v49, v13);
        }

        v17 = -22977;

        kdebug_trace();
        selfCopy = v48;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "must provide a pointer to CVPixelBufferRef", buf, 2u);
        }

        v17 = -22953;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed preparing executor", buf, 2u);
      }

      v17 = -22960;
    }
  }

  objc_sync_exit(selfCopy);

  return v17;
}

- (int64_t)prepareForEngineType:(unint64_t)type inputROI:(CGRect)i
{
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v33 = 335682096;
  v34 = 0u;
  v35 = 0u;
  kdebug_trace();
  engineType = selfCopy->super._engineType;
  layout = [(ADExecutor *)selfCopy layout];
  executorParameters = [(ADExecutor *)selfCopy executorParameters];
  logger = [executorParameters logger];
  height = [MEMORY[0x277CCACA8] stringWithFormat:@"ROI: Origin: (%d, %d), Size: (%d, %d)", x, y, width, height];
  [logger logString:height name:"inputROI" priority:0];

  inferenceDescriptor = [(ADJasperColorStillsPipeline *)selfCopy->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];
  height2 = [(ADExecutor *)selfCopy prepareForEngineType:type roi:imageDescriptor descriptorForROI:1 exifOrientation:2 rotationPreference:inferenceDescriptor inferenceDescriptor:x, y, width, height];

  if (!height2)
  {
    if (selfCopy->super._engineType == engineType && [(ADExecutor *)selfCopy layout]== layout && selfCopy->_isPrepared)
    {
      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping buffers re-allocation and SIP runners init as nothing relevant has changed", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Skipping buffers re-allocation and SIP runners init as nothing relevant has changed", buf, 2u);
        height2 = 0;
        goto LABEL_15;
      }

      height2 = 0;
    }

    else
    {
      correctionBackendInferenceDescriptor = [(ADJasperColorStillsPipeline *)selfCopy->_pipeline correctionBackendInferenceDescriptor];
      v20 = objc_alloc(MEMORY[0x277CED060]);
      networkURL = [correctionBackendInferenceDescriptor networkURL];
      absoluteString = [networkURL absoluteString];
      v23 = [v20 initWithPath:absoluteString forEngine:selfCopy->super._engineType configurationName:0];
      correctionBackendEspressoRunner = selfCopy->_correctionBackendEspressoRunner;
      selfCopy->_correctionBackendEspressoRunner = v23;

      if (selfCopy->_correctionBackendEspressoRunner)
      {
        correctionFrontendInferenceDescriptor = [(ADJasperColorStillsPipeline *)selfCopy->_pipeline correctionFrontendInferenceDescriptor];
        v26 = objc_alloc(MEMORY[0x277CED060]);
        networkURL2 = [correctionFrontendInferenceDescriptor networkURL];
        absoluteString2 = [networkURL2 absoluteString];
        v29 = [v26 initWithPath:absoluteString2 forEngine:selfCopy->super._engineType configurationName:0];
        correctionFrontendEspressoRunner = selfCopy->_correctionFrontendEspressoRunner;
        selfCopy->_correctionFrontendEspressoRunner = v29;

        if (selfCopy->_correctionFrontendEspressoRunner)
        {
          height2 = [(ADJasperColorStillsExecutor *)selfCopy allocateIntermediateBuffers];
          selfCopy->_isPrepared = height2 == 0;
        }

        else
        {
          height2 = -22960;
        }
      }

      else
      {
        height2 = -22960;
      }
    }
  }

LABEL_15:

  kdebug_trace();
  objc_sync_exit(selfCopy);

  return height2;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADJasperColorStillsExecutor *)self deallocateEspressoBuffers];
  inferenceDescriptor = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  imageDescriptor = [colorInput imageDescriptor];

  [imageDescriptor sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [imageDescriptor pixelFormat], &self->_itmPreProcessedColor, v6, v7);
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    espressoRunner = self->super._espressoRunner;
    inferenceDescriptor2 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
    colorInput2 = [inferenceDescriptor2 colorInput];
    v12 = [(ADEspressoRunnerProtocol *)espressoRunner registerPixelBuffer:itmPreProcessedColor forDescriptor:colorInput2];

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v48 = 0;
        v13 = MEMORY[0x277D86220];
        v14 = "Failed binding _itmPreProcessedColor for _espressoExecutor";
        v15 = &v48;
LABEL_9:
        _os_log_error_impl(&dword_2402F6000, v13, OS_LOG_TYPE_ERROR, v14, v15, 2u);
      }
    }

    else
    {
      correctionBackendEspressoRunner = self->_correctionBackendEspressoRunner;
      v17 = self->_itmPreProcessedColor;
      correctionBackendInferenceDescriptor = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
      colorInput3 = [correctionBackendInferenceDescriptor colorInput];
      v12 = [(ADEspressoRunner *)correctionBackendEspressoRunner registerPixelBuffer:v17 forDescriptor:colorInput3];

      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v47 = 0;
          v13 = MEMORY[0x277D86220];
          v14 = "Failed binding _itmPreProcessedColor for _correctionBackendEspressoExecutor";
          v15 = &v47;
          goto LABEL_9;
        }
      }

      else
      {
        v20 = self->super._espressoRunner;
        inferenceDescriptor3 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
        jasperInput = [inferenceDescriptor3 jasperInput];
        self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:jasperInput];

        v23 = self->super._espressoRunner;
        inferenceDescriptor4 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
        depthOutput = [inferenceDescriptor4 depthOutput];
        self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v23 createAndRegisterPixelBufferForDescriptor:depthOutput];

        v26 = self->_correctionBackendEspressoRunner;
        correctionBackendInferenceDescriptor2 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
        jasperInput2 = [correctionBackendInferenceDescriptor2 jasperInput];
        self->_itmPreProcessedJasperForCorrection = [(ADEspressoRunner *)v26 createAndRegisterPixelBufferForDescriptor:jasperInput2];

        v29 = self->_correctionBackendEspressoRunner;
        correctionBackendInferenceDescriptor3 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
        featuresOutput = [correctionBackendInferenceDescriptor3 featuresOutput];
        v32 = [(ADEspressoRunner *)v29 registerDescriptor:featuresOutput];
        calibFeaturesOutputBuffer = self->_calibFeaturesOutputBuffer;
        self->_calibFeaturesOutputBuffer = v32;

        self->_calibFeaturesOutput = [(ADEspressoBufferHandle *)self->_calibFeaturesOutputBuffer data];
        correctionFrontendEspressoRunner = self->_correctionFrontendEspressoRunner;
        correctionFrontendInferenceDescriptor = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        featuresInput = [correctionFrontendInferenceDescriptor featuresInput];
        v37 = [(ADEspressoRunner *)correctionFrontendEspressoRunner registerDescriptor:featuresInput];
        self->_calibFeaturesInput = [v37 data];

        v38 = self->_correctionFrontendEspressoRunner;
        correctionFrontendInferenceDescriptor2 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        anglesOutput = [correctionFrontendInferenceDescriptor2 anglesOutput];
        v41 = [(ADEspressoRunner *)v38 registerDescriptor:anglesOutput];
        self->_calibAnglesOutput = [v41 data];

        v42 = self->_correctionFrontendEspressoRunner;
        correctionFrontendInferenceDescriptor3 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        errorsOutput = [correctionFrontendInferenceDescriptor3 errorsOutput];
        v45 = [(ADEspressoRunner *)v42 registerDescriptor:errorsOutput];
        self->_calibErrorsOutput = [v45 data];

        if (self->_itmPreProcessedJasper && self->_itmUnprocessedDepth && self->_itmPreProcessedJasperForCorrection)
        {
          v12 = 0;
        }

        else
        {
          [(ADJasperColorStillsExecutor *)self deallocateEspressoBuffers];
          v12 = -22971;
        }
      }
    }
  }

  else
  {
    v12 = -22965;
  }

  return v12;
}

- (void)deallocateEspressoBuffers
{
  CVPixelBufferRelease(self->_itmPreProcessedJasper);
  self->_itmPreProcessedJasper = 0;
  CVPixelBufferRelease(self->_itmUnprocessedDepth);
  self->_itmUnprocessedDepth = 0;
  CVPixelBufferRelease(self->_itmPreProcessedJasperForCorrection);
  self->_itmPreProcessedJasperForCorrection = 0;
}

- (ADJasperColorStillsExecutor)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v17 = 335679544;
  v18 = 0u;
  v19 = 0u;
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = ADJasperColorStillsExecutor;
  v5 = [(ADExecutor *)&v16 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!parametersCopy || ([parametersCopy pipelineParameters], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to initialize jasperColorStills executor: bad executorParameters input", v15, 2u);
    }

    goto LABEL_10;
  }

  pipelineParameters = [parametersCopy pipelineParameters];
  v8 = [[ADJasperColorStillsPipeline alloc] initWithParameters:pipelineParameters];
  pipeline = v5->_pipeline;
  v5->_pipeline = v8;

  if (!v5->_pipeline)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  [(ADExecutor *)v5 setExecutorParameters:parametersCopy];
  v5->_itmCroppedScaledColor = 0;
  v5->_itmRotatedColor = 0;
  v5->_itmPreProcessedColor = 0;
  v5->_itmPreProcessedJasper = 0;
  v5->_itmPreProcessedJasperForCorrection = 0;
  v5->_itmUnprocessedDepth = 0;
  v5->_itmUnscaledProcessedDepth = 0;
  v5->_isPrepared = 0;
  correctionBackendEspressoRunner = v5->_correctionBackendEspressoRunner;
  v5->_correctionBackendEspressoRunner = 0;

  correctionFrontendEspressoRunner = v5->_correctionFrontendEspressoRunner;
  v5->_correctionFrontendEspressoRunner = 0;

  v5->_calibFeaturesOutput = 0;
  v5->_calibFeaturesInput = 0;
  v5->_calibAnglesOutput = 0;
  v5->_calibErrorsOutput = 0;
  correctionLogString = v5->_correctionLogString;
  v5->_correctionLogString = 0;

LABEL_6:
  v13 = v5;
LABEL_11:
  kdebug_trace();

  return v13;
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[ADJasperColorStillsExecutorParameters alloc] initForDevice:deviceCopy];
  v6 = [(ADJasperColorStillsExecutor *)self initWithParameters:v5];

  return v6;
}

- (ADJasperColorStillsExecutor)init
{
  v3 = objc_opt_new();
  v4 = [(ADJasperColorStillsExecutor *)self initWithParameters:v3];

  return v4;
}

@end