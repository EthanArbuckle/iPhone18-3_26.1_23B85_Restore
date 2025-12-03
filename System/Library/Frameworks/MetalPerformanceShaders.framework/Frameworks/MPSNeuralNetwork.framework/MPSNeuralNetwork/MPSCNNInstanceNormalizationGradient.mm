@interface MPSCNNInstanceNormalizationGradient
- (MPSCNNInstanceNormalizationGradient)initWithCoder:(id)coder device:(id)device;
- (MPSCNNInstanceNormalizationGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNInstanceNormalizationGradient

- (MPSCNNInstanceNormalizationGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._encode = sub_239C0034C;
    result->super.super._encodeData = result;
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (MPSCNNInstanceNormalizationGradient)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v7 initWithCoder:coder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super.super._encode = sub_239C0034C;
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
  v3.super_class = MPSCNNInstanceNormalizationGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v5 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 47) = sub_239C0034C;
    *(result + 49) = result;
  }

  return result;
}

@end