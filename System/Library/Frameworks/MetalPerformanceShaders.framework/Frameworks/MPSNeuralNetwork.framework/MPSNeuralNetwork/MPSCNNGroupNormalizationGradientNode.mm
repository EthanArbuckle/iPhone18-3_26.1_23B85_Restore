@interface MPSCNNGroupNormalizationGradientNode
+ (MPSCNNGroupNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
- (MPSCNNGroupNormalizationGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSCNNGroupNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState;
@end

@implementation MPSCNNGroupNormalizationGradientNode

+ (MPSCNNGroupNormalizationGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, sourceGradient, sourceImage, gradientState, v10, v11, v12);

  return v13;
}

- (MPSCNNGroupNormalizationGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage gradientState:(MPSNNGradientStateNode *)gradientState
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = sourceGradient;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, gradientState, v5, v6, v7);
  v20 = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSCNNGroupNormalizationGradientNode;
  result = [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:gradientState paddingPolicy:0];
  if (result)
  {
    result->_trainingStyle = 2;
  }

  return result;
}

- (MPSCNNGroupNormalizationGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = MPSCNNGroupNormalizationGradientNode;
    return [(MPSNNGradientFilterNode *)&v9 initWithGradientImages:a3 forwardFilter:a4];
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
}

@end