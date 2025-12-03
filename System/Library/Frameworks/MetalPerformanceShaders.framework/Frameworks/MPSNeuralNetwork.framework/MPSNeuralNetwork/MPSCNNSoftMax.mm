@interface MPSCNNSoftMax
- (MPSCNNSoftMax)initWithCoder:(id)coder device:(id)device;
- (MPSCNNSoftMax)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNSoftMax

- (MPSCNNSoftMax)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNSoftMax;
  result = [(MPSCNNKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encode = sub_239D6A9FC;
    result->super._batchEncode = sub_239D6ABFC;
    result->super._encodeData = result;
    result->super._checkFlags = 1026;
  }

  return result;
}

- (MPSCNNSoftMax)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSCNNSoftMax;
  result = [(MPSCNNKernel *)&v7 initWithCoder:coder device:device];
  if (result)
  {
    if (*(&result->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      result->super._encode = sub_239D6A9FC;
      result->super._batchEncode = sub_239D6ABFC;
      result->super._encodeData = result;
      result->super._checkFlags = 1026;
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
  v3.super_class = MPSCNNSoftMax;
  [(MPSCNNKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNSoftMax;
  result = [(MPSCNNKernel *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 36) = sub_239D6A9FC;
    *(result + 37) = sub_239D6ABFC;
    *(result + 38) = result;
    *(result + 70) = self->super._checkFlags;
    v12 = result;
    objc_msgSend_setPlugin_(result, v6, 0, v7, v8, v9, v10, v11);
    return v12;
  }

  return result;
}

@end