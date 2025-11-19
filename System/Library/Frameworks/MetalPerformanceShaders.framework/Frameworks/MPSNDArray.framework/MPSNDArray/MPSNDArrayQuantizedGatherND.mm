@interface MPSNDArrayQuantizedGatherND
- (MPSNDArrayQuantizedGatherND)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayQuantizedGatherND)initWithDevice:(id)a3 quantizationDescriptor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayQuantizedGatherND

- (MPSNDArrayQuantizedGatherND)initWithDevice:(id)a3 quantizationDescriptor:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayQuantizedGatherND;
  v5 = [(MPSNDArrayGatherND *)&v7 initWithDevice:a3];
  if (([a4 hasDoubleQuantScale] & 1) == 0)
  {
    [a4 hasDoubleQuantMinVal];
  }

  if (([a4 hasDoubleQuantScale] & 1) != 0 || objc_msgSend(a4, "hasDoubleQuantMinVal"))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v5->_quant_desc = [a4 copy];
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

- (MPSNDArrayQuantizedGatherND)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayQuantizedGatherND;
  result = [(MPSNDArrayGatherND *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super.super._encode = EncodeQuantizedGatherND;
    result->super.super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayQuantizedGatherND;
  [(MPSNDArrayGatherND *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayQuantizedGatherND;
  result = [(MPSNDArrayGatherND *)&v6 copyWithZone:a3 device:a4];
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