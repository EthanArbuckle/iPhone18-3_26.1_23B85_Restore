@interface MPSCNNNeuronSoftSignNode
+ (MPSCNNNeuronSoftSignNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronSoftSignNode)initWithSource:(id)a3 a:(float)a4 b:(float)a5;
@end

@implementation MPSCNNNeuronSoftSignNode

+ (MPSCNNNeuronSoftSignNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNeuronSoftSignNode)initWithSource:(id)a3 a:(float)a4 b:(float)a5
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronSoftSignNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:a3 a:8 b:? c:?];
}

@end