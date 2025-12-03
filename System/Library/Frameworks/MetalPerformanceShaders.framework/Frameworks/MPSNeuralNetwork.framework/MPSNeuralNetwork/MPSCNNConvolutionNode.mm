@interface MPSCNNConvolutionNode
+ (MPSCNNConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights;
- (MPSCNNConvolutionGradientStateNode)convolutionGradientState;
- (MPSCNNConvolutionNode)initWithSource:(id)source weights:(id)weights state:(id)state;
- (MPSCNNConvolutionStateNode)convolutionState;
- (void)dealloc;
@end

@implementation MPSCNNConvolutionNode

+ (MPSCNNConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_weights_(v6, v7, sourceNode, weights, v8, v9, v10, v11);

  return v12;
}

- (MPSCNNConvolutionNode)initWithSource:(id)source weights:(id)weights state:(id)state
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (weights)
  {
    v24[0] = source;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v24, 1, state, v5, v6, v7);
    if (state)
    {
      stateCopy = state;
      v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &stateCopy, 1, v12, v13, v14, v15);
    }

    else
    {
      v17 = 0;
    }

    v22.receiver = self;
    v22.super_class = MPSCNNConvolutionNode;
    result = [(MPSNNFilterNode *)&v22 initWithSourceImages:v16 sourceStates:v17 paddingPolicy:0];
    if (result)
    {
      v19 = result;
      weightsCopy = weights;
      result = v19;
      v19->_weights = weightsCopy;
      v19->_accumulatorPrecision = 1;
      v19->_trainingStyle = 2;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (MPSCNNConvolutionGradientStateNode)convolutionGradientState
{
  resultStates = self->super._resultStates;
  if (resultStates)
  {
  }

  else
  {
    v10 = [MPSCNNConvolutionGradientStateNode alloc];
    v17 = objc_msgSend_initWithParent_(v10, v11, self, v12, v13, v14, v15, v16);
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    self->super._resultStates = objc_msgSend_initWithObjects_(v18, v19, v17, v20, v21, v22, v23, v24, 0);

    resultStates = self->super._resultStates;
  }

  return objc_msgSend_objectAtIndexedSubscript_(resultStates, a2, 0, v2, v3, v4, v5, v6);
}

- (MPSCNNConvolutionStateNode)convolutionState
{
  resultStates = self->super._resultStates;
  if (resultStates)
  {
  }

  else
  {
    v10 = [MPSCNNConvolutionGradientStateNode alloc];
    v17 = objc_msgSend_initWithParent_(v10, v11, self, v12, v13, v14, v15, v16);
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    self->super._resultStates = objc_msgSend_initWithObjects_(v18, v19, v17, v20, v21, v22, v23, v24, 0);

    resultStates = self->super._resultStates;
  }

  return objc_msgSend_objectAtIndexedSubscript_(resultStates, a2, 0, v2, v3, v4, v5, v6);
}

@end