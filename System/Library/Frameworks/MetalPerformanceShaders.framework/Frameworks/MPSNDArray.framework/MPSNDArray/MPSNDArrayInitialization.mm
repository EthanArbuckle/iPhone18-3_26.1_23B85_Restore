@interface MPSNDArrayInitialization
- (MPSNDArrayInitialization)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayInitialization)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)encodeToCommandBuffer:(id)buffer destinationDescriptor:(id)descriptor;
- (unint64_t)kernelDimensionalityForDestinationArray:(id)array;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer destinationArray:(id)array;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayInitialization

- (unint64_t)kernelDimensionalityForDestinationArray:(id)array
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = array;
  result = -[MPSNDArrayInitialization kernelDimensionalityForSourceArrays:](self, "kernelDimensionalityForSourceArrays:", [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object
{
  v6 = [destinationArrays objectAtIndexedSubscript:0];

  return [(MPSNDArrayInitialization *)self kernelDimensionalityForDestinationArray:v6];
}

- (MPSNDArrayInitialization)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitialization;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithDevice:device sourceCount:count];
  if (result)
  {
    result->_distribution = 0;
    result->_generator = 0;
    result->_seed = 0;
    result->_constantValue = 0.0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer destinationArray:(id)array
{
  v7 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = MPSNDArrayInitialization;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:destinationArray:](&v8, sel_encodeToCommandBuffer_sourceArrays_destinationArray_, buffer, [MEMORY[0x277CBEA60] array], array);
  objc_autoreleasePoolPop(v7);
}

- (id)encodeToCommandBuffer:(id)buffer destinationDescriptor:(id)descriptor
{
  v6 = [objc_alloc(MEMORY[0x277CD7260]) initWithDevice:objc_msgSend(buffer descriptor:{"device"), descriptor}];
  [(MPSNDArrayInitialization *)self encodeToCommandBuffer:buffer destinationArray:v6];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayInitialization;
  v7 = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (v7)
  {
    distribution = self->_distribution;
    if (distribution)
    {
      v7[18] = [(MPSParallelRandomDistributionDescriptor *)distribution copyWithZone:zone];
    }

    generator = self->_generator;
    if (generator)
    {
      v7[19] = [(MPSParallelRandom *)generator copyWithZone:zone device:device];
    }

    v7[20] = self->_seed;
    *(v7 + 42) = LODWORD(self->_constantValue);
    v7[12] = self;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitialization;
  [(MPSNDArrayMultiaryBase *)&v6 encodeWithCoder:?];
  *&v5 = self->_constantValue;
  [coder encodeFloat:@"MPSNDArrayInitialization.constantValue" forKey:v5];
  [(MPSParallelRandom *)self->_generator encodeWithCoder:coder];
}

- (MPSNDArrayInitialization)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayInitialization;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    [coder decodeFloatForKey:@"MPSNDArrayInitialization.constantValue"];
    v6->_constantValue = v7;
    v6->_generator = [objc_alloc(MEMORY[0x277CD7278]) initWithCoder:coder device:device];
    v6->super.super._encodeData = v6;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayInitialization;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end