@interface MPSNDArrayLUTDequantize
- (MPSNDArrayLUTDequantize)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayLUTDequantize)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayLUTDequantize

- (MPSNDArrayLUTDequantize)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:device sourceCount:2];
  if (result)
  {
    result->super._encode = EncodeArrayLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayLUTDequantize)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super._encode = EncodeArrayLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTDequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = EncodeArrayLUTDequant;
    *(result + 12) = self;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTDequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
}

@end