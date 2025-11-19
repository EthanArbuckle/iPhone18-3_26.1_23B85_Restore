@interface ADMetricDepthFlow
- (ADMetricDepthFlow)initWithExecutor:(id)a3 calculateConfidenceMap:(BOOL)a4 calculateConfidenceLevels:(BOOL)a5;
- (void)processIfMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushPearlDepth:(double)a3 pose:(double)a4 depthCalibration:(double)a5 irToDepthTransform:(uint64_t)a6 timestamp:(uint64_t)a7;
- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
- (void)pushSecondaryColor:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
@end

@implementation ADMetricDepthFlow

- (void)processIfMatch:(id)a3
{
  v4 = a3;
  if ([(ADFlow *)self shouldProcessMatch:v4])
  {
    objc_opt_new();
    v5 = [v4 matchedObjectsForStream:0];
    [v5 firstObject];
    objc_claimAutoreleasedReturnValue();

    v6 = [v4 matchedObjectsForStream:1];
    [v6 firstObject];
    objc_claimAutoreleasedReturnValue();

    v7 = [v4 matchedObjectsForStream:2];
    [v7 firstObject];
    objc_claimAutoreleasedReturnValue();

    [v4 matchedObjectsForStream:3];
    [objc_claimAutoreleasedReturnValue() count];
    operator new[]();
  }
}

- (ADMetricDepthFlow)initWithExecutor:(id)a3 calculateConfidenceMap:(BOOL)a4 calculateConfidenceLevels:(BOOL)a5
{
  v5 = a5;
  v38 = a4;
  v8 = a3;
  v40.receiver = self;
  v40.super_class = ADMetricDepthFlow;
  v9 = [(ADMetricDepthFlow *)&v40 init];
  v10 = v9;
  if (v9)
  {
    v36 = v8;
    objc_storeStrong(&v9->_executor, a3);
    v11 = [(ADExecutor *)v10->_executor executorParameters];
    v12 = [v11 pipelineParameters];
    v39 = [v12 aggregationParameters];

    v13 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:4 allowedMatchTimeInterval:0.05];
    streamSync = v10->_streamSync;
    v10->_streamSync = v13;

    [(ADStreamSync *)v10->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v10->_streamSync setStream:1 queueSize:1];
    [(ADStreamSync *)v10->_streamSync setStream:2 queueSize:1];
    -[ADStreamSync setStream:queueSize:aggregationCount:allowedAggregationInterval:](v10->_streamSync, "setStream:queueSize:aggregationCount:allowedAggregationInterval:", 3, [v39 aggregationSize], objc_msgSend(v39, "aggregationSize"), 0.07);
    v15 = [(ADMetricDepthExecutor *)v10->_executor pipeline];
    v16 = [v15 inferenceDescriptor];

    if (v5)
    {
      v17 = [v16 confidenceOutput];
      v18 = [v17 imageDescriptor];
      [v18 sizeForLayout:255];
      v20 = v19;
      v22 = v21;

      v35 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1278226488 pixelFormat:v20, v22];
    }

    else
    {
      v35 = 0;
    }

    v34 = [v16 depthOutput];
    v37 = [v34 imageDescriptor];
    if (v38)
    {
      v33 = [v16 confidenceOutput];
      v23 = [v33 imageDescriptor];
    }

    else
    {
      v23 = 0;
    }

    v24 = [v16 normalsOutput];
    v25 = [v24 imageDescriptor];
    v26 = [v16 confidenceOutput];
    v27 = [v26 imageDescriptor];
    v28 = [v16 confidenceOutput];
    v29 = [v28 imageDescriptor];
    v30 = [ADFlowFrameOutputPool poolWithDepthDescriptor:v37 confidenceDescriptor:v23 confidenceLevelsDescriptor:v35 normalsDescriptor:v25 uncertaintyDescriptor:v27 depthMaskDescriptor:v29 layout:255];
    frameOutputPool = v10->_frameOutputPool;
    v10->_frameOutputPool = v30;

    if (v38)
    {
    }

    v8 = v36;
  }

  return v10;
}

- (void)pushPointCloud:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[4] pushData:a8 streamIndex:3 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

- (void)pushPearlDepth:(double)a3 pose:(double)a4 depthCalibration:(double)a5 irToDepthTransform:(uint64_t)a6 timestamp:(uint64_t)a7
{
  v14 = [a1[4] pushData:a7 streamIndex:2 timestamp:a8 pose:a13 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

- (void)pushSecondaryColor:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[4] pushData:a8 streamIndex:1 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v10 = [a1[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  [a1 processIfMatch:?];
}

@end