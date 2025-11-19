@interface ADMonocularV2Flow
- (ADMonocularV2Flow)initWithExecutor:(id)a3;
- (void)processColor:(__CVBuffer *)a3 timestamp:(double)a4;
@end

@implementation ADMonocularV2Flow

- (void)processColor:(__CVBuffer *)a3 timestamp:(double)a4
{
  if (a3)
  {
    texture = 0;
    v7 = objc_opt_new();
    [v7 setColor:a3];
    v8 = [(ADMonocularV2Executor *)self->_executor executeWithColor:a3 outDisparity:&texture];
    if (v8)
    {
      v9 = [(ADFlow *)self delegate];

      if (v9)
      {
        v10 = [(ADFlow *)self delegate];
        [v10 didFailOnFrame:v7 input:@"failed executing Monocular V2" message:v8 error:a4];
LABEL_11:
      }
    }

    else
    {
      if (texture)
      {
        v10 = objc_opt_new();
        [v10 setDepth:texture];
        v11 = [(ADFlow *)self delegate];

        if (v11)
        {
          v12 = [(ADFlow *)self delegate];
          [v12 didProcessFrame:v7 input:v10 output:a4];
        }

        CVPixelBufferRelease(texture);
        goto LABEL_11;
      }

      v13 = [(ADFlow *)self delegate];

      if (v13)
      {
        v10 = [(ADFlow *)self delegate];
        [v10 didFailOnFrame:v7 input:@"Monocular V2 null output returned" message:-22976 error:a4];
        goto LABEL_11;
      }
    }
  }
}

- (ADMonocularV2Flow)initWithExecutor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADMonocularV2Flow;
  v6 = [(ADMonocularV2Flow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, a3);
  }

  return v7;
}

@end