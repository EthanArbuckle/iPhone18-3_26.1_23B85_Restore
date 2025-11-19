@interface MPSCNNNeuronLogarithmNode
+ (MPSCNNNeuronLogarithmNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSCNNNeuronLogarithmNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c;
- (MPSCNNNeuronLogarithmNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronLogarithmNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c;
@end

@implementation MPSCNNNeuronLogarithmNode

+ (MPSCNNNeuronLogarithmNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNNeuronLogarithmNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c
{
  v10 = [a1 alloc];
  *&v11 = a;
  *&v12 = b;
  *&v13 = c;
  v20 = objc_msgSend_initWithSource_a_b_c_(v10, v14, sourceNode, v15, v16, v17, v18, v19, v11, v12, v13);

  return v20;
}

- (MPSCNNNeuronLogarithmNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  LODWORD(v8) = 1.0;
  LODWORD(v9) = -1.0;
  return objc_msgSend_initWithSource_a_b_c_(self, a2, sourceNode, v3, v4, v5, v6, v7, v8, 0.0, v9);
}

- (MPSCNNNeuronLogarithmNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronLogarithmNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:sourceNode a:14 b:? c:?];
}

@end