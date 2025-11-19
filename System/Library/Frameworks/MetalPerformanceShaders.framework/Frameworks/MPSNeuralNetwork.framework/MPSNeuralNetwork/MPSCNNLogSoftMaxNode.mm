@interface MPSCNNLogSoftMaxNode
+ (MPSCNNLogSoftMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNLogSoftMaxNode)initWithSource:(MPSNNImageNode *)sourceNode;
@end

@implementation MPSCNNLogSoftMaxNode

+ (MPSCNNLogSoftMaxNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNLogSoftMaxNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = sourceNode;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1, v3, v4, v5, v6);
  v10.receiver = self;
  v10.super_class = MPSCNNLogSoftMaxNode;
  return [(MPSNNFilterNode *)&v10 initWithSourceImages:v8 sourceStates:0 paddingPolicy:0];
}

@end