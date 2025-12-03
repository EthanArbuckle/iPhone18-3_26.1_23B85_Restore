@interface MPSCNNGroupNormalizationGradient
- (MPSCNNGroupNormalizationGradient)initWithCoder:(id)coder device:(id)device;
- (MPSCNNGroupNormalizationGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNGroupNormalizationGradient

- (MPSCNNGroupNormalizationGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNGroupNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = sub_239D18618;
    result->super.super._encodeData = result;
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (MPSCNNGroupNormalizationGradient)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSCNNGroupNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v7 initWithCoder:coder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239D18618;
      result->super.super._encodeData = result;
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
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNGroupNormalizationGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNGroupNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v5 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 47) = sub_239D18618;
    *(result + 49) = result;
  }

  return result;
}

@end