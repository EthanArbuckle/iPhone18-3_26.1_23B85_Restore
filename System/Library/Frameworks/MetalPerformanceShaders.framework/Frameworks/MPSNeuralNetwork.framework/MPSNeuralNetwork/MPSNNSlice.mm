@interface MPSNNSlice
- (MPSNNSlice)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNSlice)initWithDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNNSlice

- (MPSNNSlice)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNSlice;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encode = sub_239CFF728;
    result->super._encodeData = result;
    result->super._checkFlags = 141826;
  }

  return result;
}

- (MPSNNSlice)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNNSlice;
  result = [(MPSCNNKernel *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super._encode = sub_239CFF728;
      result->super._encodeData = result;
      result->super._checkFlags = 141826;
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
  v3.super_class = MPSNNSlice;
  [(MPSCNNKernel *)&v3 encodeWithCoder:coder];
}

@end