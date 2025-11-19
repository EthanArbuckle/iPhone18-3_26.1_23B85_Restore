@interface MPSNDArrayLUTDequantize
- (MPSNDArrayLUTDequantize)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayLUTDequantize)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayLUTDequantize

- (MPSNDArrayLUTDequantize)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:a3 sourceCount:2];
  if (result)
  {
    result->super._encode = EncodeArrayLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSNDArrayLUTDequantize)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super._encode = EncodeArrayLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTDequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = EncodeArrayLUTDequant;
    *(result + 12) = self;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTDequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
}

@end