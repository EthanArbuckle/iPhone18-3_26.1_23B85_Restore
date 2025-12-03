@interface MPSNNBilinearScaleNode
- (MPSNNBilinearScaleNode)initWithSource:(id)source transformProvider:(id)provider outputSize:(id *)size;
@end

@implementation MPSNNBilinearScaleNode

- (MPSNNBilinearScaleNode)initWithSource:(id)source transformProvider:(id)provider outputSize:(id *)size
{
  v7 = *size;
  v6.receiver = self;
  v6.super_class = MPSNNBilinearScaleNode;
  return [(MPSNNScaleNode *)&v6 privateInitWithSource:source transformProvider:provider outputSize:&v7];
}

@end