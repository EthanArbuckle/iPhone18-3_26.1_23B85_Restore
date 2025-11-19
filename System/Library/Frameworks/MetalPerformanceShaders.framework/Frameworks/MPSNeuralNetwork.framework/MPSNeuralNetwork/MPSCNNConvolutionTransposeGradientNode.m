@interface MPSCNNConvolutionTransposeGradientNode
+ (MPSCNNConvolutionTransposeGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights;
- (MPSCNNConvolutionTransposeGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4;
- (MPSCNNConvolutionTransposeGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights;
@end

@implementation MPSCNNConvolutionTransposeGradientNode

+ (MPSCNNConvolutionTransposeGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_convolutionTransposeGradientState_weights_(v10, v11, sourceGradient, sourceImage, gradientState, weights, v12, v13);

  return v14;
}

- (MPSCNNConvolutionTransposeGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionTransposeGradientState:(MPSCNNConvolutionTransposeGradientStateNode *)gradientState weights:(id)weights
{
  v7.receiver = self;
  v7.super_class = MPSCNNConvolutionTransposeGradientNode;
  return [(MPSCNNConvolutionGradientNode *)&v7 initWithSourceGradient:sourceGradient sourceImage:sourceImage gradientState:gradientState weights:weights];
}

- (MPSCNNConvolutionTransposeGradientNode)initWithGradientImages:(id)a3 forwardFilter:(id)a4
{
  v10 = objc_msgSend_objectAtIndexedSubscript_(a3, a2, 0, a4, v4, v5, v6, v7);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(a4 + 1), v11, 0, v12, v13, v14, v15, v16);
  v25 = objc_msgSend_resultState(a4, v18, v19, v20, v21, v22, v23, v24);
  result = objc_msgSend_initWithSourceGradient_sourceImage_convolutionTransposeGradientState_weights_(self, v26, v10, v17, v25, 0, v27, v28);
  if (result)
  {
    result->super._trainingStyle = 2;
  }

  return result;
}

@end