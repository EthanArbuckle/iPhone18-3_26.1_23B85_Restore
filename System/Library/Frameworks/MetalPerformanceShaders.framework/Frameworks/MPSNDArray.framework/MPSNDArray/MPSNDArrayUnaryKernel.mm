@interface MPSNDArrayUnaryKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray;
- (MPSNDArrayOffsets)offsets;
- (MPSNDArrayOffsets)strides;
- (MPSNDArraySizes)dilationRates;
- (MPSNDArraySizes)kernelSizes;
- (MPSNDArrayUnaryKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayUnaryKernel)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray destinationArray:(MPSNDArray *)destination;
- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray resultState:(MPSState *)outGradientState destinationArray:(MPSNDArray *)destination;
- (void)setDilationRates:(id *)rates;
- (void)setKernelSizes:(id *)sizes;
- (void)setOffsets:(id *)offsets;
- (void)setStrides:(id *)strides;
@end

@implementation MPSNDArrayUnaryKernel

- (MPSNDArrayUnaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayUnaryKernel;
  return [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:device sourceCount:1];
}

- (MPSNDArrayUnaryKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayUnaryKernel;
  return [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArrayOffsets)offsets
{
  if (self)
  {
    return [(MPSNDArrayOffsets *)self offsetsAtSourceIndex:0];
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = 0u;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArraySizes)kernelSizes
{
  if (self)
  {
    return [(MPSNDArraySizes *)self kernelSizesForSourceIndex:0];
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = 0u;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArrayOffsets)strides
{
  if (self)
  {
    return [(MPSNDArrayOffsets *)self stridesForSourceIndex:0];
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = 0u;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArraySizes)dilationRates
{
  if (self)
  {
    return [(MPSNDArraySizes *)self dilationRatesForSourceIndex:0];
  }

  *&retstr->dimensions[12] = 0u;
  *&retstr->dimensions[14] = 0u;
  *&retstr->dimensions[8] = 0u;
  *&retstr->dimensions[10] = 0u;
  *&retstr->dimensions[4] = 0u;
  *&retstr->dimensions[6] = 0u;
  *retstr->dimensions = 0u;
  *&retstr->dimensions[2] = 0u;
  return self;
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = sourceArray;
  v6.receiver = self;
  v6.super_class = MPSNDArrayUnaryKernel;
  result = -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:](&v6, sel_encodeToCommandBuffer_sourceArrays_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray destinationArray:(MPSNDArray *)destination
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = sourceArray;
  v6.receiver = self;
  v6.super_class = MPSNDArrayUnaryKernel;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:destinationArray:](&v6, sel_encodeToCommandBuffer_sourceArrays_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1], destination);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray resultState:(MPSState *)outGradientState destinationArray:(MPSNDArray *)destination
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = sourceArray;
  v7.receiver = self;
  v7.super_class = MPSNDArrayUnaryKernel;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:resultState:destinationArray:](&v7, sel_encodeToCommandBuffer_sourceArrays_resultState_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1], outGradientState, destination);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setOffsets:(id *)offsets
{
  v3 = *&offsets->var0[6];
  v5 = *offsets->var0;
  v4 = *&offsets->var0[2];
  *&self->_offsets.dimensions[4] = *&offsets->var0[4];
  *&self->_offsets.dimensions[6] = v3;
  *self->_offsets.dimensions = v5;
  *&self->_offsets.dimensions[2] = v4;
  v6 = *&offsets->var0[14];
  v8 = *&offsets->var0[8];
  v7 = *&offsets->var0[10];
  *&self->_offsets.dimensions[12] = *&offsets->var0[12];
  *&self->_offsets.dimensions[14] = v6;
  *&self->_offsets.dimensions[8] = v8;
  *&self->_offsets.dimensions[10] = v7;
}

- (void)setKernelSizes:(id *)sizes
{
  v3 = *&sizes->var0[6];
  v5 = *sizes->var0;
  v4 = *&sizes->var0[2];
  *&self->_kernelSizes.dimensions[4] = *&sizes->var0[4];
  *&self->_kernelSizes.dimensions[6] = v3;
  *self->_kernelSizes.dimensions = v5;
  *&self->_kernelSizes.dimensions[2] = v4;
  v6 = *&sizes->var0[14];
  v8 = *&sizes->var0[8];
  v7 = *&sizes->var0[10];
  *&self->_kernelSizes.dimensions[12] = *&sizes->var0[12];
  *&self->_kernelSizes.dimensions[14] = v6;
  *&self->_kernelSizes.dimensions[8] = v8;
  *&self->_kernelSizes.dimensions[10] = v7;
}

- (void)setStrides:(id *)strides
{
  v3 = *&strides->var0[6];
  v5 = *strides->var0;
  v4 = *&strides->var0[2];
  *&self->_strides.dimensions[4] = *&strides->var0[4];
  *&self->_strides.dimensions[6] = v3;
  *self->_strides.dimensions = v5;
  *&self->_strides.dimensions[2] = v4;
  v6 = *&strides->var0[14];
  v8 = *&strides->var0[8];
  v7 = *&strides->var0[10];
  *&self->_strides.dimensions[12] = *&strides->var0[12];
  *&self->_strides.dimensions[14] = v6;
  *&self->_strides.dimensions[8] = v8;
  *&self->_strides.dimensions[10] = v7;
}

- (void)setDilationRates:(id *)rates
{
  v3 = *&rates->var0[6];
  v5 = *rates->var0;
  v4 = *&rates->var0[2];
  *&self->_dilationRates.dimensions[4] = *&rates->var0[4];
  *&self->_dilationRates.dimensions[6] = v3;
  *self->_dilationRates.dimensions = v5;
  *&self->_dilationRates.dimensions[2] = v4;
  v6 = *&rates->var0[14];
  v8 = *&rates->var0[8];
  v7 = *&rates->var0[10];
  *&self->_dilationRates.dimensions[12] = *&rates->var0[12];
  *&self->_dilationRates.dimensions[14] = v6;
  *&self->_dilationRates.dimensions[8] = v8;
  *&self->_dilationRates.dimensions[10] = v7;
}

@end