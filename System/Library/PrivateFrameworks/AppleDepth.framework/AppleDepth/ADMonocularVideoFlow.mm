@interface ADMonocularVideoFlow
- (ADMonocularVideoFlow)initWithExecutor:(id)executor;
- (void)processColor:(__CVBuffer *)color efl:(float)efl timestamp:(double)timestamp;
- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp;
@end

@implementation ADMonocularVideoFlow

- (void)processColor:(__CVBuffer *)color efl:(float)efl timestamp:(double)timestamp
{
  if (color)
  {
    texture = 0;
    v9 = objc_opt_new();
    [v9 setColor:color];
    *&v10 = efl;
    v11 = [(ADMonocularVideoExecutor *)self->_executor executeWithColor:color efl:&texture outDisparityMap:v10];
    if (v11)
    {
      delegate = [(ADFlow *)self delegate];

      if (delegate)
      {
        delegate2 = [(ADFlow *)self delegate];
        [delegate2 didFailOnFrame:v9 input:@"failed executing Monocular Video" message:v11 error:timestamp];
LABEL_11:
      }
    }

    else
    {
      if (texture)
      {
        delegate2 = objc_opt_new();
        [delegate2 setDepth:texture];
        delegate3 = [(ADFlow *)self delegate];

        if (delegate3)
        {
          delegate4 = [(ADFlow *)self delegate];
          [delegate4 didProcessFrame:v9 input:delegate2 output:timestamp];
        }

        CVPixelBufferRelease(texture);
        goto LABEL_11;
      }

      delegate5 = [(ADFlow *)self delegate];

      if (delegate5)
      {
        delegate2 = [(ADFlow *)self delegate];
        [delegate2 didFailOnFrame:v9 input:@"null disparity returned" message:-22976 error:timestamp];
        goto LABEL_11;
      }
    }
  }
}

- (void)pushColor:(double)color pose:(double)pose calibration:(double)calibration metadata:(double)metadata timestamp:(uint64_t)timestamp
{
  v16 = a9;
  v14 = a10;
  if (v16)
  {
    [v16 intrinsicMatrix];
  }

  else
  {
    v15 = 0.0;
  }

  [self processColor:a8 efl:v15 timestamp:metadata];
}

- (ADMonocularVideoFlow)initWithExecutor:(id)executor
{
  executorCopy = executor;
  v9.receiver = self;
  v9.super_class = ADMonocularVideoFlow;
  v6 = [(ADMonocularVideoFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, executor);
  }

  return v7;
}

@end