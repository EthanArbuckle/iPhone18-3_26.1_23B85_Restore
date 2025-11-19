@interface MPSCNNConvolutionTransposeGradientState
+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6;
+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6 weightsLayout:(unsigned int)a7;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6;
- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6 weightsLayout:(unsigned int)a7;
- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)a3;
- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)a3 weightsLayout:(unsigned int)a4;
- (id)convolution;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6;
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

- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSCNNConvolutionTransposeGradientState;
  result = [(MPSCNNConvolutionGradientState *)&v4 initWithResource:a3 weightsLayout:0];
  if (result)
  {
    result->_convolutionTranspose = 0;
    result->_convolutionGradientState = 0;
  }

  return result;
}

- (MPSCNNConvolutionTransposeGradientState)initWithResource:(id)a3 weightsLayout:(unsigned int)a4
{
  v5.receiver = self;
  v5.super_class = MPSCNNConvolutionTransposeGradientState;
  result = [(MPSCNNConvolutionGradientState *)&v5 initWithResource:a3 weightsLayout:*&a4];
  if (result)
  {
    result->_convolutionTranspose = 0;
    result->_convolutionGradientState = 0;
  }

  return result;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolution:(id)a5 weightsLayout:(unsigned int)a6
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6
{
  v10.receiver = self;
  v10.super_class = MPSCNNConvolutionTransposeGradientState;
  v8 = [(MPSCNNConvolutionGradientState *)&v10 initWithDevice:a3 resourceList:a4 convolution:0 weightsLayout:0];
  if (v8)
  {
    v8->_convolutionTranspose = a5;
    v8->_convolutionGradientState = a6;
  }

  return v8;
}

- (MPSCNNConvolutionTransposeGradientState)initWithDevice:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6 weightsLayout:(unsigned int)a7
{
  v11.receiver = self;
  v11.super_class = MPSCNNConvolutionTransposeGradientState;
  v9 = [(MPSCNNConvolutionGradientState *)&v11 initWithDevice:a3 resourceList:a4 convolution:0 weightsLayout:*&a7];
  if (v9)
  {
    v9->_convolutionTranspose = a5;
    v9->_convolutionGradientState = a6;
  }

  return v9;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6 weightsLayout:(unsigned int)a7
{
  v11 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, a2, a3, a4, a5, a6, *&a7, v7);
  if (v11)
  {
    *(v11 + 344) = a5;
    *(v11 + 352) = a6;
    *(v11 + 332) = a7;
  }

  return v11;
}

+ (id)temporaryStateWithCommandBuffer:(id)a3 resourceList:(id)a4 convolutionTranspose:(id)a5 convolutionGradientState:(id)a6
{
  v10 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_(a1, a2, a3, a4, a5, a6, v6, v7);
  if (v10)
  {
    *(v10 + 344) = a5;
    *(v10 + 352) = a6;
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

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 forKernel:(id)a5 suggestedDescriptor:(id)a6
{
  v86.receiver = self;
  v86.super_class = MPSCNNConvolutionTransposeGradientState;
  v10 = [(MPSCNNConvolutionGradientState *)&v86 destinationImageDescriptorForSourceImages:a3 sourceStates:a4 forKernel:a5 suggestedDescriptor:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    convolutionGradientState = self->_convolutionGradientState;
    if (convolutionGradientState)
    {
      return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(convolutionGradientState, v11, a3, a4, a5, v10, v12, v13);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = objc_msgSend_primaryKernelWidth(a5, v15, v16, v17, v18, v19, v20, v21);
      v30 = objc_msgSend_primaryKernelHeight(a5, v23, v24, v25, v26, v27, v28, v29);
      v45 = objc_msgSend_primaryDilationRateX(a5, v31, v32, v33, v34, v35, v36, v37) * (v22 - 1) + 1;
      v53 = objc_msgSend_primaryDilationRateY(a5, v38, v39, v40, v41, v42, v43, v44) * (v30 - 1) + 1;
      v54 = self->_kernelOffsetX + self->super.super._strideInPixelsX * self->super.super._offset.x;
      v55 = self->_kernelOffsetY + self->super.super._strideInPixelsY * self->super.super._offset.y;
      v56 = ((self->super.super._kernelWidth & 1) == 0) - v54;
      v57 = ((self->super.super._kernelHeight & 1) == 0) - v55;
      if (a5)
      {
        objc_msgSend_primaryOffset(a5, v46, v47, v48, v49, v50, v51, v52);
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
      objc_msgSend_setPrimaryOffset_(a5, v46, &v80, v48, v49, v50, v51, v52);
      objc_msgSend_setKernelOffsetX_(a5, v59, v54 - v45 / 2, v60, v61, v62, v63, v64);
      objc_msgSend_setKernelOffsetY_(a5, v65, v55 - v53 / 2, v66, v67, v68, v69, v70);
      if (a5)
      {
        objc_msgSend_secondaryOffset(a5, v71, v72, v73, v74, v75, v76, v77);
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
      objc_msgSend_setSecondaryOffset_(a5, v71, &v80, v73, v74, v75, v76, v77);
    }
  }

  return v10;
}

@end