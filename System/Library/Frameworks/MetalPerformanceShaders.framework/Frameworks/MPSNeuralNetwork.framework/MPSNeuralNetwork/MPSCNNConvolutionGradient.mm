@interface MPSCNNConvolutionGradient
- (MPSCNNConvolutionGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNConvolutionGradient)initWithDevice:(id)device;
- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights convolutionTranspose:(BOOL)transpose;
- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected;
- (id)PeakAtWeightsWithConvolutionGradientState:(id)state;
- (id)PeakAtWeightsWithConvolutionTransposeGradientState:(id)state;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initialize:(id)initialize convDesc:(id)desc weights:(void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose preferredWeightsDataType:(unsigned int)self0;
- (void)initialize:(id)initialize weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (void)reloadWeightsAndBiasesFromDataSource;
- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state;
@end

@implementation MPSCNNConvolutionGradient

- (MPSCNNConvolutionGradient)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (void)initialize:(id)initialize convDesc:(id)desc weights:(void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose preferredWeightsDataType:(unsigned int)self0
{
  if (!initialize && MTLReportFailureTypeEnabled())
  {
    v31 = objc_opt_class();
    NSStringFromClass(v31);
    MTLReportFailure();
  }

  if (!desc && MTLReportFailureTypeEnabled())
  {
    v32 = objc_opt_class();
    NSStringFromClass(v32);
    MTLReportFailure();
  }

  if (type != 268435472 && type != 268435488 && MTLReportFailureTypeEnabled())
  {
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    MTLReportFailure();
  }

  if (!*(desc + 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 2) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 3) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 6) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 7) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 12) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 13) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!*(desc + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(desc + 11) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(desc + 112) == 1 && *(desc + 4) != *(desc + 3) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (dataType == 268435488)
  {
    if (type == 268435488 || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }
  }

  else if (dataType == 268435472 || !MTLReportFailureTypeEnabled())
  {
    goto LABEL_24;
  }

  MTLReportFailure();
LABEL_24:
  v16 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  v17 = *(desc + 2);
  v34 = *(desc + 1);
  self->super.super._primaryKernelWidth = v34;
  v33 = v17;
  self->super.super._primaryKernelHeight = v17;
  self->super.super._secondaryKernelWidth = self->super.super._primaryKernelWidth;
  self->super.super._secondaryKernelHeight = self->super.super._primaryKernelHeight;
  self->_inputFeatureChannels = *(desc + 4);
  self->_outputFeatureChannels = *(desc + 3);
  self->super.super._primaryStrideInPixelsX = *(desc + 6);
  self->super.super._primaryStrideInPixelsY = *(desc + 7);
  self->super.super._secondaryStrideInPixelsX = self->super.super._primaryStrideInPixelsX;
  self->super.super._secondaryStrideInPixelsY = self->super.super._primaryStrideInPixelsY;
  self->_groups = *(desc + 8);
  if (*(desc + 112) == 1)
  {
    v18 = self->_inputFeatureChannels / self->_outputFeatureChannels;
  }

  else
  {
    v18 = 0;
  }

  self->_channelMultiplier = v18;
  self->super.super._primaryDilationRateX = *(desc + 12);
  self->super.super._primaryDilationRateY = *(desc + 13);
  self->super.super._secondaryDilationRateX = self->super.super._primaryDilationRateX;
  self->super.super._secondaryDilationRateY = self->super.super._primaryDilationRateY;
  self->super.super._checkFlags |= 2u;
  self->_fullyConnected = connected;
  self->_weights = 0;
  self->_weightsLayout = layout;
  self->super.super._encodeData = self;
  self->super.super._encode = sub_239BE4CE0;
  self->super.super._batchEncode = (*(*v16 + 136))(v16);
  self->_weightsDataType = type;
  self->super.super._pluginOptions = 2;
  objc_msgSend_setPlugin_(self, v19, 0, v20, v21, v22, v23, v24);
  self->_gradientOption = 3;
  self->_serializeWeightsAndBiases = 0;
  self->_convolutionTranspose = transpose;
  self->_preferredWeightsDataType = dataType;
  v26 = type == 268435488 && dataType == 268435472;
  if (pthread_mutex_init(&self->_lock, 0) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (weights)
  {
    weightsCopy = weights;
    if (v26)
    {
      if (self->_channelMultiplier)
      {
        inputFeatureChannels = 1;
      }

      else
      {
        inputFeatureChannels = self->_inputFeatureChannels;
      }

      v30 = malloc_type_malloc(2 * v33 * v34 * (self->_outputFeatureChannels / self->_groups) * inputFeatureChannels, 0x1000040BDFB0063uLL);
      MPSConvertFloatToHalf();
      weightsCopy = v30;
      typeCopy = 268435472;
    }

    else
    {
      typeCopy = type;
    }

    (*(*v16 + 64))(v16, initialize, &self->_weights, weightsCopy, typeCopy, layout, self);
    if (v26)
    {
      free(weightsCopy);
    }

    if (!self->_weights && MTLReportFailureTypeEnabled())
    {

      MTLReportFailure();
    }
  }
}

- (void)initialize:(id)initialize weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  connectedCopy = connected;
  self->_dataSource = weights;
  v18 = objc_msgSend_descriptor(weights, v11, v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_dataType(weights, v19, v20, v21, v22, v23, v24, v25);
  if ((objc_msgSend_load(weights, v27, v28, v29, v30, v31, v32, v33) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = objc_msgSend_weights(weights, v34, v35, v36, v37, v38, v39, v40);
  if (!v41 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_opt_respondsToSelector())
  {
    v49 = objc_msgSend_weightsLayout(weights, v42, v43, v44, v45, v46, v47, v48);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    objc_msgSend_kernelWeightsDataType(weights, v50, v51, v52, v53, v54, v55, v56);
    goto LABEL_8;
  }

  v49 = 0;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_7;
  }

LABEL_8:
  objc_msgSend_initialize_convDesc_weights_dataType_weightsLayout_fullyConnected_convolutionTranspose_preferredWeightsDataType_(self, v50, initialize, v18, v41, v26, v49, connectedCopy, transpose);

  objc_msgSend_purge(weights, v57, v58, v59, v60, v61, v62, v63);
}

- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected
{
  connectedCopy = connected;
  v13.receiver = self;
  v13.super_class = MPSCNNConvolutionGradient;
  result = [(MPSCNNGradientKernel *)&v13 initWithDevice:?];
  if (result)
  {
    v12 = result;
    objc_msgSend_initialize_weights_fullyConnected_convolutionTranspose_(result, v9, device, weights, connectedCopy, 0, v10, v11);
    return v12;
  }

  return result;
}

- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights convolutionTranspose:(BOOL)transpose
{
  transposeCopy = transpose;
  v13.receiver = self;
  v13.super_class = MPSCNNConvolutionGradient;
  result = [(MPSCNNGradientKernel *)&v13 initWithDevice:?];
  if (result)
  {
    v12 = result;
    objc_msgSend_initialize_weights_fullyConnected_convolutionTranspose_(result, v9, device, weights, 0, transposeCopy, v10, v11);
    return v12;
  }

  return result;
}

- (MPSCNNConvolutionGradient)initWithDevice:(id)device weights:(id)weights
{
  v11.receiver = self;
  v11.super_class = MPSCNNConvolutionGradient;
  result = [(MPSCNNGradientKernel *)&v11 initWithDevice:?];
  if (result)
  {
    v10 = result;
    objc_msgSend_initialize_weights_fullyConnected_convolutionTranspose_(result, v7, device, weights, 0, 0, v8, v9);
    return v10;
  }

  return result;
}

- (void)reloadWeightsAndBiasesFromDataSource
{
  if ((objc_msgSend_load(self->_dataSource, a2, v2, v3, v4, v5, v6, v7) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = objc_msgSend_weightsLayout(self->_dataSource, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_msgSend_weights(self->_dataSource, v9, v10, v11, v12, v13, v14, v15);
  if (!v17 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_weightsDataType == 268435488 && self->_preferredWeightsDataType == 268435472)
  {
    if (self->_channelMultiplier)
    {
      inputFeatureChannels = 1;
    }

    else
    {
      inputFeatureChannels = self->_inputFeatureChannels;
    }

    v17 = malloc_type_malloc(2 * self->super.super._primaryKernelHeight * (self->_outputFeatureChannels / self->_groups) * self->super.super._primaryKernelWidth * inputFeatureChannels, 0x1000040BDFB0063uLL);
    objc_msgSend_weights(self->_dataSource, v20, v21, v22, v23, v24, v25, v26);
    MPSConvertFloatToHalf();
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v27 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  (*(*v27 + 64))(v27, (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, v17, self->_preferredWeightsDataType, v16, self);
  if (v19)
  {
    free(v17);
  }

  dataSource = self->_dataSource;

  objc_msgSend_purge(dataSource, v28, v29, v30, v31, v32, v33, v34);
}

- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state
{
  v11 = objc_msgSend_weights(state, a2, commandBuffer, state, v4, v5, v6, v7);
  v19 = objc_msgSend_weightsDataType(state, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_weightsLayout(state, v20, v21, v22, v23, v24, v25, v26);
  v42 = objc_msgSend_weightsOffset(state, v28, v29, v30, v31, v32, v33, v34);
  if (v27 != self->_weightsLayout && MTLReportFailureTypeEnabled())
  {
    v53 = off_278B2DF68[self->_weightsLayout];
    v54 = off_278B2DF68[v27];
    MTLReportFailure();
  }

  if (!v11 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_channelMultiplier)
  {
    v43 = 1;
  }

  else
  {
    v43 = self->_outputFeatureChannels / self->_groups;
  }

  v44 = 4 * self->_inputFeatureChannels * self->super.super._primaryKernelWidth * self->super.super._primaryKernelHeight * v43;
  objc_msgSend_length(v11, v35, v36, v37, v38, v39, v40, v41, v53, v54);
  if (objc_msgSend_length(v11, v45, v46, v47, v48, v49, v50, v51) < v44 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v52 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  if (!self->_weights)
  {
    (*(*v52 + 64))((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4], (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, 0, self->_preferredWeightsDataType, v27, self);
    if (!self->_weights)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  (*(*v52 + 168))(v52, commandBuffer, self, v11, v19, v27, v42);

  MPSDecrementReadCount(&state->super);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v68.receiver = self;
  v68.super_class = MPSCNNConvolutionGradient;
  v5 = [(MPSCNNGradientKernel *)&v68 copyWithZone:zone device:device];
  v6 = *MEMORY[0x277CD7350];
  v7 = *&v5[v6];
  v8 = *(&self->super.super.super.super.isa + v6);
  v9 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  *(v5 + 54) = self->_inputFeatureChannels;
  *(v5 + 55) = self->_outputFeatureChannels;
  v10 = *(v8 + 16);
  *(v5 + 56) = self->_groups;
  *(v5 + 57) = self->_channelMultiplier;
  *(v5 + 58) = self->_gradientOption;
  *(v5 + 92) = self->super.super._checkFlags | 2;
  v11 = v7[2];
  *(v5 + 47) = sub_239BE4CE0;
  *(v5 + 48) = (*(*v9 + 136))(v9);
  v5[480] = self->_fullyConnected;
  *(v5 + 121) = self->_weightsDataType;
  *(v5 + 123) = self->_weightsLayout;
  v19 = objc_msgSend_plugin(self, v12, v13, v14, v15, v16, v17, v18);
  objc_msgSend_setPlugin_(v5, v20, v19, v21, v22, v23, v24, v25);
  *(v5 + 62) = self->_dataSource;
  v5[568] = self->_serializeWeightsAndBiases;
  v5[481] = self->_convolutionTranspose;
  *(v5 + 122) = self->_preferredWeightsDataType;
  pthread_mutex_init((v5 + 504), 0);
  weights = self->_weights;
  if (v10 == v11)
  {
    v42 = weights;
  }

  else if (weights)
  {
    v27 = (*(*v7 + 40))(v7);
    v28 = v27 | (16 * (*(*v7 + 24))(v7));
    v36 = objc_msgSend_length(self->_weights, v29, v30, v31, v32, v33, v34, v35);
    v42 = objc_msgSend_newBufferWithLength_options_(v11, v37, v36, v28, v38, v39, v40, v41);
    v50 = objc_msgSend_contents(v42, v43, v44, v45, v46, v47, v48, v49);
    v58 = objc_msgSend_contents(self->_weights, v51, v52, v53, v54, v55, v56, v57);
    v66 = objc_msgSend_length(self->_weights, v59, v60, v61, v62, v63, v64, v65);
    memcpy(v50, v58, v66);
  }

  else
  {
    v42 = 0;
  }

  *(v5 + 59) = v42;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v60.receiver = self;
  v60.super_class = MPSCNNConvolutionGradient;
  [(MPSCNNGradientKernel *)&v60 encodeWithCoder:?];
  objc_msgSend_encodeBool_forKey_(coder, v5, self->_fullyConnected, @"MPSCNNConvolutionGradientIsFullyConnected", v6, v7, v8, v9);
  objc_msgSend_encodeBool_forKey_(coder, v10, self->_serializeWeightsAndBiases, @"kMPSCNNConvolutionGradientSerializeWeightsAndBiases", v11, v12, v13, v14);
  objc_msgSend_encodeBool_forKey_(coder, v15, self->_convolutionTranspose, @"kMPSCNNConvolutionGradientConvolutionTranspose", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(coder, v20, self->_inputFeatureChannels, @"MPSCNNConvolutionGradientInputFeatureChannels", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(coder, v25, self->_outputFeatureChannels, @"MPSCNNConvolutionGradientOutputFeatureChannels", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(coder, v30, self->_groups, @"MPSCNNConvolutionGradientGroups", v31, v32, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coder, v35, self->_channelMultiplier, @"MPSCNNConvolutionChannelMultiplier", v36, v37, v38, v39);
  objc_msgSend_encodeInt64_forKey_(coder, v40, self->_weightsDataType, @"kMPSCNNConvolutionGradientWeightsDataType", v41, v42, v43, v44);
  objc_msgSend_encodeInt64_forKey_(coder, v45, self->_preferredWeightsDataType, @"kMPSCNNConvolutionGradientPreferredWeightsDataType", v46, v47, v48, v49);
  objc_msgSend_encodeInt64_forKey_(coder, v50, self->_weightsLayout, @"kMPSCNNConvolutionGradientWeightsLayout", v51, v52, v53, v54);
  objc_msgSend_encodeInt64_forKey_(coder, v55, self->_gradientOption, @"kMPSCNNConvolutionGradientOption", v56, v57, v58, v59);
}

- (MPSCNNConvolutionGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v126.receiver = self;
  v126.super_class = MPSCNNConvolutionGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v125 = objc_msgSend_decodeBoolForKey_(aDecoder, v7, @"MPSCNNConvolutionGradientIsFullyConnected", v8, v9, v10, v11, v12);
      v124 = objc_msgSend_decodeBoolForKey_(aDecoder, v14, @"kMPSCNNConvolutionGradientConvolutionTranspose", v15, v16, v17, v18, v19);
      v13->_dataSource = 0;
      v26 = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSCNNConvolutionGradientInputFeatureChannels", v21, v22, v23, v24, v25);
      v33 = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSCNNConvolutionGradientOutputFeatureChannels", v28, v29, v30, v31, v32);
      v40 = objc_msgSend_decodeInt64ForKey_(aDecoder, v34, @"MPSCNNConvolutionGradientGroups", v35, v36, v37, v38, v39);
      v47 = objc_msgSend_decodeInt64ForKey_(aDecoder, v41, @"MPSCNNConvolutionChannelMultiplier", v42, v43, v44, v45, v46);
      v123 = objc_msgSend_decodeInt64ForKey_(aDecoder, v48, @"kMPSCNNConvolutionGradientWeightsDataType", v49, v50, v51, v52, v53);
      v60 = objc_msgSend_decodeInt64ForKey_(aDecoder, v54, @"kMPSCNNConvolutionGradientPreferredWeightsDataType", v55, v56, v57, v58, v59);
      v67 = objc_msgSend_decodeInt64ForKey_(aDecoder, v61, @"kMPSCNNConvolutionGradientWeightsLayout", v62, v63, v64, v65, v66);
      v122 = objc_msgSend_decodeBoolForKey_(aDecoder, v68, @"kMPSCNNConvolutionGradientSerializeWeightsAndBiases", v69, v70, v71, v72, v73);
      v80 = objc_msgSend_decodeInt64ForKey_(aDecoder, v74, @"kMPSCNNConvolutionGradientOption", v75, v76, v77, v78, v79);
      v84 = objc_autoreleasePoolPush();
      v85 = off_278B10E40;
      if (v47)
      {
        v85 = off_278B10ED0;
      }

      v86 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(*v85, v81, v13->super.super._primaryKernelWidth, v13->super.super._primaryKernelHeight, v33, v26, v82, v83);
      objc_msgSend_setGroups_(v86, v87, v40, v88, v89, v90, v91, v92);
      objc_msgSend_setStrideInPixelsX_(v86, v93, v13->super.super._primaryStrideInPixelsX, v94, v95, v96, v97, v98);
      objc_msgSend_setStrideInPixelsY_(v86, v99, v13->super.super._primaryStrideInPixelsY, v100, v101, v102, v103, v104);
      objc_msgSend_setDilationRateX_(v86, v105, v13->super.super._primaryDilationRateX, v106, v107, v108, v109, v110);
      objc_msgSend_setDilationRateY_(v86, v111, v13->super.super._primaryDilationRateY, v112, v113, v114, v115, v116);
      v121 = v60;
      v120 = v124;
      objc_msgSend_initialize_convDesc_weights_dataType_weightsLayout_fullyConnected_convolutionTranspose_preferredWeightsDataType_(v13, v117, device, v86, 0, v123, v67, v125, v120);
      objc_autoreleasePoolPop(v84);
      v13->_serializeWeightsAndBiases = v122;
      v13->_gradientOption = v80;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v118 = objc_opt_class();
        NSStringFromClass(v118);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = MPSCNNConvolutionGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (id)PeakAtWeightsWithConvolutionGradientState:(id)state
{
  result = self->_weights;
  if (!result)
  {
    pthread_mutex_lock(&self->_lock);
    if (!self->_weights)
    {
      v13 = objc_msgSend_convolution(state, v6, v7, v8, v9, v10, v11, v12);

      v21 = objc_msgSend_dataSource(v13, v14, v15, v16, v17, v18, v19, v20);
      self->_dataSource = v21;
      v22 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
      if ((objc_msgSend_load(v21, v23, v24, v25, v26, v27, v28, v29) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v37 = objc_msgSend_weights(self->_dataSource, v30, v31, v32, v33, v34, v35, v36);
      if (!v37 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      self->_weightsLayout = 0;
      if (objc_opt_respondsToSelector())
      {
        self->_weightsLayout = objc_msgSend_weightsLayout(self->_dataSource, v38, v39, v40, v41, v42, v43, v44);
      }

      v45 = objc_msgSend_dataType(self->_dataSource, v38, v39, v40, v41, v42, v43, v44);
      if (self->_weightsDataType == 268435488 && self->_preferredWeightsDataType == 268435472)
      {
        if (self->_channelMultiplier)
        {
          inputFeatureChannels = 1;
        }

        else
        {
          inputFeatureChannels = self->_inputFeatureChannels;
        }

        v37 = malloc_type_malloc(2 * self->super.super._primaryKernelHeight * (self->_outputFeatureChannels / self->_groups) * self->super.super._primaryKernelWidth * inputFeatureChannels, 0x1000040BDFB0063uLL);
        objc_msgSend_weights(self->_dataSource, v48, v49, v50, v51, v52, v53, v54);
        MPSConvertFloatToHalf();
        v47 = 1;
        v45 = 268435472;
      }

      else
      {
        v47 = 0;
      }

      (*(*v22 + 64))(v22, (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, v37, v45, self->_weightsLayout, self);
      if (v47)
      {
        free(v37);
      }

      if (!self->_weights)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      objc_msgSend_purge(self->_dataSource, v55, v56, v57, v58, v59, v60, v61);
    }

    pthread_mutex_unlock(&self->_lock);
    return self->_weights;
  }

  return result;
}

- (id)PeakAtWeightsWithConvolutionTransposeGradientState:(id)state
{
  result = self->_weights;
  if (!result)
  {
    pthread_mutex_lock(&self->_lock);
    if (!self->_weights)
    {
      v13 = objc_msgSend_convolutionTranspose(state, v6, v7, v8, v9, v10, v11, v12);

      v21 = objc_msgSend_dataSource(v13, v14, v15, v16, v17, v18, v19, v20);
      self->_dataSource = v21;
      v22 = (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7370]))[4];
      if ((objc_msgSend_load(v21, v23, v24, v25, v26, v27, v28, v29) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v37 = objc_msgSend_weights(self->_dataSource, v30, v31, v32, v33, v34, v35, v36);
      if (!v37 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      self->_weightsLayout = 0;
      if (objc_opt_respondsToSelector())
      {
        self->_weightsLayout = objc_msgSend_weightsLayout(self->_dataSource, v38, v39, v40, v41, v42, v43, v44);
      }

      v45 = objc_msgSend_dataType(self->_dataSource, v38, v39, v40, v41, v42, v43, v44);
      if (self->_weightsDataType == 268435488 && self->_preferredWeightsDataType == 268435472)
      {
        if (self->_channelMultiplier)
        {
          inputFeatureChannels = 1;
        }

        else
        {
          inputFeatureChannels = self->_inputFeatureChannels;
        }

        v37 = malloc_type_malloc(2 * self->super.super._primaryKernelHeight * (self->_outputFeatureChannels / self->_groups) * self->super.super._primaryKernelWidth * inputFeatureChannels, 0x1000040BDFB0063uLL);
        objc_msgSend_weights(self->_dataSource, v48, v49, v50, v51, v52, v53, v54);
        MPSConvertFloatToHalf();
        v47 = 1;
        v45 = 268435472;
      }

      else
      {
        v47 = 0;
      }

      (*(*v22 + 64))(v22, (*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, v37, v45, self->_weightsLayout, self);
      if (v47)
      {
        free(v37);
      }

      if (!self->_weights)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      objc_msgSend_purge(self->_dataSource, v55, v56, v57, v58, v59, v60, v61);
    }

    pthread_mutex_unlock(&self->_lock);
    return self->_weights;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method primaryOffset:(id *)offset secondaryOffset:(id *)secondaryOffset kernelOffset:(id *)kernelOffset
{
  v17.receiver = self;
  v17.super_class = MPSCNNConvolutionGradient;
  v9 = [(MPSCNNBinaryKernel *)&v17 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method primaryOffset:offset secondaryOffset:secondaryOffset kernelOffset:kernelOffset];
  objc_msgSend_setFeatureChannels_(v9, v10, self->_outputFeatureChannels, v11, v12, v13, v14, v15);
  return v9;
}

@end