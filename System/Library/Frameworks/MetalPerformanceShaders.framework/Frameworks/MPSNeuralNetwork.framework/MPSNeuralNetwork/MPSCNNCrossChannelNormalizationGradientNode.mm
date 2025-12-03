@interface MPSCNNCrossChannelNormalizationGradientNode
+ (MPSCNNCrossChannelNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelSize:(NSUInteger)kernelSize;
- (MPSCNNCrossChannelNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNCrossChannelNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelSize:(NSUInteger)kernelSize;
@end

@implementation MPSCNNCrossChannelNormalizationGradientNode

+ (MPSCNNCrossChannelNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelSize:(NSUInteger)kernelSize
{
  v10 = [self alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_kernelSize_(v10, v11, sourceGradient, sourceImage, gradientState, kernelSize, v12, v13);

  return v14;
}

- (MPSCNNCrossChannelNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelSize:(NSUInteger)kernelSize
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = sourceGradient;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v22, 1, gradientState, kernelSize, v6, v7);
  v21 = sourceImage;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, &v21, 1, v14, v15, v16, v17);
  v20.receiver = self;
  v20.super_class = MPSCNNCrossChannelNormalizationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v20 initWithGradientImages:v12 sourceImages:v18 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_kernelSize = kernelSize;
  }

  return result;
}

- (MPSCNNCrossChannelNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = MPSCNNCrossChannelNormalizationGradientNode;
    result = [(MPSNNGradientFilterNode *)&v9 initWithGradientImages:images forwardFilter:filter];
    if (result)
    {
      result->_kernelSize = *(filter + 9);
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

@end