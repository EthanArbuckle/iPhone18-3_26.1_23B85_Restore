@interface MPSCNNConvolutionTranspose
- (MPSCNNConvolutionTranspose)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNConvolutionTranspose)initWithDevice:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const float *)a5 biasTerms:(const float *)a6 flags:(unint64_t)a7;
- (MPSCNNConvolutionTranspose)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNConvolutionTransposeGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionTransposeGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionTransposeGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNConvolutionTransposeGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState destinationState:(MPSCNNConvolutionTransposeGradientState *)outState destinationStateIsTemporary:(BOOL)isTemporary;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientState;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientStates destinationStates:(MPSCNNConvolutionTransposeGradientStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6;
- (id)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationStates:(id *)a5 destinationStateIsTemporary:(BOOL)a6;
- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 convolutionState:(id)a5;
- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationState:(id *)a5 destinationStateIsTemporary:(BOOL)a6;
- (id)initialize:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const float *)a5 biasTerms:(const float *)a6 flags:(unint64_t)a7 fullyConnected:(BOOL)a8;
- (id)initialize:(id)a3 weights:(id)a4 fullyConnected:(BOOL)a5;
- (void)copyToGradientState:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationStates:(id)a5 destinationImages:(id)a6;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientState destinationImages:(MPSImageBatch *)destinationImage;
- (void)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationState:(id)a5 destinationImage:(id)a6;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState destinationImage:(MPSImage *)destinationImage;
- (void)encodeWithCoder:(id)a3;
- (void)reloadWeightsAndBiasesWithDataSource:(id)a3;
@end

@implementation MPSCNNConvolutionTranspose

- (MPSCNNConvolutionTranspose)initWithDevice:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const float *)a5 biasTerms:(const float *)a6 flags:(unint64_t)a7
{
  v14.receiver = self;
  v14.super_class = MPSCNNConvolutionTranspose;
  result = [(MPSCNNKernel *)&v14 initWithDevice:?];
  if (result)
  {
    result->super._isBackwards = 1;
    return objc_msgSend_initialize_convolutionDescriptor_kernelWeights_biasTerms_flags_fullyConnected_(result, v13, a3, a4, a5, a6, a7, 0);
  }

  return result;
}

- (MPSCNNConvolutionTranspose)initWithDevice:(id)device weights:(id)weights
{
  v11.receiver = self;
  v11.super_class = MPSCNNConvolutionTranspose;
  result = [(MPSCNNKernel *)&v11 initWithDevice:?];
  if (result)
  {
    result->super._isBackwards = 1;
    return objc_msgSend_initialize_weights_fullyConnected_(result, v7, device, weights, 0, v8, v9, v10);
  }

  return result;
}

- (id)initialize:(id)a3 weights:(id)a4 fullyConnected:(BOOL)a5
{
  v11 = objc_msgSend_descriptor(a4, a2, a3, a4, a5, v5, v6, v7);
  if (!v11[1])
  {
    v26 = v11;
    v27 = MTLReportFailureTypeEnabled();
    v11 = v26;
    if (v27)
    {
      MTLReportFailure();
      v11 = v26;
    }
  }

  if (!v11[2])
  {
    v28 = v11;
    v29 = MTLReportFailureTypeEnabled();
    v11 = v28;
    if (v29)
    {
      MTLReportFailure();
      v11 = v28;
    }
  }

  if (!v11[3])
  {
    v30 = v11;
    v31 = MTLReportFailureTypeEnabled();
    v11 = v30;
    if (v31)
    {
      MTLReportFailure();
      v11 = v30;
    }
  }

  if (!v11[4])
  {
    v32 = v11;
    v33 = MTLReportFailureTypeEnabled();
    v11 = v32;
    if (v33)
    {
      MTLReportFailure();
      v11 = v32;
    }
  }

  if (!v11[6])
  {
    v34 = v11;
    v35 = MTLReportFailureTypeEnabled();
    v11 = v34;
    if (v35)
    {
      MTLReportFailure();
      v11 = v34;
    }
  }

  if (!v11[7])
  {
    v36 = v11;
    v37 = MTLReportFailureTypeEnabled();
    v11 = v36;
    if (v37)
    {
      MTLReportFailure();
      v11 = v36;
    }
  }

  if (!v11[8])
  {
    v38 = v11;
    v39 = MTLReportFailureTypeEnabled();
    v11 = v38;
    if (v39)
    {
      MTLReportFailure();
      v11 = v38;
    }
  }

  v19 = v11[2];
  self->super._kernelWidth = v11[1];
  self->super._kernelHeight = v19;
  self->_inputFeatureChannels = v11[3];
  v20 = v11[5];
  self->_outputFeatureChannels = v11[4];
  self->_featureChannelsLayout = v20;
  self->super._strideInPixelsX = v11[6];
  self->super._strideInPixelsY = v11[7];
  self->super._dilationRateX = v11[12];
  self->super._dilationRateY = v11[13];
  self->_groups = v11[8];
  self->super._checkFlags |= 2u;
  self->_fusedNeuronDescriptor = objc_msgSend_fusedNeuronDescriptor(v11, v12, v13, v14, v15, v16, v17, v18);
  self->_kernelOffsetX = 0;
  self->_kernelOffsetY = 0;
  v21 = [MPSCNNConvolution alloc];
  self->_convolution = objc_msgSend_initWithDevice_weights_fullyConnected_convolutionTranspose_(v21, v22, a3, a4, 0, 1, v23, v24);
  self->super._encode = sub_239BFC494;
  self->super._batchEncode = sub_239BFC6B8;
  self->super._encodeData = self;
  return self;
}

- (id)initialize:(id)a3 convolutionDescriptor:(id)a4 kernelWeights:(const float *)a5 biasTerms:(const float *)a6 flags:(unint64_t)a7 fullyConnected:(BOOL)a8
{
  if (!a5)
  {
    v17 = self;
    v18 = a4;
    v19 = MTLReportFailureTypeEnabled();
    a4 = v18;
    v20 = v19;
    self = v17;
    if (v20)
    {
      MTLReportFailure();
      a4 = v18;
      self = v17;
    }
  }

  if (!*(a4 + 1))
  {
    v21 = self;
    v22 = a4;
    v23 = MTLReportFailureTypeEnabled();
    a4 = v22;
    v24 = v23;
    self = v21;
    if (v24)
    {
      MTLReportFailure();
      a4 = v22;
      self = v21;
    }
  }

  if (!*(a4 + 2))
  {
    v25 = self;
    v26 = a4;
    v27 = MTLReportFailureTypeEnabled();
    a4 = v26;
    v28 = v27;
    self = v25;
    if (v28)
    {
      MTLReportFailure();
      a4 = v26;
      self = v25;
    }
  }

  if (!*(a4 + 3))
  {
    v29 = self;
    v30 = a4;
    v31 = MTLReportFailureTypeEnabled();
    a4 = v30;
    v32 = v31;
    self = v29;
    if (v32)
    {
      MTLReportFailure();
      a4 = v30;
      self = v29;
    }
  }

  if (!*(a4 + 4))
  {
    v33 = self;
    v34 = a4;
    v35 = MTLReportFailureTypeEnabled();
    a4 = v34;
    v36 = v35;
    self = v33;
    if (v36)
    {
      MTLReportFailure();
      a4 = v34;
      self = v33;
    }
  }

  if (!*(a4 + 6))
  {
    v37 = self;
    v38 = a4;
    v39 = MTLReportFailureTypeEnabled();
    a4 = v38;
    v40 = v39;
    self = v37;
    if (v40)
    {
      MTLReportFailure();
      a4 = v38;
      self = v37;
    }
  }

  if (!*(a4 + 7))
  {
    v41 = self;
    v42 = a4;
    v43 = MTLReportFailureTypeEnabled();
    a4 = v42;
    v44 = v43;
    self = v41;
    if (v44)
    {
      MTLReportFailure();
      a4 = v42;
      self = v41;
    }
  }

  if (!*(a4 + 8))
  {
    v45 = self;
    v46 = a4;
    v47 = MTLReportFailureTypeEnabled();
    a4 = v46;
    v48 = v47;
    self = v45;
    if (v48)
    {
      MTLReportFailure();
      a4 = v46;
      self = v45;
    }
  }

  self->super._kernelWidth = *(a4 + 1);
  self->super._kernelHeight = *(a4 + 2);
  self->_inputFeatureChannels = *(a4 + 3);
  v11 = *(a4 + 5);
  self->_outputFeatureChannels = *(a4 + 4);
  self->_featureChannelsLayout = v11;
  self->super._strideInPixelsX = *(a4 + 6);
  self->super._strideInPixelsY = *(a4 + 7);
  self->super._dilationRateX = *(a4 + 12);
  self->super._dilationRateY = *(a4 + 13);
  self->_groups = *(a4 + 8);
  self->super._checkFlags |= 2u;
  v12 = self;
  v13 = a4;
  self->_fusedNeuronDescriptor = objc_msgSend_fusedNeuronDescriptor(a4, a2, a3, a4, a5, a6, a7, a8);
  v12->_kernelOffsetX = 0;
  v12->_kernelOffsetY = 0;
  v14 = [MPSCNNConvolution alloc];
  v12->_convolution = objc_msgSend_initWithDevice_convolutionDescriptor_kernelWeights_biasTerms_flags_fullyConnected_convolutionTranspose_(v14, v15, a3, v13, a5, a6, 0, 0, 1);
  v12->super._encode = sub_239BFC494;
  v12->super._batchEncode = sub_239BFC6B8;
  v12->super._encodeData = v12;
  return v12;
}

- (MPSCNNConvolutionTranspose)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v94.receiver = self;
  v94.super_class = MPSCNNConvolutionTranspose;
  v11 = [(MPSCNNKernel *)&v94 initWithCoder:aDecoder device:device];
  if (!v11)
  {
    return v11;
  }

  if (objc_msgSend_decodeInt64ForKey_(aDecoder, v5, @"MPSCNNConvolutionTransposeVers", v6, v7, v8, v9, v10) == 256)
  {
    v11->super._kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSCNNConvolutionTransposeWidth", v13, v14, v15, v16, v17);
    v11->super._kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v18, @"MPSCNNConvolutionTransposeHeight", v19, v20, v21, v22, v23);
    v11->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v24, @"MPSCNNConvolutionTransposeInputFeatureChannels", v25, v26, v27, v28, v29);
    v11->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v30, @"MPSCNNConvolutionTransposeOutputFeatureChannels", v31, v32, v33, v34, v35);
    v11->super._strideInPixelsX = objc_msgSend_decodeInt64ForKey_(aDecoder, v36, @"MPSCNNConvolutionTransposeStrideInPixelsX", v37, v38, v39, v40, v41);
    v11->super._strideInPixelsY = objc_msgSend_decodeInt64ForKey_(aDecoder, v42, @"MPSCNNConvolutionTransposeStrideInPixelsY", v43, v44, v45, v46, v47);
    v11->super._dilationRateX = objc_msgSend_decodeInt64ForKey_(aDecoder, v48, @"MPSCNNConvolutionTransposeDilationRateX", v49, v50, v51, v52, v53);
    v11->super._dilationRateY = objc_msgSend_decodeInt64ForKey_(aDecoder, v54, @"MPSCNNConvolutionTransposeDilationRateY", v55, v56, v57, v58, v59);
    v11->_groups = objc_msgSend_decodeInt64ForKey_(aDecoder, v60, @"MPSCNNConvolutionTransposeGroups", v61, v62, v63, v64, v65);
    v11->_featureChannelsLayout = objc_msgSend_decodeInt64ForKey_(aDecoder, v66, @"MPSCNNConvolutionTransposeFeatureChannelsLayout", v67, v68, v69, v70, v71);
    v11->_kernelOffsetX = objc_msgSend_decodeInt64ForKey_(aDecoder, v72, @"MPSCNNConvolutionTransposeKernelOffsetX", v73, v74, v75, v76, v77);
    v11->_kernelOffsetY = objc_msgSend_decodeInt64ForKey_(aDecoder, v78, @"MPSCNNConvolutionTransposeKernelOffsetY", v79, v80, v81, v82, v83);
    v11->super._checkFlags |= 2u;
    v11->super._encode = sub_239BFC494;
    v11->super._batchEncode = sub_239BFC6B8;
    v11->super._encodeData = v11;
    v93 = objc_opt_class();
    v11->_fusedNeuronDescriptor = sub_239BFCF40(aDecoder, @"MPSCNNConvolutionTransposeFusedNeuronClassKey", @"MPSCNNConvolutionTransposeNeuron", &v93, v84, v85, v86, v87);
    v93 = objc_opt_class();
    v11->_convolution = sub_239BFCF40(aDecoder, @"MPSCNNConvolutionTransposeConvolutionClassKey", @"MPSCNNConvolutionTransposeConvolutionKey", &v93, v88, v89, v90, v91);
    return v11;
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v114.receiver = self;
  v114.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v114 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, 256, @"MPSCNNConvolutionTransposeVers", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->super._kernelWidth, @"MPSCNNConvolutionTransposeWidth", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->super._kernelHeight, @"MPSCNNConvolutionTransposeHeight", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_inputFeatureChannels, @"MPSCNNConvolutionTransposeInputFeatureChannels", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_outputFeatureChannels, @"MPSCNNConvolutionTransposeOutputFeatureChannels", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->super._strideInPixelsX, @"MPSCNNConvolutionTransposeStrideInPixelsX", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(a3, v35, self->super._strideInPixelsY, @"MPSCNNConvolutionTransposeStrideInPixelsY", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(a3, v40, self->super._dilationRateX, @"MPSCNNConvolutionTransposeDilationRateX", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(a3, v45, self->super._dilationRateY, @"MPSCNNConvolutionTransposeDilationRateY", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(a3, v50, self->_groups, @"MPSCNNConvolutionTransposeGroups", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(a3, v55, self->_featureChannelsLayout, @"MPSCNNConvolutionTransposeFeatureChannelsLayout", v56, v57, v58, v59);
  objc_msgSend_encodeInt64_forKey_(a3, v60, self->_kernelOffsetX, @"MPSCNNConvolutionTransposeKernelOffsetX", v61, v62, v63, v64);
  objc_msgSend_encodeInt64_forKey_(a3, v65, self->_kernelOffsetY, @"MPSCNNConvolutionTransposeKernelOffsetY", v66, v67, v68, v69);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    v71 = objc_autoreleasePoolPush();
    v72 = objc_opt_class();
    if (v72)
    {
      v73 = NSStringFromClass(v72);
      v80 = objc_msgSend_cStringUsingEncoding_(v73, v74, 1, v75, v76, v77, v78, v79);
      if (v80)
      {
        v81 = v80;
        v82 = strlen(v80);
        if (v82)
        {
          objc_msgSend_encodeBytes_length_forKey_(a3, v83, v81, v82 + 1, @"MPSCNNConvolutionTransposeFusedNeuronClassKey", v84, v85, v86);
          objc_msgSend_encodeObject_forKey_(a3, v87, fusedNeuronDescriptor, @"MPSCNNConvolutionTransposeNeuron", v88, v89, v90, v91);
        }
      }
    }

    objc_autoreleasePoolPop(v71);
  }

  self->super._checkFlags |= 2u;
  convolution = self->_convolution;
  v93 = objc_autoreleasePoolPush();
  v94 = objc_opt_class();
  if (v94)
  {
    v95 = NSStringFromClass(v94);
    v102 = objc_msgSend_cStringUsingEncoding_(v95, v96, 1, v97, v98, v99, v100, v101);
    if (v102)
    {
      v103 = v102;
      v104 = strlen(v102);
      if (v104)
      {
        objc_msgSend_encodeBytes_length_forKey_(a3, v105, v103, v104 + 1, @"MPSCNNConvolutionTransposeConvolutionClassKey", v106, v107, v108);
        objc_msgSend_encodeObject_forKey_(a3, v109, convolution, @"MPSCNNConvolutionTransposeConvolutionKey", v110, v111, v112, v113);
      }
    }
  }

  objc_autoreleasePoolPop(v93);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v17.receiver = self;
  v17.super_class = MPSCNNConvolutionTranspose;
  v6 = [(MPSCNNKernel *)&v17 copyWithZone:a3 device:a4];
  v6[25] = self->super._kernelWidth;
  v6[26] = self->super._kernelHeight;
  v6[41] = self->_inputFeatureChannels;
  v6[42] = self->_outputFeatureChannels;
  v6[43] = self->_featureChannelsLayout;
  v6[27] = self->super._strideInPixelsX;
  v6[28] = self->super._strideInPixelsY;
  v6[29] = self->super._dilationRateX;
  v6[30] = self->super._dilationRateY;
  v6[46] = self->_groups;
  *(v6 + 70) = self->super._checkFlags | 2;
  v6[36] = sub_239BFC494;
  v6[37] = sub_239BFC6B8;
  v6[38] = self;
  v6[48] = self->_fusedNeuronDescriptor;
  v6[44] = self->_kernelOffsetX;
  v6[45] = self->_kernelOffsetY;
  v12 = *MEMORY[0x277CD7350];
  v13 = *(*(v6 + v12) + 16);
  convolution = self->_convolution;
  if ((*(&self->super.super.super.isa + v12))[2] == v13)
  {
    v15 = convolution;
  }

  else
  {
    v15 = objc_msgSend_copyWithZone_device_(convolution, v7, a3, v13, v8, v9, v10, v11);
  }

  v6[47] = v15;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 convolutionState:(id)a5
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  v6 = [(MPSCNNKernel *)&v8 encodeToCommandBuffer:a3 sourceImage:a4 inState:?];
  MPSDecrementReadCount(a5);
  return v6;
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  v6 = [(MPSCNNKernel *)&v8 encodeToCommandBuffer:commandBuffer sourceImage:sourceImage inState:?];
  MPSDecrementReadCount(&convolutionGradientState->super.super);
  return v6;
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientState
{
  v7.receiver = self;
  v7.super_class = MPSCNNConvolutionTranspose;
  v5 = [(MPSCNNKernel *)&v7 encodeBatchToCommandBuffer:commandBuffer sourceImages:sourceImage inStates:?];
  MPSDecrementReadCount();
  return v5;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState destinationImage:(MPSImage *)destinationImage
{
  v7.receiver = self;
  v7.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v7 encodeToCommandBuffer:commandBuffer sourceImage:sourceImage inState:convolutionGradientState destinationImage:destinationImage];
  MPSDecrementReadCount(&convolutionGradientState->super.super);
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImage convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientState destinationImages:(MPSImageBatch *)destinationImage
{
  v6.receiver = self;
  v6.super_class = MPSCNNConvolutionTranspose;
  [MPSCNNKernel encodeBatchToCommandBuffer:sel_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_ sourceImages:commandBuffer inStates:sourceImage destinationImages:?];
  MPSDecrementReadCount();
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage convolutionGradientState:(MPSCNNConvolutionGradientState *)convolutionGradientState destinationState:(MPSCNNConvolutionTransposeGradientState *)outState destinationStateIsTemporary:(BOOL)isTemporary
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  return [(MPSCNNKernel *)&v8 encodeToCommandBuffer:commandBuffer sourceImage:sourceImage sourceState:convolutionGradientState destinationState:outState destinationStateIsTemporary:isTemporary];
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages convolutionGradientStates:(MPSCNNConvolutionGradientStateBatch *)convolutionGradientStates destinationStates:(MPSCNNConvolutionTransposeGradientStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  return [(MPSCNNKernel *)&v8 encodeBatchToCommandBuffer:commandBuffer sourceImages:sourceImages sourceStates:convolutionGradientStates destinationStates:outStates destinationStateIsTemporary:isTemporary];
}

- (void)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationState:(id)a5 destinationImage:(id)a6
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v8 encodeToCommandBuffer:a3 sourceImage:a4 inState:a5 destinationImage:a6];
  if (a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a5 + 44);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }

      v7 = a5;
    }

    MPSDecrementReadCount(v7);
  }
}

- (void)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationStates:(id)a5 destinationImages:(id)a6
{
  v28.receiver = self;
  v28.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v28 encodeBatchToCommandBuffer:a3 sourceImages:a4 inStates:a5 destinationImages:a6];
  if (a5)
  {
    objc_msgSend_objectAtIndexedSubscript_(a5, v7, 0, v8, v9, v10, v11, v12);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = objc_msgSend_objectAtIndexedSubscript_(a5, v14, 0, v15, v16, v17, v18, v19);
    if (isKindOfClass)
    {
      v21 = *(v20 + 352);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return;
      }

      v21 = objc_msgSend_objectAtIndexedSubscript_(a5, v22, 0, v23, v24, v25, v26, v27);
    }

    MPSDecrementReadCount(v21);
  }
}

- (id)encodeToCommandBuffer:(id)a3 sourceImage:(id)a4 destinationState:(id *)a5 destinationStateIsTemporary:(BOOL)a6
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)encodeBatchToCommandBuffer:(id)a3 sourceImages:(id)a4 destinationStates:(id *)a5 destinationStateIsTemporary:(BOOL)a6
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4 paddingMethod:(unint64_t)a5 sourceOffset:(id *)a6
{
  v90.receiver = self;
  v90.super_class = MPSCNNConvolutionTranspose;
  v15 = [(MPSCNNKernel *)&v90 destinationImageDescriptorForSourceImages:a3 sourceStates:0 paddingMethod:a5 sourceOffset:&v92 kernelOffset:v91];
  v17 = v91[0];
  v16 = v91[1];
  if (a4 && objc_msgSend_objectAtIndexedSubscript_(a4, v9, 0, v10, v11, v12, v13, v14))
  {
    objc_msgSend_objectAtIndexedSubscript_(a4, v9, 0, v10, v11, v12, v13, v14);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(a4, v18, 0, v19, v20, v21, v22, v23);
      v32 = v24;
      if (v24)
      {
        objc_msgSend_sourceOffset(v24, v25, v26, v27, v28, v29, v30, v31);
      }

      v33 = objc_msgSend_sourceWidth(v32, v25, v26, v27, v28, v29, v30, v31, 0, 0, 0);
      objc_msgSend_setWidth_(v15, v34, v33, v35, v36, v37, v38, v39);
      v47 = objc_msgSend_sourceHeight(v32, v40, v41, v42, v43, v44, v45, v46);
      objc_msgSend_setHeight_(v15, v48, v47, v49, v50, v51, v52, v53);
      v54 = ((self->super._kernelWidth & 1) == 0) - v88;
      v55 = ((self->super._kernelHeight & 1) == 0) - v89;
      strideInPixelsX = self->super._strideInPixelsX;
      if (strideInPixelsX <= 1)
      {
        strideInPixelsX = 1;
      }

      v57 = v54 / strideInPixelsX;
      v58 = v54 % strideInPixelsX;
      v59 = (v58 >> 63) + v57;
      v17 = ((v58 >> 63) & strideInPixelsX) + v58;
      strideInPixelsY = self->super._strideInPixelsY;
      if (strideInPixelsY <= 1)
      {
        strideInPixelsY = 1;
      }

      v61 = v55 / strideInPixelsY;
      v62 = v55 % strideInPixelsY;
      v16 = ((v62 >> 63) & strideInPixelsY) + v62;
      *&v92 = v59;
      *(&v92 + 1) = (v62 >> 63) + v61;
    }

    objc_msgSend_objectAtIndexedSubscript_(a4, v18, 0, v19, v20, v21, v22, v23);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = objc_msgSend_objectAtIndexedSubscript_(a4, v9, 0, v10, v11, v12, v13, v14);
      v64 = v63[6];
      v65 = v63[7];
      objc_msgSend_setWidth_(v15, v66, v63[31], v67, v68, v69, v70, v71);
      objc_msgSend_setHeight_(v15, v72, v63[32], v73, v74, v75, v76, v77);
      v78 = ((self->super._kernelWidth & 1) == 0) - v64;
      v79 = ((self->super._kernelHeight & 1) == 0) - v65;
      v80 = self->super._strideInPixelsX;
      if (v80 <= 1)
      {
        v80 = 1;
      }

      v81 = v78 / v80;
      v82 = v78 % v80;
      v83 = (v82 >> 63) + v81;
      v17 = ((v82 >> 63) & v80) + v82;
      v84 = self->super._strideInPixelsY;
      if (v84 <= 1)
      {
        v84 = 1;
      }

      v85 = v79 / v84;
      v86 = v79 % v84;
      v16 = ((v86 >> 63) & v84) + v86;
      *&v92 = v83;
      *(&v92 + 1) = (v86 >> 63) + v85;
    }
  }

  self->_kernelOffsetX = v17;
  self->_kernelOffsetY = v16;
  if (a6)
  {
    *&a6->var0 = v92;
  }

  objc_msgSend_setFeatureChannels_(v15, v9, self->_outputFeatureChannels, v10, v11, v12, v13, v14);
  return v15;
}

- (void)copyToGradientState:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolutionTranspose;
  [(MPSCNNKernel *)&v8 copyToGradientState:a3 sourceImage:a4 sourceStates:a5 destinationImage:a6];
  *(a3 + 45) = self->_kernelOffsetX;
  *(a3 + 46) = self->_kernelOffsetY;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = MPSCNNConvolutionTranspose;
  v4 = [(MPSCNNKernel *)&v20 debugDescription];
  result = objc_msgSend_stringWithFormat_(v3, v5, @"%@inputFeatureChannels: %lu\n\toutputFeatureChannels: %lu\n\tFeature channel layout: %lu\n\tGroups: %lu \n\tkernelOffset: {%zd, %zd}\n", v6, v7, v8, v9, v10, v4, self->_inputFeatureChannels, self->_outputFeatureChannels, self->_featureChannelsLayout, self->_groups, self->_kernelOffsetX, self->_kernelOffsetY);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  neuronType = fusedNeuronDescriptor->_neuronType;
  if (neuronType)
  {
    if (neuronType > 0xF)
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@\tneuron type: %s\n\tneuron A:  %10.14f\n\tneuron B:  %10.14f\n\tneuron C:  %10.14f\n", v13, v14, v15, v16, v17, result, "<invalid/missing type>", fusedNeuronDescriptor->_a, fusedNeuronDescriptor->_b, fusedNeuronDescriptor->_c);
    }

    else
    {
      return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@\tneuron type: %s\n\tneuron A:  %10.14f\n\tneuron B:  %10.14f\n\tneuron C:  %10.14f\n", v13, v14, v15, v16, v17, result, off_278B30B88[neuronType], fusedNeuronDescriptor->_a, fusedNeuronDescriptor->_b, fusedNeuronDescriptor->_c);
    }
  }

  return result;
}

- (MPSCNNConvolutionTransposeGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v71[1] = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  convolution = self->_convolution;
  v71[0] = sourceImage;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v71, 1, v12, v13, v14, v15);
  v70 = destinationImage;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, &v70, 1, v18, v19, v20, v21);
  v28 = objc_msgSend_resourceListForSourceImages_destinationImages_(convolution, v23, v16, v22, v24, v25, v26, v27);
  v29 = [MPSCNNConvolutionTransposeGradientState alloc];
  v30 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
  v37 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v31, 0, v32, v33, v34, v35, v36);
  v45 = objc_msgSend_weightsLayout(self->_convolution, v38, v39, v40, v41, v42, v43, v44);
  v48 = objc_msgSend_initWithDevice_resourceList_convolutionTranspose_convolutionGradientState_weightsLayout_(v29, v46, v30, v28, self, v37, v45, v47);
  if (v48)
  {
    v52 = v48;
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v49, v48, sourceImage, sourceStates, destinationImage, v50, v51);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v53 = MEMORY[0x277CCACA8];
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v62 = objc_msgSend_stringWithFormat_(v53, v56, @"created by %@", v57, v58, v59, v60, v61, v55);
      objc_msgSend_setLabel_(v52, v63, v62, v64, v65, v66, v67, v68);
    }

    objc_autoreleasePoolPop(v9);
    return v52;
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    return 0;
  }
}

- (MPSCNNConvolutionTransposeGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v104 = objc_msgSend_count(destinationImage, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  v12 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_resourceListForSourceImages_destinationImages_(self->_convolution, v13, sourceImage, destinationImage, v14, v15, v16, v17);
  v19 = [MPSCNNConvolutionTransposeGradientState alloc];
  v20 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2];
  v27 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v21, 0, v22, v23, v24, v25, v26);
  v34 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0, v29, v30, v31, v32, v33);
  v42 = objc_msgSend_weightsLayout(self->_convolution, v35, v36, v37, v38, v39, v40, v41);
  v45 = objc_msgSend_initWithDevice_resourceList_convolutionTranspose_convolutionGradientState_weightsLayout_(v19, v43, v20, v18, self, v34, v42, v44);
  if (!v45)
  {
    objc_autoreleasePoolPop(v12);
    return 0;
  }

  v52 = v45;
  v53 = v12;
  v54 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v46, 0, v47, v48, v49, v50, v51);
  v61 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v55, 0, v56, v57, v58, v59, v60);
  v68 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v62, 0, v63, v64, v65, v66, v67);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v69, v52, v54, v61, v68, v70, v71);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v72 = MEMORY[0x277CCACA8];
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v81 = objc_msgSend_stringWithFormat_(v72, v75, @"created by %@", v76, v77, v78, v79, v80, v74);
    objc_msgSend_setLabel_(v52, v82, v81, v83, v84, v85, v86, v87);
  }

  v88 = malloc_type_malloc(8 * v104, 0x80040B8603338uLL);
  v89 = v88;
  if (v104)
  {
    if (v104 < 4)
    {
      v90 = 0;
LABEL_11:
      v95 = v104 - v90;
      v96 = &v88->i64[v90];
      do
      {
        *v96++ = v52;
        --v95;
      }

      while (v95);
      goto LABEL_13;
    }

    v90 = v104 & 0xFFFFFFFFFFFFFFFCLL;
    v92 = vdupq_n_s64(v52);
    v93 = v88 + 1;
    v94 = v104 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v93[-1] = v92;
      *v93 = v92;
      v93 += 2;
      v94 -= 4;
    }

    while (v94);
    if (v104 != v90)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v97 = objc_alloc(MEMORY[0x277CBEA60]);
  v103 = objc_msgSend_initWithObjects_count_(v97, v98, v89, v104, v99, v100, v101, v102);
  free(v89);
  objc_autoreleasePoolPop(v53);

  return v103;
}

- (MPSCNNConvolutionTransposeGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v70[1] = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  convolution = self->_convolution;
  v70[0] = sourceImage;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v70, 1, v14, v15, v16, v17);
  v69 = destinationImage;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, &v69, 1, v20, v21, v22, v23);
  v30 = objc_msgSend_resourceListForSourceImages_destinationImages_(convolution, v25, v18, v24, v26, v27, v28, v29);
  objc_autoreleasePoolPop(v11);
  v37 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v31, 0, v32, v33, v34, v35, v36);
  v45 = objc_msgSend_weightsLayout(self->_convolution, v38, v39, v40, v41, v42, v43, v44);
  v48 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolutionTranspose_convolutionGradientState_weightsLayout_(MPSCNNConvolutionTransposeGradientState, v46, commandBuffer, v30, self, v37, v45, v47);

  if (v48)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v49, v48, sourceImage, sourceStates, destinationImage, v50, v51);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v61 = objc_msgSend_stringWithFormat_(v52, v55, @"created by %@", v56, v57, v58, v59, v60, v54);
      objc_msgSend_setLabel_(v48, v62, v61, v63, v64, v65, v66, v67);
    }
  }

  return v48;
}

- (MPSCNNConvolutionTransposeGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v103 = objc_msgSend_count(destinationImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  v13 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_resourceListForSourceImages_destinationImages_(self->_convolution, v14, sourceImage, destinationImage, v15, v16, v17, v18);
  v26 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v20, 0, v21, v22, v23, v24, v25);
  v33 = objc_msgSend_objectAtIndexedSubscript_(v26, v27, 0, v28, v29, v30, v31, v32);
  v41 = objc_msgSend_weightsLayout(self->_convolution, v34, v35, v36, v37, v38, v39, v40);
  v44 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolutionTranspose_convolutionGradientState_weightsLayout_(MPSCNNConvolutionTransposeGradientState, v42, commandBuffer, v19, self, v33, v41, v43);
  if (!v44)
  {
    objc_autoreleasePoolPop(v13);
    return 0;
  }

  v51 = v44;
  v52 = v13;
  v53 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v45, 0, v46, v47, v48, v49, v50);
  v60 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v54, 0, v55, v56, v57, v58, v59);
  v67 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v61, 0, v62, v63, v64, v65, v66);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v68, v51, v53, v60, v67, v69, v70);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v71 = MEMORY[0x277CCACA8];
    v72 = objc_opt_class();
    v73 = NSStringFromClass(v72);
    v80 = objc_msgSend_stringWithFormat_(v71, v74, @"created by %@", v75, v76, v77, v78, v79, v73);
    objc_msgSend_setLabel_(v51, v81, v80, v82, v83, v84, v85, v86);
  }

  v87 = malloc_type_malloc(8 * v103, 0x80040B8603338uLL);
  v88 = v87;
  if (v103)
  {
    if (v103 < 4)
    {
      v89 = 0;
LABEL_11:
      v94 = v103 - v89;
      v95 = &v87->i64[v89];
      do
      {
        *v95++ = v51;
        --v94;
      }

      while (v94);
      goto LABEL_13;
    }

    v89 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    v91 = vdupq_n_s64(v51);
    v92 = v87 + 1;
    v93 = v103 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v92[-1] = v91;
      *v92 = v91;
      v92 += 2;
      v93 -= 4;
    }

    while (v93);
    if (v103 != v89)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v96 = objc_alloc(MEMORY[0x277CBEA60]);
  v102 = objc_msgSend_initWithObjects_count_(v96, v97, v88, v103, v98, v99, v100, v101);
  free(v88);
  objc_autoreleasePoolPop(v52);

  return v102;
}

- (void)reloadWeightsAndBiasesWithDataSource:(id)a3
{
  objc_msgSend_dataSource(self, a2, a3, v3, v4, v5, v6, v7);
  if (objc_msgSend_dataSource(self, v10, v11, v12, v13, v14, v15, v16) == a3 || !MTLReportFailureTypeEnabled())
  {
    v24 = self;
  }

  else
  {
    MTLReportFailure();
    v24 = self;
  }

  objc_msgSend_reloadWeightsAndBiasesFromDataSource(v24, v17, v18, v19, v20, v21, v22, v23);
}

@end