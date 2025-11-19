@interface MPSCNNInstanceNormalizationGradient
- (MPSCNNInstanceNormalizationGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSCNNInstanceNormalizationGradient)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNInstanceNormalizationGradient

- (MPSCNNInstanceNormalizationGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->super.super._encode = sub_239C0034C;
    result->super.super._encodeData = result;
    result->super.super._checkFlags |= 2u;
  }

  return result;
}

- (MPSCNNInstanceNormalizationGradient)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v7 initWithCoder:a3 device:a4];
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

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNInstanceNormalizationGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSCNNInstanceNormalizationGradient;
  result = [(MPSCNNGradientKernel *)&v5 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 47) = sub_239C0034C;
    *(result + 49) = result;
  }

  return result;
}

@end