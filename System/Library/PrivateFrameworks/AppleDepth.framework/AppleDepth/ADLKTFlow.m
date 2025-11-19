@interface ADLKTFlow
- (ADLKTFlow)initWithExecutor:(id)a3 forTemporalOpticalFlow:(BOOL)a4;
- (void)processMatch:(id)a3;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
- (void)pushSecondaryColor:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6;
- (void)setDelegate:(id)a3;
@end

@implementation ADLKTFlow

- (void)processMatch:(id)a3
{
  v21 = a3;
  v4 = [v21 matchedObjectsForStream:0];
  v5 = [v4 firstObject];

  v6 = objc_opt_new();
  v7 = [v5 data];
  [v6 setColor:v7];

  v8 = [(ADLKTExecutor *)self->_executor createOpticalFlowBuffer];
  v9 = [(ADLKTExecutor *)self->_executor createConfidenceBuffer];
  if (self->_isTemporal)
  {
    v10 = -[ADLKTExecutor executeFromFrameToPreviousFrame:outputOpticalFlow:outputConfidence:](self->_executor, "executeFromFrameToPreviousFrame:outputOpticalFlow:outputConfidence:", [v6 color], v8, v9);
    if (v10)
    {
LABEL_3:
      v11 = [(ADLKTFlow *)self delegate];

      if (!v11)
      {
        goto LABEL_11;
      }

      v12 = [(ADLKTFlow *)self delegate];
      [v5 timestamp];
      [v12 didFailOnFrame:v6 input:@"failed executing LKT" message:v10 error:?];
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [v21 matchedObjectsForStream:1];
    v14 = [v13 firstObject];

    v15 = [v14 data];
    [v6 setSecondaryColor:v15];

    v10 = -[ADLKTExecutor executeFromFrame:toFrame:outputOpticalFlow:outputConfidence:](self->_executor, "executeFromFrame:toFrame:outputOpticalFlow:outputConfidence:", [v6 color], objc_msgSend(v6, "secondaryColor"), v8, v9);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (!self->_canDelegateProcess)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_new();
  [v12 setDepth:v8];
  [v12 setConfidence:v9];
  v16 = [(ADExecutor *)self->_executor executorParameters];
  v17 = [v16 enableStatistics];

  if (v17)
  {
    v18 = [(ADLKTExecutor *)self->_executor lastExecutionStatistics];
    v19 = [v18 dictionaryRepresentation];
    [v12 setFiguresOfMerit:v19];
  }

  v20 = [(ADLKTFlow *)self delegate];
  [v5 timestamp];
  [v20 didProcessFrame:v6 input:v12 output:?];

LABEL_10:
LABEL_11:
}

- (ADLKTFlow)initWithExecutor:(id)a3 forTemporalOpticalFlow:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v18.receiver = self;
  v18.super_class = ADLKTFlow;
  v8 = [(ADLKTFlow *)&v18 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_executor, a3);
    v10->_isTemporal = v4;
    if (v4)
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

- (void)pushSecondaryColor:(double)a3 pose:(double)a4 calibration:(double)a5 timestamp:(double)a6
{
  v10 = [a1[4] pushData:a8 streamIndex:1 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  if (v10)
  {
    [a1 processMatch:v10];
  }
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
{
  v10 = [a1[4] pushData:a8 streamIndex:0 timestamp:a9 pose:a6 calibration:{a2, a3, a4, a5}];
  if (v10)
  {
    [a1 processMatch:v10];
  }
}

- (void)setDelegate:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_delegate, a3);
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