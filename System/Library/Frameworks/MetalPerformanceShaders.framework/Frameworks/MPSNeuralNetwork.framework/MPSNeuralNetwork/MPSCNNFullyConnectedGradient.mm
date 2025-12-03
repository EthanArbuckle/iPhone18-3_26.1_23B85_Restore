@interface MPSCNNFullyConnectedGradient
- (MPSCNNFullyConnectedGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device;
- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights convolutionTranspose:(BOOL)transpose;
- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)dealloc;
@end

@implementation MPSCNNFullyConnectedGradient

- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnectedGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNFullyConnectedGradient;
  result = [(MPSCNNConvolutionGradient *)&v5 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights
{
  v11 = objc_msgSend_descriptor(weights, a2, device, weights, v4, v5, v6, v7);
  if (v11[8] != 1)
  {
    v27 = v11;
    v28 = MTLReportFailureTypeEnabled();
    v11 = v27;
    if (v28)
    {
      MTLReportFailure();
      v11 = v27;
    }
  }

  if (v11[6] != 1)
  {
    v29 = v11;
    v30 = MTLReportFailureTypeEnabled();
    v11 = v29;
    if (v30)
    {
      MTLReportFailure();
      v11 = v29;
    }
  }

  if (v11[7] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v31.receiver = self;
  v31.super_class = MPSCNNFullyConnectedGradient;
  v12 = [(MPSCNNConvolutionGradient *)&v31 initWithDevice:device weights:weights fullyConnected:1];
  v19 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v13, 32, v14, v15, v16, v17, v18);
  objc_msgSend_setPadding_(v12, v20, v19, v21, v22, v23, v24, v25);
  return v12;
}

- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnectedGradient)initWithDevice:(id)device weights:(id)weights convolutionTranspose:(BOOL)transpose
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNFullyConnectedGradient;
  return [(MPSCNNConvolutionGradient *)&v5 copyWithZone:zone device:device];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNFullyConnectedGradient;
  [(MPSCNNConvolutionGradient *)&v2 dealloc];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  methodCopy = method;
  v85.receiver = self;
  v85.super_class = MPSCNNFullyConnectedGradient;
  v14 = [MPSCNNConvolutionGradient destinationImageDescriptorForSourceImages:sel_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_primaryOffset_secondaryOffset_kernelOffset_ sourceStates:images paddingMethod:states primaryOffset:? secondaryOffset:? kernelOffset:?];
  primaryKernelHeight = self->super.super.super._primaryKernelHeight;
  primaryKernelWidth = self->super.super.super._primaryKernelWidth;
  v17 = methodCopy & 3;
  v81 = methodCopy & 4;
  v82 = methodCopy & 8;
  v24 = objc_msgSend_objectAtIndexedSubscript_(images, v18, 1, v19, v20, v21, v22, v23);
  v25 = MEMORY[0x277CD7330];
  v84 = *(v24 + *MEMORY[0x277CD7330]);
  v32 = *(objc_msgSend_objectAtIndexedSubscript_(images, v26, 1, v27, v28, v29, v30, v31) + *MEMORY[0x277CD7308]);
  v83 = *(objc_msgSend_objectAtIndexedSubscript_(images, v33, 1, v34, v35, v36, v37, v38) + *MEMORY[0x277CD7310]);
  if (offset | kernelOffset)
  {
    v45 = *(objc_msgSend_objectAtIndexedSubscript_(images, v39, 0, v40, v41, v42, v43, v44) + *v25);
    v52 = objc_msgSend_objectAtIndexedSubscript_(images, v46, 0, v47, v48, v49, v50, v51);
    if (offset)
    {
      v53 = *(v52 + *MEMORY[0x277CD7308]);
      v54 = primaryKernelHeight >> 1;
      v55 = primaryKernelHeight + v32 - 1;
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v54 = v54 - v55 + v53;
          v57 = v45 - (primaryKernelWidth + v84) + (primaryKernelWidth >> 1) + 1;
        }

        else
        {
          v54 = 0;
          v57 = 0;
        }
      }

      else
      {
        v56 = v54 - ((v55 + ((v82 >> 3) ^ 1) - v53) >> 1);
        if (v17)
        {
          v57 = primaryKernelWidth >> 1;
        }

        else
        {
          v54 = v56;
          v57 = (primaryKernelWidth >> 1) - ((primaryKernelWidth + v84 - (v45 + (v81 >> 2))) >> 1);
        }
      }

      offset->var0 = v57;
      offset->var1 = v54;
      offset->var2 = 0;
    }

    v25 = MEMORY[0x277CD7330];
    if (kernelOffset)
    {
      kernelOffset->var0 = 0;
      kernelOffset->var1 = 0;
      kernelOffset->var2 = 0;
    }
  }

  if (secondaryOffset)
  {
    v58 = *(objc_msgSend_objectAtIndexedSubscript_(images, v39, 1, v40, v41, v42, v43, v44) + *v25);
    v65 = *(objc_msgSend_objectAtIndexedSubscript_(images, v59, 1, v60, v61, v62, v63, v64) + *MEMORY[0x277CD7308]);
    v66 = primaryKernelWidth >> 1;
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        secondaryOffset->var0 = v66 - primaryKernelWidth + v58;
        v67 = v65 - primaryKernelHeight + (primaryKernelHeight >> 1);
      }

      else
      {
        v67 = 0;
        secondaryOffset->var0 = 0;
      }
    }

    else if (v17)
    {
      secondaryOffset->var0 = v66;
      v67 = primaryKernelHeight >> 1;
    }

    else
    {
      secondaryOffset->var0 = v66 - ((primaryKernelWidth + ((v81 >> 2) ^ 1) - v58) >> 1);
      v67 = (primaryKernelHeight >> 1) - ((primaryKernelHeight + ((v82 >> 3) ^ 1) - v65) >> 1);
    }

    secondaryOffset->var1 = v67;
    secondaryOffset->var2 = 0;
  }

  objc_msgSend_setWidth_(v14, v39, v84, v40, v41, v42, v43, v44);
  objc_msgSend_setHeight_(v14, v68, v32, v69, v70, v71, v72, v73);
  objc_msgSend_setNumberOfImages_(v14, v74, v83, v75, v76, v77, v78, v79);
  return v14;
}

@end