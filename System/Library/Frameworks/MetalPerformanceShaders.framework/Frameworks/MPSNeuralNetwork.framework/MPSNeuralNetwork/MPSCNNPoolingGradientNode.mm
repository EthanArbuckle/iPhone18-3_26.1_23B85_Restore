@interface MPSCNNPoolingGradientNode
+ (MPSCNNPoolingGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY paddingPolicy:(id)paddingPolicy;
- (MPSCNNPoolingGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNPoolingGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY paddingPolicy:(id)paddingPolicy;
@end

@implementation MPSCNNPoolingGradientNode

+ (MPSCNNPoolingGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY paddingPolicy:(id)paddingPolicy
{
  v16 = [self alloc];
  v18 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_kernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_paddingPolicy_(v16, v17, sourceGradient, sourceImage, gradientState, kernelWidth, kernelHeight, strideInPixelsX, strideInPixelsY, paddingPolicy);

  return v18;
}

- (MPSCNNPoolingGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY paddingPolicy:(id)paddingPolicy
{
  v26[1] = *MEMORY[0x277D85DE8];
  v26[0] = sourceGradient;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v26, 1, gradientState, kernelWidth, kernelHeight, strideInPixelsX);
  v25 = sourceImage;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, &v25, 1, v18, v19, v20, v21);
  v24.receiver = self;
  v24.super_class = MPSCNNPoolingGradientNode;
  result = [(MPSNNGradientFilterNode *)&v24 initWithGradientImages:v16 sourceImages:v22 gradientState:gradientState paddingPolicy:paddingPolicy];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->_strideInPixelsX = strideInPixelsX;
    result->_strideInPixelsY = strideInPixelsY;
  }

  return result;
}

- (MPSCNNPoolingGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    filterCopy = filter;
    MTLReportFailure();
  }

  v11.receiver = self;
  v11.super_class = MPSCNNPoolingGradientNode;
  result = [(MPSNNGradientFilterNode *)&v11 initWithGradientImages:images forwardFilter:filter, v9, filterCopy];
  if (result)
  {
    result->_kernelWidth = *(filter + 7);
    result->_kernelHeight = *(filter + 8);
    result->_strideInPixelsX = *(filter + 9);
    result->_strideInPixelsY = *(filter + 10);
  }

  return result;
}

@end