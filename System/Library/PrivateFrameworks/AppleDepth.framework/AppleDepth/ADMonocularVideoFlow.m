@interface ADMonocularVideoFlow
- (ADMonocularVideoFlow)initWithExecutor:(id)a3;
- (void)processColor:(__CVBuffer *)a3 efl:(float)a4 timestamp:(double)a5;
- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7;
@end

@implementation ADMonocularVideoFlow

- (void)processColor:(__CVBuffer *)a3 efl:(float)a4 timestamp:(double)a5
{
  if (a3)
  {
    texture = 0;
    v9 = objc_opt_new();
    [v9 setColor:a3];
    *&v10 = a4;
    v11 = [(ADMonocularVideoExecutor *)self->_executor executeWithColor:a3 efl:&texture outDisparityMap:v10];
    if (v11)
    {
      v12 = [(ADFlow *)self delegate];

      if (v12)
      {
        v13 = [(ADFlow *)self delegate];
        [v13 didFailOnFrame:v9 input:@"failed executing Monocular Video" message:v11 error:a5];
LABEL_11:
      }
    }

    else
    {
      if (texture)
      {
        v13 = objc_opt_new();
        [v13 setDepth:texture];
        v14 = [(ADFlow *)self delegate];

        if (v14)
        {
          v15 = [(ADFlow *)self delegate];
          [v15 didProcessFrame:v9 input:v13 output:a5];
        }

        CVPixelBufferRelease(texture);
        goto LABEL_11;
      }

      v16 = [(ADFlow *)self delegate];

      if (v16)
      {
        v13 = [(ADFlow *)self delegate];
        [v13 didFailOnFrame:v9 input:@"null disparity returned" message:-22976 error:a5];
        goto LABEL_11;
      }
    }
  }
}

- (void)pushColor:(double)a3 pose:(double)a4 calibration:(double)a5 metadata:(double)a6 timestamp:(uint64_t)a7
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

  [a1 processColor:a8 efl:v15 timestamp:a6];
}

- (ADMonocularVideoFlow)initWithExecutor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADMonocularVideoFlow;
  v6 = [(ADMonocularVideoFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executor, a3);
  }

  return v7;
}

@end