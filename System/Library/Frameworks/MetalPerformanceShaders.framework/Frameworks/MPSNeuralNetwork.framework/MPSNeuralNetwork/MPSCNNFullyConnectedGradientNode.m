@interface MPSCNNFullyConnectedGradientNode
+ (MPSCNNFullyConnectedGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights;
- (MPSCNNFullyConnectedGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights;
@end

@implementation MPSCNNFullyConnectedGradientNode

+ (MPSCNNFullyConnectedGradientNode)nodeWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights
{
  v10 = [a1 alloc];
  v14 = objc_msgSend_initWithSourceGradient_sourceImage_convolutionGradientState_weights_(v10, v11, sourceGradient, sourceImage, gradientState, weights, v12, v13);

  return v14;
}

- (MPSCNNFullyConnectedGradientNode)initWithSourceGradient:(MPSNNImageNode *)sourceGradient sourceImage:(MPSNNImageNode *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)gradientState weights:(id)weights
{
  v21.receiver = self;
  v21.super_class = MPSCNNFullyConnectedGradientNode;
  v12 = [(MPSCNNConvolutionGradientNode *)&v21 initWithSourceGradient:sourceGradient sourceImage:sourceImage convolutionGradientState:gradientState weights:weights];
  if (v12)
  {
    v13 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v6, 32, v7, v8, v9, v10, v11);
    objc_msgSend_setPaddingPolicy_(v12, v14, v13, v15, v16, v17, v18, v19);
  }

  return v12;
}

@end