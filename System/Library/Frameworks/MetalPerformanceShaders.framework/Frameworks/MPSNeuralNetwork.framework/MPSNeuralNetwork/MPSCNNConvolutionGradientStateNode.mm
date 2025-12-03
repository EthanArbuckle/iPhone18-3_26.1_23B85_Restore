@interface MPSCNNConvolutionGradientStateNode
- (MPSCNNConvolutionGradientStateNode)initWithParent:(id)parent;
@end

@implementation MPSCNNConvolutionGradientStateNode

- (MPSCNNConvolutionGradientStateNode)initWithParent:(id)parent
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionGradientStateNode;
  return [(MPSNNStateNode *)&v4 initWithParent:parent];
}

@end