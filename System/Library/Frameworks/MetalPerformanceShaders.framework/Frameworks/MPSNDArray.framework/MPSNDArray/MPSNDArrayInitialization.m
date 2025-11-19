@interface MPSNDArrayInitialization
- (MPSNDArrayInitialization)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayInitialization)initWithDevice:(id)a3 sourceCount:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)encodeToCommandBuffer:(id)a3 destinationDescriptor:(id)a4;
- (unint64_t)kernelDimensionalityForDestinationArray:(id)a3;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3 destinationArrays:(id)a4 kernelDAGObject:(id)a5;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 destinationArray:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayInitialization

- (unint64_t)kernelDimensionalityForDestinationArray:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = a3;
  result = -[MPSNDArrayInitialization kernelDimensionalityForSourceArrays:](self, "kernelDimensionalityForSourceArrays:", [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1]);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)kernelDimensionalityForSourceArrays:(id)a3 destinationArrays:(id)a4 kernelDAGObject:(id)a5
{
  v6 = [a4 objectAtIndexedSubscript:0];

  return [(MPSNDArrayInitialization *)self kernelDimensionalityForDestinationArray:v6];
}

- (MPSNDArrayInitialization)initWithDevice:(id)a3 sourceCount:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitialization;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithDevice:a3 sourceCount:a4];
  if (result)
  {
    result->_distribution = 0;
    result->_generator = 0;
    result->_seed = 0;
    result->_constantValue = 0.0;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 destinationArray:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  v8.receiver = self;
  v8.super_class = MPSNDArrayInitialization;
  -[MPSNDArrayMultiaryKernel encodeToCommandBuffer:sourceArrays:destinationArray:](&v8, sel_encodeToCommandBuffer_sourceArrays_destinationArray_, a3, [MEMORY[0x277CBEA60] array], a4);
  objc_autoreleasePoolPop(v7);
}

- (id)encodeToCommandBuffer:(id)a3 destinationDescriptor:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x277CD7260]) initWithDevice:objc_msgSend(a3 descriptor:{"device"), a4}];
  [(MPSNDArrayInitialization *)self encodeToCommandBuffer:a3 destinationArray:v6];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayInitialization;
  v7 = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (v7)
  {
    distribution = self->_distribution;
    if (distribution)
    {
      v7[18] = [(MPSParallelRandomDistributionDescriptor *)distribution copyWithZone:a3];
    }

    generator = self->_generator;
    if (generator)
    {
      v7[19] = [(MPSParallelRandom *)generator copyWithZone:a3 device:a4];
    }

    v7[20] = self->_seed;
    *(v7 + 42) = LODWORD(self->_constantValue);
    v7[12] = self;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitialization;
  [(MPSNDArrayMultiaryBase *)&v6 encodeWithCoder:?];
  *&v5 = self->_constantValue;
  [a3 encodeFloat:@"MPSNDArrayInitialization.constantValue" forKey:v5];
  [(MPSParallelRandom *)self->_generator encodeWithCoder:a3];
}

- (MPSNDArrayInitialization)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayInitialization;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    [a3 decodeFloatForKey:@"MPSNDArrayInitialization.constantValue"];
    v6->_constantValue = v7;
    v6->_generator = [objc_alloc(MEMORY[0x277CD7278]) initWithCoder:a3 device:a4];
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