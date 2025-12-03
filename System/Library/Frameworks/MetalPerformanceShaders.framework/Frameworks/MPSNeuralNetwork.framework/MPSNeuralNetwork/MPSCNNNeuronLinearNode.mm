@interface MPSCNNNeuronLinearNode
+ (MPSCNNNeuronLinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSCNNNeuronLinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b;
- (MPSCNNNeuronLinearNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronLinearNode

+ (MPSCNNNeuronLinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNNeuronLinearNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b
{
  v8 = [self alloc];
  *&v9 = a;
  *&v10 = b;
  v17 = objc_msgSend_initWithSource_a_b_(v8, v11, sourceNode, v12, v13, v14, v15, v16, v9, v10);

  return v17;
}

- (MPSCNNNeuronLinearNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronLinearNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:sourceNode a:2 b:? c:?];
}

@end