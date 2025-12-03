@interface ADDensifiedLiDARFocusAssistPipeline
- (ADDensifiedLiDARFocusAssistPipeline)init;
- (ADDensifiedLiDARFocusAssistPipeline)initWithEspressoEngine:(unint64_t)engine;
- (ADDensifiedLiDARFocusAssistPipeline)initWithEspressoEngine:(unint64_t)engine andParameters:(id)parameters;
- (CGRect)expectedColorSensorROI;
- (CGRect)validDepthRect;
- (int64_t)getTeleAfPlatformType;
- (int64_t)postProcessUncertainty:(__CVBuffer *)uncertainty outputConfidence:(__CVBuffer *)confidence confidenceUnits:(unint64_t)units;
- (int64_t)projectLidarPoints:(id)points crop:(CGRect)crop projectedPointsBuffer:(__CVBuffer *)buffer;
- (uint64_t)changePointCloudPOV:(double)v targetCamera:(double)camera lidarToCameraTransform:(uint64_t)transform outputPointCloud:(uint64_t)cloud;
@end

@implementation ADDensifiedLiDARFocusAssistPipeline

- (int64_t)postProcessUncertainty:(__CVBuffer *)uncertainty outputConfidence:(__CVBuffer *)confidence confidenceUnits:(unint64_t)units
{
  kdebug_trace();
  v8 = [ADUtils postProcessConfidence:uncertainty confidenceOutput:confidence rawConfidenceUnits:3 outConfidenceUnits:units confidenceLevelRanges:0];
  kdebug_trace();
  return v8;
}

- (uint64_t)changePointCloudPOV:(double)v targetCamera:(double)camera lidarToCameraTransform:(uint64_t)transform outputPointCloud:(uint64_t)cloud
{
  v11 = a7;
  v12 = a8;
  v13 = a9;
  v22 = 335683544;
  v23 = 0u;
  v24 = 0u;
  kdebug_trace();
  if (v11 && v13)
  {
    v14 = [v11 pointCloudByChangingPointOfViewByTransform:v12 to:{self, a2, v, camera}];
    if (v14)
    {
      [v13 appendPointsFrom:v14];
      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed changing point cloud POV", buf, 2u);
      }

      v15 = -22950;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Jasper inputs/outputs must not be nil", buf, 2u);
    }

    v15 = -22953;
  }

  kdebug_trace();

  return v15;
}

- (int64_t)projectLidarPoints:(id)points crop:(CGRect)crop projectedPointsBuffer:(__CVBuffer *)buffer
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  pointsCopy = points;
  v18 = 335683544;
  v19 = 0u;
  v20 = 0u;
  kdebug_trace();
  if (buffer)
  {
    if (pointsCopy)
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (!CGRectIsEmpty(v21))
      {
        pointCloudFilter = [(ADDensifiedLiDARFocusAssistPipelineParameters *)self->_pipelineParameters pointCloudFilter];
        v14 = [pointsCopy projectJasperPointsFilteredBy:pointCloudFilter croppedBy:0 rotatedBy:buffer andScaledInto:{x, y, width, height}];

        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "Must provide a valid crop rect";
LABEL_13:
        _os_log_error_impl(&dword_2402F6000, v12, OS_LOG_TYPE_ERROR, v13, v17, 2u);
        v14 = -22953;
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "point cloud must not be nil";
      goto LABEL_13;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    v12 = MEMORY[0x277D86220];
    v13 = "Output buffer must not be nil";
    goto LABEL_13;
  }

  v14 = -22953;
LABEL_11:
  kdebug_trace();

  return v14;
}

- (ADDensifiedLiDARFocusAssistPipeline)initWithEspressoEngine:(unint64_t)engine andParameters:(id)parameters
{
  parametersCopy = parameters;
  v19 = 335680992;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  v18.receiver = self;
  v18.super_class = ADDensifiedLiDARFocusAssistPipeline;
  v8 = [(ADDensifiedLiDARFocusAssistPipeline *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pipelineParameters, parameters);
    getTeleAfPlatformType = [(ADDensifiedLiDARFocusAssistPipeline *)v9 getTeleAfPlatformType];
    v9->_teleAfType = getTeleAfPlatformType;
    if (getTeleAfPlatformType == 1)
    {
      v11 = @"TeleAFMemphis";
    }

    else
    {
      v11 = @"TeleAFNet";
    }

    v12 = [ADNetworkProvider providerForNetwork:v11 espressoEngine:engine];
    networkProvider = v9->_networkProvider;
    v9->_networkProvider = v12;

    if (!v9->_networkProvider)
    {
      v16 = 0;
      goto LABEL_9;
    }

    v14 = [[ADEspressoDensifiedLiDARFocusAssistInferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider espressoEngine:engine];
    inferenceDesc = v9->_inferenceDesc;
    v9->_inferenceDesc = v14;
  }

  v16 = v9;
LABEL_9:
  kdebug_trace();

  return v16;
}

- (int64_t)getTeleAfPlatformType
{
  pipelineParameters = [(ADDensifiedLiDARFocusAssistPipeline *)self pipelineParameters];
  deviceName = [pipelineParameters deviceName];
  uppercaseString = [deviceName uppercaseString];
  v6 = [uppercaseString hasPrefix:@"D8"];

  if (v6)
  {
    return 0;
  }

  pipelineParameters2 = [(ADDensifiedLiDARFocusAssistPipeline *)self pipelineParameters];
  deviceName2 = [pipelineParameters2 deviceName];
  uppercaseString2 = [deviceName2 uppercaseString];
  if ([uppercaseString2 hasPrefix:@"V53"])
  {
  }

  else
  {
    pipelineParameters3 = [(ADDensifiedLiDARFocusAssistPipeline *)self pipelineParameters];
    deviceName3 = [pipelineParameters3 deviceName];
    uppercaseString3 = [deviceName3 uppercaseString];
    v14 = [uppercaseString3 hasPrefix:@"V54"];

    if (!v14)
    {
      return 0;
    }
  }

  return 1;
}

- (CGRect)validDepthRect
{
  v2 = 24.0;
  v3 = 8.0;
  v4 = 6.0;
  v5 = 32.0;
  if (self->_teleAfType == 1)
  {
    v4 = 5.0;
    v3 = 7.0;
    v5 = 82.0;
    v2 = 62.0;
  }

  result.size.height = v2;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)expectedColorSensorROI
{
  if (self->_teleAfType == 1)
  {
    v2 = 1776.0;
    v3 = 2368.0;
    v4 = 3040.0;
    v5 = 2136.0;
  }

  else
  {
    v2 = 3024.0;
    v3 = 4032.0;
    v4 = 2208.0;
    v5 = 1512.0;
  }

  result.size.height = v2;
  result.size.width = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (ADDensifiedLiDARFocusAssistPipeline)initWithEspressoEngine:(unint64_t)engine
{
  v5 = objc_opt_new();
  v6 = [(ADDensifiedLiDARFocusAssistPipeline *)self initWithEspressoEngine:engine andParameters:v5];

  return v6;
}

- (ADDensifiedLiDARFocusAssistPipeline)init
{
  if ([MEMORY[0x277CEE958] hasANE])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return [(ADDensifiedLiDARFocusAssistPipeline *)self initWithEspressoEngine:v3];
}

@end