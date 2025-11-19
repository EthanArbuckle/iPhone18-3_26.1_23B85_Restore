@interface MPSCNNNeuronGeLUNode
+ (MPSCNNNeuronGeLUNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronGeLUNode)initWithSource:(MPSNNImageNode *)sourceNode;
@end

@implementation MPSCNNNeuronGeLUNode

+ (MPSCNNNeuronGeLUNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNeuronGeLUNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v4.receiver = self;
  v4.super_class = MPSCNNNeuronGeLUNode;
  return [(MPSCNNNeuronNode *)&v4 initWithSource:sourceNode type:15 a:0.0 b:0.0 c:0.0];
}

@end