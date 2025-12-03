@interface ADMonocularV2Flow
- (ADMonocularV2Flow)initWithExecutor:(id)executor;
- (void)processColor:(__CVBuffer *)color timestamp:(double)timestamp;
@end

@implementation ADMonocularV2Flow

- (void)processColor:(__CVBuffer *)color timestamp:(double)timestamp
{
  if (color)
  {
    texture = 0;
    v7 = objc_opt_new();
    [v7 setColor:color];
    v8 = [(ADMonocularV2Executor *)self->_executor executeWithColor:color outDisparity:&texture];
    if (v8)
    {
      delegate = [(ADFlow *)self delegate];

      if (delegate)
      {
        delegate2 = [(ADFlow *)self delegate];
        [delegate2 didFailOnFrame:v7 input:@"failed executing Monocular V2" message:v8 error:timestamp];
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
          [delegate4 didProcessFrame:v7 input:delegate2 output:timestamp];
        }

        CVPixelBufferRelease(texture);
        goto LABEL_11;
      }

      delegate5 = [(ADFlow *)self delegate];

      if (delegate5)
      {
        delegate2 = [(ADFlow *)self delegate];
        [delegate2 didFailOnFrame:v7 input:@"Monocular V2 null output returned" message:-22976 error:timestamp];
        goto LABEL_11;
      }
    }
  }
}

- (ADMonocularV2Flow)initWithExecutor:(id)executor
{
  executorCopy = executor;
  v9.receiver = self;
  v9.super_class = ADMonocularV2Flow;
  v6 = [(ADMonocularV2Flow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, executor);
  }

  return v7;
}

@end