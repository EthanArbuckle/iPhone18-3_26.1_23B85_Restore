@interface ADJasperColorPipeline
- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)a3;
- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)a3 andParameters:(id)a4;
- (id)LKTTexturesDescriptor;
- (int64_t)fuseCurrentDepth:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 intoOutputDepth:(__CVBuffer *)a5 currentConfidence:(__CVBuffer *)a6 previousConfidence:(__CVBuffer *)a7 intoOutputConfidence:(__CVBuffer *)a8;
- (int64_t)postProcessConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5;
- (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4;
- (int64_t)postProcessWithDepth:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 depthOutput:(__CVBuffer *)a5 confidenceOutput:(__CVBuffer *)a6;
- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6;
- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 currNormals:(__CVBuffer *)a5 prevNormals:(__CVBuffer *)a6 opticalFlow:(__CVBuffer *)a7 alphaMap:(__CVBuffer *)a8 depthOutput:(__CVBuffer *)a9 normalsOutput:(__CVBuffer *)a10;
- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 opticalFlow:(__CVBuffer *)a5 alphaMap:(__CVBuffer *)a6 depthOutput:(__CVBuffer *)a7;
- (int64_t)warpPreviousDepth:(__CVBuffer *)a3 intoCurrentDepth:(__CVBuffer *)a4 previousConfidence:(__CVBuffer *)a5 intoCurrentConfidence:(__CVBuffer *)a6 usingOpticalFlow:(__CVBuffer *)a7;
- (uint64_t)warpPreviousDepth:(double)a3 intoCurrentDepth:(double)a4 previousConfidence:(double)a5 intoCurrentConfidence:(uint64_t)a6 usingPoseDelta:(uint64_t)a7 previousCalibration:(uint64_t)a8 currentCalibration:(uint64_t)a9;
@end

@implementation ADJasperColorPipeline

- (uint64_t)warpPreviousDepth:(double)a3 intoCurrentDepth:(double)a4 previousConfidence:(double)a5 intoCurrentConfidence:(uint64_t)a6 usingPoseDelta:(uint64_t)a7 previousCalibration:(uint64_t)a8 currentCalibration:(uint64_t)a9
{
  v18 = a11;
  v19 = a12;
  kdebug_trace();
  v20 = [*(a1 + 56) updateWarpMapWithDepth:a7 srcCalibration:v18 dstCalibration:v19 sourceToDestinationTransform:a8 warpedDepth:{a2, a3, a4, a5}];
  if (!v20 && (!a9 || !a10 || (v20 = [*(a1 + 56) warpImage:a9 intoImage:a10]) == 0))
  {
    v20 = 0;
  }

  kdebug_trace();

  return v20;
}

- (int64_t)fuseCurrentDepth:(__CVBuffer *)a3 previousDepth:(__CVBuffer *)a4 intoOutputDepth:(__CVBuffer *)a5 currentConfidence:(__CVBuffer *)a6 previousConfidence:(__CVBuffer *)a7 intoOutputConfidence:(__CVBuffer *)a8
{
  LODWORD(v21) = 335680196;
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v16 = v15;
  v17 = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceUnits];
  LODWORD(v18) = v16;
  v19 = [ADUtils fuseCurrentDepth:a3 previousDepth:a4 intoOutputDepth:a5 currentConfidence:a6 previousConfidence:a7 intoOutputConfidence:a8 alpha:v18 confidenceUnits:v17, v21, 0, 0, 0, 0];
  kdebug_trace();
  return v19;
}

- (int64_t)warpPreviousDepth:(__CVBuffer *)a3 intoCurrentDepth:(__CVBuffer *)a4 previousConfidence:(__CVBuffer *)a5 intoCurrentConfidence:(__CVBuffer *)a6 usingOpticalFlow:(__CVBuffer *)a7
{
  kdebug_trace();
  v12 = [ADUtils warpPreviousDepth:a3 intoCurrentDepth:a4 previousConfidence:a5 intoCurrentConfidence:a6 usingOpticalFlow:a7];
  kdebug_trace();
  return v12;
}

- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 currNormals:(__CVBuffer *)a5 prevNormals:(__CVBuffer *)a6 opticalFlow:(__CVBuffer *)a7 alphaMap:(__CVBuffer *)a8 depthOutput:(__CVBuffer *)a9 normalsOutput:(__CVBuffer *)a10
{
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v17 = [ADUtils warpAndFuseWithCurrDepth:a3 prevDepth:a4 currNormals:a5 prevNormals:a6 opticalFlow:a7 alphaMap:a8 defaultAlpha:a9 depthOutput:a10 normalsOutput:?];
  kdebug_trace();
  return v17;
}

- (int64_t)warpAndFuseWithCurrDepth:(__CVBuffer *)a3 prevDepth:(__CVBuffer *)a4 opticalFlow:(__CVBuffer *)a5 alphaMap:(__CVBuffer *)a6 depthOutput:(__CVBuffer *)a7
{
  kdebug_trace();
  [(ADJasperColorPipelineParameters *)self->_pipelineParameters defaultAlphaForDepthWarping];
  v13 = [ADUtils warpAndFuseWithCurrDepth:a3 prevDepth:a4 currNormals:0 prevNormals:0 opticalFlow:a5 alphaMap:a6 defaultAlpha:a7 depthOutput:0 normalsOutput:?];
  kdebug_trace();
  return v13;
}

- (int64_t)postProcessWithDepth:(__CVBuffer *)a3 confidence:(__CVBuffer *)a4 depthOutput:(__CVBuffer *)a5 confidenceOutput:(__CVBuffer *)a6
{
  kdebug_trace();
  v11 = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceUnits];
  v12 = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
  v13 = [ADUtils postProcessWithDepth:a3 confidence:a4 normals:0 depthOutput:a5 confidenceOutput:a6 normalsOutput:0 normalsRotation:0 rawConfidenceUnits:3 outConfidenceUnits:v11 confidenceLevelRanges:v12];

  kdebug_trace();
  return v13;
}

- (int64_t)postProcessConfidence:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 confidenceUnits:(unint64_t)a5
{
  kdebug_trace();
  v9 = [(ADJasperColorPipelineParameters *)self->_pipelineParameters confidenceLevelRanges];
  v10 = [ADUtils postProcessConfidence:a3 confidenceOutput:a4 rawConfidenceUnits:3 outConfidenceUnits:a5 confidenceLevelRanges:v9];

  kdebug_trace();
  return v10;
}

- (int64_t)postProcessDepth:(__CVBuffer *)a3 depthOutput:(__CVBuffer *)a4
{
  kdebug_trace();
  v6 = [ADUtils postProcessDepth:a3 depthOutput:a4];
  kdebug_trace();
  return v6;
}

- (int64_t)projectJasperPoints:(id)a3 cropTo:(CGRect)a4 rotateBy:(int64_t)a5 projectedPointsBuffer:(__CVBuffer *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  kdebug_trace();
  v14 = [(ADJasperColorPipelineParameters *)self->_pipelineParameters pointCloudFilter];
  v15 = [v13 projectJasperPointsFilteredBy:v14 croppedBy:a5 rotatedBy:a6 andScaledInto:{x, y, width, height}];

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
  v9 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDesc depthOutput];
  v10 = [v9 imageDescriptor];
  v11 = -[ADNetworkProvider supportedSizesForOutput:expectedPixelFormat:](networkProvider, "supportedSizesForOutput:expectedPixelFormat:", @"depth", [v10 pixelFormat]);
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

- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)a3 andParameters:(id)a4
{
  v7 = a4;
  v56 = 335682780;
  v57 = a3;
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
    v8->_prioritization = a3;
    objc_storeStrong(&v8->_pipelineParameters, a4);
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

    v12 = [(ADPipelineParameters *)v9->_pipelineParameters deviceName];
    v13 = [ADDeviceConfiguration getLidarType:v12];

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

    v17 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];

    if (!v17)
    {
      v18 = [(ADNetworkProvider *)v9->_networkProvider confidenceLevelRanges];
      [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceLevelRanges:v18];
    }

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingLowThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v54 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingLowThreshold is deprecated. please use confidenceLevelRanges instead", &v54, 2u);
    }

    v19 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [v19 highLevel];
    v21 = v20;

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingLowThreshold];
    v23 = v22;
    v24 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    LODWORD(v25) = v23;
    LODWORD(v26) = v21;
    [v24 setHighLevel:{v25, v26}];

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingHighThreshold];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v54 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "pipelinePrameters.confidenceBucketingHighThreshold is deprecated. please use confidenceLevelRanges instead", &v54, 2u);
    }

    v27 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [v27 lowLevel];
    v29 = v28;

    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceBucketingHighThreshold];
    v31 = v30;
    v32 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    LODWORD(v33) = v29;
    LODWORD(v34) = v31;
    [v32 setLowLevel:{v33, v34}];

    v35 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [v35 highLevel];
    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceBucketingLowThreshold:?];

    v36 = [(ADJasperColorPipelineParameters *)v9->_pipelineParameters confidenceLevelRanges];
    [v36 lowLevel];
    LODWORD(v38) = v37;
    [(ADJasperColorPipelineParameters *)v9->_pipelineParameters setConfidenceBucketingHighThreshold:v38];

    v39 = [[ADEspressoJasperColorInferenceDescriptor alloc] initWithNetworkProvider:v9->_networkProvider];
    inferenceDesc = v9->_inferenceDesc;
    v9->_inferenceDesc = v39;

    v41 = [(ADEspressoJasperColorInferenceDescriptor *)v9->_inferenceDesc depthOutput];
    v42 = [v41 imageDescriptor];
    v43 = [v42 cloneWithDifferentFormat:1717855600];
    processedDepthDesc = v9->_processedDepthDesc;
    v9->_processedDepthDesc = v43;

    v45 = [(ADEspressoJasperColorInferenceDescriptor *)v9->_inferenceDesc confidenceOutput];
    v46 = [v45 imageDescriptor];
    v47 = [v46 cloneWithDifferentFormat:1278226534];
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

- (ADJasperColorPipeline)initWithInputPrioritization:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(ADJasperColorPipeline *)self initWithInputPrioritization:a3 andParameters:v5];

  return v6;
}

@end