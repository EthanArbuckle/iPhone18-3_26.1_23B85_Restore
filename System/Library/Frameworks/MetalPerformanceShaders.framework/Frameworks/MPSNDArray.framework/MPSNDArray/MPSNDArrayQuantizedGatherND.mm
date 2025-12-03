@interface MPSNDArrayQuantizedGatherND
- (MPSNDArrayQuantizedGatherND)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayQuantizedGatherND)initWithDevice:(id)device quantizationDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayQuantizedGatherND

- (MPSNDArrayQuantizedGatherND)initWithDevice:(id)device quantizationDescriptor:(id)descriptor
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayQuantizedGatherND;
  v5 = [(MPSNDArrayGatherND *)&v7 initWithDevice:device];
  if (([descriptor hasDoubleQuantScale] & 1) == 0)
  {
    [descriptor hasDoubleQuantMinVal];
  }

  if (([descriptor hasDoubleQuantScale] & 1) != 0 || objc_msgSend(descriptor, "hasDoubleQuantMinVal"))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v5->_quant_desc = [descriptor copy];
  v5->super.super.super._encode = EncodeQuantizedGatherND;
  v5->super.super.super.super._encodeData = v5;
  v5->super.super.super.super._srcCount = 3;
  if ([(MPSNDArrayAffineQuantizationDescriptor *)v5->_quant_desc hasZeroPoint])
  {
    ++v5->super.super.super.super._srcCount;
    if (![(MPSNDArrayAffineQuantizationDescriptor *)v5->_quant_desc hasMinValue])
    {
      return v5;
    }
  }

  else if (![(MPSNDArrayAffineQuantizationDescriptor *)v5->_quant_desc hasMinValue])
  {
    return v5;
  }

  ++v5->super.super.super.super._srcCount;
  return v5;
}

- (MPSNDArrayQuantizedGatherND)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayQuantizedGatherND;
  result = [(MPSNDArrayGatherND *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super.super._encode = EncodeQuantizedGatherND;
    result->super.super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedGatherND;
  [(MPSNDArrayGatherND *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayQuantizedGatherND;
  result = [(MPSNDArrayGatherND *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super.super._encode = EncodeQuantizedGatherND;
    self->super.super.super.super._encodeData = self;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedGatherND;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end