@interface MPSNDArrayVectorLUTDequantize
- (MPSNDArrayVectorLUTDequantize)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayVectorLUTDequantize)initWithDevice:(id)device axis:(unint64_t)axis;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayVectorLUTDequantize

- (MPSNDArrayVectorLUTDequantize)initWithDevice:(id)device axis:(unint64_t)axis
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 initWithDevice:device sourceCount:2];
  if (result)
  {
    result->super._encode = EncodeArrayVectorLUTDequant;
    result->super.super._encodeData = result;
    result->_vectorAxis = axis;
  }

  return result;
}

- (MPSNDArrayVectorLUTDequantize)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super._encode = EncodeArrayVectorLUTDequant;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayVectorLUTDequantize;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayVectorLUTDequantize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = EncodeArrayVectorLUTDequant;
    *(result + 12) = self;
    *(result + 18) = self->_vectorAxis;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayVectorLUTDequantize;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
}

@end