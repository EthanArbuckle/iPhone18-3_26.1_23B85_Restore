@interface ADBinocularDepthFlow
- (ADBinocularDepthFlow)initWithExecutor:(id)a3;
- (void)processIfMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushSecondaryColor:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
@end

@implementation ADBinocularDepthFlow

- (void)processIfMatch:(id)a3
{
  v4 = a3;
  if ([(ADFlow *)self shouldProcessMatch:v4])
  {
    v5 = objc_opt_new();
    v6 = [v4 matchedObjectsForStream:0];
    v7 = [v6 firstObject];

    v8 = [v4 matchedObjectsForStream:1];
    v9 = [v8 firstObject];

    v23 = v9;
    v10 = [v7 data];
    [v5 setColor:v10];

    v11 = [v9 data];
    [v5 setSecondaryColor:v11];

    v12 = [(ADFlowFrameOutputPool *)self->_frameOutputPool frameOutput];
    texture = [v12 depth];
    v24 = [v12 confidence];
    executor = self->_executor;
    v14 = [v5 color];
    v15 = [v5 secondaryColor];
    v16 = [v7 calibration];
    v17 = [v23 calibration];
    v18 = [(ADBinocularDepthExecutor *)executor executeWithRefColor:v14 auxColor:v15 refCalib:v16 auxCalib:v17 auxOutputDepth:&texture auxOutputConfidence:&v24];

    if (v18)
    {
      v19 = [(ADFlow *)self delegate];

      if (v19)
      {
        v20 = [(ADFlow *)self delegate];
        [v7 timestamp];
        [v20 didFailOnFrame:v5 input:@"failed executing binocularDepth" message:v18 error:?];
      }
    }

    else
    {
      v21 = [(ADFlow *)self delegate];

      if (v21)
      {
        v22 = [(ADFlow *)self delegate];
        [v7 timestamp];
        [v22 didProcessFrame:v5 input:v12 output:?];
      }

      CVPixelBufferRelease(texture);
      CVPixelBufferRelease(v24);
    }
  }
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

- (ADBinocularDepthFlow)initWithExecutor:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = ADBinocularDepthFlow;
  v6 = [(ADBinocularDepthFlow *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, a3);
    v8 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.05];
    streamSync = v7->_streamSync;
    v7->_streamSync = v8;

    [(ADStreamSync *)v7->_streamSync setStream:0 queueSize:1];
    [(ADStreamSync *)v7->_streamSync setStream:1 queueSize:1];
    v10 = [(ADBinocularDepthExecutor *)v7->_executor pipeline];
    v11 = [v10 inferenceDescriptor];

    v12 = [v11 auxiliaryDisparityOutput];
    v13 = [v12 imageDescriptor];
    v14 = [v11 auxiliaryConfidenceOutput];
    v15 = [v14 imageDescriptor];
    v16 = [ADFlowFrameOutputPool poolWithDepthDescriptor:v13 confidenceDescriptor:v15];
    frameOutputPool = v7->_frameOutputPool;
    v7->_frameOutputPool = v16;
  }

  return v7;
}

@end