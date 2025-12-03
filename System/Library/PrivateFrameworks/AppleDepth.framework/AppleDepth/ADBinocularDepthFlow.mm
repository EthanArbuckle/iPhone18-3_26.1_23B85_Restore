@interface ADBinocularDepthFlow
- (ADBinocularDepthFlow)initWithExecutor:(id)executor;
- (void)processIfMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushSecondaryColor:(double)color pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
@end

@implementation ADBinocularDepthFlow

- (void)processIfMatch:(id)match
{
  matchCopy = match;
  if ([(ADFlow *)self shouldProcessMatch:matchCopy])
  {
    v5 = objc_opt_new();
    v6 = [matchCopy matchedObjectsForStream:0];
    firstObject = [v6 firstObject];

    v8 = [matchCopy matchedObjectsForStream:1];
    firstObject2 = [v8 firstObject];

    v23 = firstObject2;
    data = [firstObject data];
    [v5 setColor:data];

    data2 = [firstObject2 data];
    [v5 setSecondaryColor:data2];

    frameOutput = [(ADFlowFrameOutputPool *)self->_frameOutputPool frameOutput];
    texture = [frameOutput depth];
    confidence = [frameOutput confidence];
    executor = self->_executor;
    color = [v5 color];
    secondaryColor = [v5 secondaryColor];
    calibration = [firstObject calibration];
    calibration2 = [v23 calibration];
    v18 = [(ADBinocularDepthExecutor *)executor executeWithRefColor:color auxColor:secondaryColor refCalib:calibration auxCalib:calibration2 auxOutputDepth:&texture auxOutputConfidence:&confidence];

    if (v18)
    {
      delegate = [(ADFlow *)self delegate];

      if (delegate)
      {
        delegate2 = [(ADFlow *)self delegate];
        [firstObject timestamp];
        [delegate2 didFailOnFrame:v5 input:@"failed executing binocularDepth" message:v18 error:?];
      }
    }

    else
    {
      delegate3 = [(ADFlow *)self delegate];

      if (delegate3)
      {
        delegate4 = [(ADFlow *)self delegate];
        [firstObject timestamp];
        [delegate4 didProcessFrame:v5 input:frameOutput output:?];
      }

      CVPixelBufferRelease(texture);
      CVPixelBufferRelease(confidence);
    }
  }
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

- (ADBinocularDepthFlow)initWithExecutor:(id)executor
{
  executorCopy = executor;
  v19.receiver = self;
  v19.super_class = ADBinocularDepthFlow;
  v6 = [(ADBinocularDepthFlow *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, executor);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.05];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:1];
    pipeline = [(ADBinocularDepthExecutor *)v7->_executor pipeline];
    inferenceDescriptor = [pipeline inferenceDescriptor];

    auxiliaryDisparityOutput = [inferenceDescriptor auxiliaryDisparityOutput];
    imageDescriptor = [auxiliaryDisparityOutput imageDescriptor];
    auxiliaryConfidenceOutput = [inferenceDescriptor auxiliaryConfidenceOutput];
    imageDescriptor2 = [auxiliaryConfidenceOutput imageDescriptor];
    v16 = [ADFlowFrameOutputPool poolWithDepthDescriptor:imageDescriptor confidenceDescriptor:imageDescriptor2];
    frameOutputPool = v7->_frameOutputPool;
    v7->_frameOutputPool = v16;
  }

  return v7;
}

@end