@interface MPSNNPadGradient
- (MPSNNPadGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNPadGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNPadGradient

- (MPSNNPadGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNNPadGradient;
  result = [(MPSCNNGradientKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super.super._checkFlags |= 0x6A002u;
    result->super.super._encode = sub_239BB00DC;
    result->super.super._batchEncode = sub_239BB03CC;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNNPadGradient;
  return [(MPSCNNGradientKernel *)&v5 copyWithZone:a3 device:a4];
}

- (MPSNNPadGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNNPadGradient;
  result = [(MPSCNNGradientKernel *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super._checkFlags |= 0x6A002u;
    result->super.super._encode = sub_239BB00DC;
    result->super.super._batchEncode = sub_239BB03CC;
    result->super.super._encodeData = result;
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
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
  v3.super_class = MPSNNPadGradient;
  [(MPSCNNGradientKernel *)&v3 encodeWithCoder:a3];
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNNPadGradient;
  return [(MPSCNNGradientKernel *)&v5 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
}

@end