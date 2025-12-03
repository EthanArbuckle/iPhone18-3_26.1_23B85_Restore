@interface MPSCNNConvolutionTransposeGradientStateNode
- (MPSCNNConvolutionTransposeGradientStateNode)initWithParent:(id)parent;
@end

@implementation MPSCNNConvolutionTransposeGradientStateNode

- (MPSCNNConvolutionTransposeGradientStateNode)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionTransposeGradientStateNode;
  return [(MPSCNNConvolutionGradientStateNode *)&v4 initWithParent:parent];
}

@end