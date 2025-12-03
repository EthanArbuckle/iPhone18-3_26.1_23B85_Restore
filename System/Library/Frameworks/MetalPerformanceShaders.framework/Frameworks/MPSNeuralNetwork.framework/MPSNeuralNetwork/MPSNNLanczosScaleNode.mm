@interface MPSNNLanczosScaleNode
- (MPSNNLanczosScaleNode)initWithSource:(id)source transformProvider:(id)provider outputSize:(id *)size;
@end

@implementation MPSNNLanczosScaleNode

- (MPSNNLanczosScaleNode)initWithSource:(id)source transformProvider:(id)provider outputSize:(id *)size
{
  v7 = *size;
  v6.receiver = self;
  v6.super_class = MPSNNLanczosScaleNode;
  return [(MPSNNScaleNode *)&v6 privateInitWithSource:source transformProvider:provider outputSize:&v7];
}

@end