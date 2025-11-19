@interface MPSCNNNormalizationNode
+ (MPSCNNNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
- (MPSCNNNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode;
@end

@implementation MPSCNNNormalizationNode

+ (MPSCNNNormalizationNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithSource_(v4, v5, sourceNode, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSCNNNormalizationNode)initWithSource:(MPSNNImageNode *)sourceNode
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = sourceNode;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v11, 1, v3, v4, v5, v6);
  v10.receiver = self;
  v10.super_class = MPSCNNNormalizationNode;
  result = [(MPSNNFilterNode *)&v10 initWithSourceImages:v8 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_alpha = 1.0;
    result->_beta = 5.0;
    result->_delta = 1.0;
  }

  return result;
}

@end