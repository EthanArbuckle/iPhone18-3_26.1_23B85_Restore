@interface MPSNDArrayVectorLUTDequantize
- (MPSNDArrayVectorLUTDequantize)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayVectorLUTDequantize)initWithDevice:(id)a3 axis:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayVectorLUTDequantize

- (MPSNDArrayVectorLUTDequantize)initWithDevice:(id)a3 axis:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 initWithDevice:a3 sourceCount:2];
  if (result)
  {
    result->super._encode = EncodeArrayVectorLUTDequant;
    result->super.super._encodeData = result;
    result->_vectorAxis = a4;
  }

  return result;
}

- (MPSNDArrayVectorLUTDequantize)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super._encode = EncodeArrayVectorLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayVectorLUTDequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = EncodeArrayVectorLUTDequant;
    *(result + 12) = self;
    *(result + 18) = self->_vectorAxis;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayVectorLUTDequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
}

@end