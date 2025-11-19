@interface MPSImageIntegralOfSquares
- (MPSImageIntegralOfSquares)initWithCoder:(id)a3 device:(id)a4;
- (MPSImageIntegralOfSquares)initWithDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSImageIntegralOfSquares

- (MPSImageIntegralOfSquares)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSImageIntegralOfSquares;
  result = [(MPSUnaryImageKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->super._encode = sub_239944860;
    result->super._encodeData = result;
    result->super._checkFlags = 833;
  }

  return result;
}

- (MPSImageIntegralOfSquares)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSImageIntegralOfSquares;
  result = [(MPSUnaryImageKernel *)&v7 initWithCoder:a3 device:a4];
  if (result)
  {
    if (*(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super._encode = sub_239944860;
      result->super._encodeData = result;
      result->super._checkFlags = 833;
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
  v3.super_class = MPSImageIntegralOfSquares;
  [(MPSUnaryImageKernel *)&v3 encodeWithCoder:a3];
}

@end