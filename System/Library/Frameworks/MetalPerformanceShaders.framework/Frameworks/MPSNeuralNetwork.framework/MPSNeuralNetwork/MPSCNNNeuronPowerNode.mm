@interface MPSCNNNeuronPowerNode
+ (MPSCNNNeuronPowerNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSCNNNeuronPowerNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c;
- (MPSCNNNeuronPowerNode)initWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNeuronPowerNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c;
@end

@implementation MPSCNNNeuronPowerNode

+ (MPSCNNNeuronPowerNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSCNNNeuronPowerNode)nodeWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c
{
  v10 = [self alloc];
  *&v11 = a;
  *&v12 = b;
  *&v13 = c;
  v20 = objc_msgSend_initWithSource_a_b_c_(v10, v14, sourceNode, v15, v16, v17, v18, v19, v11, v12, v13);

  return v20;
}

- (MPSCNNNeuronPowerNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  return objc_msgSend_initWithSource_a_b_c_(self, a2, sourceNode, v3, v4, v5, v6, v7, v8, 0.0, v9);
}

- (MPSCNNNeuronPowerNode)initWithSource:(MPSNNImageNode *)sourceNode a:(float)a b:(float)b c:(float)c
{
  v7.receiver = self;
  v7.super_class = MPSCNNNeuronPowerNode;
  return [MPSCNNNeuronNode initWithSource:sel_initWithSource_type_a_b_c_ type:sourceNode a:12 b:? c:?];
}

@end