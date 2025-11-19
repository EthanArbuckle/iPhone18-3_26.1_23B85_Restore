@interface MPSNDArrayAffineInt4Dequantize
- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)a3 quantizationDescriptor:(id)a4;
- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)a3 quantizationDescriptor:(id)a4 sourceCount:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayAffineInt4Dequantize

- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)a3 quantizationDescriptor:(id)a4 sourceCount:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayAffineInt4Dequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v9 initWithDevice:a3 sourceCount:a5];
  if (result)
  {
    result->super._encode = EncodeArrayAffieInt4Dequant;
    result->super.super._encodeData = result;
    v7 = result;
    v8 = a4;
    result = v7;
    v7->_quantizationDescriptor = v8;
  }

  return result;
}

- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)a3 quantizationDescriptor:(id)a4
{
  v7 = [a4 getNDArrayCount] + 1;

  return [(MPSNDArrayAffineInt4Dequantize *)self initWithDevice:a3 quantizationDescriptor:a4 sourceCount:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayAffineInt4Dequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayAffineInt4Dequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v9 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = EncodeArrayAffieInt4Dequant;
    *(result + 12) = self;
    quantizationDescriptor = self->_quantizationDescriptor;
    v7 = result;
    v8 = quantizationDescriptor;
    result = v7;
    v7[18] = v8;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayAffineInt4Dequantize;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayAffineInt4Dequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
}

@end