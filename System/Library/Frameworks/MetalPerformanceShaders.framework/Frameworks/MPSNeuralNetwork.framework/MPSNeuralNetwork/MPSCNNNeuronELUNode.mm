@interface MPSCNNNeuronELUNode
+ (MPSCNNNeuronELUNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSCNNNeuronELUNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a;
- (MPSCNNNeuronELUNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a;
@end

@implementation MPSCNNNeuronELUNode

+ (MPSCNNNeuronELUNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNNeuronELUNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a
{
  v6 = [a1 alloc];
  *&v7 = a;
  v14 = objc_msgSend_initWithSource_a_(v6, v8, sourceNode, v9, v10, v11, v12, v13, v7);

  return v14;
}

- (MPSCNNNeuronELUNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a
{
  v5.receiver = self;
  v5.super_class = MPSCNNNeuronELUNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:sourceNode a:9 b:? c:?];
}

@end