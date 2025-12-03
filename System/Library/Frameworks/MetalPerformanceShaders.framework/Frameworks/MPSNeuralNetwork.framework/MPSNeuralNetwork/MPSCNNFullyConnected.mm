@interface MPSCNNFullyConnected
- (MPSCNNFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNFullyConnected)initWithDevice:(id)device;
- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags;
- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected;
- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected;
- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset;
- (void)dealloc;
@end

@implementation MPSCNNFullyConnected

- (MPSCNNFullyConnected)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  if (MTLReportFailureTypeEnabled())
  {
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  if (MTLReportFailureTypeEnabled())
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags
{
  if (convolutionDescriptor->_groups != 1)
  {
    selfCopy = self;
    v23 = convolutionDescriptor;
    v24 = MTLReportFailureTypeEnabled();
    convolutionDescriptor = v23;
    v25 = v24;
    self = selfCopy;
    if (v25)
    {
      MTLReportFailure();
      self = selfCopy;
      convolutionDescriptor = v23;
    }
  }

  if (convolutionDescriptor->_strideInPixelsX != 1)
  {
    selfCopy2 = self;
    v27 = convolutionDescriptor;
    v28 = MTLReportFailureTypeEnabled();
    convolutionDescriptor = v27;
    v29 = v28;
    self = selfCopy2;
    if (v29)
    {
      MTLReportFailure();
      self = selfCopy2;
      convolutionDescriptor = v27;
    }
  }

  if (convolutionDescriptor->_strideInPixelsY != 1)
  {
    selfCopy3 = self;
    v31 = MTLReportFailureTypeEnabled();
    self = selfCopy3;
    if (v31)
    {
      MTLReportFailure();
      self = selfCopy3;
    }
  }

  v32.receiver = self;
  v32.super_class = MPSCNNFullyConnected;
  v13 = [MPSCNNConvolution initWithDevice:sel_initWithDevice_convolutionDescriptor_kernelWeights_biasTerms_flags_fullyConnected_ convolutionDescriptor:? kernelWeights:? biasTerms:? flags:? fullyConnected:?];
  if (v13)
  {
    v14 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v7, 0, v8, v9, v10, v11, v12);
    objc_msgSend_setPadding_(v13, v15, v14, v16, v17, v18, v19, v20);
    v13->super.super._encode = sub_239D4F434;
  }

  return v13;
}

- (MPSCNNFullyConnected)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNFullyConnected;
  result = [(MPSCNNConvolution *)&v5 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super._encode = sub_239D4F434;
    result->super.super._encodeData = result;
  }

  return result;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights
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
  v31.super_class = MPSCNNFullyConnected;
  v12 = [(MPSCNNConvolution *)&v31 initWithDevice:device weights:weights fullyConnected:1];
  v19 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v13, 0, v14, v15, v16, v17, v18);
  objc_msgSend_setPadding_(v12, v20, v19, v21, v22, v23, v24, v25);
  v12->super.super._encode = sub_239D4F434;
  return v12;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected
{
  if (MTLReportFailureTypeEnabled())
  {
    v8 = objc_opt_class();
    NSStringFromClass(v8);
    MTLReportFailure();
  }

  return 0;
}

- (MPSCNNFullyConnected)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected
{
  if (MTLReportFailureTypeEnabled())
  {
    v5 = objc_opt_class();
    NSStringFromClass(v5);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNFullyConnected;
  result = [(MPSCNNConvolution *)&v5 copyWithZone:zone device:device];
  *(result + 36) = sub_239D4F434;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCNNFullyConnected;
  [(MPSCNNConvolution *)&v2 dealloc];
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset
{
  methodCopy = method;
  v59.receiver = self;
  v59.super_class = MPSCNNFullyConnected;
  v12 = [MPSCNNConvolution destinationImageDescriptorForSourceImages:sel_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_sourceOffset_kernelOffset_ sourceStates:images paddingMethod:states sourceOffset:? kernelOffset:?];
  kernelWidth = self->super.super._kernelWidth;
  kernelHeight = self->super.super._kernelHeight;
  v21 = *(objc_msgSend_objectAtIndexedSubscript_(images, v15, 0, v16, v17, v18, v19, v20) + *MEMORY[0x277CD7330]);
  v28 = *(objc_msgSend_objectAtIndexedSubscript_(images, v22, 0, v23, v24, v25, v26, v27) + *MEMORY[0x277CD7308]);
  v41 = *(objc_msgSend_objectAtIndexedSubscript_(images, v29, 0, v30, v31, v32, v33, v34) + *MEMORY[0x277CD7310]);
  if (offset)
  {
    v42 = methodCopy & 3;
    v43 = kernelWidth >> 1;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v43 = v43 - kernelWidth + v21;
        if (!kernelOffset)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v43 = 0;
        if (!kernelOffset)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      if ((methodCopy & 3) == 0)
      {
        v43 -= (kernelWidth + ((methodCopy & 4) == 0) - v21) >> 1;
      }

      if (!kernelOffset)
      {
LABEL_12:
        offset->var0 = v43;
        v44 = kernelHeight >> 1;
        if ((methodCopy & 3u) > 1)
        {
          if (v42 == 2)
          {
            v45 = v44 - kernelHeight + v28;
            if (!kernelOffset)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v45 = 0;
            if (!kernelOffset)
            {
LABEL_23:
              offset->var1 = v45;
              offset->var2 = 0;
              goto LABEL_24;
            }
          }
        }

        else
        {
          if ((methodCopy & 3) != 0)
          {
            v45 = kernelHeight >> 1;
          }

          else
          {
            v45 = v44 - ((kernelHeight + ((methodCopy & 8) == 0) - v28) >> 1);
          }

          if (!kernelOffset)
          {
            goto LABEL_23;
          }
        }

        kernelOffset->var1 = 0;
        goto LABEL_23;
      }
    }

    kernelOffset->var0 = 0;
    goto LABEL_12;
  }

LABEL_24:
  objc_msgSend_setWidth_(v12, v35, 1, v36, v37, v38, v39, v40);
  objc_msgSend_setHeight_(v12, v46, 1, v47, v48, v49, v50, v51);
  objc_msgSend_setNumberOfImages_(v12, v52, v41, v53, v54, v55, v56, v57);
  return v12;
}

@end