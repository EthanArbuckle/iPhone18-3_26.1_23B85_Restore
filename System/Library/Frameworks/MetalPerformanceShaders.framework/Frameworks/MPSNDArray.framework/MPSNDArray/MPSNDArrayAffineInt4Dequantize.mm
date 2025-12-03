@interface MPSNDArrayAffineInt4Dequantize
- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)device quantizationDescriptor:(id)descriptor;
- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)device quantizationDescriptor:(id)descriptor sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayAffineInt4Dequantize

- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)device quantizationDescriptor:(id)descriptor sourceCount:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayAffineInt4Dequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v9 initWithDevice:device sourceCount:count];
  if (result)
  {
    result->super._encode = EncodeArrayAffieInt4Dequant;
    result->super.super._encodeData = result;
    v7 = result;
    descriptorCopy = descriptor;
    result = v7;
    v7->_quantizationDescriptor = descriptorCopy;
  }

  return result;
}

- (MPSNDArrayAffineInt4Dequantize)initWithDevice:(id)device quantizationDescriptor:(id)descriptor
{
  v7 = [descriptor getNDArrayCount] + 1;

  return [(MPSNDArrayAffineInt4Dequantize *)self initWithDevice:device quantizationDescriptor:descriptor sourceCount:v7];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayAffineInt4Dequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayAffineInt4Dequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v9 copyWithZone:zone device:device];
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

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayAffineInt4Dequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
}

@end