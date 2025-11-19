@interface MPSCNNConvolutionTransposeGradientStateNode
- (MPSCNNConvolutionTransposeGradientStateNode)initWithParent:(id)a3;
@end

@implementation MPSCNNConvolutionTransposeGradientStateNode

- (MPSCNNConvolutionTransposeGradientStateNode)initWithParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionTransposeGradientStateNode;
  return [(MPSCNNConvolutionGradientStateNode *)&v4 initWithParent:a3];
}

@end