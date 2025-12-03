@interface MPSCNNLocalContrastNormalizationGradientNode
+ (MPSCNNLocalContrastNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (MPSCNNLocalContrastNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNLocalContrastNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
@end

@implementation MPSCNNLocalContrastNormalizationGradientNode

+ (MPSCNNLocalContrastNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v12 = [self alloc];
  v15 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_kernelWidth_kernelHeight_(v12, v13, sourceGradient, sourceImage, gradientState, kernelWidth, kernelHeight, v14);

  return v15;
}

- (MPSCNNLocalContrastNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = sourceGradient;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v23, 1, gradientState, kernelWidth, kernelHeight, v7);
  v22 = sourceImage;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &v22, 1, v15, v16, v17, v18);
  v21.receiver = self;
  v21.super_class = MPSCNNLocalContrastNormalizationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v21 initWithGradientImages:v13 sourceImages:v19 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->_alpha = 1.0;
    result->_beta = 0.5;
    result->_delta = 0.00097656;
    result->_ps = 1.0;
    result->_pm = 1.0;
    result->_p0 = 1.0;
  }

  return result;
}

- (MPSCNNLocalContrastNormalizationGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = MPSCNNLocalContrastNormalizationGradientNode;
    result = [(MPSNNGradientFilterNode *)&v9 initWithGradientImages:images forwardFilter:filter];
    if (result)
    {
      result->_kernelWidth = *(filter + 10);
      result->_kernelHeight = *(filter + 11);
      result->_alpha = *(filter + 14);
      result->_beta = *(filter + 15);
      result->_delta = *(filter + 16);
      result->_p0 = *(filter + 19);
      result->_pm = *(filter + 17);
      result->_ps = *(filter + 18);
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