@interface MPSNNLanczosScaleNode
- (MPSNNLanczosScaleNode)initWithSource:(id)a3 transformProvider:(id)a4 outputSize:(id *)a5;
@end

@implementation MPSNNLanczosScaleNode

- (MPSNNLanczosScaleNode)initWithSource:(id)a3 transformProvider:(id)a4 outputSize:(id *)a5
{
  v7 = *a5;
  v6.receiver = self;
  v6.super_class = MPSNNLanczosScaleNode;
  return [(MPSNNScaleNode *)&v6 privateInitWithSource:a3 transformProvider:a4 outputSize:&v7];
}

@end