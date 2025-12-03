@interface MPSCNNNeuronSoftSignNode
+ (MPSCNNNeuronSoftSignNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronSoftSignNode)initWithSource:(id)source a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronSoftSignNode

+ (MPSCNNNeuronSoftSignNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNeuronSoftSignNode)initWithSource:(id)source a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronSoftSignNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:source a:8 b:? c:?];
}

@end