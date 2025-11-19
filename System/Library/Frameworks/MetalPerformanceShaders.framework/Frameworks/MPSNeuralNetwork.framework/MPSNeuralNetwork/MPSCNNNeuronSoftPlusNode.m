@interface MPSCNNNeuronSoftPlusNode
+ (MPSCNNNeuronSoftPlusNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSCNNNeuronSoftPlusNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b;
- (MPSCNNNeuronSoftPlusNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronSoftPlusNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b;
@end

@implementation MPSCNNNeuronSoftPlusNode

+ (MPSCNNNeuronSoftPlusNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNNeuronSoftPlusNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b
{
  v8 = [a1 alloc];
  *&v9 = a;
  *&v10 = b;
  v17 = objc_msgSend_initWithSource_a_b_(v8, v11, sourceNode, v12, v13, v14, v15, v16, v9, v10);

  return v17;
}

- (MPSCNNNeuronSoftPlusNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  return objc_msgSend_initWithSource_a_b_(self, a2, sourceNode, v3, v4, v5, v6, v7, v8, v9);
}

- (MPSCNNNeuronSoftPlusNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b
{
  v6.receiver = self;
  v6.super_class = MPSCNNNeuronSoftPlusNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:sourceNode a:7 b:? c:?];
}

@end