@interface ADJasperColorPipeline
- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)prioritization;
- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters;
- (id)LKTTexturesDescriptor;
- (int64_t)fuseCurrentDepth:(__CVBuffer *)depth previousDepth:(__CVBuffer *)previousDepth intoOutputDepth:(__CVBuffer *)outputDepth currentConfidence:(__CVBuffer *)confidence previousConfidence:(__CVBuffer *)previousConfidence intoOutputConfidence:(__CVBuffer *)outputConfidence;
- (int64_t)postProcessConfidence:(__CVBuffer *)confidence confidenceOutput:(__CVBuffer *)output confidenceUnits:(unint64_t)units;
- (int64_t)postProcessDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output;
- (int64_t)postProcessWithDepth:(__CVBuffer *)depth confidence:(__CVBuffer *)confidence depthOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput;
- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer;
- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)depth prevDepth:(__CVBuffer *)prevDepth currNormals:(__CVBuffer *)normals prevNormals:(__CVBuffer *)prevNormals opticalFlow:(__CVBuffer *)flow alphaMap:(__CVBuffer *)map depthOutput:(__CVBuffer *)output normalsOutput:(__CVBuffer *)self0;
- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)depth prevDepth:(__CVBuffer *)prevDepth opticalFlow:(__CVBuffer *)flow alphaMap:(__CVBuffer *)map depthOutput:(__CVBuffer *)output;
- (int64_t)warpPreviousDepth:(__CVBuffer *)depth intoCurrentDepth:(__CVBuffer *)currentDepth previousConfidence:(__CVBuffer *)confidence intoCurrentConfidence:(__CVBuffer *)currentConfidence usingOpticalFlow:(__CVBuffer *)flow;
- (uint64_t)warpPreviousDepth:(double)depth intoCurrentDepth:(double)currentDepth previousConfidence:(double)confidence intoCurrentConfidence:(uint64_t)currentConfidence usingPoseDelta:(uint64_t)delta previousCalibration:(uint64_t)calibration currentCalibration:(uint64_t)currentCalibration;
@end

@implementation ADJasperColorPipeline

- (uint64_t)warpPreviousDepth:(double)depth intoCurrentDepth:(double)currentDepth previousConfidence:(double)confidence intoCurrentConfidence:(uint64_t)currentConfidence usingPoseDelta:(uint64_t)delta previousCalibration:(uint64_t)calibration currentCalibration:(uint64_t)currentCalibration
{
  v18 = a11;
  v19 = a12;
  kdebug_trace();
  v20 = [*(self + 56) updateWarpMapWithDepth:delta srcCalibration:v18 dstCalibration:v19 sourceToDestinationTransform:calibration warpedDepth:{a2, depth, currentDepth, confidence}];
  if (!v20 && (!currentCalibration || !a10 || (v20 = [*(self + 56) warpImage:currentCalibration intoImage:a10]) == 0))
  {
    v20 = 0;
  }

  kdebug_trace();

  return v20;
}

- (int64_t)fuseCurrentDepth:(__CVBuffer *)depth previousDepth:(__CVBuffer *)previousDepth intoOutputDepth:(__CVBuffer *)outputDepth currentConfidence:(__CVBuffer *)confidence previousConfidence:(__CVBuffer *)previousConfidence intoOutputConfidence:(__CVBuffer *)outputConfidence
{
  LODWORD(v21) = 335680196;
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v16 = v15;
  confidenceUnits = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceUnits];
  LODWORD(v18) = v16;
  v19 = [ADUtils fuseCurrentDepth:depth previousDepth:previousDepth intoOutputDepth:outputDepth currentConfidence:confidence previousConfidence:previousConfidence intoOutputConfidence:outputConfidence alpha:v18 confidenceUnits:confidenceUnits, v21, 0, 0, 0, 0];
  kdebug_trace();
  return v19;
}

- (int64_t)warpPreviousDepth:(__CVBuffer *)depth intoCurrentDepth:(__CVBuffer *)currentDepth previousConfidence:(__CVBuffer *)confidence intoCurrentConfidence:(__CVBuffer *)currentConfidence usingOpticalFlow:(__CVBuffer *)flow
{
  kdebug_trace();
  v12 = [ADUtils warpPreviousDepth:depth intoCurrentDepth:currentDepth previousConfidence:confidence intoCurrentConfidence:currentConfidence usingOpticalFlow:flow];
  kdebug_trace();
  return v12;
}

- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)depth prevDepth:(__CVBuffer *)prevDepth currNormals:(__CVBuffer *)normals prevNormals:(__CVBuffer *)prevNormals opticalFlow:(__CVBuffer *)flow alphaMap:(__CVBuffer *)map depthOutput:(__CVBuffer *)output normalsOutput:(__CVBuffer *)self0
{
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v17 = [ADUtils warpAndFuseWithCurrDepth:depth prevDepth:prevDepth currNormals:normals prevNormals:prevNormals opticalFlow:flow alphaMap:map defaultAlpha:output depthOutput:normalsOutput normalsOutput:?];
  kdebug_trace();
  return v17;
}

- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)depth prevDepth:(__CVBuffer *)prevDepth opticalFlow:(__CVBuffer *)flow alphaMap:(__CVBuffer *)map depthOutput:(__CVBuffer *)output
{
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v13 = [ADUtils warpAndFuseWithCurrDepth:depth prevDepth:prevDepth currNormals:0 prevNormals:0 opticalFlow:flow alphaMap:map defaultAlpha:output depthOutput:0 normalsOutput:?];
  kdebug_trace();
  return v13;
}

- (int64_t)postProcessWithDepth:(__CVBuffer *)depth confidence:(__CVBuffer *)confidence depthOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput
{
  kdebug_trace();
  confidenceUnits = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceUnits];
  confidenceLevelRanges = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
  v13 = [ADUtils postProcessWithDepth:depth confidence:confidence normals:0 depthOutput:output confidenceOutput:confidenceOutput normalsOutput:0 normalsRotation:0 rawConfidenceUnits:3 outConfidenceUnits:confidenceUnits confidenceLevelRanges:confidenceLevelRanges];

  kdebug_trace();
  return v13;
}

- (int64_t)postProcessConfidence:(__CVBuffer *)confidence confidenceOutput:(__CVBuffer *)output confidenceUnits:(unint64_t)units
{
  kdebug_trace();
  confidenceLevelRanges = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
  v10 = [ADUtils postProcessConfidence:confidence confidenceOutput:output rawConfidenceUnits:3 outConfidenceUnits:units confidenceLevelRanges:confidenceLevelRanges];

  kdebug_trace();
  return v10;
}

- (int64_t)postProcessDepth:(__CVBuffer *)depth depthOutput:(__CVBuffer *)output
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:depth depthOutput:output];
  kdebug_trace();
  return v6;
}

- (int64_t)projectJasperPoints:(id)points cropTo:(CGRect)to rotateBy:(int64_t)by projectedPointsBuffer:(__CVBuffer *)buffer
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  pointsCopy = points;
  kdebug_trace();
  pointCloudFilter = [(ADJasperColorPipelineParameters *)self->_pipelineParameters pointCloudFilter];
  v15 = [pointsCopy projectJasperPointsFilteredBy:pointCloudFilter croppedBy:by rotatedBy:buffer andScaledInto:{x, y, width, height}];

  kdebug_trace();
  return v15;
}

- (id)LKTTexturesDescriptor
{
  +[ADLKTOpticalFlow defaultConfig];
  prioritization = self->_prioritization;
  v4 = 5;
  if (prioritization != 2)
  {
    v4 = 6;
  }

  if (prioritization == 1 || prioritization == 4)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  v17 = v6;
  v7 = [ADLKTTexturesDescriptor alloc];
  networkProvider = self->_networkProvider;
  depthOutput = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDesc depthOutput];
  imageDescriptor = [depthOutput imageDescriptor];
  v11 = -[ADNetworkProvider supportedSizesForOutput:expectedPixelFormat:](networkProvider, "supportedSizesForOutput:expectedPixelFormat:", @"depth", [imageDescriptor pixelFormat]);
  v14[0] = v17;
  v12 = v18;
  v14[1] = v12;
  v15 = v19;
  *v16 = *v20;
  *&v16[13] = *&v20[13];
  if (v7)
  {
    v7 = [(ADLKTTexturesDescriptor *)v7 initForSupportedSizes:v11 config:v14];
  }

  else
  {
  }

  return v7;
}

- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)prioritization andParameters:(id)parameters
{
  parametersCopy = parameters;
  v56 = 335682780;
  prioritizationCopy = prioritization;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  kdebug_trace();
  v55.receiver = self;
  v55.super_class = ADJasperColorPipeline;
  v8 = [(ADJasperColorPipeline *)&v55 init];
  v9 = v8;
  if (v8)
  {
    v8->_prioritization = prioritization;
    objc_storeStrong(&v8->_pipelineParameters, parameters);
    prioritization = v9->_prioritization;
    if (prioritization != 1 && prioritization != 4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v54 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADJasperColorPipeline only supports speed prioritization", &v54, 2u);
      }

LABEL_21:
      v51 = 0;
      goto LABEL_22;
    }

    deviceName = [(ADPipelineParameters *)v9->_pipelineParameters deviceName];
    v13 = [ADDeviceConfiguration getLidarType:deviceName];

    if (v13 == 2)
    {
      v14 = @"DARP";
    }

    else
    {
      v14 = @"DSD";
    }

    v15 = [ADNetworkProvider providerForNetwork:v14];
    networkProvider = v9->_networkProvider;
    v9->_networkProvider = v15;

    if (!v9->_networkProvider)
    {
      goto LABEL_21;
    }

    confidenceLevelRanges = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];

    if (!confidenceLevelRanges)
    {
      confidenceLevelRanges2 = [(ADNetworkProvider *)v9->_networkProvider confidenceLevelRanges];
      [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceLevelRanges:confidenceLevelRanges2];
    }

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingLowThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v54 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingLowThreshold is deprecated. please use confidenceLevelRanges instead", &v54, 2u);
    }

    confidenceLevelRanges3 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [confidenceLevelRanges3 highLevel];
    v21 = v20;

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingLowThreshold];
    v23 = v22;
    confidenceLevelRanges4 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    LODWORD(v25) = v23;
    LODWORD(v26) = v21;
    [confidenceLevelRanges4 setHighLevel:{v25, v26}];

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingHighThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v54 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingHighThreshold is deprecated. please use confidenceLevelRanges instead", &v54, 2u);
    }

    confidenceLevelRanges5 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [confidenceLevelRanges5 lowLevel];
    v29 = v28;

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingHighThreshold];
    v31 = v30;
    confidenceLevelRanges6 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    LODWORD(v33) = v29;
    LODWORD(v34) = v31;
    [confidenceLevelRanges6 setLowLevel:{v33, v34}];

    confidenceLevelRanges7 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [confidenceLevelRanges7 highLevel];
    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceBucketingLowThreshold:?];

    confidenceLevelRanges8 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [confidenceLevelRanges8 lowLevel];
    LODWORD(v38) = v37;
    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceBucketingHighThreshold:v38];

    v39 = [[ADEspressoJasperColorInferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider];
    inferenceDesc = v9->_inferenceDesc;
    v9->_inferenceDesc = v39;

    depthOutput = [(ADEspressoJasperColorInferenceDescriptor *)v9->_inferenceDesc depthOutput];
    imageDescriptor = [depthOutput imageDescriptor];
    v43 = [imageDescriptor cloneWithDifferentFormat:1717855600];
    processedDepthDesc = v9->_processedDepthDesc;
    v9->_processedDepthDesc = v43;

    confidenceOutput = [(ADEspressoJasperColorInferenceDescriptor *)v9->_inferenceDesc confidenceOutput];
    imageDescriptor2 = [confidenceOutput imageDescriptor];
    v47 = [imageDescriptor2 cloneWithDifferentFormat:1278226534];
    processedConfDesc = v9->_processedConfDesc;
    v9->_processedConfDesc = v47;

    v49 = objc_opt_new();
    depthReprojector = v9->_depthReprojector;
    v9->_depthReprojector = v49;
  }

  v51 = v9;
LABEL_22:
  kdebug_trace();

  return v51;
}

- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)prioritization
{
  v5 = objc_opt_new();
  v6 = [(ADJasperColorPipeline *)self initWithInputPrioritization:prioritization andParameters:v5];

  return v6;
}

@end