@interface MPSNDArrayBinaryKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray;
- (MPSNDArrayBinaryKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayBinaryKernel)initWithDevice:(id)device;
- (MPSNDArrayOffsets)primaryOffsets;
- (MPSNDArrayOffsets)primaryStrides;
- (MPSNDArrayOffsets)secondaryOffsets;
- (MPSNDArrayOffsets)secondaryStrides;
- (MPSNDArraySizes)primaryDilationRates;
- (MPSNDArraySizes)primaryKernelSizes;
- (MPSNDArraySizes)secondaryDilationRates;
- (MPSNDArraySizes)secondaryKernelSizes;
- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray destinationArray:(MPSNDArray *)destination;
- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray resultState:(MPSState *)outGradientState destinationArray:(MPSNDArray *)destination;
@end

@implementation MPSNDArrayBinaryKernel

- (MPSNDArrayBinaryKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayBinaryKernel;
  return [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:device sourceCount:2];
}

- (MPSNDArrayBinaryKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayBinaryKernel;
  return [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArrayOffsets)primaryOffsets
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

- (MPSNDArrayOffsets)secondaryOffsets
{
  if (self)
  {
    return [(MPSNDArrayOffsets *)self offsetsAtSourceIndex:1];
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

- (MPSNDArraySizes)primaryKernelSizes
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

- (MPSNDArraySizes)secondaryKernelSizes
{
  if (self)
  {
    return [(MPSNDArraySizes *)self kernelSizesForSourceIndex:1];
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

- (MPSNDArrayOffsets)primaryStrides
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

- (MPSNDArrayOffsets)secondaryStrides
{
  if (self)
  {
    return [(MPSNDArrayOffsets *)self stridesForSourceIndex:1];
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

- (MPSNDArraySizes)primaryDilationRates
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

- (MPSNDArraySizes)secondaryDilationRates
{
  if (self)
  {
    return [(MPSNDArraySizes *)self dilationRatesForSourceIndex:1];
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

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = primarySourceArray;
  v8[1] = secondarySourceArray;
  v7.receiver = self;
  v7.super_class = MPSNDArrayBinaryKernel;
  result = -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:](&v7, sel_encodeToCommandBuffer_sourceArrays_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2]);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray destinationArray:(MPSNDArray *)destination
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = primarySourceArray;
  v8[1] = secondarySourceArray;
  v7.receiver = self;
  v7.super_class = MPSNDArrayBinaryKernel;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:destinationArray:](&v7, sel_encodeToCommandBuffer_sourceArrays_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2], destination);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)cmdBuf primarySourceArray:(MPSNDArray *)primarySourceArray secondarySourceArray:(MPSNDArray *)secondarySourceArray resultState:(MPSState *)outGradientState destinationArray:(MPSNDArray *)destination
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = primarySourceArray;
  v9[1] = secondarySourceArray;
  v8.receiver = self;
  v8.super_class = MPSNDArrayBinaryKernel;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:resultState:destinationArray:](&v8, sel_encodeToCommandBuffer_sourceArrays_resultState_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2], outGradientState, destination);
  v7 = *MEMORY[0x277D85DE8];
}

@end