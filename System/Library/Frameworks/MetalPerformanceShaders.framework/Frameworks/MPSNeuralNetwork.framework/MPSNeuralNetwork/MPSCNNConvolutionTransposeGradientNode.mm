@interface MPSCNNConvolutionTransposeGradientNode
+ (MPSCNNConvolutionTransposeGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights;
- (MPSCNNConvolutionTransposeGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter;
- (MPSCNNConvolutionTransposeGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights;
@end

@implementation MPSCNNConvolutionTransposeGradientNode

+ (MPSCNNConvolutionTransposeGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights
{
  v10 = [self alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_convolutionTransposeGradientState_weights_(v10, v11, sourceGradient, sourceImage, gradientState, weights, v12, v13);

  return v14;
}

- (MPSCNNConvolutionTransposeGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights
{
  v7.receiver = self;
  v7.super_class = MPSCNNConvolutionTransposeGradientNode;
  return [(MPSCNNConvolutionGradientNode *)&v7 initWithSourceGradient:sourceGradient sourceImage:sourceImage gradientState:gradientState weights:weights];
}

- (MPSCNNConvolutionTransposeGradientNode)initWithGradientImages:(id)images forwardFilter:(id)filter
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(images, a2, 0, filter, v4, v5, v6, v7);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(filter + 1), v11, 0, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_resultState(filter, v18, v19, v20, v21, v22, v23, v24);
  result = objc_msgSend_initWithSourceGradient_sourceImage_convolutionTransposeGradientState_weights_(self, v26, v10, v17, v25, 0, v27, v28);
  if (result)
  {
    result->super._trainingStyle = 2;
  }

  return result;
}

@end