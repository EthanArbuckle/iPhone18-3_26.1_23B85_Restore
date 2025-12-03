@interface MPSCNNDropoutNode
+ (MPSCNNDropoutNode)nodeWithSource:(MPSNNImageNode *)source;
+ (MPSCNNDropoutNode)nodeWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability;
- (MPSCNNDropoutNode)initWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability;
- (MPSCNNDropoutNode)initWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels;
@end

@implementation MPSCNNDropoutNode

+ (MPSCNNDropoutNode)nodeWithSource:(MPSNNImageNode *)source
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, source, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNDropoutNode)nodeWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability
{
  v6 = [self alloc];
  *&v7 = keepProbability;
  v14 = objc_msgSend_initWithSource_keepProbability_(v6, v8, source, v9, v10, v11, v12, v13, v7);

  return v14;
}

- (MPSCNNDropoutNode)initWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability
{
  v6 = arc4random();
  v7 = vdupq_n_s64(1uLL);
  v13 = v7;
  v14 = 1;
  v7.i32[0] = 0.5;
  return objc_msgSend_initWithSource_keepProbability_seed_maskStrideInPixels_(self, v8, source, v6, &v13, v9, v10, v11, *v7.i64);
}

- (MPSCNNDropoutNode)initWithSource:(MPSNNImageNode *)source keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = source;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v17, 1, maskStrideInPixels, v6, v7, v8);
  v16.receiver = self;
  v16.super_class = MPSCNNDropoutNode;
  result = [(MPSNNFilterNode *)&v16 initWithSourceImages:v13 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_keepProbability = keepProbability;
    result->_seed = seed;
    v15 = *&maskStrideInPixels->width;
    result->_maskStride.depth = maskStrideInPixels->depth;
    *&result->_maskStride.width = v15;
  }

  return result;
}

@end