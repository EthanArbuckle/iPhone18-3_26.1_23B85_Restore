@interface MPSNDArrayUnaryGradientKernel
- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state;
- (MPSNDArrayUnaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device;
- (MPSNDArrayUnaryGradientKernel)initWithDevice:(id)device;
- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination;
@end

@implementation MPSNDArrayUnaryGradientKernel

- (MPSNDArrayUnaryGradientKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayUnaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v4 initWithDevice:device sourceCount:1 sourceGradientIndex:0];
}

- (MPSNDArrayUnaryGradientKernel)initWithCoder:(NSCoder *)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayUnaryGradientKernel;
  return [(MPSNDArrayMultiaryGradientKernel *)&v5 initWithCoder:coder device:device];
}

- (MPSNDArray)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = sourceArray;
  v8.receiver = self;
  v8.super_class = MPSNDArrayUnaryGradientKernel;
  result = -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:](&v8, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1], gradient, state);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeToCommandBuffer:(id)cmdBuf sourceArray:(MPSNDArray *)sourceArray sourceGradient:(MPSNDArray *)gradient gradientState:(MPSState *)state destinationArray:(MPSNDArray *)destination
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = sourceArray;
  v8.receiver = self;
  v8.super_class = MPSNDArrayUnaryGradientKernel;
  -[MPSNDArrayMultiaryGradientKernel encodeToCommandBuffer:sourceArrays:sourceGradient:gradientState:destinationArray:](&v8, sel_encodeToCommandBuffer_sourceArrays_sourceGradient_gradientState_destinationArray_, cmdBuf, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1], gradient, state, destination);
  v7 = *MEMORY[0x277D85DE8];
}

@end