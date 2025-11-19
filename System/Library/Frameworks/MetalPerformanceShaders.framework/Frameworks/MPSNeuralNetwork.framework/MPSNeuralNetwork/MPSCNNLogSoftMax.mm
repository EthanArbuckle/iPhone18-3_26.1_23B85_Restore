@interface MPSCNNLogSoftMax
- (MPSCNNLogSoftMax)initWithCoder:(id)a3 device:(id)a4;
- (MPSCNNLogSoftMax)initWithDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNLogSoftMax

- (MPSCNNLogSoftMax)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNLogSoftMax;
  result = [(MPSCNNKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->super._encode = sub_239D6AFBC;
    result->super._batchEncode = sub_239D6B1BC;
    result->super._encodeData = result;
    result->super._checkFlags = 2;
  }

  return result;
}

- (MPSCNNLogSoftMax)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSCNNLogSoftMax;
  result = [(MPSCNNKernel *)&v7 initWithCoder:a3 device:a4];
  if (result)
  {
    if (*(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super._encode = sub_239D6AFBC;
      result->super._batchEncode = sub_239D6B1BC;
      result->super._encodeData = result;
      result->super._checkFlags = 2;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNLogSoftMax;
  [(MPSCNNKernel *)&v3 encodeWithCoder:a3];
}

@end