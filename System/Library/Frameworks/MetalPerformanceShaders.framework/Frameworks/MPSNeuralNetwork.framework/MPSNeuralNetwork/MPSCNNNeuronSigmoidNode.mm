@interface MPSCNNNeuronSigmoidNode
+ (MPSCNNNeuronSigmoidNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronSigmoidNode)initWithSource:(MPSNNImageNode *)sourceNode;
@end

@implementation MPSCNNNeuronSigmoidNode

+ (MPSCNNNeuronSigmoidNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNeuronSigmoidNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronSigmoidNode;
  return [(MPSCNNNeuronNode *)&v4 initWithSource:sourceNode type:3 a:0.0 b:0.0 c:0.0];
}

@end