@interface MPSCNNConvolutionTransposeNode
+ (MPSCNNConvolutionTransposeNode)nodeWithSource:(MPSNNImageNode *)sourceNode convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)convolutionGradientState weights:(id)weights;
+ (MPSCNNConvolutionTransposeNode)nodeWithSource:(id)a3 convolutionState:(id)a4 weights:(id)a5;
- (MPSCNNConvolutionGradientStateNode)convolutionGradientState;
- (MPSCNNConvolutionTransposeNode)initWithSource:(MPSNNImageNode *)sourceNode convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)convolutionGradientState weights:(id)weights;
- (MPSCNNConvolutionTransposeNode)initWithSource:(id)a3 convolutionState:(id)a4 weights:(id)a5;
- (id)convolutionState;
- (id)resultState;
@end

@implementation MPSCNNConvolutionTransposeNode

+ (MPSCNNConvolutionTransposeNode)nodeWithSource:(MPSNNImageNode *)sourceNode convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)convolutionGradientState weights:(id)weights
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSource_convolutionGradientState_weights_(v8, v9, sourceNode, convolutionGradientState, weights, v10, v11, v12);

  return v13;
}

- (MPSCNNConvolutionTransposeNode)initWithSource:(MPSNNImageNode *)sourceNode convolutionGradientState:(MPSCNNConvolutionGradientStateNode *)convolutionGradientState weights:(id)weights
{
  v6.receiver = self;
  v6.super_class = MPSCNNConvolutionTransposeNode;
  return [(MPSCNNConvolutionNode *)&v6 initWithSource:sourceNode weights:weights state:convolutionGradientState];
}

- (MPSCNNConvolutionGradientStateNode)convolutionGradientState
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure();
  }

  return 0;
}

+ (MPSCNNConvolutionTransposeNode)nodeWithSource:(id)a3 convolutionState:(id)a4 weights:(id)a5
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSource_convolutionState_weights_(v8, v9, a3, a4, a5, v10, v11, v12);

  return v13;
}

- (MPSCNNConvolutionTransposeNode)initWithSource:(id)a3 convolutionState:(id)a4 weights:(id)a5
{
  v6.receiver = self;
  v6.super_class = MPSCNNConvolutionTransposeNode;
  return [(MPSCNNConvolutionNode *)&v6 initWithSource:a3 weights:a5 state:a4];
}

- (id)convolutionState
{
  if (MTLReportFailureTypeEnabled())
  {
    v2 = objc_opt_class();
    NSStringFromClass(v2);
    MTLReportFailure();
  }

  return 0;
}

- (id)resultState
{
  resultStates = self->super.super._resultStates;
  if (resultStates)
  {
  }

  else
  {
    v10 = [MPSCNNConvolutionTransposeGradientStateNode alloc];
    v17 = objc_msgSend_initWithParent_(v10, v11, self, v12, v13, v14, v15, v16);
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    self->super.super._resultStates = objc_msgSend_initWithObjects_(v18, v19, v17, v20, v21, v22, v23, v24, 0);

    resultStates = self->super.super._resultStates;
  }

  return objc_msgSend_objectAtIndexedSubscript_(resultStates, a2, 0, v2, v3, v4, v5, v6);
}

@end