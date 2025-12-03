@interface MPSCNNFullyConnectedNode
+ (MPSCNNFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights;
- (MPSCNNFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights;
@end

@implementation MPSCNNFullyConnectedNode

+ (MPSCNNFullyConnectedNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_weights_(v6, v7, sourceNode, weights, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNFullyConnectedNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights
{
  v19.receiver = self;
  v19.super_class = MPSCNNFullyConnectedNode;
  v10 = [(MPSCNNConvolutionNode *)&v19 initWithSource:sourceNode weights:weights];
  if (v10)
  {
    v11 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v4, 0, v5, v6, v7, v8, v9);
    objc_msgSend_setPaddingPolicy_(v10, v12, v11, v13, v14, v15, v16, v17);
  }

  return v10;
}

@end