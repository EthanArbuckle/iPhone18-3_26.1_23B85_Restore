@interface MPSCNNConvolutionGradientStateNode
- (MPSCNNConvolutionGradientStateNode)initWithParent:(id)a3;
@end

@implementation MPSCNNConvolutionGradientStateNode

- (MPSCNNConvolutionGradientStateNode)initWithParent:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionGradientStateNode;
  return [(MPSNNStateNode *)&v4 initWithParent:a3];
}

@end