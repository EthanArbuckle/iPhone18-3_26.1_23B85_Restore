@interface ADMetricDepthFlow
- (ADMetricDepthFlow)initWithExecutor:(id)executor calculateConfidenceMap:(BOOL)map calculateConfidenceLevels:(BOOL)levels;
- (void)processIfMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushPearlDepth:(double)depth pose:(double)pose depthCalibration:(double)calibration irToDepthTransform:(uint64_t)transform timestamp:(uint64_t)timestamp;
- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
- (void)pushSecondaryColor:(double)color pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
@end

@implementation ADMetricDepthFlow

- (void)processIfMatch:(id)match
{
  matchCopy = match;
  if ([(ADFlow *)self shouldProcessMatch:matchCopy])
  {
    objc_opt_new();
    v5 = [matchCopy matchedObjectsForStream:0];
    [v5 firstObject];
    objc_claimAutoreleasedReturnValue();

    v6 = [matchCopy matchedObjectsForStream:1];
    [v6 firstObject];
    objc_claimAutoreleasedReturnValue();

    v7 = [matchCopy matchedObjectsForStream:2];
    [v7 firstObject];
    objc_claimAutoreleasedReturnValue();

    [matchCopy matchedObjectsForStream:3];
    [objc_claimAutoreleasedReturnValue() count];
    operator new[]();
  }
}

- (ADMetricDepthFlow)initWithExecutor:(id)executor calculateConfidenceMap:(BOOL)map calculateConfidenceLevels:(BOOL)levels
{
  levelsCopy = levels;
  mapCopy = map;
  executorCopy = executor;
  v40.receiver = self;
  v40.super_class = ADMetricDepthFlow;
  v9 = [(ADMetricDepthFlow *)&v40 init];
  v10 = v9;
  if (v9)
  {
    v36 = executorCopy;
    objc_storeStrong(&v9->_executor, executor);
    executorParameters = [(ADExecutor *)v10->_executor executorParameters];
    pipelineParameters = [executorParameters pipelineParameters];
    aggregationParameters = [pipelineParameters aggregationParameters];

    v13 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:4 allowedMatchTimeInterval:0.05];
    streamSync = v10->_streamSync;
    v10->_streamSync = v13;

    [(ADStreamSync *)v10->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v10->_streamSync setStream:1 queueSize:1];
    [(ADStreamSync *)v10->_streamSync setStream:2 queueSize:1];
    -[ADStreamSync setStream:queueSize:aggregationCount:allowedAggregationInterval:](v10->_streamSync, "setStream:queueSize:aggregationCount:allowedAggregationInterval:", 3, [aggregationParameters aggregationSize], objc_msgSend(aggregationParameters, "aggregationSize"), 0.07);
    pipeline = [(ADMetricDepthExecutor *)v10->_executor pipeline];
    inferenceDescriptor = [pipeline inferenceDescriptor];

    if (levelsCopy)
    {
      confidenceOutput = [inferenceDescriptor confidenceOutput];
      imageDescriptor = [confidenceOutput imageDescriptor];
      [imageDescriptor sizeForLayout:255];
      v20 = v19;
      v22 = v21;

      v35 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1278226488 pixelFormat:v20, v22];
    }

    else
    {
      v35 = 0;
    }

    depthOutput = [inferenceDescriptor depthOutput];
    imageDescriptor2 = [depthOutput imageDescriptor];
    if (mapCopy)
    {
      confidenceOutput2 = [inferenceDescriptor confidenceOutput];
      imageDescriptor3 = [confidenceOutput2 imageDescriptor];
    }

    else
    {
      imageDescriptor3 = 0;
    }

    normalsOutput = [inferenceDescriptor normalsOutput];
    imageDescriptor4 = [normalsOutput imageDescriptor];
    confidenceOutput3 = [inferenceDescriptor confidenceOutput];
    imageDescriptor5 = [confidenceOutput3 imageDescriptor];
    confidenceOutput4 = [inferenceDescriptor confidenceOutput];
    imageDescriptor6 = [confidenceOutput4 imageDescriptor];
    v30 = [ADFlowFrameOutputPool poolWithDepthDescriptor:imageDescriptor2 confidenceDescriptor:imageDescriptor3 confidenceLevelsDescriptor:v35 normalsDescriptor:imageDescriptor4 uncertaintyDescriptor:imageDescriptor5 depthMaskDescriptor:imageDescriptor6 layout:255];
    frameOutputPool = v10->_frameOutputPool;
    v10->_frameOutputPool = v30;

    if (mapCopy)
    {
    }

    executorCopy = v36;
  }

  return v10;
}

- (void)pushPointCloud:(double)cloud pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:3 timestamp:a9 pose:timestamp calibration:{a2, cloud, pose, calibration}];
  [self processIfMatch:?];
}

- (void)pushPearlDepth:(double)depth pose:(double)pose depthCalibration:(double)calibration irToDepthTransform:(uint64_t)transform timestamp:(uint64_t)timestamp
{
  v14 = [self[4] pushData:timestamp streamIndex:2 timestamp:a8 pose:a13 calibration:{a2, depth, pose, calibration}];
  [self processIfMatch:?];
}

- (void)pushSecondaryColor:(double)color pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:1 timestamp:a9 pose:timestamp calibration:{a2, color, pose, calibration}];
  [self processIfMatch:?];
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:0 timestamp:a9 pose:metadata calibration:{a2, color, pose, calibration}];
  [self processIfMatch:?];
}

@end