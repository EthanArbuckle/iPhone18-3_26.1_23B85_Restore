@interface ADJasperColorStillsExecutor
- (ADJasperColorStillsExecutor)init;
- (ADJasperColorStillsExecutor)initWithParameters:(id)a3;
- (id)getIntermediates;
- (id)initForDevice:(id)a3;
- (int64_t)allocateIntermediateBuffers;
- (int64_t)numberOfExecutionSteps;
- (int64_t)prepareForEngineType:(unint64_t)a3 inputROI:(CGRect)a4;
- (uint64_t)executeWithColor:(__n128)a3 pointCloudArray:(__n128)a4 pointCloud2ColorTransform:(__n128)a5 colorCameraCalibration:(uint64_t)a6 outDepthMap:(__CVBuffer *)a7;
- (void)dealloc;
- (void)deallocateEspressoBuffers;
@end

@implementation ADJasperColorStillsExecutor

- (int64_t)numberOfExecutionSteps
{
  v2 = [(ADExecutor *)self executorParameters];
  v3 = [v2 performJasperToColorTransformCorrection];

  if (v3)
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

- (uint64_t)executeWithColor:(__n128)a3 pointCloudArray:(__n128)a4 pointCloud2ColorTransform:(__n128)a5 colorCameraCalibration:(uint64_t)a6 outDepthMap:(__CVBuffer *)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = a2.n128_f64[0];
  v43 = a3.n128_f64[0];
  v49[0] = a2;
  v49[1] = a3;
  v44 = a4.n128_f64[0];
  v49[2] = a4;
  v49[3] = a5;
  v46 = a5.n128_f64[0];
  v13 = a8;
  v47 = a9;
  v14 = a1;
  objc_sync_enter(v14);
  v48 = v14;
  if ((*(v14 + 136) & 1) != 0 || (v15 = a7, Width = CVPixelBufferGetWidth(a7), v17 = [v14 prepareForEngineType:*(v14 + 6) inputSize:{Width, CVPixelBufferGetHeight(v15)}], a7 = v15, !v17))
  {
    if (*(v14 + 7))
    {
      if (a10)
      {
        v18 = [v14 executorParameters];
        v19 = [v18 logger];

        v20 = [MEMORY[0x277CCAC38] processInfo];
        [v20 systemUptime];
        v22 = v21;

        kdebug_trace();
        [v19 logPixelBuffer:a7 name:"inputColor" timestamp:v22];
        [v19 logCalibration:v47 name:"inputColorCameraCalibration" timestamp:v22];
        [v19 logMatrix4x3:"inputPointCloud2ColorTransform" name:v42 timestamp:{v43, v44, v46, v22}];
        for (i = 0; [v13 count] > i; ++i)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"inputPointCloud_%d", i];
          v25 = [v13 objectAtIndexedSubscript:i];
          [v19 logPointCloud:v25 name:objc_msgSend(v24 timestamp:{"UTF8String"), v22}];
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
          v14 = v48;
        }

        v37 = [v14 executorParameters];
        v38 = [v37 stepsToExecute];

        v39 = [v48 executorParameters];
        v40 = [v39 timeProfiler];

        if (v38 >= 1)
        {
          kdebug_trace();
          [v40 startWithUTFString:"preprocess jasper"];
          [v48 frameExecutionStart];
          mergePointCloudsUsingSameTransform(v47, v49, v13);
        }

        v17 = -22977;

        kdebug_trace();
        v14 = v48;
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

  objc_sync_exit(v14);

  return v17;
}

- (int64_t)prepareForEngineType:(unint64_t)a3 inputROI:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  objc_sync_enter(v9);
  v33 = 335682096;
  v34 = 0u;
  v35 = 0u;
  kdebug_trace();
  engineType = v9->super._engineType;
  v11 = [(ADExecutor *)v9 layout];
  v12 = [(ADExecutor *)v9 executorParameters];
  v13 = [v12 logger];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ROI: Origin: (%d, %d), Size: (%d, %d)", x, y, width, height];
  [v13 logString:v14 name:"inputROI" priority:0];

  v15 = [(ADJasperColorStillsPipeline *)v9->_pipeline inferenceDescriptor];
  v16 = [v15 colorInput];
  v17 = [v16 imageDescriptor];
  v18 = [(ADExecutor *)v9 prepareForEngineType:a3 roi:v17 descriptorForROI:1 exifOrientation:2 rotationPreference:v15 inferenceDescriptor:x, y, width, height];

  if (!v18)
  {
    if (v9->super._engineType == engineType && [(ADExecutor *)v9 layout]== v11 && v9->_isPrepared)
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
        v18 = 0;
        goto LABEL_15;
      }

      v18 = 0;
    }

    else
    {
      v19 = [(ADJasperColorStillsPipeline *)v9->_pipeline correctionBackendInferenceDescriptor];
      v20 = objc_alloc(MEMORY[0x277CED060]);
      v21 = [v19 networkURL];
      v22 = [v21 absoluteString];
      v23 = [v20 initWithPath:v22 forEngine:v9->super._engineType configurationName:0];
      correctionBackendEspressoRunner = v9->_correctionBackendEspressoRunner;
      v9->_correctionBackendEspressoRunner = v23;

      if (v9->_correctionBackendEspressoRunner)
      {
        v25 = [(ADJasperColorStillsPipeline *)v9->_pipeline correctionFrontendInferenceDescriptor];
        v26 = objc_alloc(MEMORY[0x277CED060]);
        v27 = [v25 networkURL];
        v28 = [v27 absoluteString];
        v29 = [v26 initWithPath:v28 forEngine:v9->super._engineType configurationName:0];
        correctionFrontendEspressoRunner = v9->_correctionFrontendEspressoRunner;
        v9->_correctionFrontendEspressoRunner = v29;

        if (v9->_correctionFrontendEspressoRunner)
        {
          v18 = [(ADJasperColorStillsExecutor *)v9 allocateIntermediateBuffers];
          v9->_isPrepared = v18 == 0;
        }

        else
        {
          v18 = -22960;
        }
      }

      else
      {
        v18 = -22960;
      }
    }
  }

LABEL_15:

  kdebug_trace();
  objc_sync_exit(v9);

  return v18;
}

- (int64_t)allocateIntermediateBuffers
{
  [(ADJasperColorStillsExecutor *)self deallocateEspressoBuffers];
  v3 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
  v4 = [v3 colorInput];
  v5 = [v4 imageDescriptor];

  [v5 sizeForLayout:{-[ADExecutor layout](self, "layout")}];
  +[ADUtils updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:](ADUtils, "updatePixelBufferAllocationWithNewSize:pixelFormat:pixelBuffer:", [v5 pixelFormat], &self->_itmPreProcessedColor, v6, v7);
  itmPreProcessedColor = self->_itmPreProcessedColor;
  if (itmPreProcessedColor)
  {
    espressoRunner = self->super._espressoRunner;
    v10 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
    v11 = [v10 colorInput];
    v12 = [(ADEspressoRunnerProtocol *)espressoRunner registerPixelBuffer:itmPreProcessedColor forDescriptor:v11];

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
      v18 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
      v19 = [v18 colorInput];
      v12 = [(ADEspressoRunner *)correctionBackendEspressoRunner registerPixelBuffer:v17 forDescriptor:v19];

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
        v21 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
        v22 = [v21 jasperInput];
        self->_itmPreProcessedJasper = [(ADEspressoRunnerProtocol *)v20 createAndRegisterPixelBufferForDescriptor:v22];

        v23 = self->super._espressoRunner;
        v24 = [(ADJasperColorStillsPipeline *)self->_pipeline inferenceDescriptor];
        v25 = [v24 depthOutput];
        self->_itmUnprocessedDepth = [(ADEspressoRunnerProtocol *)v23 createAndRegisterPixelBufferForDescriptor:v25];

        v26 = self->_correctionBackendEspressoRunner;
        v27 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
        v28 = [v27 jasperInput];
        self->_itmPreProcessedJasperForCorrection = [(ADEspressoRunner *)v26 createAndRegisterPixelBufferForDescriptor:v28];

        v29 = self->_correctionBackendEspressoRunner;
        v30 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionBackendInferenceDescriptor];
        v31 = [v30 featuresOutput];
        v32 = [(ADEspressoRunner *)v29 registerDescriptor:v31];
        calibFeaturesOutputBuffer = self->_calibFeaturesOutputBuffer;
        self->_calibFeaturesOutputBuffer = v32;

        self->_calibFeaturesOutput = [(ADEspressoBufferHandle *)self->_calibFeaturesOutputBuffer data];
        correctionFrontendEspressoRunner = self->_correctionFrontendEspressoRunner;
        v35 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        v36 = [v35 featuresInput];
        v37 = [(ADEspressoRunner *)correctionFrontendEspressoRunner registerDescriptor:v36];
        self->_calibFeaturesInput = [v37 data];

        v38 = self->_correctionFrontendEspressoRunner;
        v39 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        v40 = [v39 anglesOutput];
        v41 = [(ADEspressoRunner *)v38 registerDescriptor:v40];
        self->_calibAnglesOutput = [v41 data];

        v42 = self->_correctionFrontendEspressoRunner;
        v43 = [(ADJasperColorStillsPipeline *)self->_pipeline correctionFrontendInferenceDescriptor];
        v44 = [v43 errorsOutput];
        v45 = [(ADEspressoRunner *)v42 registerDescriptor:v44];
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

- (ADJasperColorStillsExecutor)initWithParameters:(id)a3
{
  v4 = a3;
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

  if (!v4 || ([v4 pipelineParameters], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to initialize jasperColorStills executor: bad executorParameters input", v15, 2u);
    }

    goto LABEL_10;
  }

  v7 = [v4 pipelineParameters];
  v8 = [[ADJasperColorStillsPipeline alloc] initWithParameters:v7];
  pipeline = v5->_pipeline;
  v5->_pipeline = v8;

  if (!v5->_pipeline)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  [(ADExecutor *)v5 setExecutorParameters:v4];
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

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v5 = [[ADJasperColorStillsExecutorParameters alloc] initForDevice:v4];
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