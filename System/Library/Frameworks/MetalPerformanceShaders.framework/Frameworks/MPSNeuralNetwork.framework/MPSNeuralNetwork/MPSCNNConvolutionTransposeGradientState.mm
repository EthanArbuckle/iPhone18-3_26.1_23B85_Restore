@interface MPSCNNConvolutionTransposeGradientState
+ (id)temporaryStateWithCommandBuffer:(id)buffer resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state;
+ (id)temporaryStateWithCommandBuffer:(id)buffer resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolution:(id)convolution;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolution:(id)convolution weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state weightsLayout:(unsigned int)layout;
- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)resource;
- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)resource weightsLayout:(unsigned int)layout;
- (id)convolution;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor;
- (void)dealloc;
@end

@implementation MPSCNNConvolutionTransposeGradientState

- (id)convolution
{
  if (self->_convolutionGradientState || (v10 = self, v11 = MTLReportFailureTypeEnabled(), self = v10, !v11))
  {
    convolutionGradientState = self->_convolutionGradientState;
  }

  else
  {
    MTLReportFailure();
    convolutionGradientState = v10->_convolutionGradientState;
  }

  return objc_msgSend_convolution(convolutionGradientState, a2, v2, v3, v4, v5, v6, v7);
}

- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)resource
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionTransposeGradientState;
  result = [(MPSCNNConvolutionGradientState *)&v4 initWithResource:resource weightsLayout:0];
  if (result)
  {
    result->_convolutionTranspose = 0;
    result->_convolutionGradientState = 0;
  }

  return result;
}

- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)resource weightsLayout:(unsigned int)layout
{
  v5.receiver = self;
  v5.super_class = MPSCNNConvolutionTransposeGradientState;
  result = [(MPSCNNConvolutionGradientState *)&v5 initWithResource:resource weightsLayout:*&layout];
  if (result)
  {
    result->_convolutionTranspose = 0;
    result->_convolutionGradientState = 0;
  }

  return result;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolution:(id)convolution
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolution:(id)convolution weightsLayout:(unsigned int)layout
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state
{
  v10.receiver = self;
  v10.super_class = MPSCNNConvolutionTransposeGradientState;
  v8 = [(MPSCNNConvolutionGradientState *)&v10 initWithDevice:device resourceList:list convolution:0 weightsLayout:0];
  if (v8)
  {
    v8->_convolutionTranspose = transpose;
    v8->_convolutionGradientState = state;
  }

  return v8;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)device resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state weightsLayout:(unsigned int)layout
{
  v11.receiver = self;
  v11.super_class = MPSCNNConvolutionTransposeGradientState;
  v9 = [(MPSCNNConvolutionGradientState *)&v11 initWithDevice:device resourceList:list convolution:0 weightsLayout:*&layout];
  if (v9)
  {
    v9->_convolutionTranspose = transpose;
    v9->_convolutionGradientState = state;
  }

  return v9;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state weightsLayout:(unsigned int)layout
{
  v11 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, a2, buffer, list, transpose, state, *&layout, v7);
  if (v11)
  {
    *(v11 + 344) = transpose;
    *(v11 + 352) = state;
    *(v11 + 332) = layout;
  }

  return v11;
}

+ (id)temporaryStateWithCommandBuffer:(id)buffer resourceList:(id)list convolutionTranspose:(id)transpose convolutionGradientState:(id)state
{
  v10 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(self, a2, buffer, list, transpose, state, v6, v7);
  if (v10)
  {
    *(v10 + 344) = transpose;
    *(v10 + 352) = state;
    *(v10 + 332) = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionTransposeGradientState;
  [(MPSCNNConvolutionGradientState *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v23.receiver = self;
  v23.super_class = MPSCNNConvolutionTransposeGradientState;
  v4 = [(MPSCNNConvolutionGradientState *)&v23 debugDescription];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  convolutionTranspose = self->_convolutionTranspose;
  v15 = objc_msgSend_label(convolutionTranspose, v8, v9, v10, v11, v12, v13, v14);
  return objc_msgSend_stringWithFormat_(v3, v16, @"%@\n\tconvolutionTranspose: %@ %p %@", v17, v18, v19, v20, v21, v4, v6, convolutionTranspose, v15);
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states forKernel:(id)kernel suggestedDescriptor:(id)descriptor
{
  v86.receiver = self;
  v86.super_class = MPSCNNConvolutionTransposeGradientState;
  v10 = [(MPSCNNConvolutionGradientState *)&v86 destinationImageDescriptorForSourceImages:images sourceStates:states forKernel:kernel suggestedDescriptor:descriptor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    convolutionGradientState = self->_convolutionGradientState;
    if (convolutionGradientState)
    {
      return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(convolutionGradientState, v11, images, states, kernel, v10, v12, v13);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = objc_msgSend_primaryKernelWidth(kernel, v15, v16, v17, v18, v19, v20, v21);
      v30 = objc_msgSend_primaryKernelHeight(kernel, v23, v24, v25, v26, v27, v28, v29);
      v45 = objc_msgSend_primaryDilationRateX(kernel, v31, v32, v33, v34, v35, v36, v37) * (v22 - 1) + 1;
      v53 = objc_msgSend_primaryDilationRateY(kernel, v38, v39, v40, v41, v42, v43, v44) * (v30 - 1) + 1;
      v54 = self->_kernelOffsetX + self->super.super._strideInPixelsX * self->super.super._offset.x;
      v55 = self->_kernelOffsetY + self->super.super._strideInPixelsY * self->super.super._offset.y;
      v56 = ((self->super.super._kernelWidth & 1) == 0) - v54;
      v57 = ((self->super.super._kernelHeight & 1) == 0) - v55;
      if (kernel)
      {
        objc_msgSend_primaryOffset(kernel, v46, v47, v48, v49, v50, v51, v52);
        v58 = v85;
      }

      else
      {
        v58 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
      }

      v80 = v56;
      v81 = v57;
      v82 = v58;
      objc_msgSend_setPrimaryOffset_(kernel, v46, &v80, v48, v49, v50, v51, v52);
      objc_msgSend_setKernelOffsetX_(kernel, v59, v54 - v45 / 2, v60, v61, v62, v63, v64);
      objc_msgSend_setKernelOffsetY_(kernel, v65, v55 - v53 / 2, v66, v67, v68, v69, v70);
      if (kernel)
      {
        objc_msgSend_secondaryOffset(kernel, v71, v72, v73, v74, v75, v76, v77);
        v78 = v85;
      }

      else
      {
        v78 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
      }

      v80 = 0;
      v81 = 0;
      v82 = v78;
      objc_msgSend_setSecondaryOffset_(kernel, v71, &v80, v73, v74, v75, v76, v77);
    }
  }

  return v10;
}

@end