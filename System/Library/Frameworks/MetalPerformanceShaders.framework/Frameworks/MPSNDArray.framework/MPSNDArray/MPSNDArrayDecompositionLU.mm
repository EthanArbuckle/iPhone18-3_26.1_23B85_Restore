@interface MPSNDArrayDecompositionLU
- (MPSNDArrayDecompositionLU)initWithDevice:(id)device;
- (void)dealloc;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArrays:(id)destinationArrays status:(id)status;
@end

@implementation MPSNDArrayDecompositionLU

- (MPSNDArrayDecompositionLU)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayDecompositionLU;
  v4 = [(MPSNDArrayMultiaryMultiDestinationKernel *)&v6 initWithDevice:device sourceCount:1 destinationCount:2];
  v4->super._encode = EncodeDecompositionLU;
  v4->super.super._encodeData = v4;
  v4->_mlu = [objc_alloc(MEMORY[0x277CD75D0]) initWithDevice:device rows:1 columns:1];
  v4->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
  return v4;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArrays:(id)destinationArrays status:(id)status
{
  v13[3] = *MEMORY[0x277D85DE8];
  v13[1] = [destinationArrays objectAtIndexedSubscript:{1, objc_msgSend(destinationArrays, "objectAtIndexedSubscript:", 0)}];
  v13[2] = status;
  -[MPSNDArrayMultiaryMultiDestinationKernel encodeToCommandEncoder:commandBuffer:sourceArrays:destinationArrays:](self, "encodeToCommandEncoder:commandBuffer:sourceArrays:destinationArrays:", encoder, buffer, arrays, [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3]);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayDecompositionLU;
  [(MPSNDArrayMultiaryMultiDestinationBase *)&v3 dealloc];
}

@end