@interface MPSCNNDropoutGradientNode
- (MPSCNNDropoutGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNDropoutGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels;
@end

@implementation MPSCNNDropoutGradientNode

- (MPSCNNDropoutGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState keepProbability:(float)keepProbability seed:(NSUInteger)seed maskStrideInPixels:(MTLSize *)maskStrideInPixels
{
  v26[1] = *MEMORY[0x277D85DE8];
  v26[0] = sourceGradient;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v26, 1, gradientState, seed, maskStrideInPixels, v8);
  v25 = sourceImage;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v25, 1, v17, v18, v19, v20);
  v24.receiver = self;
  v24.super_class = MPSCNNDropoutGradientNode;
  result = [(MPSNNGradientFilterNode *)&v24 initWithGradientImages:v15 sourceImages:v21 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_keepProbability = keepProbability;
    result->_seed = seed;
    v23 = *&maskStrideInPixels->width;
    result->_maskStride.depth = maskStrideInPixels->depth;
    *&result->_maskStride.width = v23;
  }

  return result;
}

- (MPSCNNDropoutGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    filterCopy = filter;
    MTLReportFailure();
  }

  v12.receiver = self;
  v12.super_class = MPSCNNDropoutGradientNode;
  result = [(MPSNNGradientFilterNode *)&v12 initWithGradientImages:images forwardFilter:filter, v10, filterCopy];
  if (result)
  {
    result->_keepProbability = *(filter + 14);
    result->_seed = *(filter + 8);
    v8 = *(filter + 11);
    *&result->_maskStride.width = *(filter + 72);
    result->_maskStride.depth = v8;
  }

  return result;
}

@end