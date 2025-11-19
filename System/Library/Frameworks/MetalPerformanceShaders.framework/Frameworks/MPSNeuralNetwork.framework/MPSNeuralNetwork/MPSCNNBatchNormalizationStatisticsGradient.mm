@interface MPSCNNBatchNormalizationStatisticsGradient
- (MPSCNNBatchNormalizationStatisticsGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBatchNormalizationStatisticsGradient)initWithDevice:(id)device fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage gradientState:(MPSState *)gradientState;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (unint64_t)maxBatchSize;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage gradientState:(MPSState *)gradientState destinationGradient:(MPSImage *)destinationGradient;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSCNNBatchNormalizationStatisticsGradient

- (MPSCNNBatchNormalizationStatisticsGradient)initWithDevice:(id)device fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor
{
  v62.receiver = self;
  v62.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  v6 = [(MPSCNNGradientKernel *)&v62 initWithDevice:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v6->super.super._encode = 0;
      v6->super.super._batchEncode = sub_239C021CC;
      v6->super.super._encodeData = v6;
      v6->_fusedNeuronDescriptor = 0;
      v6->super.super._checkFlags |= 0x11000u;
      v8 = (*(*MPSDevice + 24))(MPSDevice);
      v6->_preluBuffer = 0;
      v16 = objc_msgSend_copy(fusedNeuronDescriptor, v9, v10, v11, v12, v13, v14, v15);
      v6->_fusedNeuronDescriptor = v16;
      if (v16 && objc_msgSend_neuronType(v16, v17, v18, v19, v20, v21, v22, v23) == 10)
      {
        v31 = 16 * v8;
        v32 = objc_msgSend_data(v6->_fusedNeuronDescriptor, v24, v25, v26, v27, v28, v29, v30);
        v40 = objc_msgSend_bytes(v32, v33, v34, v35, v36, v37, v38, v39);
        v48 = objc_msgSend_data(v6->_fusedNeuronDescriptor, v41, v42, v43, v44, v45, v46, v47);
        v56 = objc_msgSend_length(v48, v49, v50, v51, v52, v53, v54, v55);
        v6->_preluBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v57, v40, v56, v31, v58, v59, v60);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]) && MTLReportFailureTypeEnabled())
  {
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    MTLReportFailure();
  }

  v13 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceGradients, sourceImages, batchNormalizationState, v6, v7, v31);
  v16 = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  v17 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
  if (!v17)
  {
    objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v18, commandBuffer, sourceGradients, sourceImages, 0, 0, v22);
    goto LABEL_15;
  }

  v23 = v17;
  if (v16 > 3)
  {
    v24 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = vdupq_n_s64(batchNormalizationState);
    v26 = v17 + 1;
    v27 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v26[-1] = v25;
      *v26 = v25;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v16 == v24)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
  }

  v28 = v16 - v24;
  v29 = v17 + v24;
  do
  {
    *v29++ = batchNormalizationState;
    --v28;
  }

  while (v28);
LABEL_13:
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v17, v16, v19, v20, v21, v22);
  free(v23);
LABEL_14:
  objc_msgSend_encodeBatchToCommandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, v14, commandBuffer, sourceGradients, sourceImages, v16, 0, v15);
LABEL_15:

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    v15 = v12;
    v16 = NSStringFromClass(v13);
    MTLReportFailure();
  }

  v17.receiver = self;
  v17.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  return [(MPSCNNGradientKernel *)&v17 encodeBatchToCommandBuffer:commandBuffer sourceGradients:sourceGradients sourceImages:sourceImages gradientStates:gradientStates, v15, v16];
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage gradientState:(MPSState *)gradientState destinationGradient:(MPSImage *)destinationGradient
{
  if (MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = objc_opt_class();
    v16 = v14;
    v17 = NSStringFromClass(v15);
    MTLReportFailure();
  }

  v18.receiver = self;
  v18.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  [(MPSCNNGradientKernel *)&v18 encodeToCommandBuffer:commandBuffer sourceGradient:sourceGradient sourceImage:sourceImage gradientState:gradientState destinationGradient:destinationGradient, v16, v17];
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceGradient:(MPSImage *)sourceGradient sourceImage:(MPSImage *)sourceImage gradientState:(MPSState *)gradientState
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = objc_opt_class();
    v15 = v12;
    v16 = NSStringFromClass(v13);
    MTLReportFailure();
  }

  v17.receiver = self;
  v17.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  return [(MPSCNNGradientKernel *)&v17 encodeToCommandBuffer:commandBuffer sourceGradient:sourceGradient sourceImage:sourceImage gradientState:gradientState, v15, v16];
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients
{
  if (MTLReportFailureTypeEnabled())
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = objc_opt_class();
    v16 = v14;
    v17 = NSStringFromClass(v15);
    MTLReportFailure();
  }

  v18.receiver = self;
  v18.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  [(MPSCNNGradientKernel *)&v18 encodeBatchToCommandBuffer:commandBuffer sourceGradients:sourceGradients sourceImages:sourceImages gradientStates:gradientStates destinationGradients:destinationGradients, v16, v17];
}

- (MPSCNNBatchNormalizationStatisticsGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v81.receiver = self;
  v81.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  v6 = [MPSCNNGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v8 = (*(*MPSDevice + 24))(MPSDevice);
      if (objc_msgSend_decodeBoolForKey_(aDecoder, v9, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v10, v11, v12, v13, v14))
      {
        v21 = objc_msgSend_decodeInt32ForKey_(aDecoder, v15, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronType", v16, v17, v18, v19, v20);
        v28 = objc_autoreleasePoolPush();
        if (v21 == 10)
        {
          v29 = 16 * v8;
          v30 = objc_msgSend_decodeInt64ForKey_(aDecoder, v22, @"kMPSCNNBatchNormalizationFusedNeuronPReLULength", v23, v24, v25, v26, v27);
          v31 = malloc_type_malloc(v30, 0x100004052888210uLL);
          v82 = 0;
          if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v32, @"kMPSCNNBatchNormalizationFusedNeuronPReLUData", &v82, v33, v34, v35, v36))
          {
            MPSCopyToFromNetworkByteOrder32();
          }

          v37 = objc_alloc(MEMORY[0x277CBEA90]);
          v43 = objc_msgSend_initWithBytes_length_(v37, v38, v31, v30, v39, v40, v41, v42);
          v49 = objc_msgSend_cnnNeuronPReLUDescriptorWithData_noCopy_(MPSNNNeuronDescriptor, v44, v43, 0, v45, v46, v47, v48);
          v6->_preluBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v50, v31, v30, v29, v51, v52, v53);
          free(v31);
        }

        else
        {
          objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronA", v23, v24, v25, v26, v27);
          v55 = v54;
          objc_msgSend_decodeFloatForKey_(aDecoder, v56, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronB", v57, v58, v59, v60, v61);
          v63 = v62;
          objc_msgSend_decodeFloatForKey_(aDecoder, v64, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronC", v65, v66, v67, v68, v69);
          LODWORD(v71) = v70;
          LODWORD(v72) = v55;
          LODWORD(v73) = v63;
          v49 = objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, v74, v21, v75, v76, v77, v78, v79, v72, v73, v71);
        }

        v6->_fusedNeuronDescriptor = v49;
        objc_autoreleasePoolPop(v28);
      }

      else
      {
        v6->_fusedNeuronDescriptor = 0;
      }

      v6->super.super._encode = 0;
      v6->super.super._batchEncode = sub_239C021CC;
      v6->super.super._encodeData = v6;
      v6->super.super._checkFlags |= 0x11000u;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v106.receiver = self;
  v106.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  [(MPSCNNGradientKernel *)&v106 encodeWithCoder:?];
  if (self->_fusedNeuronDescriptor)
  {
    objc_msgSend_encodeBool_forKey_(a3, v5, 1, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v6, v7, v8, v9);
    v17 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_encodeInt32_forKey_(a3, v18, v17, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronType", v19, v20, v21, v22);
    v37 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v23, v24, v25, v26, v27, v28, v29);
    fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
    if (v37 == 10)
    {
      v39 = objc_msgSend_data(fusedNeuronDescriptor, v30, v31, v32, v33, v34, v35, v36);
      v47 = objc_msgSend_length(v39, v40, v41, v42, v43, v44, v45, v46);
      v55 = objc_msgSend_data(self->_fusedNeuronDescriptor, v48, v49, v50, v51, v52, v53, v54);
      objc_msgSend_bytes(v55, v56, v57, v58, v59, v60, v61, v62);
      objc_msgSend_encodeInt64_forKey_(a3, v63, v47, @"kMPSCNNBatchNormalizationFusedNeuronPReLULength", v64, v65, v66, v67);
      v68 = malloc_type_malloc(v47 & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
      if (v68)
      {
        v69 = v68;
        MPSCopyToFromNetworkByteOrder32();
        objc_msgSend_encodeBytes_length_forKey_(a3, v70, v69, v47 & 0xFFFFFFFFFFFFFFFCLL, @"kMPSCNNBatchNormalizationFusedNeuronPReLUData", v71, v72, v73);
        free(v69);
      }
    }

    else
    {
      objc_msgSend_a(fusedNeuronDescriptor, v30, v31, v32, v33, v34, v35, v36);
      objc_msgSend_encodeFloat_forKey_(a3, v74, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronA", v75, v76, v77, v78, v79);
      objc_msgSend_b(self->_fusedNeuronDescriptor, v80, v81, v82, v83, v84, v85, v86);
      objc_msgSend_encodeFloat_forKey_(a3, v87, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronB", v88, v89, v90, v91, v92);
      objc_msgSend_c(self->_fusedNeuronDescriptor, v93, v94, v95, v96, v97, v98, v99);
      objc_msgSend_encodeFloat_forKey_(a3, v100, @"kMPSCNNBatchNormalizationStatisticsGradientFusedNeuronC", v101, v102, v103, v104, v105);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(a3, v5, 0, @"kMPSCNNBatchNormalizationStatisticsGradientIsNeuronFusedKey", v6, v7, v8, v9);
  }
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    return 0;
  }

  v8 = MPSDevice;
  v63.receiver = self;
  v63.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  v16 = [(MPSCNNGradientKernel *)&v63 copyWithZone:a3 device:a4];
  if (v16)
  {
    *(v16 + 54) = objc_msgSend_copy(self->_fusedNeuronDescriptor, v9, v10, v11, v12, v13, v14, v15);
    v24 = (*(*v8 + 24))(v8);
    v25 = *(v16 + 54);
    if (v25)
    {
      if (objc_msgSend_neuronType(v25, v17, v18, v19, v20, v21, v22, v23) == 10)
      {
        v33 = objc_msgSend_data(*(v16 + 54), v26, v27, v28, v29, v30, v31, v32);
        v41 = objc_msgSend_bytes(v33, v34, v35, v36, v37, v38, v39, v40);
        v49 = objc_msgSend_data(*(v16 + 54), v42, v43, v44, v45, v46, v47, v48);
        v57 = objc_msgSend_length(v49, v50, v51, v52, v53, v54, v55, v56);
        *(v16 + 55) = objc_msgSend_newBufferWithBytes_length_options_(a4, v58, v41, v57, 16 * v24, v59, v60, v61);
      }
    }
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBatchNormalizationStatisticsGradient;
  [(MPSCNNBinaryKernel *)&v3 dealloc];
}

- (unint64_t)maxBatchSize
{
  v2 = *(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]);
  v3 = *(v2 + 1480);
  if ((*(v2 + 1477) & 4) == 0)
  {
    return (((v3 >> 52) & 0x3FF) - 2) / 2;
  }

  v5 = *(v2 + 1472) < 10;
  v6 = 2;
  if (v5)
  {
    v6 = 4;
  }

  return (((v3 >> 52) & 0x3FF) - v6) / v6;
}

@end