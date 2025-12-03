@interface MPSImageIntegralOfSquares
- (MPSImageIntegralOfSquares)initWithCoder:(id)coder device:(id)device;
- (MPSImageIntegralOfSquares)initWithDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageIntegralOfSquares

- (MPSImageIntegralOfSquares)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageIntegralOfSquares;
  result = [(MPSUnaryImageKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encode = sub_239944860;
    result->super._encodeData = result;
    result->super._checkFlags = 833;
  }

  return result;
}

- (MPSImageIntegralOfSquares)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageIntegralOfSquares;
  result = [(MPSUnaryImageKernel *)&v7 initWithCoder:coder device:device];
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

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageIntegralOfSquares;
  [(MPSUnaryImageKernel *)&v3 encodeWithCoder:coder];
}

@end