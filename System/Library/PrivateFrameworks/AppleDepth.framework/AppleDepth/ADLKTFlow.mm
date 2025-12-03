@interface ADLKTFlow
- (ADLKTFlow)initWithExecutor:(id)executor forTemporalOpticalFlow:(BOOL)flow;
- (void)processMatch:(id)match;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
- (void)pushSecondaryColor:(double)color pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp;
- (void)setDelegate:(id)delegate;
@end

@implementation ADLKTFlow

- (void)processMatch:(id)match
{
  matchCopy = match;
  v4 = [matchCopy matchedObjectsForStream:0];
  firstObject = [v4 firstObject];

  v6 = objc_opt_new();
  data = [firstObject data];
  [v6 setColor:data];

  createOpticalFlowBuffer = [(ADLKTExecutor *)self->_executor createOpticalFlowBuffer];
  createConfidenceBuffer = [(ADLKTExecutor *)self->_executor createConfidenceBuffer];
  if (self->_isTemporal)
  {
    v10 = -[ADLKTExecutor executeFromFrameToPreviousFrame:outputOpticalFlow:outputConfidence:](self->_executor, "executeFromFrameToPreviousFrame:outputOpticalFlow:outputConfidence:", [v6 color], createOpticalFlowBuffer, createConfidenceBuffer);
    if (v10)
    {
LABEL_3:
      delegate = [(ADLKTFlow *)self delegate];

      if (!delegate)
      {
        goto LABEL_11;
      }

      delegate2 = [(ADLKTFlow *)self delegate];
      [firstObject timestamp];
      [delegate2 didFailOnFrame:v6 input:@"failed executing LKT" message:v10 error:?];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [matchCopy matchedObjectsForStream:1];
    firstObject2 = [v13 firstObject];

    data2 = [firstObject2 data];
    [v6 setSecondaryColor:data2];

    v10 = -[ADLKTExecutor executeFromFrame:toFrame:outputOpticalFlow:outputConfidence:](self->_executor, "executeFromFrame:toFrame:outputOpticalFlow:outputConfidence:", [v6 color], objc_msgSend(v6, "secondaryColor"), createOpticalFlowBuffer, createConfidenceBuffer);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (!self->_canDelegateProcess)
  {
    goto LABEL_11;
  }

  delegate2 = objc_opt_new();
  [delegate2 setDepth:createOpticalFlowBuffer];
  [delegate2 setConfidence:createConfidenceBuffer];
  executorParameters = [(ADExecutor *)self->_executor executorParameters];
  enableStatistics = [executorParameters enableStatistics];

  if (enableStatistics)
  {
    lastExecutionStatistics = [(ADLKTExecutor *)self->_executor lastExecutionStatistics];
    dictionaryRepresentation = [lastExecutionStatistics dictionaryRepresentation];
    [delegate2 setFiguresOfMerit:dictionaryRepresentation];
  }

  delegate3 = [(ADLKTFlow *)self delegate];
  [firstObject timestamp];
  [delegate3 didProcessFrame:v6 input:delegate2 output:?];

LABEL_10:
LABEL_11:
}

- (ADLKTFlow)initWithExecutor:(id)executor forTemporalOpticalFlow:(BOOL)flow
{
  flowCopy = flow;
  executorCopy = executor;
  v18.receiver = self;
  v18.super_class = ADLKTFlow;
  v8 = [(ADLKTFlow *)&v18 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_executor, executor);
    v10->_isTemporal = flowCopy;
    if (flowCopy)
    {
      v11 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:1 allowedMatchTimeInterval:1.0];
      p_streamSync = &v9->_streamSync;
      streamSync = v9->_streamSync;
      v9->_streamSync = v11;

      v14 = 0;
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:1.0];
      p_streamSync = &v9->_streamSync;
      v16 = v9->_streamSync;
      v9->_streamSync = v15;

      v14 = 1;
      [*p_streamSync setStream:0 queueSize:1];
    }

    [*p_streamSync setStream:v14 queueSize:1];
  }

  return v10;
}

- (void)pushSecondaryColor:(double)color pose:(double)pose calibration:(double)calibration timestamp:(double)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:1 timestamp:a9 pose:timestamp calibration:{a2, color, pose, calibration}];
  if (v10)
  {
    [self processMatch:v10];
  }
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v10 = [self[4] pushData:a8 streamIndex:0 timestamp:a9 pose:metadata calibration:{a2, color, pose, calibration}];
  if (v10)
  {
    [self processMatch:v10];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&self->_delegate, delegate);
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = objc_opt_respondsToSelector();
  }

  self->_canDelegateProcess = delegate & 1;
  v6 = self->_delegate;
  if (v6)
  {
    LOBYTE(v6) = objc_opt_respondsToSelector();
  }

  self->_canDelegateFailure = v6 & 1;
}

@end