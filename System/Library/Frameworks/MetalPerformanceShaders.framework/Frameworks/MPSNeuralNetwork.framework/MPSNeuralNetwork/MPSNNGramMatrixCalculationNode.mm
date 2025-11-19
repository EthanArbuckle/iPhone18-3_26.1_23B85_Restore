@interface MPSNNGramMatrixCalculationNode
+ (MPSNNGramMatrixCalculationNode)nodeWithSource:(MPSNNImageNode *)sourceNode;
+ (MPSNNGramMatrixCalculationNode)nodeWithSource:(MPSNNImageNode *)sourceNode alpha:(float)alpha;
- (MPSNNGramMatrixCalculationNode)initWithSource:(MPSNNImageNode *)sourceNode alpha:(float)alpha;
- (void)dealloc;
@end

@implementation MPSNNGramMatrixCalculationNode

+ (MPSNNGramMatrixCalculationNode)nodeWithSource:(MPSNNImageNode *)sourceNode
{
  v4 = [a1 alloc];
  LODWORD(v5) = 1.0;
  v12 = objc_msgSend_initWithSource_alpha_(v4, v6, sourceNode, v7, v8, v9, v10, v11, v5);

  return v12;
}

+ (MPSNNGramMatrixCalculationNode)nodeWithSource:(MPSNNImageNode *)sourceNode alpha:(float)alpha
{
  v6 = [a1 alloc];
  *&v7 = alpha;
  v14 = objc_msgSend_initWithSource_alpha_(v6, v8, sourceNode, v9, v10, v11, v12, v13, v7);

  return v14;
}

- (MPSNNGramMatrixCalculationNode)initWithSource:(MPSNNImageNode *)sourceNode alpha:(float)alpha
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = sourceNode;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v13, 1, v4, v5, v6, v7);
  v12.receiver = self;
  v12.super_class = MPSNNGramMatrixCalculationNode;
  result = [(MPSNNFilterNode *)&v12 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
  result->_alpha = alpha;
  result->_propertyCallBack = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNGramMatrixCalculationNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

@end