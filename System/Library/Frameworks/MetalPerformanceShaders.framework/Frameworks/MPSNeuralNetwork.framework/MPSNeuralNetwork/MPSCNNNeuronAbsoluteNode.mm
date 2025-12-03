@interface MPSCNNNeuronAbsoluteNode
+ (MPSCNNNeuronAbsoluteNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronAbsoluteNode)initWithSource:(MPSNNImageNode *)sourceNode;
@end

@implementation MPSCNNNeuronAbsoluteNode

+ (MPSCNNNeuronAbsoluteNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNeuronAbsoluteNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronAbsoluteNode;
  return [(MPSCNNNeuronNode *)&v4 initWithSource:sourceNode type:6 a:0.0 b:0.0 c:0.0];
}

@end