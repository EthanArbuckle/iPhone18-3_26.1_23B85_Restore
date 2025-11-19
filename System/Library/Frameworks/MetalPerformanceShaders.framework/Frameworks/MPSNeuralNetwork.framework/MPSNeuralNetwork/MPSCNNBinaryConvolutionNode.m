@interface MPSCNNBinaryConvolutionNode
+ (MPSCNNBinaryConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
+ (MPSCNNBinaryConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryConvolutionNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNBinaryConvolutionNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags;
- (MPSCNNConvolutionGradientStateNode)convolutionGradientState;
- (id)convolutionState;
- (void)dealloc;
@end

@implementation MPSCNNBinaryConvolutionNode

+ (MPSCNNBinaryConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v12 = [a1 alloc];
  *&v13 = scaleValue;
  v17 = objc_msgSend_initWithSource_weights_scaleValue_type_flags_(v12, v14, sourceNode, weights, type, flags, v15, v16, v13);

  return v17;
}

+ (MPSCNNBinaryConvolutionNode)nodeWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v16 = [a1 alloc];
  v18 = objc_msgSend_initWithSource_weights_outputBiasTerms_outputScaleTerms_inputBiasTerms_inputScaleTerms_type_flags_(v16, v17, sourceNode, weights, outputBiasTerms, outputScaleTerms, inputBiasTerms, inputScaleTerms, type, flags);

  return v18;
}

- (MPSCNNBinaryConvolutionNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights scaleValue:(float)scaleValue type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v18[1] = *MEMORY[0x277D85DE8];
  v18[0] = sourceNode;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v18, 1, type, flags, v7, v8);
  v17.receiver = self;
  v17.super_class = MPSCNNBinaryConvolutionNode;
  v15 = [(MPSNNFilterNode *)&v17 initWithSourceImages:v14 sourceStates:0 paddingPolicy:0];
  v15->super._weights = weights;
  v15->_type = type;
  v15->_flags = flags;
  v15->_scaleValue = scaleValue;
  v15->_outputBiasTerms = 0;
  v15->_outputScaleTerms = 0;
  v15->_inputBiasTerms = 0;
  v15->_inputScaleTerms = 0;
  return v15;
}

- (MPSCNNBinaryConvolutionNode)initWithSource:(MPSNNImageNode *)sourceNode weights:(id)weights outputBiasTerms:(const float *)outputBiasTerms outputScaleTerms:(const float *)outputScaleTerms inputBiasTerms:(const float *)inputBiasTerms inputScaleTerms:(const float *)inputScaleTerms type:(MPSCNNBinaryConvolutionType)type flags:(MPSCNNBinaryConvolutionFlags)flags
{
  v48[1] = *MEMORY[0x277D85DE8];
  v48[0] = sourceNode;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v48, 1, outputBiasTerms, outputScaleTerms, inputBiasTerms, inputScaleTerms);
  v47.receiver = self;
  v47.super_class = MPSCNNBinaryConvolutionNode;
  v17 = [(MPSNNFilterNode *)&v47 initWithSourceImages:v16 sourceStates:0 paddingPolicy:0];
  v17->super._weights = weights;
  v17->_type = type;
  v17->_flags = flags;
  v17->_scaleValue = 1.0;
  v25 = objc_msgSend_descriptor(weights, v18, v19, v20, v21, v22, v23, v24);
  v33 = objc_msgSend_inputFeatureChannels(v25, v26, v27, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_outputFeatureChannels(v25, v34, v35, v36, v37, v38, v39, v40);
  v17->_outputBiasTerms = 0;
  v17->_outputScaleTerms = 0;
  v17->_inputBiasTerms = 0;
  v17->_inputScaleTerms = 0;
  if (inputScaleTerms && v33)
  {
    v42 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
    v17->_inputScaleTerms = v42;
    memcpy(v42, inputScaleTerms, 4 * v33);
  }

  if (inputBiasTerms && v33)
  {
    v43 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
    v17->_inputBiasTerms = v43;
    memcpy(v43, inputBiasTerms, 4 * v33);
  }

  if (outputScaleTerms && v41)
  {
    v44 = malloc_type_malloc(4 * v41, 0x100004052888210uLL);
    v17->_outputScaleTerms = v44;
    memcpy(v44, outputScaleTerms, 4 * v41);
  }

  if (outputBiasTerms && v41)
  {
    v45 = malloc_type_malloc(4 * v41, 0x100004052888210uLL);
    v17->_outputBiasTerms = v45;
    memcpy(v45, outputBiasTerms, 4 * v41);
  }

  return v17;
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

- (void)dealloc
{
  inputBiasTerms = self->_inputBiasTerms;
  if (inputBiasTerms)
  {
    free(inputBiasTerms);
  }

  inputScaleTerms = self->_inputScaleTerms;
  if (inputScaleTerms)
  {
    free(inputScaleTerms);
  }

  outputBiasTerms = self->_outputBiasTerms;
  if (outputBiasTerms)
  {
    free(outputBiasTerms);
  }

  outputScaleTerms = self->_outputScaleTerms;
  if (outputScaleTerms)
  {
    free(outputScaleTerms);
  }

  v7.receiver = self;
  v7.super_class = MPSCNNBinaryConvolutionNode;
  [(MPSCNNConvolutionNode *)&v7 dealloc];
}

@end